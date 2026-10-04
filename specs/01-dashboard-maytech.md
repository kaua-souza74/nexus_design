# Spec 01 — Dashboard Maytech

**Referência:** `insp/1.png`. A imagem reúne três telas mobile do mesmo produto; esta página adota a tela central como dashboard principal e reaproveita a linguagem visual das telas laterais.

## Objetivo

Apresentar um resumo de desempenho de uma plataforma SaaS: receita, clientes, assinaturas, receita por produto, status de leads e satisfação dos clientes.

## Layout mobile

1. **Topo:** marca circular laranja com símbolo geométrico e palavra “MAYTECH”; ações de notificações e perfil.
2. **Boas-vindas:** “Hello Simanjorang” e subtítulo “See how things are performing right now”.
3. **Indicadores em cartões:** Total Revenue (`$42,124`, variação `+20%`) e Total Customers (`15,880`, `+16%`), com pequenos gráficos/indicadores de tendência.
4. **Top Subscriptions:** cartão de destaque com fundo gráfico laranja/amarelo e quatro subcartões: Maytech Ops (`5,142`), Pay (`3,827`), Edu (`2,012`) e Stock (`1,520`).
5. **Revenue by Product:** cartão branco com gráfico de barras verticais arredondadas para Ops, Pay, Edu, Stock e Others, eixo de `$0` a `$10k`.
6. **Lead Status:** bolhas sobrepostas em tons de laranja, com 40%, 28%, 20% e 12%, mais legenda New, Working, Converted e Nurture.
7. **Satisfaction / recent sales:** cartão compacto de satisfação (média `4.53`, classificação por Ops, Pay, Edu, Stock e Others) e lista curta de vendas recentes com pessoa, produto e valor.
8. **Navegação inferior:** ícones para Home, funil, produtos e perfil, em cápsula escura flutuante com seleção laranja.

## Direção visual

- Fundo cinza-claro; cartões brancos, com cantos grandes e sombras muito suaves.
- Laranja intenso como destaque principal; laranja claro, pêssego e amarelo para variações e fundos decorativos.
- Texto preto/cinza escuro; legenda e dados secundários em cinza médio.
- Números de KPI grandes; gráficos minimalistas e ícones finos.
- Manter a combinação arejada e amigável da referência, evitando densidade de dashboard desktop.

## Comportamento

- Rolagem vertical; KPIs em duas colunas, demais blocos em largura total.
- Filtro de período para campanhas e receita; menu de três pontos nos cartões que o mostram na referência.
- Toque numa categoria ou produto filtra/realça sua série; navegação inferior troca as áreas do produto.
- Gráficos exibem legenda e valores sem depender exclusivamente da cor.

## Conteúdo demonstrativo

Usar exatamente as métricas e rótulos acima como dados visíveis iniciais. A seção Campaign Influence mostra alternância Week / Month / Year, `4,278 leads acquired from webinars`, eixo mensal Jan–Aug e as séries Training, Webinar, Workshop e Seminar. As seções Lead Status e Customer Satisfaction / Recent Sales também ficam na rolagem do dashboard.
