# NEXUS — painel inteligente de ambientes

Protótipo mobile em Flutter/Dart para apresentação do projeto SENAI. A interface demonstra uma plataforma de acompanhamento de espaços e sensores conectados. Os valores e estados exibidos pelo app são simulados localmente.

## Começar

### Requisitos

- Windows 10/11.
- Flutter SDK 3.47.6 ou compatível com o `pubspec.yaml` (`Dart >=3.6.0 <4.0.0`).
- Chrome para a execução web, ou os componentes de desktop do Windows habilitados no Flutter.

O SDK usado neste computador está em `C:\Users\Olá\flutter`. Como o caminho contém acento, os comandos abaixo usam o nome curto do Windows (`OLCB45~1`), que evita problemas do compilador de shaders.

Abra o PowerShell na pasta do projeto (`Nexus_simude`) e carregue as dependências:

```powershell
$FlutterSdk = 'C:\Users\OLCB45~1\flutter\bin'
& "$FlutterSdk\flutter.bat" pub get
```

### Abrir no navegador

```powershell
& "$FlutterSdk\flutter.bat" run -d chrome
```

Para servir a prévia sem abrir uma janela de Chrome automaticamente:

```powershell
& "$FlutterSdk\flutter.bat" run -d web-server --web-port 8082 --web-hostname 127.0.0.1
```

Depois, abra `http://127.0.0.1:8082/` no navegador. Encerre o servidor com `q` no terminal onde o Flutter está rodando.

### Abrir como aplicativo Windows

```powershell
& "$FlutterSdk\flutter.bat" run -d windows
```

Se o Flutter não encontrar o dispositivo Windows, confira a instalação e os componentes exigidos:

```powershell
& "$FlutterSdk\flutter.bat" doctor -v
& "$FlutterSdk\flutter.bat" devices
```

## Comandos úteis

```powershell
# Atualiza os pacotes depois de alterar pubspec.yaml
& "$FlutterSdk\flutter.bat" pub get

# Verifica avisos e erros do Dart/Flutter
& "$FlutterSdk\flutter.bat" analyze

# Gera o site Flutter para demonstração web
& "$FlutterSdk\flutter.bat" build web
```

O build web fica em `build/web/`. Para mudanças de código durante `flutter run`, use hot reload (`r`) e hot restart (`R`) no terminal da execução.

## Telas e navegação

- **Início:** indicadores gerais, atividade recente e atalhos.
- **Espaços:** visão dos ambientes, presença e leituras simuladas.
- **Dispositivos:** estado online/offline, filtros e detalhes por sensor.
- **Alertas:** ocorrências ativas/resolvidas e filtros por severidade.
- **Perfil:** usuário e hotel, preferências locais e controle da simulação.
- **Analytics:** gráficos e agregações de demonstração.

Em telas estreitas, a navegação é uma barra flutuante inferior. No desktop largo, ela vira uma navegação lateral. O login é demonstrativo: “Acessar demonstração” entra sem autenticação real; o formulário valida o formato básico do e-mail e uma senha com pelo menos quatro caracteres. Não use credenciais reais.

## Dados e demonstração

O `NexusStore` centraliza o estado compartilhado entre as páginas. A simulação inicia com 12 espaços, 20 sensores ESP32, 18 dispositivos online, 2 offline e alertas de exemplo. As leituras avançam localmente a cada seis segundos.

Abra **Perfil → Controle da simulação** ou o botão de ajustes no Início para pausar, normalizar os dados ou escolher cenários como temperatura elevada, perda de conexão, porta, presença e iluminação. Os estados de carregamento, vazio, erro e offline também podem ser apresentados. Alterações de perfil e notificações duram apenas na sessão.

O protótipo físico com ESP32 e MQTT é demonstrado à parte. Este app ainda **não** se conecta ao broker MQTT, não persiste dados e não possui autenticação de servidor.

## Direção visual

- Marca NEXUS com vinho `#4F3139`, ameixa escura, tons de areia e fundo quente.
- Fotografias de lobby, corredor e recepção em banners de bordas arredondadas; scrims escuros preservam o contraste do texto.
- Painéis de vidro fosco para métricas sobre imagem, bordas discretas e sombras leves nos cards claros.
- No mobile, banners ocupam quase toda a largura útil para reduzir margens vazias; valores e rótulos mantêm alinhamento consistente.
- Componentes compartilhados ficam em `lib/nexus/design.dart`; manter seus tokens e espaçamentos consistentes ao criar páginas novas.

As referências de interface e as três specs iniciais continuam em `insp/` e `specs/01-dashboard-maytech.md`, `specs/02-dashboard-velodrome.md` e `specs/03-dashboard-financeiro.md`. A especificação consolidada do produto está em `specs/04-nexus.md`.

## Estrutura do código

```text
lib/
  main.dart                 # entrada do Flutter
  nexus/
    app.dart                # tema, login e navegação responsiva
    design.dart             # tokens, layouts, banners, vidro e widgets comuns
    login_page.dart         # login de demonstração
    screens.dart            # páginas principais e detalhes
    store.dart              # modelos e dados simulados
assets/
  brand/nexus_logo.png      # marca fornecida
  images/                   # fotografias dos banners e superfícies
specs/                      # especificações das inspirações e do NEXUS
insp/                       # imagens das inspirações originais
screenshots/                # capturas de referência das iterações
```

Inclua novos arquivos de imagem em `assets/images/`; a pasta já está declarada no `pubspec.yaml`.

## Estado da revisão visual

`design-qa.md` registra os ajustes de Home e Dispositivos e a análise atual. A captura automatizada da versão recompilada ficou bloqueada pela política do navegador; por isso o relatório ainda não declara a comparação visual final como aprovada.
