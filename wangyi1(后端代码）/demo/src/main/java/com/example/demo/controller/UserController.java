package com.example.demo.controller;


import com.example.demo.mapper.UserMapper;
import com.example.demo.pojo.*;
import com.example.demo.pojo.dto.UserDTO;
import com.example.demo.service.serviceImp.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

//对外访问的接口
@RestController //允许接口的方法可以返回对象，并且这个对象会直接转换成json文本。要把当前接口返回给客户端的话，要把口端的数据转换成json文本，对应的客户端才能更好的处理
@RequestMapping("/user")  //客户端通过localhost:8080/user/来访问对应接口
public class UserController {

    @Autowired //接受bean
    UserService userService;

    @Autowired
    UserMapper userMapper;
    //告诉Spring容器，当创建 UserController 或 UserService 的实例时，自动提供一个匹配的bean来注入 userService 属性。
    //UserService 是 UserController 的一个依赖，通过 @Autowired，Spring容器负责将 UserService 的实例注入到 UserController 中，这样 UserController 就可以使用 UserService 提供的方法。
    //UserController 负责处理HTTP请求和响应，而 UserService 负责业务逻辑。通过 @Autowired，这两个关注点可以清晰地分离开来。

    //查找全部
    @GetMapping("/allUsers")
    public ResponseEntity<ApiResponse<List<User>>> selectAllUsers(
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer limit) {

        ApiResponse<List<User>> response = userService.getAllUsers(page, limit);
        return ResponseEntity.ok(response);
    }

    //修改（用户修改）
    @PutMapping()  //URL:localhost:8080/user/1  修改userID为1的记录
    public ResponseEntity<ApiResponse<User>> updateUser(@RequestBody UserDTO userDTO){
        User updateUser = userService.updateUser(userDTO);
        ApiResponse<User> response = new ApiResponse<>(0, "Update successful", updateUser);
        return ResponseEntity.ok(response);
    }


    //增加（注册）
    @PostMapping  //URL:localhost:8080/user  method:post
    public ResponseEntity<ApiResponse<User>> addUser(@RequestBody UserDTO userDTO){
        User userNew=userService.addUser(userDTO);  //将 UserDTO 对象添加到数据库，并返回新创建的 User 对象。
        ApiResponse<User> response = new ApiResponse<>(0, "add successful", userNew);
        return ResponseEntity.ok(response);
    }
    //当调用这个接口时，就会请求业务逻辑层（service）的add方法，通过这个方法将DTO里的数据拷贝到pojo对象里，再调用save方法进行新增
    //@RequestBody把客户端传进来的json文本，自动转换成对象


    //根据id查询
    @RequestMapping("findAllById/{userID}")  //URL:localhost:8080/user/1  查询userID为1的记录
    public ResponseEntity<ApiResponse<User>> getUserById(@PathVariable Integer userID){
        User user=userService.getUserById(userID);
        ApiResponse<User> response =new ApiResponse<>(0, "Success", user);
        return ResponseEntity.ok(response);
    }
    //根据id查询DTO
    @RequestMapping("/{userID}")  //URL:localhost:8080/user/1  查询userID为1的记录
    public ResponseEntity<ApiResponse<UserDTO>> getUserDTOById(@PathVariable Integer userID){
        UserDTO userDTO=userService.getUserDTOById(userID);
        ApiResponse<UserDTO> response = new ApiResponse<>(0, "Success", userDTO);
        return ResponseEntity.ok(response);
    }


    //删除用户
    @DeleteMapping("/{userID}")  //URL:localhost:8080/user/1  删除userID为1的记录
    public ApiResponse<User> delete(@PathVariable Integer userID){
        userService.delete(userID);
        return ApiResponse.success();
    }

//    @RequestMapping("/byNickname")
//    public ApiResponse<String> searchUserByNickname(@RequestParam String nickname) {
//        User foundUser = userService.searchUserByNickname(nickname);
//        if (foundUser != null) {
//            ApiResponse<String> response = new ApiResponse<>(0, "Success", null);
//            return response;
//        } else {
//            ApiResponse<String> response = new ApiResponse<>(0, "error", null);
//            return response;
//        }
//    }

    //根据昵称查找 分页
    @PostMapping("/findByNickname")
    public ResponseEntity<ApiResponse<List<UserDTO>>> searchUserByNickname(
            @RequestParam String nickname,
            @RequestParam(defaultValue = "1") Integer page,
            @RequestParam(defaultValue = "10") Integer limit) {
        ApiResponse<List<UserDTO>> response = userService.searchUserByNickname(nickname, page, limit);
        return ResponseEntity.ok(response);
    }

    //用户登录
    @PostMapping("/login")  //POST通常用于提交表单数据
    public ApiResponse<User> login(@RequestBody User user) {
        User foundUser = userMapper.findByNicknameAndPassword(user.getNickname(), user.getPassword());
        if (foundUser != null) {
            ApiResponse<User> response = new ApiResponse<>(0, "Success", foundUser);
            return response;
        } else {
            ApiResponse<User> response = new ApiResponse<>(0, "error", null);
            return response;
        }
    }


    //将用户上传的头像保存在数据库里
    @PostMapping("/upload")
    public ResponseEntity<ApiResponse<String>> uploadImage(@RequestParam("file") MultipartFile file) {
        if (!file.getContentType().startsWith("image/")) {
            return ResponseEntity.badRequest().body(new ApiResponse<>(1, "文件类型错误，需上传图片文件", null));
        }
        // 检查文件是否为空
        if (file.isEmpty()) {
            return ResponseEntity.badRequest().body(new ApiResponse<>(1, "上传的文件为空", null));
        }
        // 定义保存文件的路径（根据需要调整路径）
        String filePath =  "C:\\wangyiProject\\wangyi\\mobileimage\\" + file.getOriginalFilename(); // 例如："/uploads/" + file.getOriginalFilename();
        try {
            // 保存文件到指定路径
            file.transferTo(new File(filePath));
        } catch (IOException e) {
            e.printStackTrace();
            return ResponseEntity.status(500).body(new ApiResponse<>(1, "文件上传失败", null));
        }

        // 返回成功消息
        return ResponseEntity.ok(new ApiResponse<>(0, "上传成功", filePath));
    }

}
