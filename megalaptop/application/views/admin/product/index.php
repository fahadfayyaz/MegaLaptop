
    <div class="page-content">
    <div class="content">
        <!-- BEGIN PAGE TITLE -->
        <div class="page-title">
            <h2>Manage Products</h2>
        </div>
        <!-- END PAGE TITLE -->
        <!-- BEGIN PlACE PAGE CONTENT HERE -->
        <div class="col-md-14">
            <div class="grid simple ">
                <div class="grid-body no-border">
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            <a href="#" class="btn btn-primary tip" data-toggle="tooltip" title="Active Selected"><i class="fa fa-eye"></i></a>
                            <a href="#" class="btn btn-primary tip" data-toggle="tooltip" title="Deactive Selected"><i class="fa fa-eye-slash"></i></a>
                            <a href="#" class="btn btn-primary tip" data-toggle="tooltip" title="Delete Selected"><i class="fa fa-trash"></i></a>
                            <a href="/admin/product/add" class="btn btn-primary tip" data-toggle="tooltip" title="Create"><i class="fa fa-plus"></i></a>
                        </div>
                             
                         <?php echo form_open('', ['name' => 'formView', 'id' => 'formView', 'method' => 'get']); ?>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <select name="per_page" class="form-control" onchange="javascript: document.forms['formView'].submit()">
                                            <option value="15" <?php if($this->input->get('per_page') == '15') { echo 'selected'; } ?>>15</option>
                                            <option value="25" <?php if($this->input->get('per_page') == '25') { echo 'selected'; } ?>>25</option>
                                            <option value="50" <?php if($this->input->get('per_page') == '50') { echo 'selected'; } ?>>50</option>
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
                     <?php if ($products): ?>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th style="width:1%">
                                    <div class="checkbox check-default">
                                        <input id="checkbox10" type="checkbox" value="1" class="checkall">
                                        <label for="checkbox10"></label>
                                    </div>
                                </th>
                                <th style="width:40%">Title</th>
                                <th style="width:15%">Brand</th>
                                <th style="width:17%">Product Image</th>
                                <th style="width:10%">Status</th>
                                <th style="width:10%">Manage</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($products as $product) : ?>
                            <tr>
                                <td>
                                    <div class="checkbox check-default">
                                        <input id="checkbox11" type="checkbox" value="1">
                                        <label for="checkbox11"></label>
                                    </div>
                                </td>
                                <td>
                                    <?php echo $product->title; ?><br><br>
                                    <?php if ($spec = $this->specification->spec_all($product->id)) : ?>
                                        <a href="/admin/product_specification/edit/<?php echo $spec->id; ?>" class="tip" data-toggle="tooltip" title="Edit Specification"><i class="fa fa-edit"></i></a> | 
                                    <?php else : ?>
                                        <a href="/admin/product_specification/add/<?php echo $product->id; ?>" class="tip" data-toggle="tooltip" title="Add Specification"><i class="fa fa-plus"></i></a> | 
                                    <?php endif ?>
                                    <a href="/admin/product_gallery/add/<?php echo $product->id; ?>" class="tip" data-toggle="tooltip" title="Add Gallery"><i class="fa fa-image"></i></a>
                                    </td>
                                <td><?php echo $brand_array[$product->brand_id] ; ?></td>
                                <td align="center"><img src="/uploads/<?php echo $product->product_img; ?>" width="80" class="img-thumbnail" alt="<?php echo $product->title; ?>"> </td>
                                <td>
                                     <?php if ($product->status == 'DEACTIVE') : ?>
                                        <a href="/admin/product/status/<?php echo $product->id; ?>"><span class="label label-important">Deactive</span></a>
                                    <?php else: ?>    
                                        <a href="/admin/product/status/<?php echo $product->id; ?>"><span class="label label-info">Active</span></a>
                                    <?php endif ?>
                                </td>
                                <td>
                                    <a href="/admin/product/edit/<?php echo $product->id; ?>" class="label label-info"> <i class="fa fa-edit"></i></a>
                                    <a href="/admin/product/delete/<?php echo $product->id; ?>" class="label label-important" onClick="return confirm('Are you sure you want to delete this?')"> <i class="fa fa-trash-o"></i></a>
                                </td>
                            </tr>
                        </tbody>
                    <?php endforeach ?>
                    </table>
                   <?php echo $this->pagination->create_links(); ?>
                    <?php else:  ?>
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

