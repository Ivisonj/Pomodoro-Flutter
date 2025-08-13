# ⏱️ Pomodoro Timer

Este projeto é uma aplicação desenvolvida em **Flutter** que implementa a técnica **Pomodoro** para gerenciamento de tempo.  
Com ele, é possível definir o tempo de **trabalho** e **descanso**, iniciar, pausar e reiniciar o cronômetro de forma prática.

---

## 📸 Demonstração

<img src="/img/img-pomodoro.png" alt="img-pomodoro" style="width: 600px; height: 500px;">

---

## 🚀 Funcionalidades

- Definir minutos de **trabalho** e **descanso**.
- Iniciar, pausar e reiniciar o cronômetro.
- Alternância automática entre períodos de trabalho e descanso.
- Indicação visual com cores diferentes para cada fase:
  - 🔴 Vermelho: Hora de trabalhar.
  - 🟢 Verde: Hora de descansar.

---

## 🛠️ Tecnologias Utilizadas

- **[Flutter](https://flutter.dev/)** – Framework para desenvolvimento multiplataforma.
- **[Dart](https://dart.dev/)** – Linguagem de programação utilizada pelo Flutter.
- **[MobX](https://pub.dev/packages/mobx)** – Gerenciamento de estado reativo.

---

## 📂 Estrutura do Projeto

```plaintext
lib/
│
├── components/        # Componentes reutilizáveis da UI
├── store/             # Armazenamento e gerenciamento de estado (MobX)
├── pages/             # Telas principais da aplicação
└── main.dart          # Arquivo principal da aplicação

---

## Como Executar
1. Clone o repositório: git@github.com:Ivisonj/Pomodoro-Flutter.git
2. Acesse a pasta do projeto.
3. Instale as dependências: flutter pub get.
4. Execute a aplicação: flutter run. 