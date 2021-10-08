<%@ page import="com.example.board.dto.BoardDto" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="ko">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>글 수정하기</title>
    <jsp:include page="../include/top.jsp"/>
</head>
    <body id="kt_body" class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled toolbar-fixed toolbar-tablet-and-mobile-fixed aside-enabled aside-fixed" style="--kt-toolbar-height:55px;--kt-toolbar-height-tablet-and-mobile:55px">
    <div class="page d-flex flex-row flex-column-fluid">
        <!--begin::Aside-->
        <jsp:include page="../include/aside.jsp" flush="true"/>
        <!--end::Aside-->

        <!--begin::Wrapper-->
        <div class="wrapper d-flex flex-column flex-row-fluid" id="kt_wrapper">
            <!--begin::Header-->
            <%-- TODO :: 헤더 분리 --%>
            <jsp:include page="../include/header.jsp" flush="true"/>
            <!--end::Header-->
            <!--begin::Content-->
            <div class="content d-flex flex-column flex-column-fluid" id="kt_content">
                <!--begin::Toolbar-->
                <jsp:include page="../include/toolbar.jsp" flush="true">
                    <jsp:param name="mainCategory" value="게시판"/>
                    <jsp:param name="subCategory" value="게시글 수정"/>
                </jsp:include>
                <!--end::Toolbar-->
                <!--begin::Post-->
                <div class="post d-flex flex-column-fluid" id="kt_post">
                    <!--begin::Container-->
                    <div id="kt_content_container" class="container">

                        <div class="card">
                            <div class="card-body pt-0"></div>


                            <div class="modal-body scroll-y px-10 px-lg-15 pt-0 pb-15">
                                <!--begin:Form-->
                                <form action="/boardModify" method="post" id="kt_modal_new_target_form"
                                      class="form fv-plugins-bootstrap5 fv-plugins-framework">

                                    <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
                                        <label for="boardSeq" class="fs-6 fw-bold mb-2">글번호</label>

                                            <input type="text" class="form-control form-control-solid" name="boardSeq" readonly ="readonly" value="${boardDto.boardSeq}" id="boardSeq">

                                    </div>

                                    <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
                                        <!--begin::Label-->
                                        <label for="title" class="fs-6 fw-bold mb-2">제목</label>
                                        <!--end::Label-->
                                        <input type="text" class="form-control form-control-solid"
                                               name="title" value="${boardDto.title}"
                                               id="title">
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>

                                    <div class="d-flex flex-column mb-8">
                                        <label for="contents" class="fs-6 fw-bold mb-2">내용</label>
                                        <textarea class="form-control form-control-solid" rows="10" id="contents"
                                                  name="contents">${boardDto.contents}</textarea>
                                    </div>

                                    <!--begin::Actions-->
                                    <div class="text-center">
                                        <button onclick="location.href='boardRead?boardSeq=${boardDto.boardSeq}'"  type="reset" id="kt_modal_new_target_cancel" class="btn btn-light me-3">
                                            취소
                                        </button>
                                        <button type="submit" id="kt_modal_new_target_submit" class="btn btn-primary">
                                            <span class="indicator-label">수정완료</span>
                                            <span class="indicator-progress">Please wait...
															<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                                        </button>
                                    </div>
                                    <!--end::Actions-->
                                    <div>
                                    </div>
                                </form>
                                <!--end:Form-->
                            </div>
                        </div>

                    </div>
                    <!--end::Container-->
                </div>
                <!--end::Post-->
            </div>
            <!--end::Content-->

            <!--begin::Footer-->
            <jsp:include page="../include/footer.jsp" flush="true"/>
            <!--end::Footer-->
        </div>
    </div>
    </body>
<jsp:include page="../include/bottom.jsp"/>

</html>