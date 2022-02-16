<?php
    include_once('./_common.php'); 

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

    $sql = "insert into `yutentry`
            (id, regDate , team_name, attend_area , leader_name ,
            leader_ph, leader_postcode, leader_address, leader_address_detail,
            team_member1_name, team_member1_ph, team_member2_name, team_member2_ph,
            team_member3_name, team_member3_ph, team_member4_name, team_member4_ph, entryStatus) VALUES
            ('0', NOW(), '$team_name', '$attend_area', '$leader_name',
            '$leader_ph', '$leader_postcode', '$leader_address', '$leader_address_detail',
            '$team_member1_name', '$team_member1_ph', '$team_member2_name', '$team_member2_ph',
            '$team_member3_name', '$team_member3_ph', '$team_member4_name', '$team_member4_ph', default)";

    sql_query($sql);
?>
<script>
console.log(<?php echo $sql ?>)
</script>
<div>내용 : <?php echo $sql ?> </div>