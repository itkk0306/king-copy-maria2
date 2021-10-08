package com.example.board.service;

import com.example.board.dto.BoardDto;

import java.util.List;

public interface BoardService {

    List<BoardDto> selectBoardList(BoardDto boardDto) throws Exception;

    int countBoard();

    void boardWrite(BoardDto boardDto);

    BoardDto boardRead(int boardSeq);

    void boardModify(BoardDto boardDto);

    void boardDelete(int boardSeq);


}
