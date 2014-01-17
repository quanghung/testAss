$("#link-registrant-export").click(function(e){
    e.preventDefault(); // stop the browser from following
    // find all the CHECKED rows in the table 
    selected_registrants = $("#registrant-list .data-export input:checked");
    found_ids = [];
    // populate the found_ids array
    selected_registrants.each(function(){
        found_ids.push($(this).val());
    });
    // if any IDs were found as checked then join then together then download the file
    if(found_ids.length > 0){
        window.location.href = '/registrants/export.csv?ids='+found_ids.join(",");
    }
});