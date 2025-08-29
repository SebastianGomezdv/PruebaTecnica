package com.example.back_prueba_tecnica;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CorsConfig {

    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/api/**")
                        // Permite peticiones desde la URL donde corre tu React
                        .allowedOrigins("http://localhost:5173")
                        // Permite los métodos HTTP más comunes
                        .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS")
                        // Permite todas las cabeceras
                        .allowedHeaders("*")
                        .allowCredentials(true);
            }
        };
    }
}