package com.example.board.mapper;

import java.util.List;
import com.example.board.dto.BoardDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper     // Mapper 어노테이션을 붙이면 Mapper 인터페이스로 인식함.
public interface BoardMapper {

    List<BoardDto> selectBoardList(BoardDto boardDto);

    int countBoard();

    void boardWrite(BoardDto boardDto);

    BoardDto boardRead(int boardSeq);

    void boardModifyForm(int boardSeq);

    void boardModify(BoardDto boardDto);

    void boardDelete(int boardSeq);


}
