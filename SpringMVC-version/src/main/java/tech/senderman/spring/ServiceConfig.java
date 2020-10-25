package tech.senderman.spring;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan({ "tech.senderman.service" })
public class ServiceConfig {
}
