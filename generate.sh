
sample=$(cat data.json | jq '.items')
for row in $(echo "${sample}" | jq -r '.[] | @base64'); do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
   echo "<!DOCTYPE html>
<html lang='en'>
<head>
	<meta charset='UTF-8'>
	<title>$(_jq '.title')</title>
	<meta name='description' content='$(_jq '.field_search_description')'>
	<link rel='canonical' href='https://karthikkumardk.co.in$(_jq '.view_node').html' />
	<meta name='robots' content='index, follow'>
	<meta property='og:type' content='article' />
	<meta property='og:title' content='$(_jq '.title')' />
	<meta property='og:description' content='$(_jq '.field_search_description')' />
	<meta property='og:url' content='https://karthikkumardk.co.in$(_jq '.view_node').html' />
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src='https://www.googletagmanager.com/gtag/js?id=UA-93645678-2'></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', 'UA-93645678-2');
	</script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
  <script>
    window.onload = function() {
        var getUrl = window.location;
        var blogUrl = (\"http://dev-karthikkumardk.pantheonsite.io/\" + getUrl.pathname.split('/')[1] +\"/\"+ getUrl.pathname.split('/')[2]).replace('.html','');
        window.location.href = blogUrl;
    }
  </script>
</head>
<body>
<!-- Page Preloder -->
	<div id='preloder'>
		<div class='loader'></div>
	</div>
	<h1>$(_jq '.title')</h1>
	<div>$(_jq '.created')</div>
	<p>$(_jq '.field_search_description')</p>
	<p>Original source: <a href='https://karthikkumardk.co.in$(_jq '.view_node').html'>https://karthikkumardk.co.in$(_jq '.view_node').html</a></p>
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
        <a href='$(_jq '.view_node').html' class='read-more' target='_blank'>Read More</a>
      </article>
    </div>
  </div>"
done
