<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- meta -->
<%@ include file="../parts/meta.jsp" %> 
<title>메이시</title>
<!-- header -->
<%@ include file="../parts/header.jsp" %>
<!-- load first js 
	스타일 시트 추가가 필요하면 위쪽 ↑↑↑↑↑↑ 추가 요망 -->
<%@ include file="../parts/loadFirst-js.jsp" %>
</head>
<body class="h-100">
<!-- sidebar -->
<%@ include file="../parts/sidebar.jsp" %>
<div class="main-content-container container-fluid px-4">
	<div class="row mt-5" id="row2">
		<div class="col-lg-7">
			<div class="card card-small mb-4">
				<div class="carousel-wrap">
					<div class="owl-carousel carousel-main">
						<div id="sem1" class="owl-list imgActive">
							<img src="./resources/images/nameCard/sem1.jpg">
						</div>
						<div id="sem2" class="owl-list">
							<img src="./resources/images/nameCard/sem2.jpg">
						</div>
						<div id="sem3" class="owl-list">
							<img src="./resources/images/nameCard/sem3.jpg">
						</div>
						<div id="sem4" class="owl-list">
							<img src="./resources/images/nameCard/sem4.jpg">
						</div>
						<div id="sem5" class="owl-list">
							<img src="./resources/images/nameCard/sem5.jpg">
						</div>
						<div id="sem6" class="owl-list">
							<img src="./resources/images/nameCard/sem6.jpg">
						</div>
					</div>
				</div>
			</div>
			<div class="nameCardView">
				<div class="leftNameCard" style="background:url(./resources/images/nameCard/namecard_sem1.jpg); background-size: cover;"></div>
				<div class="rightNameCard">
					<div class="r-wrap">
						<div id="r-t-wrap">
							<div>
								<span id="company"></span>
							</div>
							<div>
								<span id="website"></span>
							</div>
						</div>
						<div id="r-b-wrap">
							<div>
								<span id="name"></span>
								<span id="department"></span>
								<span id="title"></span>
							</div>
							<div>
								<span id="address"></span>
							</div>
							<div>
								<span id="email"></span>
							</div>
							<div>
								<span id="mobile"></span>
							</div>
							<div>
								<span id="phone"></span>
							</div>
							<div>
								<span id="fax"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-5">
			<div class="card card-small mb-4">
				<div class="col-md-12">
					<div id="formBox">
						<div class="form-group">
							<label>이름</label>
							<input class="form-control" type="text" id="ncName" name="ncName" placeholder="이름">
						</div>
						<div class="form-group">
							<label>휴대전화</label>
							<input class="form-control" type="text" id="ncMobile" name="ncMobile" placeholder="휴대전화">
						</div>
						<div class="form-group">
							<label>직장정화</label>
							<input class="form-control" type="text" id="ncPhone" name="ncPhone" placeholder="직장전화">
						</div>
						<div class="form-group">
							<label>팩스번호</label>
							<input class="form-control" type="text" id="ncFax" name="ncFax" placeholder="팩스번호">
						</div>
						<div class="form-group">
							<label>이메일</label>
							<input class="form-control" type="text" id="ncEmail" name="ncEmail" placeholder="이메일">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>회사명</label>
								<input class="form-control" type="text" id="ncCompany" name="ncCompany" placeholder="회사명"> 
							</div>
							<div class="form-group col-md-4">	
								<label>부서명</label>				
								<input class="form-control" type="text" id="ncDepartment"name="ncDepartment" placeholder="부서명"> 
							</div>
							<div class="form-group col-md-4">
								<label>직책</label>
								<input class="form-control" type="text" id="ncTitle" name="ncTitle" placeholder="직책">
							</div>
						</div>
						<div class="form-group">
							<label>웹사이트</label>
							<input class="form-control" type="text" id="ncWebsite" name="ncWebsite" placeholder="웹사이트">
						</div>
						<div class="form-group">
							<label>주소</label>
							<input class="form-control" type="text" id="ncAddress" name="ncAddress" placeholder="주소">
						</div>
						<div class="form-group">
							<button type="button" id="nameCardCancel" class="btn btn-default">취소</button>
							<button type="button" id="nameCardSubmit" class="btn btn-primary">등록</button>
						</div>
					</div>
				</div>	
			</div>
		</div>
	</div>
</div>
<!-- footer 추가적인 js는 위쪽 ↑↑↑↑↑↑ 추가 요망 -->
<%@ include file="../parts/footer.jsp" %>
<script type="text/javascript">
	$(function() {
		//메뉴 포커스
		setLeftSideIcon();
		
		if('${nameCard}' != ''){
			//인풋 데이터
			var sumCheck = /sem[0-9]/;
			var bsum = sumCheck.exec('${nameCard.nameCardUrl}');
			$('.owl-list').removeClass('imgActive');
			$('#'+bsum[0]).addClass('imgActive');
			
			
			$('.leftNameCard').attr('style','background:url(${nameCard.nameCardUrl}); background-size: cover;');
			$('#ncName').val('${nameCard.ncName}');
			$('#ncMobile').val('${nameCard.ncMobile}');
			$('#ncPhone').val('${nameCard.ncPhone}');
			$('#ncFax').val('${nameCard.ncFax}');
			$('#ncEmail').val('${nameCard.ncEmail}');
			$('#ncCompany').val('${nameCard.ncCompany}');
			$('#ncDepartment').val('${nameCard.ncDepartment}');
			$('#ncTitle').val('${nameCard.ncTitle}');
			$('#ncWebsite').val('${nameCard.ncWebsite}');
			$('#ncAddress').val('${nameCard.ncAddress}');
			
			//디테일
			$('#company').text('${nameCard.ncCompany}');
			$('#website').text('${nameCard.ncWebsite}');
			$('#name').text('${nameCard.ncName}');
			$('#title').text('${nameCard.ncTitle}');
			$('#department').text('${nameCard.ncDepartment}');
			$('#address').text('${nameCard.ncAddress}');
			if('${nameCard.ncEmail}' != ''){
				$('#email').text('E ' + '${nameCard.ncEmail}');
			};
			if('${nameCard.ncMobile}' != ''){
				$('#mobile').text('M ' + '${nameCard.ncMobile}');
			};
			if('${nameCard.ncPhone}' != ''){
				$('#phone').text('P ' + '${nameCard.ncPhone}');
			};
			if('${nameCard.ncFax}' != ''){
				$('#fax').text('F ' + '${nameCard.ncFax}');
			};
			
			$('#nameCardSubmit').html('수정');
			$('#ncEmail').attr('disabled','true');
		};
		
		//썸네일리스트
		$('.carousel-main').owlCarousel({
			items: 5,
			loop: true,
			margin: 10,
			nav: true,
			dots: false,
			navText: ['<span class="fas fa-chevron-left fa-2x"></span>','<span class="fas fa-chevron-right fa-2x"></span>'],
		});
		
		//썸네일 클릭효과
		$('.owl-list').on('click',function(){
			var imgNumber = $(this).children('img').attr('src');
			var imgPt = /se.*[0-9]/gi;
			var imgNumber = imgPt.exec(imgNumber);
			$('.owl-list').removeClass('imgActive');
			$(this).addClass('imgActive');
			$('.leftNameCard').css('background','url(./resources/images/nameCard/namecard_'+imgNumber+'.jpg)');
			$('.leftNameCard').css('background-size','cover');
		});
		
		//키업
		$('#ncMobile').keyup(function(){
			$("#mobile").text('M ' + $(this).val());
			if($("#ncMobile").val().length < 1){
				$("#mobile").text('');
			};
		});
		
		$('#ncFax').keyup(function(){
			$("#fax").text('F ' + $(this).val());
			if($("#ncFax").val().length < 1){
				$("#fax").text('');
			}
		});
		
		$('#ncPhone').keyup(function(){
			$("#phone").text('P ' + $(this).val());
			if($("#ncPhone").val().length < 1){
				$("#phone").text('');
			}
		});
		
		$('#ncEmail').keyup(function(){
			$("#email").text('E ' + $(this).val());
			if($("#ncEmail").val().length < 1){
				$("#email").text('');
			}
		});

		$('#ncAddress').keyup(function(){
			$("#address").text( $(this).val());
		});
		
		$('#ncWebsite').keyup(function(){
			$("#website").text( $(this).val());
		});
		
		$('#ncTitle').keyup(function(){
			$("#title").text( $(this).val());
		});
		
		$('#ncName').keyup(function(){
			$("#name").text( $(this).val());
		});
		
		$('#ncCompany').keyup(function(){
			$("#company").text( $(this).val());
		});	
		
		//취소버튼
		$('#nameCardCancel').on('click',function(){
			location.href = 'nameCardList';
		});
		
		//이메일 등록 체크
		function emailCheck(){
			var ncEmail = $('#ncEmail').val();
			$.ajax({
				url : "selectNameCard",
				type : "post",
				data : {
					'ncEmail' : $('#ncEmail').val()
				},
				success : function(data){
					if(data == 1){
						$('#ncEmail').attr('class','form-control is-invalid');
					}else{
						$('#ncEmail').attr('class','form-control');
					}
				}
			});
		};
		
		$('#ncEmail').keyup(emailCheck);
		
		//명함등록
		$('#nameCardSubmit').on('click',function(){
			var ncCheck = '1';
			var ncName = $('#ncName').val();
			var ncMobile = $('#ncMobile').val();
			var ncPhone = $('#ncPhone').val();
			var ncFax = $('#ncFax').val();
			var ncEmail = $('#ncEmail').val();
			var ncCompany = $('#ncCompany').val();
			var ncDepartment = $('#ncDepartment').val();
			var ncTitle = $('#ncTitle').val();
			var ncWebsite = $('#ncWebsite').val();
			var ncAddress = $('#ncAddress').val();
			var imgPt = /re.*jpg/g;
			var backgroundUrl = imgPt.exec($('.leftNameCard').css('background'));		
			var nameCardUrl = './'+backgroundUrl;
			
			
			if(ncEmail == ''){
					alert('이메일을 입력해 주세요.');
					return;
			}
			
			//수정시
			if('${nameCard}' != ''){
				$.ajax({
					url : "updateNameCardAction",
					type : "post",
					data : {
						'ncCheck' : ncCheck,
						'ncName' : ncName,
						'ncMobile' : ncMobile,
						'ncPhone' : ncPhone,
						'ncFax' : ncFax,
						'ncEmail' : ncEmail,
						'ncCompany' : ncCompany,
						'ncDepartment' : ncDepartment,
						'ncTitle' : ncTitle,
						'ncWebsite' : ncWebsite,
						'ncAddress' : ncAddress,
						'nameCardUrl' : nameCardUrl
					},
					success : function(data){
						location.href = 'nameCardList';
					}
				});
				return;
			};
			
			//유효성 이메일
			$.ajax({
				url : "selectNameCard",
				type : "post",
				data : {
					'ncEmail' : $('#ncEmail').val()
				},
				success : function(data){
					if(data == 1){
						alert('등록된 이메일 입니다.');
						$('#ncEmail').focus();
						return;
					}else{
						$.ajax({
							url : "nameCardUplodeAction",
							type : "post",
							data : {
								'ncCheck' : ncCheck,
								'ncName' : ncName,
								'ncMobile' : ncMobile,
								'ncPhone' : ncPhone,
								'ncFax' : ncFax,
								'ncEmail' : ncEmail,
								'ncCompany' : ncCompany,
								'ncDepartment' : ncDepartment,
								'ncTitle' : ncTitle,
								'ncWebsite' : ncWebsite,
								'ncAddress' : ncAddress,
								'nameCardUrl' : nameCardUrl
							},
							success : function(data){
								location.href = 'nameCardList';
							}
						});
					}
				}
			});		
		});
		

		function setLeftSideIcon(){
			$('#navbar').children().eq(0).children().eq(0).attr('class','nav-link ');
			$('#navbar').children().eq(1).children().eq(0).attr('class','nav-link ');
			$('#navbar').children().eq(2).children().eq(0).attr('class','nav-link ');
			$('#navbar').children().eq(3).children().eq(0).attr('class','nav-link ');
			$('#navbar').children().eq(4).children().eq(0).attr('class','nav-link ');
			$('#navbar').children().eq(5).children().eq(0).attr('class','nav-link ');
			$('#navbar').children().eq(1).children().eq(0).addClass('active');
		}
	});
</script>
</body>
</html>