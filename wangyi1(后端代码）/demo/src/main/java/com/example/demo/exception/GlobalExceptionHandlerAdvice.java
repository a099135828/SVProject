package com.example.demo.exception;
//这是一个全局异常处理类
import com.example.demo.pojo.ApiResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice // 对异常进行捕获和专门做统一处理，这个注释可以拦截项目中抛出的异常
public class GlobalExceptionHandlerAdvice {

    Logger log = LoggerFactory.getLogger(GlobalExceptionHandlerAdvice.class);

    // 代表对什么样的异常做统一处理
    @ExceptionHandler({Exception.class}) // 几乎所有的运行时异常都会被这个方法捕获
    public ApiResponse<Void> handlerException(Exception e, HttpServletRequest request, HttpServletResponse response) {
        // 用log记录当前异常，通过排查日志可以知道是什么异常
        log.error("统一异常：", e);
        return new ApiResponse<>(500, "error", null);
    }
}