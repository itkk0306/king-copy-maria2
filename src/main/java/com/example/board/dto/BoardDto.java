package com.example.board.dto;

import lombok.Data;

@Data
public class BoardDto {

    private int boardSeq;
    private String title;
    private String contents;
    private String regDate;

    // Lombok으로 인해 getter(), setter() 생성할 필요 없음.
    public String toString() {
        return "BoardDto [boardSeq = " + boardSeq + ", title = " + title +
                ", contents = " + contents + ", regDate = " + regDate + " ]";
    }

    private int page;
    private int perPageNum;

    public int getPageStart() {
        return (this.page-1)*perPageNum;
    }

    public BoardDto() {
        this.page = 1;
        this.perPageNum = 5;
    }

    public int getPage() {
        return page;
    }
    public void setPage(int page) {
        if(page <= 0) {
            this.page = 1;
        } else {
            this.page = page;
        }
    }
    public int getPerPageNum() {
        return perPageNum;
    }
    public void setPerPageNum(int pageCount) {
        int cnt = this.perPageNum;
        if(pageCount != cnt) {
            this.perPageNum = cnt;
        } else {
            this.perPageNum = pageCount;
        }
    }
}
