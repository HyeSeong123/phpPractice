<?php
    include_once('./_common.php'); 
	error_reporting(E_ALL);
	ini_set("display_errors", 1);

    $team_name = $_POST['team_name'];
    $attend_area = $_POST['attend_area'];
    $leader_name = $_POST['leader_name'];
    $leader_ph = $_POST['leader_ph'];
    $leader_postcode = $_POST['leader_postcode'];
    $leader_address = $_POST['leader_address'];
    $leader_address_detail = $_POST['leader_address_detail'];
    $team_member1_name = $_POST['member1_name'];
    $team_member1_ph = $_POST['member1_ph'];
    $team_member2_name = $_POST['member2_name'];
    $team_member2_ph = $_POST['member2_ph'];
    $team_member3_name = $_POST['member3_name'];
    $team_member3_ph = $_POST['member3_ph'];
    $team_member4_name = $_POST['member4_name'];
    $team_member4_ph = $_POST['member4_ph'];

    if( mb_strlen($team_name , 'utf-8') <= 3 ){
        echo '<script>alert(\'팀명은 세 글자 이상이어야 합니다.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($attend_area , 'utf-8') <= 0 ){
        echo '<script>alert(\'참가 권역을 입력해주세요.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($leader_name , 'utf-8') <= 0 ){
        echo '<script>alert(\'대표자 이름을 입력해주세요.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($leader_ph , 'utf-8') <= 0 ){
        echo '<script>alert(\'대표자 연락처를 입력해주세요.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($leader_postcode , 'utf-8') <= 0 ){
        echo '<script>alert(\'대표자 우편번호를 입력해주세요.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($leader_address , 'utf-8') <= 0 ){
        echo '<script>alert(\'대표자 주소지를 입력해주세요.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($leader_address_detail , 'utf-8') <= 0 ){
        echo '<script>alert(\'대표자 상세주소를 입력해주세요.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($team_member1_name , 'utf-8') <= 0 ){
        echo '<script>alert(\'팀 구성원 첫번째 칸이 비었습니다.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($team_member1_ph , 'utf-8') <= 0 ){
        echo '<script>alert(\'팀 구성원 첫번째 칸이 비었습니다.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($team_member2_name , 'utf-8') <= 0 ){
        echo '<script>alert(\'팀 구성원 두번째 칸이 비었습니다.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($team_member2_ph , 'utf-8') <= 0 ){
        echo '<script>alert(\'팀 구성원 두번째 칸이 비었습니다.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($team_member3_name , 'utf-8') <= 0 ){
        echo '<script>alert(\'팀 구성원 세번째 칸이 비었습니다.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($team_member3_ph , 'utf-8') <= 0 ){
        echo '<script>alert(\'팀 구성원 세번째 칸이 비었습니다.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($team_member4_name , 'utf-8') <= 0 ){
        echo '<script>alert(\'팀 구성원 네번째 칸이 비었습니다.\'); location.href=\'./test.php\';</script>';
    } else if( mb_strlen($team_member4_ph , 'utf-8') <= 0 ){
        echo '<script>alert(\'팀 구성원 네번째 칸이 비었습니다.\'); location.href=\'./test.php\';</script>';
    }

	$sql_select = "
	SELECT id,
	regDate,
	team_name,
	attend_area,
	leader_name,
	leader_ph,
	leader_postcode,
	leader_address,
	leader_address_detail,
	team_member1_name,
	team_member1_ph,
	team_member2_name,
	team_member2_ph,
	team_member3_name,
	team_member3_ph,
	team_member4_name,
	team_member4_ph,
	entry_status
	FROM yutentry;
	";

	$result = sql_fetch($sql_select);

	if( $result['team_name'] == $team_name ){
		echo
		"	
			<script>
				alert(\"같은 이름의 팀이 존재합니다. 다른 팀명을 사용해주세요.\");
				location.href=\"./test.php\";
			</script>
		";
	}

	if( $result['leader_name'] == $leader_name && $result['leader_ph'] == $leader_ph){
		echo
		"	
			<script>
				alert(\"$leader_name 님이 이미 신청되었습니다.\");
				location.href=\"./test.php\";
			</script>
		";
	}

	if( $result['team_member1_name'] == $team_member1_name && $result['team_member1_ph'] == $team_member1_ph){
		echo
		"	
			<script>
				alert(\"$team_member1_name 님이 이미 신청되었습니다.\");
				location.href=\"./test.php\";
			</script>
		";
	} else if( $result['team_member2_name'] == $team_member2_name && $result['team_member2_ph'] == $team_member2_ph){
		echo
		"	
			<script>
				alert(\"$team_member2_name 님이 이미 신청되었습니다.\");
				location.href=\"./test.php\";
			</script>
		";
	} else if( $result['team_member3_name'] == $team_member3_name && $result['team_member3_ph'] == $team_member3_ph){
		echo
		"	
			<script>
				alert(\"$team_member3_name 님이 이미 신청되었습니다.\");
				location.href=\"./test.php\";
			</script>
		";
	} else if( $result['team_member4_name'] == $team_member4_name && $result['team_member4_ph'] == $team_member4_ph){
		echo
		"	
			<script>
				alert(\"$team_member4_name 님이 이미 신청되었습니다.\");
				location.href=\"./test.php\";
			</script>
		";
	}
	
    $sql_insert = "insert into `yutentry`
            (id, regDate , team_name, attend_area , leader_name ,
            leader_ph, leader_postcode, leader_address, leader_address_detail,
            team_member1_name, team_member1_ph, team_member2_name, team_member2_ph,
            team_member3_name, team_member3_ph, team_member4_name, team_member4_ph, entry_status) VALUES
            ('0', NOW(), '$team_name', '$attend_area', '$leader_name',
            '$leader_ph', '$leader_postcode', '$leader_address', '$leader_address_detail',
            '$team_member1_name', '$team_member1_ph', '$team_member2_name', '$team_member2_ph',
            '$team_member3_name', '$team_member3_ph', '$team_member4_name', '$team_member4_ph', default)";

    sql_query($sql_insert);
	
	echo
	"
	<script>
		alert(\"신청이 완료되었습니다.\");
		location.href=\"./test.php\";
	</script>	
	";
?>