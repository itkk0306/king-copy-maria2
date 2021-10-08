package com.example.board.controller;

import com.example.board.dto.BoardDto;
import com.example.board.dto.PageMaker;
import com.example.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/*
    @Controller 어노테이션을 붙여 이 클래스가 컨트롤러 클래스 라는 것을 알려준다.
    사용자 요청이 들어오면 이 컨트롤러가 호출된다.
    @RequestMappring("/list") 어노테이션
    : baseurl/list 로 접속하게 되면 이 어노테이션을 가진 메소드로 매핑이 된다. */

@Controller //해당 클래스를 컨트롤러로 동작하게 한다.
public class BoardController {

    @Autowired
    private BoardService boardService;

    // 게시판 목록
    @RequestMapping("/list")
    public ModelAndView BoardList(BoardDto boardDto) throws Exception{

        ModelAndView mv = new ModelAndView("/list");  // WEB-INF/jsp

        PageMaker pageMaker = new PageMaker();
        pageMaker.setCri(boardDto);
        pageMaker.setTotalCount(100);

        /*Service를 호출하는 부분
          Service의 반환값을 list 에 저장하고 있음*/
        List<BoardDto> list = boardService.selectBoardList(boardDto);

        // model에 데이터 싣기
        mv.addObject("list", list);
        mv.addObject("pageMaker", pageMaker);

        return mv; // modelAndView 를 return
    }

    // 게시판 글쓰기 폼
    @RequestMapping("/boardWriteForm")
    public String boardWriteForm() {
        return "boardWriteForm";  // jsp 이름
    }

    // 게시글 글쓰기
    @RequestMapping(value="/boardWrite")
    public String boardWrite(BoardDto boardDto) throws Exception {

        boardService.boardWrite(boardDto);

        return "redirect:list"; // redirect 파라미터를 전달해주는 역할
    }

    // 게시글 내용 읽기
    @RequestMapping("/boardRead")
    public String boardRead(@RequestParam("boardSeq") int boardSeq, Model model) throws Exception {
        BoardDto boardDto = boardService.boardRead(boardSeq);
        model.addAttribute("boardDto", boardDto);
        return "boardRead";
    }

    // 게시글 내용 수정 폼
    // boardRead의 자원 재활용
    @RequestMapping("/boardModifyForm")
    public String boardModifyForm(@RequestParam("boardSeq") int boardSeq, Model model) throws Exception {

        BoardDto boardDto = boardService.boardRead(boardSeq);
        // 객체를 model에 담음
        model.addAttribute("boardDto", boardDto);
        return "boardModifyForm";
    }

    // 게시글 수정
    @RequestMapping(value="/boardModify", method= RequestMethod.POST)
    public String boardModify(BoardDto boardDto) throws Exception {

        boardService.boardModify(boardDto);

        return "redirect:list";
    }

    // 게시글 삭제
    @RequestMapping(value="/boardDelete")
    public String boardDelete(@RequestParam("boardSeq") int boardSeq){
        boardService.boardDelete(boardSeq);
        return "redirect:list";
    }


    /*
      Model vs ModelAndView
    * Model은 view의 이름을 String으로 return 하는 방법이다.
        -> model의 데이터가 jsp 이름을 찾는 방법은 viewResolver를 통해서다.
        -> viewResolver는 application.properties에
            spring.mvc.view.prefix= /WEB-INF/jsp/
            spring.mvc.view.suffix= .jsp
            로 정의해두었다.
            
    * ModelAndView는 String 객체 대신 ModelAndView를 return 한다.
    * */

}
