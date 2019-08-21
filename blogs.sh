
sample=$(cat data.json | jq '.items')
for row in $(echo "${sample}" | jq -r '.[] | @base64'); do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
   echo "<script>
    window.onload = function() {
        var getUrl = window.location;
        var blogUrl = \"http://dev-karthikkumardk.pantheonsite.io/\" + getUrl.pathname.split('/')[1] +\"/\"+ getUrl.pathname.split('/')[2];
        window.location.href = blogUrl;
    }
</script>" > $(echo $(_jq '.view_node').html | cut -c 2-)
done
