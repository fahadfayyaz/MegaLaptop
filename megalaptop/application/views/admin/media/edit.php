<div class="page-content"> 
        <div class="content">  
            <!-- BEGIN PAGE TITLE -->
           <div class="page-title">  
        <h2><?php echo $title ?></h2>    
      </div>
            <!-- END PAGE TITLE -->
            <!-- BEGIN PlACE PAGE CONTENT HERE -->
             <?php  
        $attributes = ['name' => 'formEdit', 'id' => 'formEdit'];
        $hidden = ['img_url' => $mediam->media_img];
        echo form_open_multipart('', $attributes, $hidden);
      ?>
                <div class="col-md-14">
              <div class="grid simple">                
                <div class="grid-body no-border">
                  <div class="row">
        <div class="col-md-12">
          <div class="grid simple">
            <div class="grid-title no-border">
              &nbsp;
            </div>
            <div class="grid-body no-border">
              <div class="row column-seperation">
                <div class="col-md-6">
                  <h4>Basic Information</h4>            
                    <div class="row form-row">
                       <div class="col-md-12">
                        <input name="create_date" id="create_date" type="text"  class="form-control" placeholder="Create Date" value="<?php echo $mediam->create_date; ?>">
                      </div>
                    </div>
                   <div class="row form-row">
                      <div class="col-md-12">
                        <select name="media_type" id="media_type" class="form-control">
                          <option>:: Select Media Type ::</option>
                          <option value="slideshow"> Slideshow </option>
                          <option value="gallery"> Gallery </option>
                          <option value="video"> Video </option>
                        </select>
                      </div>
                    </div>
                    <div class="row form-row">
                      <div class="col-md-12">
                        <input name="title" id="title" type="text"  class="form-control" placeholder="Title" value="<?php echo $mediam->title ?>">
                      </div>
                    </div>
                    <div class="row form-row">
                      <div class="col-md-12">
                        <input name="slug" id="slug" type="text"  class="form-control" placeholder="Slug" value="<?php echo $mediam->slug ?>" readonly>
                      </div>
                    </div>
                    <div class="row form-row">
                      <div class="col-md-12">
                        <textarea name="description" id="description" rows="8" class="form-control" placeholder="Description"><?php echo  $mediam->description ?></textarea>
                      </div>
                    </div>
                    <div class="row form-row">
                      <div class="col-md-12">
                        <textarea name="embed_code" id="embed_code" rows="8" class="form-control" placeholder="Embed Code"><?php echo  $mediam->embed_code ?></textarea>
                      </div>
                    </div>
                </div>
                <div class="col-md-6">
                  <h4>Postal Information</h4>
                  <div class="row form-row">
                      <div class="col-md-12">
                        <input name="media_img" id="media_img" type="file"  class="form-control">
                      </div>
                    </div>
                    <div class="row form-row">
                      <div class="col-md-12">
                        <textarea name="meta_description" id="meta_description" rows="8" class="form-control" placeholder="Meta Descriptions"><?php echo $mediam->meta_description ?></textarea>
                      </div>
                    </div>
                    <div class="row form-row">
                      <div class="col-md-12">
                        <input type="text" name="meta_keyword" id="meta_keyword" class="form-control tagsinput" data-a-sign="$" data-role="tagsinput" value="<?php echo $mediam->meta_keyword ?>">
                      </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
       <div class="form-actions">
          <button class="btn btn-danger btn-cons" type="submit"><i class="fa fa-save"></i> Save </button>
          <a href="/admin/media/" class="btn btn-primary btn-cons" type="button"><i class="fa fa-times"></i> Cancel </a>
        </div>
        </div>
      </div>
                </div>
              </div>
        </div>
            <!-- END PLACE PAGE CONTENT HERE -->
        </div>
    </div>
