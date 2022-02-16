<?php
include_once('./_common.php'); 
include_once(G5_THEME_PATH.'/head.php');
include_once(G5_LIB_PATH.'/mailer.lib.php');

?>
<head>
	<link rel="stylesheet" href="./style.css">
</head>

<script>
	function formMemberInfor(){
		let formSend = false;
		let frm = document.getElementById("memberInfor");

		if ( frm.team_name.value.trim().length <= 0 ){
			alert('팀명을 입력해주세요.');
			frm.team_name.focus();
			return;
		} else if ( frm.attend_area.value.trim().length <= 0 ){
			alert('참가 권역을 입력해주세요.');
			return;
		} else if ( frm.leader_name.value.trim().length <= 0 ){
			alert('대표자 이름을 입력해주세요.');
			frm.leader_name.focus();
			return;
		} else if ( frm.leader_ph.value.trim().length <= 0 ){
			alert('대표자 연락처를 입력해주세요.');
			frm.leader_ph.focus();
			return;
		} else if ( frm.leader_postcode.value.trim().length <= 0 ){
			alert('대표자 우편번호를 입력해주세요.');
			frm.leader_postcode.focus();
			return;
		} else if ( frm.leader_address.value.trim().length <= 0 ){
			alert('대표자 주소지를 입력해주세요.');
			frm.leader_address.focus();
			return;
		} else if ( frm.leader_postcode.value.trim().length <= 0 ){
			alert('대표자 상세주소를 입력해주세요.');
			frm.leader_address.focus();
			return;
		} else if ( frm.member1_name.value.trim().length <= 0 || frm.member1_ph.value.trim().length <= 0){
		 	alert('팀 구성원 첫번째 칸이 비었습니다.');
			if( frm.member1_name.value.trim().length <= 0 ){
				frm.member1_name.focus();
			} else {
				frm.member1_ph.focus();
			}
			return;
		} else if ( frm.member2_name.value.trim().length <= 0 || frm.member2_ph.value.trim().length <= 0){
			alert('팀 구성원 두번째 칸이 비었습니다.');
			if( frm.member2_name.value.trim().length <= 0 ){
				frm.member2_name.focus();
			} else {
				frm.member2_ph.focus();
			}
			return;
		} else if ( frm.member3_name.value.trim().length <= 0 || frm.member3_ph.value.trim().length <= 0){
			alert('팀 구성원 세번째 칸이 비었습니다.');
			if( frm.member3_name.value.trim().length <= 0 ){
				frm.member3_name.focus();
			} else {
				frm.member3_ph.focus();
			}
			return;
		} else if ( frm.member4_name.value.trim().length <= 0 || frm.member4_ph.value.trim().length <= 0){
			alert('팀 구성원 네번째 칸이 비었습니다.');
			if( frm.member4_name.value.trim().length <= 0 ){
				frm.member4_name.focus();
			} else {
				frm.member4_ph.focus();
			}
			return;
		}
		
		formSend = true;
		
		if(formSend){
			frm.method = "POST";
			frm.submit();
		}
	}
</script>

<div class="bannerWrap">
    <img src="<?php echo G5_THEME_IMG_URL ?>/main/banner1.png">
    <div>
        <img class="wow fadeInDown" data-wow-delay="0s" src="<?php echo G5_THEME_IMG_URL ?>/main/banner_logo.png">
        <h2 class="wow fadeInDown" data-wow-delay="0.3s">골뱅이커뮤니케이션</h2>
        <p class="wow fadeInDown" data-wow-delay="0.6s">골뱅이스토어는 고객들의 의견을 존중하고<span>획기적인 기획과 저가격으로 최고의 효과로 마케팅을 합니다.</span></p>
        <div class="square_bracket1 wow fadeInLeft" data-wow-delay="0.1s"></div>
        <div class="square_bracket2 wow fadeInRight" data-wow-delay="0.1s"></div>
    </div>
</div>

<div class="aboutWrap">
   <div class="box inner">
        <div class="main_title">
            <h2 class="wow fadeInDown" data-wow-delay="0.3s"><span>전국 윷놀이 한마당</span>대회 참가 신청</h2>
            <p class="wow fadeInDown" data-wow-delay="0.4s">＊참가신청서 기재한 개인정보는 참가신청 이외에 어떤 곳에서 사용되지 않습니다.</p>
        </div>
        
		<div class="attend_tab">
			<div class="tab01">
				<span>참가 안내</span>
			</div>
			<div class="tab02">
				<span>참가 신청</span>
			</div>
			<div class="tab03">
				<span>참가 확인</span>
			</div>
		</div>

		<section class="entry_form">
			<div class="graph_caption">
				<span>참가팀 정보</span>
				<span class="flex-grow-1"></span>
				<span>＊ 표시는 필수 입력 정보입니다.</span>
			</div>
			
			<form method="POST" id="memberInfor" action="./testWrite.php">
				<div class="graph">
					<div class="team_name">
						<span class="graph_left">팀명</span>
						<span class="graph_right"><input type="text" name="team_name" placeholder="팀명" /></span>
					</div>

					<div class="team_area">
						<span class="graph_left">참가 권역</span>
						<span class="graph_right">
							<div class="graph_radio">
								<div>
									<label><input type="radio" name="attend_area" value="서울특별시/인천광역시" />서울특별시/인천광역시</label>
									<label><input type="radio" name="attend_area" value="경기도" />경기도</label>
									<label><input type="radio" name="attend_area" value="충청북도" />충청북도</label>
									<label><input type="radio" name="attend_area" value="충청남도/대전광역시/세종특별자치시" />충청남도/대전광역시/세종특별자치시</label>
									<label><input type="radio" name="attend_area" value="전라북도" />전라북도</label>
									<label><input type="radio" name="attend_area" value="전라남도/광주광역시" />전라남도/광주광역시</label>
									<label><input type="radio" name="attend_area" value="제주특별자치도" />제주특별자치도</label>
								</div>
								<div>
									<label><input type="radio" name="attend_area" value="경상북도/대구광역시" />경상북도/대구광역시</label>
									<label><input type="radio" name="attend_area" value="경상남도/부산광역시" />경상남도/부산광역시</label>
									<label><input type="radio" name="attend_area" value="강원도" />강원도</label>
								</div>
							</div>
						</span>
					</div>

					<div class="team_leaderName">
						<span class="graph_left">대표자 이름</span>
						<span class="graph_right"><input type="text" name="leader_name" placeholder="대표자 이름" /></span>
					</div>

					<div class="team_number">
						<span class="graph_left">대표자 연락처</span>
						<span class="graph_right"><input type="text" name="leader_ph" placeholder="대표자 연락처" /></span>
					</div>

					<div class="team_address">
						<span class="graph_left">대표자 주소지</span>
						
						<span class="graph_right leader_postcodeBox">
							<div>
								<input type="text" readonly name="leader_postcode" placeholder="우편번호" class="leader_postcode" />
								<input type="button" onclick="sample3_execDaumPostcode()" value="우편번호 찾기" class="find_postcode"><br>
							</div>
							<div>
								<span class="graph_right"><input type="text" readonly name="leader_address" placeholder="대표자 주소지" class="leader_address" /></span>
							</div>
							<div>
								<span class="graph_right"><input type="text" name="leader_address_detail" placeholder="상세주소" class="leader_address_detail" /></span>
							</div>

							<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
								<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
							</div>
						</span>
					</div>

					<div class="team_memberInfor">
						<span class="graph_left">팀 구성원 이름 및 연락처</span>
						<span class="graph_right">
							<div>
								<input type="text" name="member1_name" placeholder="팀 구성원 이름" />
								<input type="text" name="member1_ph" placeholder="팀 구성원 연락처" />
							</div>
							<div>
								<input type="text" name="member2_name" placeholder="팀 구성원 이름" />
								<input type="text" name="member2_ph" placeholder="팀 구성원 연락처" />
							</div>
							<div>
								<input type="text" name="member3_name" placeholder="팀 구성원 이름" />
								<input type="text" name="member3_ph" placeholder="팀 구성원 연락처" />
							</div>
							<div>
								<input type="text" name="member4_name" placeholder="팀 구성원 이름" />
								<input type="text" name="member4_ph" placeholder="팀 구성원 연락처" />
							</div>
						</span>
					</div>
				</div>

				<div class="btn_graph_submit">
					<button type="button" onclick="formMemberInfor()">신청완료</button>
				</div>
			</form>
		</section>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			// 우편번호 찾기 찾기 화면을 넣을 element
			var element_wrap = document.getElementById('wrap');

			function foldDaumPostcode() {
				// iframe을 넣은 element를 안보이게 한다.
				element_wrap.style.display = 'none';
			}

			function sample3_execDaumPostcode() {
				// 현재 scroll 위치를 저장해놓는다.
				var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
				new daum.Postcode({
					oncomplete: function(data) {
						// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.querySelector(".leader_postcode").value = data.zonecode;
						document.querySelector(".leader_address").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.querySelector(".leader_address_detail").focus();

						// iframe을 넣은 element를 안보이게 한다.
						// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
						element_wrap.style.display = 'none';

						// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
						document.body.scrollTop = currentScroll;
					},
					// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
					onresize : function(size) {
						element_wrap.style.height = size.height+'px';
					},
					width : '100%',
					height : '100%'
				}).embed(element_wrap);

				// iframe을 넣은 element를 보이게 한다.
				element_wrap.style.display = 'block';
			}
		</script>

		<section class="entry_check">
			<div class="graph_caption">
				<span>참가 확인</span>
			</div>

			<form method="POST" id="memberCheck" action="javascript:formMemberInfor();">
				<div class="graph">
					<div class="team_name">
						<span class="graph_left">이름</span>
						<span class="graph_right"><input type="text" name="member_name" placeholder="이름" /></span>
					</div>
					<div class="team_memberName">
						<span class="graph_left">연락처</span>
						<span class="graph_right"><input type="text" name="member_ph" placeholder="연락처" /></span>
					</div>
				</div>

				<div class="btn_graph_submit">
					<button type="submit">찾기</button>
				</div>

			</form>
		</section>
	</div>
</div>

<script>
	let entryForm = document.querySelector('.entry_form');
	let entryCheck = document.querySelector('.entry_check');
	let tab02 = document.querySelector('.tab02');
	let tab03 = document.querySelector('.tab03');

	tab02.classList.add('active');
	entryForm.classList.add('active');

	tab02.addEventListener('click',function(){
		entryForm.classList.add('active');
		entryCheck.classList.remove('active');
		tab02.classList.add('active');
		tab03.classList.remove('active');
	});

	tab03.addEventListener('click',function(){
		entryCheck.classList.add('active');
		entryForm.classList.remove('active');
		tab03.classList.add('active');
		tab02.classList.remove('active');
	});
</script>
<?php
include_once(G5_THEME_PATH.'/tail.php');
?>