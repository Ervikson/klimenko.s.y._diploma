Инфраструктура
Для развёртки инфраструктуры используйте Terraform и Ansible.
Все ВМ, Сети, подсети и т.д. развернуты и сконфигурированы с помощью конфигов в репозитории
ВМ
![image](https://github.com/user-attachments/assets/e63c7048-ad94-4c7b-aa8b-19714fcd89a7)
Подсети
![image](https://github.com/user-attachments/assets/d66ab2ae-a9ee-4d02-8f38-50a32b4e1023)
и т.д.
  ВМ находятся в разных зонах, работа балансировщика на скрине ниже (на ВМ разное наполнение файла index.html)
WEB1
![image](https://github.com/user-attachments/assets/698fb8a0-f3cb-4a72-b348-285edd1190d6)
WEB2
![image](https://github.com/user-attachments/assets/cc42f5a5-7396-4d7f-b275-f4138e482bf3)

Балансировщик настроен согласно ТЗ:
target-group
![image](https://github.com/user-attachments/assets/927ec33f-c88c-4837-ba3e-394850d31866)
backend-group
![image](https://github.com/user-attachments/assets/c313a806-ff05-4b16-a2f1-cdc9db7a5acc)
http-router
![image](https://github.com/user-attachments/assets/8469e839-9aa5-4da5-afd4-81a58c1921f9)
ALB
![image](https://github.com/user-attachments/assets/9e79b544-24b8-4640-a39c-95f8358680f4)

Zabbix собирает метрики, а Elastic - логи:
Zabbix:
![image](https://github.com/user-attachments/assets/608bb55d-57a2-4cb0-af86-2aaeb8895561)
Elasticsearch:
![image](https://github.com/user-attachments/assets/6717c561-ea01-45f3-8e60-e4be3d7b067a)

Так же настроил снапшоты:
![image](https://github.com/user-attachments/assets/0ebe6f8d-5e98-4dff-bfbe-293db956667a)









