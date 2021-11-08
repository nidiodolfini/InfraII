Clique no menu Iniciar e digite: Ativar ou desativar recursos do Windows 

![Menu iniciar](https://github.com/nidiodolfini/InfraII/blob/main/Ansible/img/manu%20iniciar.png?raw=true)


Verifique se está ativado o recurso: Subsistemas do Windows para Linux

![Subsistema](https://raw.githubusercontent.com/nidiodolfini/InfraII/main/Ansible/img/ativar%20subsistemas.png)

Abra a Microsoft Store:


Pesquise Ubuntu e instale e versão 20 LTS:

![Store](https://github.com/nidiodolfini/InfraII/blob/main/Ansible/img/instalar%20ubuntu.png?raw=true)

Crie um usuário de administrador, pode colocar qualquer nome e coloque uma senha, pois ele será utilizado no "sudo".

Procure o Ubuntu instalado no Menun Iniciar.

Com o terminal do Ubuntu aberto:

![terminal](https://github.com/nidiodolfini/InfraII/blob/main/Ansible/img/ubuntu.png?raw=true)


Digite os comandos:

```
apt install pip && pip install boto3
```
```
apt install ansible
```
```
pip install awscli
```

Selecione área geográfica:

```
pip install --upgrade awscli
```

Para verificar a instalação do AWS CLI:
```
aws --version
```
Agora vamos instalar a ferramenta que ajudará na comunicação entre o Ansible e a AWS:
```
ansible-galaxy collection install amazon.aws
```