# NEXUS

Protótipo Flutter mobile de monitoramento IoT para apresentação no SENAI. Direção visual da inspiração 3, navegação flutuante da inspiração 1 e identidade vinho `#4F3139` com a logo fornecida.

## Executar

Flutter SDK localizado em `C:\Users\Olá\flutter` (Flutter 3.47.6 / Dart 3.13.5). O terminal atual não o encontra no PATH. No PowerShell:

```powershell
& 'C:\Users\OLCB45~1\flutter\bin\flutter.bat' run -d chrome
```

O caminho curto evita um erro do compilador de shaders com o acento em `Olá`. Para a prévia no navegador do Codex:

```powershell
& 'C:\Users\OLCB45~1\flutter\bin\flutter.bat' run -d web-server --web-port 8081 --web-hostname 127.0.0.1
```

## Telas

Início, Espaços, Dispositivos, Alertas e Perfil. Detalhes de espaço, dispositivo e ocorrência; Analytics com períodos e métricas. Mobile usa cápsula inferior; desktop a partir de 1000 px usa navegação lateral e grids.

## Simulação

Abra o ícone de ajustes no início ou **Perfil → Controle da simulação**. Leituras mudam lentamente a cada 6 segundos. Há 12 espaços e 20 ESP32; a carga inicial tem 18 online, 2 offline e 2 alertas. É possível pausar, normalizar tudo ou simular temperatura alta, perda de conexão, porta, presença e iluminação. Offline preserva os últimos dados. Os estados vazio, carregamento, erro e perda global de conexão podem ser apresentados pelo mesmo painel.

Uma fonte compartilhada mantém contadores, sensores, detalhes e alertas consistentes. Históricos dos períodos são demonstrativos e determinísticos; não representam medições reais. Resolver alerta e editar preferências funciona durante a sessão. MQTT, persistência, autenticação e biometria real ainda não estão conectados.

## Estrutura

- `lib/nexus/app.dart`: aplicação, tema e navegação responsiva.
- `lib/nexus/design.dart`: tokens, cards, filtros, estados e gráficos vetoriais.
- `lib/nexus/store.dart`: modelos, simulação e preferências locais.
- `lib/nexus/screens.dart`: telas principais e detalhes.
- `assets/brand/nexus_logo.png`: logo original, sem alteração.
- `insp/` e `specs/01…03`: referências e documentação da exploração anterior.
- `lib/pages/` e `lib/widgets/`: protótipos anteriores preservados, fora da navegação atual.
