<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>메인화면</title>
    <jsp:include page="../include/top.jsp"/>
</head>
<body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled toolbar-fixed toolbar-tablet-and-mobile-fixed aside-enabled aside-fixed" style="--kt-toolbar-height:55px;--kt-toolbar-height-tablet-and-mobile:55px">
    <div class="page d-flex flex-row flex-column-fluid">

        <jsp:include page="../include/aside.jsp" flush="true"/>

        <div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
            <%-- TODO :: 헤더 분리 --%>
            <jsp:include page="../include/header.jsp" flush="true"/>
            <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
                <!--begin::Toolbar-->
                <jsp:include page="../include/toolbar.jsp" flush="true">
                    <jsp:param name="mainCategory" value="메인 화면"/>
                    <jsp:param name="subCategory" value="반갑습니다"/>
                </jsp:include>

                <div class="post d-flex flex-column-fluid" id="kt_post">
                    <div id="kt_content_container" class="container">
                        <!--begin::Card-->
                        <div class="card">
                            <div class="card-body p-0">
                                <!--begin::Wrapper-->
                                <div class="card-px text-center py-20 my-10">
                                    <!--begin::Title-->
                                    <h2 class="fs-2x fw-bolder mb-10">안녕하세요!</h2>
                                    <!--end::Title-->
                                    <!--begin::Description-->
                                    <p class="text-gray-400 fs-4 fw-bold mb-10">
                                        이 공간은 최지연의 게시판 입니다.
                                        <br>
                                        자유롭게 글을 게시해주세요. 이곳은 COPY 했어요.</p>
                                    <!--end::Description-->
                                    <!--begin::Action-->
                                    <br>
                                    <button type="button" class="btn btn-sm btn-primary" onclick="location.href='./list'">게시글 목록으로 가기</button>
                                    <!--end::Action-->
                                </div>
                                <!--end::Wrapper-->
                                <!--begin::Illustration-->
                                <div class="text-center px-4">
                                    <img class="mw-100 mh-300px" alt="" src="assets/media/illustrations/statistics.png">
                                </div>
                                <!--end::Illustration-->
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <jsp:include page="../include/footer.jsp" flush="true"/>
        </div>
    </div>
</body>
<jsp:include page="../include/bottom.jsp"/>
</html>

