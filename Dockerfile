# Використовуємо офіційний образ n8n
FROM n8nio/n8n:latest  

# Встановлюємо змінні середовища для коректної роботи
ENV N8N_PORT=5678  
ENV N8N_HOST=0.0.0.0  
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true  

# Виставляємо користувача node (щоб уникнути проблем із правами)
USER node  

# Відкриваємо порт
EXPOSE 5678  

# Запускаємо n8n
ENTRYPOINT ["n8n", "start"]  
