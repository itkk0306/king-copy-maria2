<div id="kt_content_container" class="container">
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">게시판</th>
            <th scope="col">제목</th>
            <th scope="col">내용</th>
            <th scope="col">작성일</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${list}" var="item">
            <tr>
                <th scope="row"><a href="/boardRead?boardSeq=${item.boardSeq}">${item.boardSeq}</th>
                <td><a href="/boardRead?boardSeq=${item.boardSeq}">${item.title}</a></td>
                <td> ${item.contents}</td>
                <td> ${item.regDate}</td>
            </tr>
        </c:forEach>

        </tbody>
    </table>

    <br>
    <button type="button" class="btn btn-primary" onclick="location.href='./boardWriteForm'">글쓰기</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='../../../../..'">메인으로 가기</button>
</div>


<div class="modal-header pb-0 border-0 justify-content-end">
    <!--begin::Close-->
    <div class="btn btn-sm btn-icon btn-active-color-primary" data-bs-dismiss="modal">
        <!--begin::Svg Icon | path: icons/duotune/arrows/arr061.svg-->
        <span class="svg-icon svg-icon-1">

													</span>
        <!--end::Svg Icon-->
    </div>
    <!--end::Close-->
</div>
<div class="modal-body scroll-y px-10 px-lg-15 pt-0 pb-15">
    <!--begin:Form-->
    <form id="kt_modal_new_target_form"
          class="form fv-plugins-bootstrap5 fv-plugins-framework" action="#">
        <!--begin::Heading-->

        <!--end::Heading-->
        <!--begin::Input group-->
        <div class="d-flex flex-column mb-8 fv-row fv-plugins-icon-container">
            <!--begin::Label-->
            <label for="title" class="fs-6 fw-bold mb-2">제목</label>
            <!--end::Label-->
            <input type="text" class="form-control form-control-solid"
                   placeholder="Enter Target Title" name="title" value="${boardDto.title}"
                   id="title">
            <div class="fv-plugins-message-container invalid-feedback"></div>
        </div>

        <div class="d-flex flex-column mb-8">
            <label for="contents" class="fs-6 fw-bold mb-2">내용</label>
            <textarea class="form-control form-control-solid" rows="3" id="contents"
                      name="contents"
                      placeholder="입력하시오">${boardDto.contents}</textarea>
        </div>

        <!--begin::Actions-->
        <div class="text-center">
            <button type="reset" id="kt_modal_new_target_cancel" class="btn btn-light me-3">
                Cancel
            </button>
            <button type="submit" id="kt_modal_new_target_submit" class="btn btn-primary">
                <span class="indicator-label">등록</span>
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

<form action="/boardWrite" method="post">
    <div class="row mb-3">
        <label for="title" class="col-sm-2 col-form-label">제목</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="title" value="${boardDto.title}"
                   id="title">
        </div>
    </div>
    <div class="row mb-3">
        <label for="contents" class="col-sm-2 col-form-label">내용</label>
        <div class="col-sm-10">
                                <textarea class="form-control" id="contents"
                                          name="contents"> ${boardDto.contents}</textarea>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">등록</button>
</form>

<form action="/boardModify" method="post">
    <div class="row mb-3">
        <label for="boardSeq" class="col-sm-2 col-form-label">글번호</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="boardSeq" readonly ="readonly" value="${boardDto.boardSeq}" id="boardSeq">
        </div>
    </div>
    <div class="row mb-3">
        <label for="title" class="col-sm-2 col-form-label">제목</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="title" value="${boardDto.title}" id="title">
        </div>
    </div>

    <div class="row mb-3">
        <label for="contents" class="col-sm-2 col-form-label">내용</label>
        <div class="col-sm-10">
            <textarea class = "form-control" id = "contents" name="contents"> ${boardDto.contents}</textarea>
        </div>
    </div>
    <button class="btn btn-primary" type="submit">수정완료</button>
    <button class="btn btn-primary" type="button" onclick="location.href='/list'">돌아가기</button>
</form>

<form name="form" method="post">

    <div class="row mb-3">
        <label for="boardSeq" class="col-sm-2 col-form-label">글번호</label>
        <div class="col-sm-10">
            <input class = "form-control" id = "boardSeq" name="boardSeq" readonly="readonly" value="${boardDto.boardSeq}">
        </div>
        <label for="regDate" class="col-sm-2 col-form-label">날짜</label>
        <div class="col-sm-10">
            <input class = "form-control" id = "regDate" name="regDate" readonly="readonly" value= "${boardDto.regDate}">
        </div>
        <label for="title" class="col-sm-2 col-form-label">제목</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="title" readonly="readonly" value="${boardDto.title}" id="title">
        </div>
    </div>
    <div class="row mb-3">
        <label for="contents" class="col-sm-2 col-form-label">내용</label>
        <div class="col-sm-10">
            <textarea class = "form-control" id = "contents" name="contents" readonly="readonly"> ${boardDto.contents}</textarea>
        </div>
    </div>
</form>

<button class="btn btn-primary" onclick="location.href='list'">목록</button>
<button class="btn btn-primary" id="modify" onclick="location.href='boardModifyForm?boardSeq=${boardDto.boardSeq}'">수정</button>
<button class="btn btn-primary" id="delete" onclick="location.href='boardDelete?boardSeq=${boardDto.boardSeq}'">삭제</button>


