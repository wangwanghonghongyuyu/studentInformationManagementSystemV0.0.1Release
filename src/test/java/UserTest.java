import com.alibaba.fastjson.JSON;
import com.edu.smsys.dao.entity.*;
import com.edu.smsys.dao.mapper.*;
import com.edu.smsys.service.impl.UserService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class) //指定测试用例的运行器 这里是指定了Junit4
@ContextConfiguration(locations = {"classpath*:/springmvc-servlet.xml", "classpath*:/applicationContext-mybatis.xml"})
//配置文件路径 ,可用通配符，注意两个
public class UserTest {

    @Autowired
    private UserService userService;
    @Autowired
    private EnrolEntityMapper enrolEntityMapper;
    @Autowired
    private ClassEntityMapper classEntityMapper;
    @Autowired
    private TeacherEntityMapper teacherEntityMapper;
    @Autowired
    private ParentEntityMapper parentEntityMapper;
    @Autowired
    private CensusEntityMapper censusEntityMapper;
    @Autowired
    private ScoreEntityMapper scoreEntityMapper;

    @Test
    public void login() {
        UserEntity user = userService.findUserByCodeAndPassword("201912010001", "123456");
        log.debug("用户信息：" + JSON.toJSONString(user));
    }

    @Test
    public void add() {
        UserEntity user = userService.findUserByCodeAndPassword("201912010001", "123456");
        user.setUserCode("201912010002");
        log.debug("用户添加回填主键id：{}", userService.register("201912010003", "123456"));
    }

    @Test
    public void addEnrol() {
        for (int i = 1; i <= 9; i++) {
            EnrolEntity data = new EnrolEntity();
            data.setEnrolName(i + "年级");
            data.setEnrolCode(1);
            data.setEnrolContent("balabalabalbalbla");
            data.setEnrolCount((int) (Math.random() * 100));
            int insertCount = enrolEntityMapper.insertEnrol(data);
            log.debug("执行成功，影响记录行数为 {}", insertCount);
        }
    }

    @Test
    public void selectEnrolAll() {
        log.debug("执行成功，返回全部年级信息 {}", JSON.toJSONString(enrolEntityMapper.queryEnrols()));
    }

    @Test
    public void selectEnrolLike() {
        EnrolEntity data = new EnrolEntity();
        data.setEnrolName("1年级");
        data.setEnrolCode(1);
        data.setEnrolContent("balabalabalbalbla");
        data.setEnrolCount((int) (Math.random() * 100));
        log.debug("模糊查询传入一个对象 {}", JSON.toJSON(enrolEntityMapper.queryEnrolByEnrol(data)));
    }

    @Test
    public void updateEnrol() {
        EnrolEntity data = new EnrolEntity();
        data.setId(13);
        data.setEnrolContent("修改12点06分2019年12月16日");
        int updateCount = enrolEntityMapper.updateEnrolById(data);
        log.debug("执行成功，影响记录行数为 {}", updateCount);
    }

    @Test
    public void deleteEnrol() {
        int deleteCount = enrolEntityMapper.deleteEnrolById(13);
        log.debug("执行成功，影响记录行数为 {}", deleteCount);
    }

    @Test
    public void addClass() {
        for (int i = 0; i <= 50; i++) {
            ClassEntity entity = new ClassEntity();
            entity.setEnrolId(13);
            entity.setClassCode(String.valueOf(i));
            entity.setClassName(i + "班--小学部");
            int addCount = classEntityMapper.insertClass(entity);
            log.debug("执行成功，影响记录行数为 {}", addCount);
        }
    }

    @Test
    public void findList() {
        log.debug("查询所有班级信息 {}", JSON.toJSONString(classEntityMapper.queryClasses()));
    }

    @Test
    public void findClassByClass() {
        ClassEntity entity = new ClassEntity();
        entity.setClassName("小学部");
        log.debug("查询所有班级信息 {}", JSON.toJSONString(classEntityMapper.queryClassByClass(entity)));
    }

    @Test
    public void updateClassById() {
        ClassEntity classEntity = new ClassEntity();
        classEntity.setId(1);
        classEntity.setClassName("一年级--高中部");
        log.debug("执行成功，影响记录行数为 {}", classEntityMapper.updateClassById(classEntity));
    }

    @Test
    public void addTeacher() {
        TeacherEntity entity = new TeacherEntity();
        entity.setTeacherAddress("辽宁省大连市旅顺口区大连外国语学院");
        entity.setTeacherCode("20191216001");
        entity.setTeacherName("吕少峰");
        entity.setTelephone("18741145214");
        entity.setTeacherSalary(1500.57);
        entity.setTeacherStartTime(new Date());
        entity.setUserId(1);
        log.debug("执行成功，影响记录行数为 {}", teacherEntityMapper.insertTeacher(entity));
    }

    @Test
    public void updateTeacher() {
        TeacherEntity entity = new TeacherEntity();
        entity.setTeacherAddress("辽宁省大连市旅顺口区大连外国语学院---旅顺校区");
        entity.setUserId(1);
        entity.setId(1);
        log.debug("执行成功，影响记录行数为 {}", teacherEntityMapper.updateTeacherById(entity));
    }

    @Test
    public void findTeachers() {
        log.debug("查询所有信息 {}", JSON.toJSONString(teacherEntityMapper.queryTeaChers()));
    }

    @Test
    public void findTeacherByTeacher() {
        TeacherEntity entity = new TeacherEntity();
        entity.setTeacherAddress("旅顺");
        log.debug("查询所有班级信息 {}", JSON.toJSONString(teacherEntityMapper.queryTeacherByTeacher(entity)));
    }

    @Test
    public void addParent() {
        for (int i = 0; i <= 50; i++) {
            ParentEntity entity = new ParentEntity();
            entity.setAge((int) (Math.random() * 100));
            entity.setParentName("王" + i);
            entity.setTelephone("12451526517");
            entity.setType(1);
            entity.setWorkArea("辽宁大连");
            parentEntityMapper.insertParent(entity);
        }

    }

    @Test
    public void findParents() {
        log.debug("查询所有信息 {}", JSON.toJSONString(parentEntityMapper.queryParents()));
    }

    @Test
    public void findParent() {
        ParentEntity entity = new ParentEntity();
        entity.setAge(23);
        entity.setParentName("王十三");
        log.debug("查询信息 {}", JSON.toJSONString(parentEntityMapper.queryParentByParent(entity)));
    }

    @Test
    public void updateParentsById() {
        ParentEntity entity = new ParentEntity();
        entity.setAge(22);
        entity.setParentName("王十四");
        entity.setTelephone("12411526517");
        entity.setType(2);
        entity.setWorkArea("辽宁葫芦岛");
        entity.setId(1);
        log.debug("执行成功，影响记录行数为 {}", parentEntityMapper.updateParentsById(entity));
    }

    @Test
    public void deleteParentById() {
        log.debug("执行成功，影响记录行数为 {}", parentEntityMapper.deleteParentById(64));
    }

    @Test
    public void queryCensuses() {
        log.debug("查询所有信息 {}", JSON.toJSONString(censusEntityMapper.queryCensuses()));
    }

    @Test
    public void queryCensusById() {
        log.debug("查询信息 {}", JSON.toJSONString(censusEntityMapper.queryCensusById(1)));
    }

    @Test
    public void queryCensusByCensus() {
        CensusEntity entity = new CensusEntity();
        entity.setTargetScore(20);
        log.debug("查询信息 {}", JSON.toJSONString(censusEntityMapper.queryCensusByCensus(entity)));
    }

    @Test
    public void insertCensus() {
        for (int i = 0; i <= 50; i++) {
            CensusEntity entity = new CensusEntity();
            entity.setTargetScore((int) (Math.random() * 100));
            entity.setCurrentScore((int) (Math.random() * 100));
            entity.setSchoolEvent("暂无说明");
            entity.setGraduationTime(new Date());
            entity.setCurrentEnrol("三年级");
            entity.setSchoolEvaluation("该生表现良好");
            entity.setDangerValid("0");
            entity.setTeacherId(1);
            log.debug("执行成功，影响记录行数为 {}", censusEntityMapper.insertCensus(entity));
        }
    }

    @Test
    public void updateCensusById(){
        CensusEntity entity = new CensusEntity();
        entity.setSchoolEvent("暂无说明");
        entity.setGraduationTime(new Date());
        entity.setCurrentEnrol("三年级");
        entity.setSchoolEvaluation("该生表现良好");
        entity.setDangerValid("0");
        entity.setTeacherId(1);
        entity.setId(1);
        log.debug("执行成功，影响记录行数为 {}", censusEntityMapper.updateCensusById(entity));
    }

    @Test
    public void insertScore(){
        ScoreEntity entity=new ScoreEntity();
        entity.setScoreCode("20190121");
        entity.setScoreTime(new Date());
        entity.setScoreType(2);
        entity.setScoreValue(100);
        entity.setStudentId(1);
        log.debug("执行成功，影响记录行数为 {}", scoreEntityMapper.insertScore(entity));
    }

    @Test
    public void queryScores(){
        log.debug("查询信息 {}", JSON.toJSONString(scoreEntityMapper.queryScores()));
    }

    @Test
    public void queryScoreById(){
        log.debug("查询信息 {}", JSON.toJSONString(scoreEntityMapper.queryScoreById(1)));
    }


    @Test
    public void updateScoresById(){
        ScoreEntity entity=new ScoreEntity();
        entity.setScoreCode("20190112");
        entity.setScoreTime(new Date());
        entity.setScoreType(2);
        entity.setScoreValue(100);
        entity.setStudentId(1);
        entity.setId(1);
        log.debug("执行成功，影响记录行数为 {}", JSON.toJSONString(scoreEntityMapper.updateScoresById(entity)));
    }
}
