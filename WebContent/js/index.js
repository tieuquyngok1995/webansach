$(document).ready(function() {
    $('a.linkbox').click(function() {

        //lấy giá trị thuộc tính href - chính là phần tử "#login-box"
        var loginBox = $(this).attr('href');

        //cho hiện hộp đăng nhập trong 300ms
        $(loginBox).fadeIn("slow");

        // thêm phần tử id="over" vào cuối thẻ body
        $('body').append('<div id="over"></div>');
        $('#over').fadeIn(300);
        
        return false;
    });

    // khi click đóng hộp thoại
    $(document).on('click', "a.img-close, #over", function() { 
        $('#over, .login').fadeOut(300 , function() {
            $('#over').remove();  
        }); 
        return false;
    });
	$(document).on('click', "a.img-close, #over", function() { 
        $('#over, .register').fadeOut(300 , function() {
            $('#over').remove();  
        }); 
        return false;
    });
	
});

jQuery(document).ready(function($) {    
  //selector đến menu cần làm việc
  var TopFixMenu = $("#fixNav");
  // dùng sự kiện cuộn chuột để bắt thông tin đã cuộn được chiều dài là bao nhiêu.
    $(window).scroll(function(){
    // Nếu cuộn được hơn 150px rồi
        if($(this).scrollTop()>100){
      // Tiến hành show menu ra    
        TopFixMenu.show();
        }else{
      // Ngược lại, nhỏ hơn 150px thì hide menu đi.
            TopFixMenu.hide();
        }}
    )
})
jQuery(document).ready(function($) {    
  //selector đến menu cần làm việc
  var TopFixMenu = $("#fixNavprd");
  // dùng sự kiện cuộn chuột để bắt thông tin đã cuộn được chiều dài là bao nhiêu.
    $(window).scroll(function(){
    // Nếu cuộn được hơn 150px rồi
        if($(this).scrollTop()>740){
      // Tiến hành show menu ra    
        TopFixMenu.show();
        }else{
      // Ngược lại, nhỏ hơn 150px thì hide menu đi.
            TopFixMenu.hide();
        }}
    )
})
 $(document).ready(function() {
  var n1 = Math.round(Math.random() * 99 + 1);
  var n2 = Math.round(Math.random() * 10 + 1);
  $("#cau_hoi").val(n1 + " + " + n2);
  $(".register-content").submit(function (e) {
  
  if (eval($("#cau_hoi").val()) != $("#tra_loi").val()) {
      $("#tra_loi").css('box-shadow', '0px 0px 7px red');
      alert('Kết quả nhập sai, vui lòng nhập lại!');
      e.preventDefault(); 
    } 
  });
}); 
$(document).ready(function() {
  var n1 = Math.round(Math.random() * 99 + 1);
  var n2 = Math.round(Math.random() * 10 + 1);
  $("#cau_hoi1").val(n1 + " + " + n2);
  $(".register-content1").submit(function (e) {
  
  if (eval($("#cau_hoi1").val()) != $("#tra_loi1").val()) {
      $("#tra_loi1").css('box-shadow', '0px 0px 7px red');
      alert('Kết quả nhập sai, vui lòng nhập lại!');
      e.preventDefault(); 
    } 
  });
});
function togglecomments (postid) {
var whichpost = document.getElementById(postid);
if (whichpost.className=="commentshown") 
{ whichpost.className="commenthidden"; } else 
{ whichpost.className="commentshown"; }
} 
$(document).ready(function(){
 
        $(".detailDiv").hide();
        $('.xemthem').click(function(){
 $(".detailDiv").slideToggle();
});
 
});
$(function () {
			var that = this;
			var toolitup = $("#jRate").jRate({
				rating: 0,
				strokeColor: 'black',
				precision: 0.5,
				minSelected: 1,
				onChange: function(rating) {
					console.log("OnChange: Rating: "+rating);
				},
				onSet: function(rating) {
					console.log("OnSet: Rating: "+rating);
				}
				
			});
			
			$('#btn-click').on('click', function() {
				toolitup.setRating(0);				
			});
			
		});