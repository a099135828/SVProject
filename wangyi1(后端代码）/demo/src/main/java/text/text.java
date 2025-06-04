package text;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/json")
public class text {



    @RequestMapping("/user")
    public User getUser() {
        return new User(1, "测试", "123456");
    }

    @RequestMapping("/list")
    public List<User> getUserList() {
        List<User> userList = new ArrayList<>();
        User user1 = new User(1, "测试", "123456");
        User user2 = new User(2, "测试课", "123456");
        userList.add(user1);
        userList.add(user2);
        return userList;
    }

    @RequestMapping("/map")
    public Map<String, Object> getMap() {
        Map<String, Object> map = new HashMap<>(3);
        User user = new User(1, "测试", "123456");
        map.put("作者信息"," test");
        map.put("博客地址", "https://blog.csdn.net/cuiqwei/article/details/118188540");
        map.put("CSDN地址", "http://blog.csdn.net");
        map.put("测试数量", 001);
        return map;
    }
}