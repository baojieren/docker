package ink.baojie.docker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DockerApplication {

    public static void main(String[] args) {
        SpringApplication.run(DockerApplication.class, args);
    }

    @GetMapping("docker")
    public String docker(String msg) {
        System.out.println("接口接收到:" + msg);
        return "阿里云构建规则已经配置你输入的是" + msg;
    }
}
