import com.alibaba.fastjson.JSON;
import com.edu.smsys.dao.entity.UserEntity;
import com.edu.smsys.service.impl.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class) //指定测试用例的运行器 这里是指定了Junit4
@ContextConfiguration(locations = {"classpath*:/springmvc-servlet.xml","classpath*:/applicationContext-mybatis.xml"}) //配置文件路径 ,可用通配符，注意两个
public class UserTest {

    @Autowired
    UserService userService;
    @Test
    public void login(){
        UserEntity user =userService.findUserByCodeAndPassword("201912010001","123456");
       log.debug("用户信息："+JSON.toJSONString(user));
    }
    @Test
    public void add(){
        UserEntity user =userService.findUserByCodeAndPassword("201912010001","123456");
        user.setUserCode("201912010002");
        log.debug("用户添加回填主键id：{}",userService.register("201912010003","123456"));
    }
}
