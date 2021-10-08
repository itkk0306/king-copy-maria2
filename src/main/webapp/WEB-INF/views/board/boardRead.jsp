<%@ page import="com.example.board.dto.BoardDto" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="ko">
<head>
    <title>글 상세</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Spring Boot Application with JSP</title>
    <jsp:include page="../include/top.jsp"/>
</head>
<body id="kt_body"
      class="header-fixed header-tablet-and-mobile-fixed toolbar-enabled toolbar-fixed toolbar-tablet-and-mobile-fixed aside-enabled aside-fixed"
      style="--kt-toolbar-height:55px;--kt-toolbar-height-tablet-and-mobile:55px">
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
                <jsp:param name="subCategory" value="게시글 보기"/>
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
                            <form name="form" method="post" id="kt_modal_new_target_form"
                                  class="form fv-plugins-bootstrap5 fv-plugins-framework">
                                <!--begin::Heading-->
                                <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
                                <label for="boardSeq" class="fs-6 fw-bold mb-2">글번호</label>
                                    <input class = "form-control form-control-solid" id = "boardSeq" name="boardSeq" readonly="readonly" value="${boardDto.boardSeq}">
                                </div>
                                <!--end::Heading-->
                                <!--begin::Input group-->
                                <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
                                    <!--begin::Label-->
                                    <label for="title" class="fs-6 fw-bold mb-2">제목</label>
                                    <!--end::Label-->
                                    <input type="text" class="form-control form-control-solid"
                                           placeholder="제목을 입력하시오" name="title" readonly="readonly" value="${boardDto.title}"
                                           id="title">
                                    <div class="fv-plugins-message-container invalid-feedback"></div>
                                </div>

                                <div class="d-flex flex-column mb-8">
                                    <label for="contents" class="fs-6 fw-bold mb-2">내용</label>
                                    <textarea class="form-control form-control-solid" rows="3" id = "contents" name="contents" readonly="readonly"> ${boardDto.contents}</textarea>
                                </div>

                                <div>
                                </div>
                            </form>
                            <!--end:Form-->
                            <div class="text-center">
                            <button class="btn btn-light me-3"
                                    onclick="location.href='list'">목록
                            </button>
                            <button class="btn btn-primary  me-3" id="modify"
                                    onclick="location.href='boardModifyForm?boardSeq=${boardDto.boardSeq}'">수정
                            </button>
<%--                            <button class="btn btn-primary" id="delete"--%>
<%--                                    onclick="location.href='boardDelete?boardSeq=${boardDto.boardSeq}'">삭제--%>
<%--                            </button>--%>
                                <button class="btn btn-danger" data-bs-toggle="modal"
                                   data-bs-target="#kt_modal_1"
                                   onclick="deleteModal('${boardDto.boardSeq}');">
                                    삭제하기
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end::Container-->
            </div>
            <!--end::Post-->
        </div>
        <!--end::Content-->

        <div class="modal fade" tabindex="-1" id="kt_modal_1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">삭제</h5>
                        <input type="" name="deleteId" id="deleteId" value=""/>
                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2" data-bs-dismiss="modal"
                             aria-label="Close">
                            <span class="svg-icon svg-icon-2x"></span>
                        </div>
                        <!--end::Close-->
                    </div>

                    <div class="modal-body">
                        <p>정말 삭제하시겠습니까?</p>
                    </div>

                    <div class="modal-footer">
                        <%--                    <button id="delete" onclick="location.href='boardDelete?boardSeq=${boardDto.boardSeq}'" type="button" class="btn btn-primary">삭제합니다</button>--%>
                        <button class="btn btn-primary" id="deleteBtn" onclick="deleteBoard();">삭제</button>
                        <button type="button" class="btn btn-light" data-bs-dismiss="modal">취소</button>
                    </div>
                </div>
            </div>
        </div>
        <!--begin::Footer-->
        <jsp:include page="../include/footer.jsp" flush="true"/>
        <!--end::Footer-->
    </div>
</div>
</body>
<script>
    function deleteModal(id) {
        $('#kt_modal_1').modal('show');
        $("#deleteId").val(id);
    }

    function deleteBoard() {
        location.href = 'boardDelete?boardSeq=' + $("#deleteId").val();
    }
</script>
<jsp:include page="../include/bottom.jsp"/>
</html>