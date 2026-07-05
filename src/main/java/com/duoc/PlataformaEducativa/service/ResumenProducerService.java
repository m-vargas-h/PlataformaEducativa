package com.duoc.PlataformaEducativa.service;

import com.duoc.PlataformaEducativa.dto.ResumenInscripcionMessage;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class ResumenProducerService {

    private final RabbitTemplate rabbitTemplate;

    @Value("${app.rabbitmq.exchange}")
    private String exchangeName;

    @Value("${app.rabbitmq.routingkey}")
    private String routingKey;

    public ResumenProducerService(RabbitTemplate rabbitTemplate) {
        this.rabbitTemplate = rabbitTemplate;
    }

    public void enviarResumen(ResumenInscripcionMessage mensaje) {
        rabbitTemplate.convertAndSend(exchangeName, routingKey, mensaje);
    }
}