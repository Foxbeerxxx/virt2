# Домашнее задание к занятию "`Применение принципов IaaC в работе с виртуальными машинами`" - `Татаринцев Алексей`

   ---

### Задание 1


1. `VirtualBox был установлен из прошлых занятий , проверяю версию`

![1](https://github.com/Foxbeerxxx/virt2/blob/main/img/img1.png)

2. `Vagrant был установлен из прошлых занятий , проверяю версию`

![2](https://github.com/Foxbeerxxx/virt2/blob/main/img/img2.png)

3. ` Устанавливаю Packer и проверяю версию`

![3](https://github.com/Foxbeerxxx/virt2/blob/main/img/img3.png)

```
# Создаем директорию и скачиваем дистрибутив
mkdir -p ~/packer
wget https://hashicorp-releases.yandexcloud.net/packer/1.11.2/packer_1.11.2_linux_amd64.zip -P ~/packer

# Распаковываем
unzip ~/packer/packer_1.11.2_linux_amd64.zip -d ~/packer

# Удаляем архив (опционально)
rm ~/packer/packer_1.11.2_linux_amd64.zip

echo 'export PATH="$PATH:/home/alexey/packer"' >> ~/.profile
source ~/.profile
# Перезапускаем оболочку (альтернативный способ)
exec -l $SHELL
# Проверяем версию
packer --version
#  https://yandex.cloud/ru/docs/tutorials/infrastructure-management/packer-quickstart

```
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

2. `Проверяем валидацию и запускаем`
```
packer validate mydebian.json.pkr.hcl 

packer build mydebian.json.pkr.hcl
```
![11](https://github.com/Foxbeerxxx/virt2/blob/main/img/img11.png)

3. `После того как успешно образ создан, заходим в вебморду YC и создаем ВМ `

![111](https://github.com/Foxbeerxxx/virt2/blob/main/img/img111.png)
![112](https://github.com/Foxbeerxxx/virt2/blob/main/img/img112.png)

4. `Подключаемся по ssh  и проверяем версии docker, htop и tmux`
![12](https://github.com/Foxbeerxxx/virt2/blob/main/img/img12.png)

5. `Удаляем и чистим YC`

