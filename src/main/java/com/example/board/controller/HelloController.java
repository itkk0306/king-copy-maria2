package com.example.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


/*주의해야 할 점으로는 @SpringBootApplication
어노테이션이 붙은 클래스와 동일한 위치 또는 하위에 Controller 클래스를 생성해야 한다.
Component Scan 할 때
Controller 클래스를 찾아서 자동으로 빈을 등록하기 때문이다.
*/

@Controller
@RequestMapping("/")
public class HelloController {
    @GetMapping
    public String hello() {
        return "index";
    }
}

