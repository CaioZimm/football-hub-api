package football_hub_api;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableFeignClients
@EnableScheduling
public class FootballHubApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(FootballHubApiApplication.class, args);
	}

}
