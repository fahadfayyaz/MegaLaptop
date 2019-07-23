     
   <div class="page-content">
    <div class="content">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h2>Manage Media</h2>
        </div>
        <!-- END PAGE TITLE -->
        <!-- BEGIN PlACE PAGE CONTENT HERE -->
        <div class="col-md-14">
            <div class="grid simple ">
                <div class="grid-body no-border">
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            <a href="#" id="activeAll" class="btn btn-primary tip" data-toggle="tooltip" title="Active Selected"><i class="fa fa-eye"></i></a>
                            <a href="#" id="deactiveAll" class="btn btn-primary tip" data-toggle="tooltip" title="Deactive Selected"><i class="fa fa-eye-slash"></i></a>
                            <a href="#" id="deleteAll" class="btn btn-primary tip" data-toggle="tooltip" title="Delete Selected"><i class="fa fa-trash"></i></a>
                            <a href="/admin/media/add" class="btn btn-primary tip" data-toggle="tooltip" title="Create"><i class="fa fa-plus"></i></a>
                        </div>
                        <?php echo form_open('', ['name' => 'formSearch', 'id' => 'formSearch', 'method' => 'get']); ?>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <select name="per_page" onchange="javascript:document.forms['formSearch'].submit()" class="form-control">
                                            <option value="15" <?php echo ($this->input->get('per_page') == '15') ? 'selected' : null ?>>15</option>
                                            <option value="25" <?php echo ($this->input->get('per_page') == '25') ? 'selected' : null ?>>25</option>
                                            <option value="50" <?php echo ($this->input->get('per_page') == '50') ? 'selected' : null ?>>50</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="input-group">
                                        <input type="text" name="q" class="form-control" placeholder="Search" value="<?php echo $this->input->get('q') ?>">
                                        <span class="input-group-btn">
                                                <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-search" aria-hidden="true"></i></button>
                                            </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php echo form_close(); ?>
                    </div>
                        
                    <br>
                        <?php if ($medias): ?>
                             <?php 
                            $attributes = ['name' => 'formView', 'id' => 'formView'];
                            echo form_open('', $attributes);
                        ?>
                        <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th style="width:1%">
                                    <div class="checkbox check-default">
                                        <input id="checkbox" type="checkbox" class="checkall">
                                        <label for="checkbox"></label>
                                    </div>
                                </th>
                                <th style="width:40%">Title</th>
                                <th style="width:20%">Media Image</th>
                                <th style="width:10%">Status</th>
                                <th style="width:10%">Manage</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($medias as $media) : ?>
                            <tr>
                                <td>
                                    <div class="checkbox check-default">
                                        <input id="checkbox<?php echo $media->id ?>" class="checkParam" type="checkbox" name="checkAll[]" value="<?php echo $media->id ?>">
                                        <label for="checkbox<?php echo $media->id ?>"></label>
                                    </div>
                                </td>
                                <td><?php echo $media->title; ?></td>
                                <td align="center">
                                    <img src="/uploads/<?php echo $media->media_img; ?>" width="100" alt="<?php echo $media->title; ?>" class="img-thumbnail">
                                </td>
                                <td>
                                    <?php if ($media->status == 'DEACTIVE'): ?>
                                        <a href="/admin/media/status/<?php echo $media->id; ?>" class="singleStatus"><span class="label label-important">Deactive</span></a>
                                    <?php else: ?>
                                        <a href="/admin/media/status/<?php echo $media->id; ?>" class="singleStatus"><span class="label label-info">Active</span></a>
                                    <?php endif ?>
                                 </td>
                                <td>
                                    <a href="/admin/media/edit/<?php echo $media->id; ?>" class="label label-info"> <i class="fa fa-edit"></i></a>
                                    <a href="/admin/media/delete/<?php echo $media->id; ?>" class="label label-important singleDelete"> <i class="fa fa-trash-o"></i></a>    
                                </td>
                            </tr>
                            <?php endforeach ?>
                        </tbody>
                    </table>
                      <?php echo form_close(); ?>  
                        <?php echo $this->pagination->create_links(); ?>
                        
                    <?php else: ?>
                        <div class="alert alert-info">
                            <strong>Info!</strong> No Record Found!
                        </div>
                    <?php endif ?>
                </div>
            </div>
        </div>
        <!-- END PLACE PAGE CONTENT HERE -->
    </div>
</div>

<script>
    $(document).ready(function() {
        // SINGLE STATUS AJAX HERE.
        $(".singleStatus").on('click', function(e) {
            e.preventDefault(); //disable your link functionality

            var href = $(this).attr('href');
            var self = $(this);

            self.html("<img src='/assets/admin/img/ajax-loader.gif'>");
            $.get(href, function(response) {
                if (response == 'DEACTIVE') 
                    self.html("<span class='label label-important'>Deactive</span>");
                else
                    self.html("<span class='label label-info'>Active</span>");
            });
        }); 

        // SINGLE DELETE AJAX HERE.
        $(".singleDelete").on('click', function(e) {
            e.preventDefault(); 
            
            if (confirm("Are you really want to delete this?")) 
            {
                var href = $(".singleDelete").attr('href');
                var self = $(this);

                self.html("<img src='/assets/admin/img/ajax-loader.gif'>");
                $.get(href, function(response) {
                    if (response == 1) 
                    {
                        self.closest('tr').css('background-color', 'red').fadeOut(1000);
                        self.remove();
                    }
                });
            }
            else
            {
                return false;
            }           
        });


       $("#activeAll").on('click', function(e) {
            e.preventDefault();
            if ($(".checkParam:checked").length > 0 ) 
            {
                var formSerials = $("#formView").serialize();
                $.post('/admin/media/activeall', formSerials, function(response) {
                    if (response > 0 ) 
                        window.location.href = '/admin/media';
                });
            }
            else
                alert("select atleast one!");
        });

        // DEACTIVE ALL STATUS VIA AJAX
        $("#deactiveAll").on('click', function(e) {
            e.preventDefault();
            if ($(".checkParam:checked").length > 0 ) 
            {
                var formSerials = $("#formView").serialize();
                $.post('/admin/media/deactiveall', formSerials, function(response) {
                    if (response > 0 ) 
                        window.location.href = '/admin/media';
                });
            }
            else
                alert("select atleast one!");
        });

        // DeleteALL VIA AJAX
        $("#deleteAll").on('click', function(e) {
            e.preventDefault();
            if ($(".checkParam:checked").length > 0 ) 
            {
                if (confirm('Are you PAKKA you want to Delete this?')) 
                {
                    var formSerials = $("#formView").serialize();
                    $.post('/admin/media/delete_all', formSerials, function(response) {
                        if (response > 0 ) 
                            window.location.href = '/admin/media';
                    });
                }
                else
                    return false;
            }
            else
                alert("select atleast one!");
        });
    });
</script>