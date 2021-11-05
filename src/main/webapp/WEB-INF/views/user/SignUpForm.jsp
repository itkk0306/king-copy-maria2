<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html lang="ko">
<head>
    <title>회원가입</title>
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
                <jsp:param name="mainCategory" value="안녕하세요!"/>
                <jsp:param name="subCategory" value="회원 가입"/>
            </jsp:include>
            <!--end::Toolbar-->
            <!--begin::Post-->
            <div class="post d-flex flex-column-fluid" id="kt_post">
                <!--begin::Container-->
                <div id="kt_content_container" class="container">
                    <div class="card">
                        <div class="card-body pt-0"></div>


                        <div class="flex-row-fluid d-flex flex-center justfiy-content-xl-first p-10">
                            <!--begin::Wrapper-->
                            <div class="d-flex flex-center p-15 shadow rounded w-100 w-md-750px mx-auto ">
                                <!--begin::Form-->
                                <form method="post" class="form fv-plugins-bootstrap5 fv-plugins-framework" novalidate="novalidate"
                                      id="kt_free_trial_form" >
                                    <!--begin::Heading-->
                                    <div class="text-center mb-10">
                                        <!--begin::Title-->
                                        <h1 class="text-dark mb-3">안녕하세요!</h1>
                                        <!--end::Title-->
                                        <!--begin::Link-->
                                        <div class="text-gray-400 fw-bold fs-4">빠른 가입은 신상에 좋습니다!
                                            <a href="#" class="link-primary fw-bolder">이유는?</a>
                                        </div>
                                        <!--end::Link-->
                                    </div>
                                    <!--begin::Heading-->
                                    <!--begin::Input group-->
                                    <div class="fv-row mb-10 fv-plugins-icon-container">
                                        <label class="form-label fw-bolder text-dark fs-6">ID</label>
                                        <input class="form-control form-control-solid" type="id" placeholder=""
                                               name="user_id" autocomplete="off">
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>
                                    <div class="fv-row mb-10 fv-plugins-icon-container">
                                        <label class="form-label fw-bolder text-dark fs-6">Email</label>
                                        <input class="form-control form-control-solid" type="email" placeholder=""
                                               name="user_email" autocomplete="off">
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>
                                    <!--end::Input group-->
                                    <!--begin::Input group-->
                                    <div class="mb-7 fv-row fv-plugins-icon-container" data-kt-password-meter="true">
                                        <!--begin::Wrapper-->
                                        <div class="mb-1">
                                            <!--begin::Label-->
                                            <label class="form-label fw-bolder text-dark fs-6">Password</label>
                                            <!--end::Label-->
                                            <!--begin::Input wrapper-->
                                            <div class="position-relative mb-3">
                                                <input class="form-control form-control-solid" type="password"
                                                       placeholder="" name="user_pw" autocomplete="off">
                                                <span class="btn btn-sm btn-icon position-absolute translate-middle top-50 end-0 me-n2"
                                                      data-kt-password-meter-control="visibility">
											<i class="bi bi-eye-slash fs-2"></i>
											<i class="bi bi-eye fs-2 d-none"></i>
										</span>
                                            </div>
                                            <!--end::Input wrapper-->
                                            <!--begin::Meter-->
                                            <div class="d-flex align-items-center mb-3"
                                                 data-kt-password-meter-control="highlight">
                                                <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2"></div>
                                                <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2"></div>
                                                <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px me-2"></div>
                                                <div class="flex-grow-1 bg-secondary bg-active-success rounded h-5px"></div>
                                            </div>
                                            <!--end::Meter-->
                                        </div>
                                        <!--end::Wrapper-->
                                        <!--begin::Hint-->
                                        <div class="text-muted">
                                            8자 이상의 숫자 &amp; 문자를 조합해 비밀번호를 설정하세요!
                                            <br>
                                            대소문자, 숫자, 특수기호 모두 들어간다면, 이는 보안에 강력하게 대응할 수 있는 비밀번호가 될 것입니다.
                                        </div>
                                        <!--end::Hint-->
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>
                                    <!--end::Input group=-->
                                    <!--begin::Row-->
                                    <div class="fv-row mb-10 fv-plugins-icon-container">
                                        <label class="form-label fw-bolder text-dark fs-6">Confirm Password</label>
                                        <input class="form-control form-control-solid" type="password" placeholder=""
                                               name="confirm-password" autocomplete="off">
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>
                                    <!--end::Row-->
                                    <!--begin::Row-->
                                    <div class="fv-row mb-10 fv-plugins-icon-container">
                                        <label class="form-check form-check-custom form-check-solid form-check-inline mb-5">
                                            <input class="form-check-input" type="checkbox" name="toc" value="1">
                                            <span class="form-check-label fw-bold text-gray-700"> 최지연에게 이 정보를 넘기는 것을 동의합니다.
									<a href="#" class="link-primary ms-1">싫다면?</a></span>
                                        </label>
                                        <div class="fv-plugins-message-container invalid-feedback"></div>
                                    </div>
                                    <!--end::Row-->
                                    <!--begin::Row-->
                                    <div class="text-center pb-lg-0 pb-8">
                                        <button type="submit" id="kt_free_trial_submit"
                                                class="btn btn-lg btn-primary fw-bolder">
                                            <span class="indicator-label">확인</span>
                                            <span class="indicator-progress">Please wait...
									<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
                                        </button>
                                    </div>
                                    <!--end::Row-->
                                    <div></div>
                                </form>
                                <!--end::Form-->
                            </div>
                            <!--end::Wrapper-->
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
