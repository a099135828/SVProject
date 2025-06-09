package com.example.demo.controller;

import org.springframework.ai.openai.OpenAiChatModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;

@CrossOrigin
@RestController
public class OpenAIController {

    @Autowired
    private OpenAiChatModel chatModel;

    @GetMapping("/openai")
    public String ollama(@RequestParam(value = "message",defaultValue = "hello")
                         String message) {
        String result = chatModel.call(message);
        System.out.println(result);
        return result;
    }

    @GetMapping(value = "/openai/stream", produces = MediaType.TEXT_EVENT_STREAM_VALUE + ";charset=UTF-8")
    public Flux<String> ollamaStream(@RequestParam(value = "message", defaultValue = "hello") String message) {
        Flux<String> result=chatModel.stream(message);
        result.subscribe(System.out::println);
        return result; // 使用 stream 方法实现流式输出 [[1]]
    }

}
