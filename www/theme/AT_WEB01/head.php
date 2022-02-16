<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if (G5_IS_MOBILE) {
    include_once(G5_THEME_MOBILE_PATH.'/head.php');
    return;
}

include_once(G5_THEME_PATH.'/head.sub.php');
include_once(G5_LIB_PATH.'/latest.lib.php');
include_once(G5_LIB_PATH.'/outlogin.lib.php');
include_once(G5_LIB_PATH.'/poll.lib.php');
include_once(G5_LIB_PATH.'/visit.lib.php');
include_once(G5_LIB_PATH.'/connect.lib.php');
include_once(G5_LIB_PATH.'/popular.lib.php');
?>

<script>
    new WOW().init();
</script>
<script>
    $(function() {
        $("#gnb .gnb_1dli").mouseenter(function() {
            var menuWidth = $("#gnb .gnb_1dli").outerWidth();
            var menuLeft = 0;
            var index = $(this).index();

            for (var i = 0; i <= index - 1; i++) {
                menuLeft += $("#gnb .gnb_1dli").eq(i).outerWidth();
            }
            menuLeft -= $(this).outerWidth();
            $("#nav_bar").stop().animate({
                width: menuWidth,
                left: menuLeft
            }, 300);
        });

        $("#gnb").mouseleave(function() {
            $("#nav_bar").stop().animate({
                width: 0,
                left: 0
            }, 0);
        });
        setInterval(function() {
            if ($(window).scrollTop() >= 90) {
                $("#hd").addClass("scrollBg");
                $("#logo img.logo_pc").attr("src", "<?php echo G5_THEME_IMG_URL ?>/common/logo.png");
            } else {
                $("#hd").removeClass("scrollBg");
                $("#logo img.logo_pc").attr("src", "<?php echo G5_THEME_IMG_URL ?>/common/logo_white.png");
            }
        }, 300);
    });
</script>

<!-- 상단 시작 { -->
<div id="hd">
    <h1 id="hd_h1"><?php echo $g5['title'] ?></h1>

    <div id="skip_to_container"><a href="#container">본문 바로가기</a></div>

    <?php
    if(defined('_INDEX_')) { // index에서만 실행
        include G5_BBS_PATH.'/newwin.inc.php'; // 팝업레이어
    }
    ?>
    <div id="hd_wrapper">
        <div class="inner">
            <div id="mb-open-menu">
                <span class="line1"></span>
                <span class="line2"></span>
                <span class="line3"></span>
            </div>
            <div id="tnb">
                <ul>
                    <?php if ($is_member) {  ?>
                    <li class="register"><a href="<?php echo G5_BBS_URL ?>/member_confirm.php?url=<?php echo G5_BBS_URL ?>/register_form.php"><i class="fa fa-cog" aria-hidden="true"></i> 정보수정</a></li>
                    <li class="logout"><a href="<?php echo G5_BBS_URL ?>/logout.php"><i class="fa fa-sign-out" aria-hidden="true"></i> 로그아웃</a></li>
                    <?php if ($is_admin) {  ?>
                    <li class="tnb_admin"><a href="<?php echo G5_ADMIN_URL ?>"><b><i class="fa fa-user-circle" aria-hidden="true"></i> 관리자</b></a></li>
                    <?php }  ?>
                    <?php } else {  ?>
                    <li class="join"><a href="<?php echo G5_BBS_URL ?>/register.php"><i class="fa fa-user-plus" aria-hidden="true"></i> 회원가입</a></li>
                    <li class="login"><a href="<?php echo G5_BBS_URL ?>/login.php"><b><i class="fa fa-sign-in" aria-hidden="true"></i> 로그인</b></a></li>
                    <?php }  ?>
                </ul>
            </div>
            
           
            <div id="logo">
                <a href="<?php echo G5_URL ?>">
                    윷놀이 한마당
                </a>
            </div>


            <nav id="gnb">
                <h2>메인메뉴</h2>
                <div class="gnb_wrap">
                    <ul id="gnb_1dul">
                        <li class="gnb_1dli gnb_mnal"><button type="button" class="gnb_menu_btn"><i class="fa fa-bars" aria-hidden="true"></i><span class="sound_only">전체메뉴열기</span></button></li>
                        <li class="gnb_1dli">
                            <a href="#" class="gnb_1da">대회소개</a>
                        <!-- <li class="gnb_2dli"><a href="<?php echo $row2['me_link']; ?>" target="_<?php echo $row2['me_target']; ?>" class="gnb_2da"><?php echo $row2['me_name'] ?></a></li> -->
                        </li>
						<li class="gnb_1dli">
                            <a href="/pages/test.php" class="gnb_1da">참가신청</a>
                        </li>

						<li class="gnb_1dli">
                            <a href="#" class="gnb_1da">본선안내</a>
                        </li>

						<li class="gnb_1dli">
                            <a href="#" class="gnb_1da">공지사항</a>
                        </li>
                    </ul>
                </div>
                <div id="nav_bar"></div>
            </nav>
            <script>
                $(function() {
                    $(".gnb_menu_btn").click(function() {
                        $("#gnb_all").show();
                    });
                    $(".gnb_close_btn").click(function() {
                        $("#gnb_all").hide();
                    });
                });
            </script>
        </div>
    </div>
</div>
<!-- } 상단 끝 -->
<!--<div class="popup_log">-->
    
<!--</div>-->

<hr>

<!-- 콘텐츠 시작 { -->
<div id="wrapper">
    <div id="container_wr">

        <div id="container">
            <?php if (!defined("_INDEX_")) { ?><h2 id="container_title"><span title="<?php echo get_text($g5['title']); ?>"><?php echo get_head_title($g5['title']); ?></span></h2><?php } ?>