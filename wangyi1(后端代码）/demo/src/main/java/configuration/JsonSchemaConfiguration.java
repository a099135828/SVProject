package configuration;

import com.fasterxml.jackson.databind.JsonNode;
import com.networknt.schema.JsonSchema;
import com.networknt.schema.JsonSchemaFactory;
import com.networknt.schema.SpecVersion;
import com.networknt.schema.ValidationMessage;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;

import java.util.Set;

@Configuration

public class JsonSchemaConfiguration {
    private static final String SCHEMA_VALIDATION_FILE = "validation.json";

    @Bean
    public JsonSchema jsonSchema() {
        return JsonSchemaFactory
                .getInstance( SpecVersion.VersionFlag.V7 )
                .getSchema( getClass().getResourceAsStream( SCHEMA_VALIDATION_FILE ) );
    }

    @Slf4j  //自动为类生成一个日志对象
    @Service  //表示他是一个服务类逻辑的bean，通常依赖于其他Spring管理的bean

    public static class JsonSchemaValidationService {

        @Autowired //Spring 容器会在启动时自动注入相应的依赖。
        private JsonSchema jsonSchema;

        public String validateJson(JsonNode jsonNode){

            Set<ValidationMessage> errors = jsonSchema.validate(jsonNode);
            if(errors.isEmpty()){
                log.info("event is valid");
            }else{
                log.info("event is invalid");
            }
            return errors.toString();
        }

    }
}
