
sample=$(cat data.json | jq '.items')
for row in $(echo "${sample}" | jq -r '.[] | @base64'); do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
   echo "<!DOCTYPE html>
<html lang='en'>
<head>
	<meta charset='UTF-8'>
	<title>$(_jq '.title') | KarthiK | Bangalore</title>
	<meta name='description' content='$(_jq '.field_search_description')'>
	<link rel='canonical' href='https://karthikkumardk.co.in/$(_jq '.view_node')' />
	<meta name='robots' content='index, follow'>
	<meta property='og:type' content='profile' />
	<meta property='og:title' content='$(_jq '.title') | KarthiK | Bangalore' />
	<meta property='og:description' content='$(_jq '.field_search_description')' />
	<meta property='og:url' content='https://karthikkumardk.co.in/$(_jq '.view_node')' />
   <script>
    window.onload = function() {
        var getUrl = window.location;
        var blogUrl = \"http://dev-karthikkumardk.pantheonsite.io/\" + getUrl.pathname.split('/')[1] +\"/\"+ getUrl.pathname.split('/')[2];
        window.location.href = blogUrl;
    }
</script>
</head>
<body>
<!-- Page Preloder -->
	<div id='preloder'>
		<div class='loader'></div>
	</div>
</body>" > $(echo $(_jq '.view_node').html | cut -c 2-)
done

echo "Robots.txt"
for row in $(echo "${sample}" | jq -r '.[] | @base64'); do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
    echo "Allow: "$(_jq '.view_node')
done

echo "Sitemap.xml"
for row in $(echo "${sample}" | jq -r '.[] | @base64'); do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
    echo "  <url>
    <loc>https://karthikkumardk.co.in$(_jq '.view_node')</loc>
    <lastmod>$(date +"%Y-%m-%d-")</lastmod>
    <changefreq>daily</changefreq>
    <priority>.5</priority>
  </url>"
done