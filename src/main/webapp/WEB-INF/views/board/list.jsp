<%@ page import="com.example.board.dto.BoardDto" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>게시글 목록</title>
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
                <jsp:param name="subCategory" value="게시글 목록"/>
            </jsp:include>
            <!--end::Toolbar-->
            <!--begin::Post-->
            <div class="post d-flex flex-column-fluid" id="kt_post">
                <!--begin::Container-->

                <div id="kt_content_container" class="container">
                    <!--begin::Card-->
                    <div class="card">
                        <!--begin::Card header-->
                        <div class="card-header border-0 pt-6">
                            <!--begin::Card title-->
                            <div class="card-title">
                                <!--begin::Search-->
                                <div class="d-flex align-items-center position-relative my-1">
                                    <!--begin::Svg Icon | path: icons/duotone/General/Search.svg-->
                                    <span class="svg-icon svg-icon-1 position-absolute ms-6">
													<svg xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                                                         height="24px" viewBox="0 0 24 24" version="1.1">
														<g stroke="none" stroke-width="1" fill="none"
                                                           fill-rule="evenodd">
															<rect x="0" y="0" width="24" height="24"></rect>
															<path d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
                                                                  fill="#000000" fill-rule="nonzero"
                                                                  opacity="0.3"></path>
															<path d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
                                                                  fill="#000000" fill-rule="nonzero"></path>
														</g>
													</svg>
												</span>
                                    <!--end::Svg Icon-->
                                    <input type="text" data-kt-subscription-table-filter="search"
                                           class="form-control form-control-solid w-250px ps-14"
                                           placeholder="Search Subscriptions">
                                </div>
                                <!--end::Search-->
                            </div>
                            <!--begin::Card title-->
                            <!--begin::Card toolbar-->
                            <div class="card-toolbar">
                                <!--begin::Toolbar-->
                                <div class="d-flex justify-content-end" data-kt-subscription-table-toolbar="base">
                                    <!--begin::Filter-->
                                    <button type="button" class="btn btn-light-primary me-3"
                                            data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end"
                                            data-kt-menu-flip="top-end">
                                        <!--begin::Svg Icon | path: icons/duotone/Text/Filter.svg-->
                                        <span class="svg-icon svg-icon-2">
													<svg xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                                                         height="24px" viewBox="0 0 24 24" version="1.1">
														<g stroke="none" stroke-width="1" fill="none"
                                                           fill-rule="evenodd">
															<rect x="0" y="0" width="24" height="24"></rect>
															<path d="M5,4 L19,4 C19.2761424,4 19.5,4.22385763 19.5,4.5 C19.5,4.60818511 19.4649111,4.71345191 19.4,4.8 L14,12 L14,20.190983 C14,20.4671254 13.7761424,20.690983 13.5,20.690983 C13.4223775,20.690983 13.3458209,20.6729105 13.2763932,20.6381966 L10,19 L10,12 L4.6,4.8 C4.43431458,4.5790861 4.4790861,4.26568542 4.7,4.1 C4.78654809,4.03508894 4.89181489,4 5,4 Z"
                                                                  fill="#000000"></path>
														</g>
													</svg>
												</span>
                                        <!--end::Svg Icon-->Filter
                                    </button>
                                    <!--begin::Menu 1-->
                                    <div class="menu menu-sub menu-sub-dropdown w-300px w-md-325px" data-kt-menu="true">
                                        <!--begin::Header-->
                                        <div class="px-7 py-5">
                                            <div class="fs-5 text-dark fw-bolder">Filter Options</div>
                                        </div>
                                        <!--end::Header-->
                                        <!--begin::Separator-->
                                        <div class="separator border-gray-200"></div>
                                        <!--end::Separator-->
                                        <!--begin::Content-->
                                        <div class="px-7 py-5" data-kt-subscription-table-filter="form">
                                            <!--begin::Input group-->
                                            <div class="mb-10">
                                                <label class="form-label fs-6 fw-bold">Month:</label>
                                                <select class="form-select form-select-solid fw-bolder select2-hidden-accessible"
                                                        data-kt-select2="true" data-placeholder="Select option"
                                                        data-allow-clear="true"
                                                        data-kt-subscription-table-filter="month"
                                                        data-hide-search="true" data-select2-id="select2-data-10-ugms"
                                                        tabindex="-1" aria-hidden="true">
                                                    <option data-select2-id="select2-data-12-aul8"></option>
                                                    <option value="jan">January</option>
                                                    <option value="feb">February</option>
                                                    <option value="mar">March</option>
                                                    <option value="apr">April</option>
                                                    <option value="may">May</option>
                                                    <option value="jun">June</option>
                                                    <option value="jul">July</option>
                                                    <option value="aug">August</option>
                                                    <option value="sep">September</option>
                                                    <option value="oct">October</option>
                                                    <option value="nov">November</option>
                                                    <option value="dec">December</option>
                                                </select><span
                                                    class="select2 select2-container select2-container--bootstrap5"
                                                    dir="ltr" data-select2-id="select2-data-11-hv65"
                                                    style="width: 100%;"><span class="selection"><span
                                                    class="select2-selection select2-selection--single form-select form-select-solid fw-bolder"
                                                    role="combobox" aria-haspopup="true" aria-expanded="false"
                                                    tabindex="0" aria-disabled="false"
                                                    aria-labelledby="select2-vzp5-container"
                                                    aria-controls="select2-vzp5-container"><span
                                                    class="select2-selection__rendered" id="select2-vzp5-container"
                                                    role="textbox" aria-readonly="true" title="Select option"><span
                                                    class="select2-selection__placeholder">Select option</span></span><span
                                                    class="select2-selection__arrow" role="presentation"><b
                                                    role="presentation"></b></span></span></span><span
                                                    class="dropdown-wrapper" aria-hidden="true"></span></span>
                                            </div>

                                            <div class="d-flex justify-content-end">
                                                <button type="reset"
                                                        class="btn btn-white btn-active-light-primary fw-bold me-2 px-6"
                                                        data-kt-menu-dismiss="true"
                                                        data-kt-subscription-table-filter="reset">Reset
                                                </button>
                                                <button type="submit" class="btn btn-primary fw-bold px-6"
                                                        data-kt-menu-dismiss="true"
                                                        data-kt-subscription-table-filter="filter">Apply
                                                </button>
                                            </div>
                                            <!--end::Actions-->
                                        </div>
                                        <!--end::Content-->
                                    </div>
                                    <!--end::Menu 1-->
                                    <!--end::Filter-->

                                    </button>
                                    <!--end::Export-->
                                    <!--begin::Add subscription-->
                                    <a href="/boardWriteForm" class="btn btn-primary">
                                        <!--begin::Svg Icon | path: icons/duotone/Navigation/Plus.svg-->
                                        <span class="svg-icon svg-icon-2">
													<svg xmlns="http://www.w3.org/2000/svg"
                                                         xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                                                         height="24px" viewBox="0 0 24 24" version="1.1">
														<rect fill="#000000" x="4" y="11" width="16" height="2"
                                                              rx="1"></rect>
														<rect fill="#000000" opacity="0.5"
                                                              transform="translate(12.000000, 12.000000) rotate(-270.000000) translate(-12.000000, -12.000000)"
                                                              x="4" y="11" width="16" height="2" rx="1"></rect>
													</svg>
												</span>
                                        <!--end::Svg Icon-->글쓰기</a>
                                    <!--end::Add subscription-->
                                </div>
                                <!--end::Toolbar-->
                                <!--begin::Group actions-->
                                <div class="d-flex justify-content-end align-items-center d-none"
                                     data-kt-subscription-table-toolbar="selected">
                                    <div class="fw-bolder me-5">
                                        <span class="me-2" data-kt-subscription-table-select="selected_count"></span>Selected
                                    </div>
                                    <button type="button" class="btn btn-danger"
                                            data-kt-subscription-table-select="delete_selected">Delete Selected
                                    </button>
                                </div>
                                <!--end::Group actions-->
                            </div>
                            <!--end::Card toolbar-->
                        </div>
                        <div class="card-body pt-0">
                            <!--begin::Table-->
                            <div id="kt_subscriptions_table_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                <div class="table-responsive">
                                    <table class="table align-middle table-row-dashed fs-6 gy-5 dataTable no-footer"
                                           id="kt_subscriptions_table" role="grid">
                                        <!--begin::Table head-->
                                        <thead>
                                        <!--begin::Table row-->
                                        <tr class="text-start text-gray-400 fw-bolder fs-7 text-uppercase gs-0"
                                            role="row">
                                            <th class="w-10px pe-2 sorting_disabled" rowspan="1" colspan="1"
                                                aria-label="">No.
                                            </th>

                                            <th class="min-w-125px sorting" tabindex="0"
                                                aria-controls="kt_subscriptions_table" rowspan="1" colspan="1">
                                                제목
                                            </th>

                                            <th class="min-w-125px sorting" tabindex="0"
                                                aria-controls="kt_subscriptions_table" rowspan="1" colspan="1">
                                                내용
                                            </th>
                                            <th class="min-w-125px sorting" tabindex="0"
                                                aria-controls="kt_subscriptions_table" rowspan="1" colspan="1"
                                            >작성일
                                            </th>
                                            <th class="text-end min-w-70px sorting_disabled" rowspan="1" colspan="1"
                                            >Actions
                                            </th>
                                        </tr>
                                        <!--end::Table row-->
                                        </thead>
                                        <!--end::Table head-->
                                        <!--begin::Table body-->
                                        <tbody class="text-gray-600 fw-bold">
                                        <c:forEach items="${list}" var="item">
                                        <tr class="odd">
                                            <td>
                                                <a href="/boardRead?boardSeq=${item.boardSeq}"
                                                   class="text-gray-800 text-hover-primary mb-1">${item.boardSeq}</a>
                                            </td>
                                            <td>
                                                <a href="/boardRead?boardSeq=${item.boardSeq}"
                                                   class="text-gray-800 text-hover-primary mb-1">${item.title}</a>
                                            </td>
                                            <td>
                                                <a href="/boardRead?boardSeq=${item.boardSeq}"
                                                   class="text-gray-800 text-hover-primary mb-1"> ${item.contents}</a>
                                            </td>
                                            <td>${item.regDate}</td>

                                            <td class="text-end">
                                                <a href="#" class="btn btn-light btn-active-light-primary btn-sm"
                                                   data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end"
                                                   data-kt-menu-flip="top-end">Actions
                                                    <!--begin::Svg Icon | path: icons/duotone/Navigation/Angle-down.svg-->
                                                    <span class="svg-icon svg-icon-5 m-0">
															<svg xmlns="http://www.w3.org/2000/svg"
                                                                 xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                                                                 height="24px" viewBox="0 0 24 24" version="1.1">
																<g stroke="none" stroke-width="1" fill="none"
                                                                   fill-rule="evenodd">
																	<polygon points="0 0 24 0 24 24 0 24"></polygon>
																	<path d="M6.70710678,15.7071068 C6.31658249,16.0976311 5.68341751,16.0976311 5.29289322,15.7071068 C4.90236893,15.3165825 4.90236893,14.6834175 5.29289322,14.2928932 L11.2928932,8.29289322 C11.6714722,7.91431428 12.2810586,7.90106866 12.6757246,8.26284586 L18.6757246,13.7628459 C19.0828436,14.1360383 19.1103465,14.7686056 18.7371541,15.1757246 C18.3639617,15.5828436 17.7313944,15.6103465 17.3242754,15.2371541 L12.0300757,10.3841378 L6.70710678,15.7071068 Z"
                                                                          fill="#000000" fill-rule="nonzero"
                                                                          transform="translate(12.000003, 11.999999) rotate(-180.000000) translate(-12.000003, -11.999999)"></path>
																</g>
															</svg>
														</span>
                                                    <!--end::Svg Icon--></a>
                                                <!--begin::Menu-->
                                                <div class="menu menu-sub menu-sub-dropdown menu-column menu-rounded menu-gray-600 menu-state-bg-light-primary fw-bold fs-7 w-125px py-4"
                                                     data-kt-menu="true">
                                                    <!--begin::Menu item-->
                                                    <div class="menu-item px-3">
                                                        <a href="/boardRead?boardSeq=${item.boardSeq}"
                                                           class="menu-link px-3">보기</a>
                                                    </div>
                                                    <!--end::Menu item-->
                                                    <!--begin::Menu item-->

                                                        <%-- TODO :: 수정 분리 --%>
                                                        <%-- TODO :: 페이징 --%>
                                                    <div class="menu-item px-3">
                                                        <a href="/boardModifyForm?boardSeq=${item.boardSeq}"
                                                           class="menu-link px-3">수정하기</a>
                                                    </div>
                                                    <!--end::Menu item-->
                                                    <!--begin::Menu item-->
                                                    <div class="menu-item px-3">
                                                            <%--<a href='/boardDelete?boardSeq=${item.boardSeq}' data-kt-subscriptions-table-filter="delete_row" class="menu-link px-3">삭제하기</a>--%>
                                                        <a class="menu-link px-3" data-bs-toggle="modal"
                                                           data-bs-target="#kt_modal_1" style="color: red;"
                                                           onclick="deleteModal('${item.boardSeq}');">
                                                            삭제하기
                                                        </a>
                                                    </div>
                                                    <!--end::Menu item-->
                                                </div>
                                                <!--end::Menu-->
                                            </td>
                                        </tr>
                                        </c:forEach>

                                        <!--end::Table body-->
                                    </table>
                                </div>

                                <!--end::Table-->
                            </div>
                            <!-- Paging -->
                            <div class="row">
                                <div class="col-sm-12 col-md-5 d-flex align-items-center justify-content-center justify-content-md-start"></div>
                                <div class="col-sm-12 col-md-7 d-flex align-items-center justify-content-center justify-content-md-end">
                                    <div class="dataTables_paginate paging_simple_numbers"
                                         id="kt_subscriptions_table_paginate">
                                        <ul class="pagination">
                                            <c:if test="${pageMaker.prev }">
                                                <li class="paginate_button page-item previous disabled"
                                                    id="kt_subscriptions_table_previous">
                                                    <a href='<c:url value="/list?page=${pageMaker.startPage-1 }"/>'
                                                       aria-controls="kt_subscriptions_table" data-dt-idx="0"
                                                       tabindex="0" class="page-link">
                                                        <i class="previous"></i></a>
                                                </li>
                                            </c:if>
                                            <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">

                                                        <li class="paginate_button page-item">
                                                            <a href='<c:url value="/list?page=${pageNum }"/>'
                                                               aria-controls="kt_subscriptions_table"
                                                               data-dt-idx="2"
                                                               tabindex="0" class="page-link">
                                                                <b class="page-link">${pageNum }</b>
                                                            </a>
                                                        </li>

                                            </c:forEach>
                                            <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
                                                <li class="paginate_button page-item "
                                                    id="kt_subscriptions_table_next">
                                                    <a href='<c:url value="/list?page=${pageMaker.endPage+1 }"/>'
                                                       aria-controls="kt_subscriptions_table" data-dt-idx="3"
                                                       tabindex="0" class="page-link">
                                                        <i class="next"></i></a>
                                                </li>
                                            </c:if>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <div class="modal fade" tabindex="-1" id="kt_modal_1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">삭제</h5>
                        <input type="" name="deleteId" id="deleteId" value=""/>
                        <!--begin::Close-->
                        <div class="btn btn-icon btn-sm btn-active-light-primary ms-2"
                             data-bs-dismiss="modal"
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
                        <button class="btn btn-primary" id="deleteBtn" onclick="deleteBoard();">삭제
                        </button>
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