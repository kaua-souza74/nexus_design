# NEXUS — especificação da direção escolhida

## Identidade e composição

A inspiração 3 fornece a hierarquia: bloco principal com gradiente, grande indicador, pequenas pills, ações circulares, cards claros e gráficos integrados em superfícies escuras. A navegação segue a inspiração 1: cápsula flutuante com círculo forte no item ativo. Conteúdo reinterpretado para monitoramento de hotel.

Cor principal #4F3139; escuro #2E1D24; rosa vinho #92656B; areia #D8B5A0; fundo #F6F3F1. Verde, âmbar e vermelho indicam estado. Logo original usada como asset. Roboto nativa: títulos 25–30, métricas 32–82, corpo 12–14; raio principal 28; margens mobile 22; gaps 12/16/24.

## Navegação e telas

1. Início: hotel e espaços monitorados, dispositivos/alertas, atalhos, espaços horizontais, atividade e médias ambientais.
2. Espaços: filtros todos/ocupados/livres/em alerta/offline e cards com estado, tipo, temperatura e comunicação.
3. Detalhe do espaço: hero compartilhado, temperatura, umidade, luz, presença, porta, gráfico por período, dispositivos e timeline.
4. Dispositivos: filtros online/offline/atenção, detalhe com ESP32, sensores, comunicação, histórico, firmware, tópico MQTT e saúde.
5. Alertas: ativos/resolvidos, severidade, ocorrência detalhada, gráfico, ações para espaço/dispositivo e resolução local.
6. Analytics: hoje/7/30 dias, ocupação, condições ambientais, saúde dos dispositivos e ambientes ativos.
7. Perfil: administrador, hotel, nome editável, notificações, preferência biométrica, movimento reduzido e apresentação da versão.

## Comportamento

Dados compartilhados em ChangeNotifier. Atualização a cada 6 s com pequenas oscilações determinísticas. Eventos mais lentos alternam presença, porta e conexão. 12 espaços/20 ESP32. Históricos estimados mudam por período e terminam na leitura atual. Offline mantém a última leitura. Alertas podem ser resolvidos localmente.

Painel de simulação acessível no início e perfil: pausar, normalizar, ESP32 offline, calor, porta, presença, luz; estados normal/loading/empty/offline/error. O erro tem ação de recuperação; filtros vazios têm mensagem específica.

Animações: entradas progressivas, números interpolados, transição de rotas com fade/slide, Hero de espaço, gráfico desenhado progressivamente, toque com escala e indicador pulsante. Movimento reduzido desativa os efeitos principais.

## Responsividade

Smartphone: scroll vertical, cards horizontais no início, grid de sensores com duas colunas quando houver espaço e bottom navigation persistente nas telas principais. Desktop: sidebar a partir de 1000 px, conteúdo centralizado até 900 px e grids que expandem. Detalhes têm retorno explícito.

## Limites da demonstração

Sem broker MQTT real, login, envio de notificações ou biometria nativa. Preferências e resolução de alertas duram a sessão. Históricos e métricas de períodos longos são dados de apresentação.
