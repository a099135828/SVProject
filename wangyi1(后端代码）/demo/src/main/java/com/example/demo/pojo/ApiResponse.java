package com.example.demo.pojo;

import org.springframework.http.HttpStatus;

//构建一致的API响应格式
public class ApiResponse<T> {

    private Integer code;
    private String message;
    private Long count;
    private T data;

    public ApiResponse(Integer code, String message, T data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    //下面是简单的调用success方法来规范化输出
    // 接口请求成功
    //返回值前面有<T>，表示这个是一个泛型方法，ResponseMessage<T>这个是它返回的类型
    public  static <T> ApiResponse<T> success(T data){
        return new ApiResponse(HttpStatus.OK.value(),"success!", data);
    }
    //HttpStatus.OK.value()返回HTTP状态码的整数值。在这里HttpStatus.OK.value() 返回的是200


    // 接口请求成功
    public  static <T> ApiResponse<T> success(){

        return new ApiResponse(HttpStatus.OK.value(),"success!", null);
    }

   /* //在server层返回总记录数

    public ApiResponse<List<Song>> selectAllSongs(int page, int limit) {

        int offset = (page - 1) * limit;

        List<Song> songs = songRepository.findAll(offset, limit);
        Long count = songRepository.count(); // 计算总记录数

        ApiResponse<List<Song>> response = new ApiResponse<>(0, "Success", songs);
        response.setCount(count);
        return response;
    }*/

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}