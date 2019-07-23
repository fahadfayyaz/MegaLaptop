<aside id="column-left" class="col-sm-3 hidden-xs">
          <h3 class="subtitle">Brands</h3>
          <div class="box-category">
          <?php $brands = $this->brand->show_all(); ?>
          <?php if ($brands) : ?>
            <ul id="cat_accordion">
              <?php foreach ($brands as $brand): ?>
                <li><a href="<?php echo '/brand/' . $brand->slug; ?>"><?php echo $brand->title; ?></a></li>
              <?php endforeach ?>
             
            </ul>
          <?php else: ?>
            <div class="alert alert-danger">
              No Brand found!
            </div>
          <?php endif ?>  
         
          </div>
          <h3 class="subtitle">Latest</h3>
          <div class="side-item">
            <?php $latest_products = $this->product->latest_product(); ?>
            <?php if ($latest_products) : ?>
            <?php foreach ($latest_products as $latest_product): ?>
            <div class="product-thumb clearfix">
              <div class="image"><a href="<?php echo '/product/' . $latest_product->slug; ?>"><img src="/uploads/<?php echo $latest_product->product_img; ?>" alt="<?php echo $latest_product->title; ?>" class="img-responsive" /></a></div>
              <div class="caption">
                <h4><a href="<?php echo '/product/' . $latest_product->slug; ?>"><?php echo $latest_product->title; ?></a></h4>
                <p class="price"><span class="price-new">Rs/ <?php echo number_format($latest_product->price); ?></span></p>
              </div>
            </div>
            <?php endforeach ?>
            <?php else: ?>
            <div class="alert alert-danger">
              No Brand found!
            </div>
          <?php endif ?>  
          </div>
          <h3 class="subtitle">Most Viewed</h3>
          <div class="side-item">
            <?php $most_viewed = $this->product->most_viewed(); ?>
            <?php if ($most_viewed) : ?>
            <?php foreach ($most_viewed as $most_views) : ?>
            <div class="product-thumb clearfix">
              <div class="image"><a href="<?php echo '/product/' . $most_views->slug; ?>"><img src="/uploads/<?php echo $most_views->product_img; ?>" alt="<?php echo $most_views->title; ?>" class="img-responsive" /></a></div>
              <div class="caption">
                <h4><a href="<?php echo '/product/' . $most_views->slug; ?>"><?php echo $most_views->title; ?></a></h4>
                <p class="price"><span class="price-new">Rs/ <?php echo number_format($most_views->price); ?></span></p>
              </div>
            </div>
            <?php endforeach ?>
            <?php else: ?>
            <div class="alert alert-danger">
              No Brand found!
            </div>
          <?php endif ?>  
          </div>
          
          
          <h3 class="subtitle">Prices</h3>
          <?php 
          	$prices = [
          		'10000-20000' => '10,000 To 20,000', 
          		'20000-30000' => '20,000 To 30,000', 
          		'30000-40000' => '30,000 To 40,000', 
          		'40000-50000' => '40,000 To 50,000', 
          		'50000-60000' => '50,000 To 60,000', 
          		'60000-70000' => '60,000 To 70,000', 
          		'70000-80000' => '70,000 To 80,000', 
          		'80000-90000' => '80,000 To 90,000', 
          		'90000-100000' => '90,000 To 100,000', 
          	];
          ?>
          <div class="side-item">
            
            <?php foreach ($prices as $key => $value): ?>
            <div class="product-thumb clearfix">
              <div class="caption">
                <h4><a href="/product?price=<?php echo $key; ?>"><?php echo $value; ?></a></h4>
              </div>
            </div>
            <?php endforeach ?>
          </div>
          <h3 class="subtitle">New Arrivals</h3>
			<?php 
          	$types = [
          		'ci3' => 'All Ci3 Laptop', 
          		'ci5' => 'All Ci5 Laptop', 
          		'ci7' => 'All Ci7 Laptop', 
          		'ci9' => 'All Ci9 Laptop', 
          		'tochscreen' => 'All Toch Screen Laptop', 
          		'gamming' => 'All Gamming Laptop', 
          	];
          ?>
          <div class="side-item">
            <?php foreach ($types as $key => $value): ?>
            	
            <div class="product-thumb clearfix">
              <div class="caption">
                <h4><a href="/product?types=<?php echo $key; ?>"><?php echo $value; ?></a></h4>
              </div>
            </div>
            <?php endforeach ?>
            
            
            
            
            
          </div>
        </aside>