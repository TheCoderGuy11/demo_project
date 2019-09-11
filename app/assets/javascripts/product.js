<script type="text/javascript">
  $('#item').change(function(){
    $.ajax({
      url: "/products/filter",
      type: "GET",
      data: {item: item.value},
    })
  });
</script>
