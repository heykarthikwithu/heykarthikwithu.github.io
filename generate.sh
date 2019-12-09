
sample=$(cat data.json | jq '.items')
for row in $(echo "${sample}" | jq -r '.[] | @base64'); do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
   echo "<!DOCTYPE html>
<html lang='en'>
<head>
	<meta charset='UTF-8'>
	<title>$(_jq '.title') | Karthik Kumar D K</title>
	<meta name='description' content='$(_jq '.field_search_description')'>
	<link rel='canonical' href='https://karthikkumardk.co.in$(_jq '.view_node').html' />
	<meta name='robots' content='index, follow'>
	<meta property='og:type' content='article' />
	<meta property='og:title' content='$(_jq '.title')' />
	<meta property='og:description' content='$(_jq '.field_search_description')' />
	<meta property='og:url' content='https://karthikkumardk.co.in$(_jq '.view_node').html' />
	<meta name='icbm' content='13.1071,77.5931' />
	<meta name='geo.region' content='IN' />
	<meta name='geo.placename' content='Bangalore' />
	<meta name='geo.position' content='13.1071,77.5931' />
	<meta http-equiv='content-language' content='en' />
	<meta name='Generator' content='heykarthikwithu (https://karthikkumardk.co.in)' />
	<meta name='MobileOptimized' content='width' />
	<meta name='HandheldFriendly' content='true' />
	<meta name='viewport' content='width=device-width, initial-scale=1.0' />
	<meta name='google-site-verification' content='0x3fHjbLfA41Z5loXt5Fb42MgxQ2ZzvRRkbvCTmlzN0' />
	<link href='../img/heykarthikwithu.jpg' rel='shortcut icon'/>
	<!--[if lt IE 9]>
	  <script src='https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js'></script>
    <script src='https://oss.maxcdn.com/respond/1.4.2/respond.min.js'></script>
	<![endif]-->
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Josefin+Sans:400,400i,600,600i,700' rel='stylesheet'>
	<!-- Stylesheets -->
	<link rel='stylesheet' href='../css/bootstrap.min.css'/>
	<link rel='stylesheet' href='../css/font-awesome.min.css'/>
	<link rel='stylesheet' href='../css/magnific-popup.css'/>
	<link rel='stylesheet' href='../css/style.css' />
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src='https://www.googletagmanager.com/gtag/js?id=UA-93645678-2'></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', 'UA-93645678-2');
	</script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
</head>
<body>
<div id='preloder'>
    <div class='loader'></div>
</div>
<!-- header section start -->
<header class='header-section'>
    <div class='container'>
        <div class='row'>
            <div class='col-lg-4 col-md-3'>
                <div class='logo'>
                    <h1 class='d-none'>$(_jq '.title') from Karthik Kumar D K | Drupal Expert</h1>
                    <h2 class='site-logo'>Karthik Kumar💧K</h2>
                </div>
            </div>
            <div class='col-lg-8 col-md-9'>
                <a href='mailto:heykarthikwithu@gmail.com?Subject=Contact: Via https://karthikkumardk.co.in&body=
Hey KarthiK,
%0A%0AI am looking for a person who can help me with Drupal related work, Can we discuss more on this?
%0A ---- Please add more details if needed ----
%0A%0AThanks and Regards.'
                   target='_top' class='site-btn header-btn'>Get in touch</a>
                <nav class='main-menu'>
                    <ul>
                        <li><a href='/'>Home</a></li>
                        <li><a href='/about.html'>About</a></li>
                        <li><a href='/blogs.html'>Blogs</a></li>
                        <li><a href='/contact.html'>Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    <div class='nav-switch'>
        <i class='fa fa-bars'></i>
    </div>
</header>
<!-- header section end -->
<section class='header-section'>
  <div class='container'>
    <h1>$(_jq '.title')</h1>
  </div>
</section>
<section class='page-section'>
	<div class='container'>
    <div>$(_jq '.created')</div>
    <p class='blog-article-content'>$(_jq '.field_search_description') $(_jq '.field_search_description')</p>
    <div class='read-more-external text-center'><a href='https://dev-karthikkumardk.pantheonsite.io$(_jq '.view_node')' target='_blank'>Continue Reading</a></div>
  </div>
</section>
<!-- footer section start -->
<footer class='footer-section text-center' style='padding: 40px 0;'>
    <div class='container'>
        <div class='social-links'>
            <a href='https://www.drupal.org/u/heykarthikwithu' target='_blank' title='Drupal | Karthik Kumar D K'><span class='fa fa-drupal'></span></a>
            <a href='https://www.linkedin.com/in/karthikkumardk' target='_blank' title='Linkedin | Karthik Kumar D K'><span class='fa fa-linkedin'></span></a>
            <a href='https://www.paypal.me/heykarthikwithu' target='_blank' title='Paypal | Karthik Kumar D K'><span class='fa fa-paypal'></span></a>
            <a href='https://www.youtube.com/c/karthikkumardk' target='_blank' title='Youtube | Karthik Kumar D K'><span class='fa fa-youtube'></span></a>
            <a href='/common-people/index.html' target='_blank' title='Common People's Voice'><span class='fa fa-users'></span></a>
        </div>
        <div class='copyright'><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class='fa fa-heart-o' aria-hidden='true'></i> by Colorlib
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        </div>
    </div>
</footer>
<!-- footer section end -->
<!--====== Javascripts & Jquery ======-->
<script src='../js/jquery-2.1.4.min.js'></script>
<script src='../js/bootstrap.min.js'></script>
<script src='../js/mixitup.min.js'></script>
<script src='../js/magnific-popup.min.js'></script>
<script src='../js/main.js'></script>
<script src='../js/script.js'></script>

</body>" > $(echo $(_jq '.view_node').html | cut -c 2-)
done

echo "Robots.txt"
for row in $(echo "${sample}" | jq -r '.[] | @base64'); do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
    echo "Allow: "$(_jq '.view_node')".html"
done

echo "Sitemap.xml"
for row in $(echo "${sample}" | jq -r '.[] | @base64'); do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
    echo "  <url><loc>https://karthikkumardk.co.in$(_jq '.view_node').html</loc><lastmod>2019-08-28T04:54:45+00:00</lastmod><changefreq>yearly</changefreq><priority>0.69</priority></url>"
done
#<lastmod>$(date +"%Y-%m-%d")</lastmod>

echo "Blogs"
for row in $(echo "${sample}" | jq -r '.[] | @base64'); do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
    echo "  <div class='col-md-6'>
    <div class='blog-item'>
      <article class='blog-content'>
        <h2>$(_jq '.title')</h2>
        <div class='blog-meta'>$(_jq '.created')</div>
        <p>$(_jq '.field_search_description')</p>
        <div class='further-action'>
            <a href='https://twitter.com/share?text=$(_jq '.title')&url=https://karthikkumardk.co.in$(_jq '.view_node').html&hashtags=drupal&via=heykarthikwithu' target='_blank'><i class='fab fa-twitter fa-2x'></i></a>
            <a href='https://www.linkedin.com/shareArticle?mini=true&url=https://karthikkumardk.co.in$(_jq '.view_node').html&title=$(_jq '.title')' target='_blank'><i class='fab fa-linkedin fa-2x'></i></a>
            <a href='http://www.facebook.com/sharer.php?u=https://karthikkumardk.co.in$(_jq '.view_node').html' target='_blank'><i class='fab fa-facebook fa-2x'></i></a>
            <a href='$(_jq '.view_node').html' class='read-more'>Read More</a>
        </div>
      </article>
    </div>
  </div>"
done
