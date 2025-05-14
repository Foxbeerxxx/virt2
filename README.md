# Домашнее задание к занятию "`Применение принципов IaaC в работе с виртуальными машинами`" - `Татаринцев Алексей`

   ---

### Задание 1


1. `VirtualBox был установлен из прошлых занятий , проверяю версию`

![1](https://github.com/Foxbeerxxx/virt2/blob/main/img/img1.png)

2. `Vagrant был установлен из прошлых занятий , проверяю версию`

![2](https://github.com/Foxbeerxxx/virt2/blob/main/img/img2.png)

3. ` Устанавливаю Packer и проверяю версию`

![3](https://github.com/Foxbeerxxx/virt2/blob/main/img/img3.png)

4. `Ставлю плагин от Яндекс Облако по инструкции`

![4](https://github.com/Foxbeerxxx/virt2/blob/main/img/img4.png)

5. `Проверяю, что yc установлен корректно`

![5](https://github.com/Foxbeerxxx/virt2/blob/main/img/img5.png)

6. `Инициализирую профиль с помощью yc init`

![6](https://github.com/Foxbeerxxx/virt2/blob/main/img/img6.png)


---

### Задание 2



1. `У меня уже есть ssh ключи, проверяю , что наместе`

![61](https://github.com/Foxbeerxxx/virt2/blob/main/img/img61.png)

2. `Запускаю vagrant up и жду пока поставится ВМ`

![7](https://github.com/Foxbeerxxx/virt2/blob/main/img/img7.png)

3. `Подключаюсь к ВМ - vagrant ssh`

![8](https://github.com/Foxbeerxxx/virt2/blob/main/img/img8.png)

4. `Проверяю версию docker и  docker compose`

![9](https://github.com/Foxbeerxxx/virt2/blob/main/img/img9.png)


5. `все отработало  - теперь останавливаю и удаляю вм`

```
# Остановка
vagrant halt

# Удаление
vagrant destroy -f

```

---

### Задание 3


1. `Создаю сеть и подсеть в YC`

```
alexey@dell:~/virt2/src$ yc vpc network create --name net --labels my-label=netology --description "My network"
id: enpvtmvhdv4vn71dskn2
folder_id: b1gse67sen06i8u6ri78
created_at: "2025-05-14T21:18:59Z"
name: net
description: My network
labels:
  my-label: netology
default_security_group_id: enpt3pehiaufp3pmm4ai

alexey@dell:~/virt2/src$ yc vpc subnet create --name my-subnet-a --zone ru-central1-a --range 10.1.2.0/24 --network-name net --description "My subnet"
id: e9bd3ro2jm1n2329qntl
folder_id: b1gse67sen06i8u6ri78
created_at: "2025-05-14T21:23:52Z"
name: my-subnet-a
description: My subnet
network_id: enpvtmvhdv4vn71dskn2
zone_id: ru-central1-a
v4_cidr_blocks:
  - 10.1.2.0/24

```
![10](https://github.com/Foxbeerxxx/virt2/blob/main/img/img10.png)

2. `Заполните здесь этапы выполнения, если требуется ....`
3. `Заполните здесь этапы выполнения, если требуется ....`
4. `Заполните здесь этапы выполнения, если требуется ....`
5. `Заполните здесь этапы выполнения, если требуется ....`
6. 



`При необходимости прикрепитe сюда скриншоты
![Название скриншота](ссылка на скриншот)`

### Задание 4

`Приведите ответ в свободной форме........`

1. `Заполните здесь этапы выполнения, если требуется ....`
2. `Заполните здесь этапы выполнения, если требуется ....`
3. `Заполните здесь этапы выполнения, если требуется ....`
4. `Заполните здесь этапы выполнения, если требуется ....`
5. `Заполните здесь этапы выполнения, если требуется ....`
6. 

```
Поле для вставки кода...
....
....
....
....
```

`При необходимости прикрепитe сюда скриншоты
![Название скриншота](ссылка на скриншот)`
