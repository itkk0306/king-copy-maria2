package com.example.board.service;

import com.example.board.mapper.BoardMapper;
import com.example.board.dto.BoardDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service    //@Service 어노테이션을 붙여 이 클래스가 서비스 클래스라는 것을 알려준다.
public class BoardServiceImpl implements BoardService {

    @Autowired
    private BoardMapper boardMapper;

    /**
     * 목록 리턴.
     * @return
     */
    @Override
    public List<BoardDto> selectBoardList(BoardDto boardDto)  {
        // Service가 Mapper를 호출하는 부분
        return boardMapper.selectBoardList(boardDto);
    }

    public int countBoard() {
        return boardMapper.countBoard();
    }

    /**
     * 등록 처리.
     * @
     */
    public void boardWrite(BoardDto boardDto){
        boardMapper.boardWrite(boardDto);
    }

    /**
     * 상세 정보 리턴.
     * @param boardSeq
     * @return
     */
    public BoardDto boardRead(int boardSeq) {
        return boardMapper.boardRead(boardSeq);
    }

    /**
     * 게시판 내용 수정 폼
     * @param boardSeq
     */
    public void boardModifyForm(int boardSeq) {
        // 조회하여 리턴된 정보
        boardMapper.boardModifyForm(boardSeq);
    }

    // 게시글 수정
    public void boardModify(BoardDto boardDto) {
        boardMapper.boardModify(boardDto);
    }

    /**
     * 삭제 처리.
     * @param boardSeq
     */
    public void boardDelete(int boardSeq) {
        boardMapper.boardDelete(boardSeq);
    }

}
