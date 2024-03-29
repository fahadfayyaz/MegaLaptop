<?php $this->load->view('layout/header'); ?>

<div id="container">
    <div class="container">
      <!-- Breadcrumb Start-->
      <ul class="breadcrumb">
        <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="index.html" itemprop="url"><span itemprop="title"><i class="fa fa-home"></i></span></a></li>
        <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="category.html" itemprop="url"><span itemprop="title">Electronics</span></a></li>
        <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="product.html" itemprop="url"><span itemprop="title">Laptop Silver black</span></a></li>
      </ul>
      <!-- Breadcrumb End-->
      <div class="row">
        <!--Middle Part Start-->
        <div id="content" class="col-sm-9">
          <div itemscope itemtype="http://schema.org/Product">
            <h1 class="title" itemprop="name"><?php echo $product->title; ?></h1>
            <div class="row product-info">
              <div class="col-sm-6">
                <div class="image">
                  <img class="img-responsive" itemprop="image" id="zoom_01" src="/uploads/<?php echo $product->product_img; ?>" width="350" height="350" alt="<?php echo $product->title ?>" data-zoom-image="/assets/image/product/macbook_air_1-500x500.jpg" /> </div>
                <div class="center-block text-center"><span class="zoom-gallery"><i class="fa fa-search"></i> Click image for Gallery</span></div>
                <div class="image-additional" id="gallery_01"> 
                	<?php $galleries = $this->gallery->get_gallery_by($product->id); ?>
               		<?php foreach ($galleries as $gallery) : ?>
	                	<a class="thumbnail" href="#" data-zoom-image="/uploads/<?php echo $gallery->gallery_img ?>" data-image="/uploads/<?php echo $gallery->gallery_img ?>"> 
	                		<img src="/uploads/<?php echo $gallery->gallery_img ?>" width="66" height="66" alt = "<?php echo $product->title ?>"/>
	                	</a> 
                 	<?php endforeach ?> 	
                </div>
              </div>
              <div class="col-sm-6">
                <ul class="list-unstyled description">
                  <li><b>Brand:</b> <a href="#"><span itemprop="brand"><?php echo $brand_array[$product->brand_id]; ?></span></a></li>
                  <li><b>Product Code:</b> <span itemprop="mpn"><?php echo $product->code; ?></span></li>
                  <li><b>Product Conditions:</b> <?php echo $product->product_condition; ?></li>
                </ul>
                <ul class="price-box">
                  <li class="price" itemprop="offers" itemscope itemtype="http://schema.org/Offer"> <span itemprop="price">Rs/ <?php echo number_format($product->price); ?><span itemprop="availability" content="In Stock"></span></span></li>
                </ul>
                <div id="product">
                  
                  <div class="cart">
                    <div>
                      <div class="qty">
                        <label class="control-label" for="input-quantity">Qty</label>
                        <input type="text" name="quantity" value="1" size="2" id="input-quantity" class="form-control" />
                        <a class="qtyBtn plus" href="javascript:void(0);">+</a><br />
                        <a class="qtyBtn mines" href="javascript:void(0);">-</a>
                        <div class="clear"></div>
                      </div>
                      <button type="button" id="button-cart" class="btn btn-primary btn-lg">Add to Cart</button>
                    </div>
                    <div>
                      <button type="button" class="wishlist" onClick=""><i class="fa fa-heart"></i> Add to Wish List</button>
                      <br />
                      <button type="button" class="wishlist" onClick=""><i class="fa fa-exchange"></i> Compare this Product</button>
                    </div>
                  </div>
                </div>
                <div class="rating" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
                  <meta itemprop="ratingValue" content="0" />
                  <p><span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span> <a onClick="$('a[href=\'#tab-review\']').trigger('click'); return false;" href=""><span itemprop="reviewCount">1 reviews</span></a> / <a onClick="$('a[href=\'#tab-review\']').trigger('click'); return false;" href="">Write a review</a></p>
                </div>
                <hr>
                <!-- AddThis Button BEGIN -->
                <div class="addthis_toolbox addthis_default_style"> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_button_pinterest_pinit" pi:pinit:layout="horizontal" pi:pinit:url="http://www.addthis.com/features/pinterest" pi:pinit:media="http://www.addthis.com/cms-content/images/features/pinterest-lg.png"></a> <a class="addthis_counter addthis_pill_style"></a> </div>
                <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-514863386b357649"></script>
                <!-- AddThis Button END -->
              </div>
            </div>
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab-description" data-toggle="tab">Description</a></li>
              <li><a href="#tab-specification" data-toggle="tab">Specification</a></li>
              <li><a href="#tab-review" data-toggle="tab">Reviews (2)</a></li>
            </ul>
            <div class="tab-content">
              <div itemprop="description" id="tab-description" class="tab-pane active">
                <div>
                  <p><?php echo $product->description; ?></p>
                </div>
              </div>
              <div id="tab-specification" class="tab-pane">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <td ><strong>Processor Type</strong></td>
                      <td><?php echo $product->title; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Processor Speed</strong></td>
                      <td><?php echo $product->processor_speed; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Hard Drive Size</strong></td>
                      <td><?php echo $product->hard_drive_size; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Installed Ram</strong></td>
                      <td><?php echo $product->installed_ram; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Screen Size</strong></td>
                      <td><?php echo $product->screen_size; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Camera</strong></td>
                      <td><?php echo $product->camera; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Color</strong></td>
                      <td><?php echo $product->color; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Operating System</strong></td>
                      <td><?php echo $product->operating_system; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Bluetooth</strong></td>
                      <td><?php echo $product->bluetooth; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Wifi</strong></td>
                      <td><?php echo $product->wifi; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Lan</strong></td>
                      <td><?php echo $product->lan; ?></td>
                    </tr>
                    <tr>
                      <td ><strong>Modem</strong></td>
                      <td><?php echo $product->modem; ?></td>
                    </tr>
                  </thead>
                  
                  </table>
                
              </div>
              <div id="tab-review" class="tab-pane">
                <form class="form-horizontal">
                  <div id="review">
                    <div>
                      <table class="table table-striped table-bordered">
                        <tbody>
                          <tr>
                            <td style="width: 50%;"><strong><span>harvey</span></strong></td>
                            <td class="text-right"><span>20/01/2016</span></td>
                          </tr>
                          <tr>
                            <td colspan="2"><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> </div></td>
                          </tr>
                        </tbody>
                      </table>
                      <table class="table table-striped table-bordered">
                        <tbody>
                          <tr>
                            <td style="width: 50%;"><strong><span>Andrson</span></strong></td>
                            <td class="text-right"><span>20/01/2016</span></td>
                          </tr>
                          <tr>
                            <td colspan="2"><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <div class="rating"> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span> </div></td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <div class="text-right"></div>
                  </div>
                  <h2>Write a review</h2>
                  <div class="form-group required">
                    <div class="col-sm-12">
                      <label for="input-name" class="control-label">Your Name</label>
                      <input type="text" class="form-control" id="input-name" value="" name="name">
                    </div>
                  </div>
                  <div class="form-group required">
                    <div class="col-sm-12">
                      <label for="input-review" class="control-label">Your Review</label>
                      <textarea class="form-control" id="input-review" rows="5" name="text"></textarea>
                      <div class="help-block"><span class="text-danger">Note:</span> HTML is not translated!</div>
                    </div>
                  </div>
                  <div class="form-group required">
                    <div class="col-sm-12">
                      <label class="control-label">Rating</label>
                      &nbsp;&nbsp;&nbsp; Bad&nbsp;
                      <input type="radio" value="1" name="rating">
                      &nbsp;
                      <input type="radio" value="2" name="rating">
                      &nbsp;
                      <input type="radio" value="3" name="rating">
                      &nbsp;
                      <input type="radio" value="4" name="rating">
                      &nbsp;
                      <input type="radio" value="5" name="rating">
                      &nbsp;Good</div>
                  </div>
                  <div class="buttons">
                    <div class="pull-right">
                      <button class="btn btn-primary" id="button-review" type="button">Continue</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
            <h3 class="subtitle">Related Products</h3>
            <div class="owl-carousel related_pro">
              <?php if ($relatedProducts): ?>
              <?php foreach ($relatedProducts as $relatedProduct) : ?>
              <div class="product-thumb">
                <div class="image"><a href="product.html"><img src="/uploads/<?php echo $relatedProduct->product_img ?>" width="200" height="200" alt="<?php echo $relatedProduct->title ?>" class="img-responsive" /></a></div>
                <div class="caption">
                  <h4><a href="<?php echo '/product/' . $relatedProduct->slug; ?>"><?php echo $relatedProduct->title ?></a></h4>
                  <p class="price"> <span class="price-new">Rs/ <?php echo number_format($relatedProduct->price); ?></span></p>
                </div>
                <div class="button-group">
                  <button class="btn-primary" type="button" onClick=""><span>Add to Cart</span></button>
                  <div class="add-to-links">
                    <button type="button" data-toggle="tooltip" title="Add to wishlist" onClick=""><i class="fa fa-heart"></i></button>
                  </div>
                </div>
              </div>
              <?php endforeach ?>

              <?php else: ?>
                <div class="alert alert-danger">
                  No product found
                </div>  
              <?php endif ?>
              
              
              
              
              
            </div>
          </div>
        </div>
        <!--Middle Part End -->
        <!--Right Part Start -->
        
        <?php $this->load->view('layout/sidebar'); ?>

        <!--Right Part End -->
      </div>
    </div>
  </div>
  <!--Footer Start-->
  <?php $this->load->view('layout/footer'); ?>
