# Spec 03 — Dashboard financeiro

**Referência:** `insp/3.png`. App financeiro mobile sobre fundo vermelho/laranja, acompanhado de visualizações de saldo ao longo do tempo e distribuição de despesas.

## Objetivo

Exibir saldo, atalhos de movimentação, transações recentes e distribuição de gastos num painel financeiro pessoal. Reproduzir a composição mobile da referência e trazer a análise adjacente para seções roláveis abaixo.

## Layout mobile

1. **Cartão de saldo em destaque:** painel superior em degradê vermelho para laranja; avatar; sino; rótulo Balance; saldo `$12,680.42`; pílula `↗ 2.46% this month`; representação do cartão Visa final `9286`, validade `08/32`.
2. **Ações rápidas:** Deposit, ação central de transferência e Withdraw em botões arredondados claros.
3. **Recent Transactions:** título com View All e linhas com ícone/serviço, data/hora e valor: Adobe Creative Cloud (`-$59.99`), Stripe Payout (`$187.50`), Office Supplies (`$24.00`).
4. **Navegação inferior:** cápsula clara sobreposta à base; cinco ícones, com carteira selecionada num círculo preto.
5. **Resumo de atividade:** cartão com `2.46% this month`, valor de destaque `$1,842.56` e gráfico de linha branco Jan–Jun; tooltip de exemplo `$648.24 for March 2026`.
6. **Spending Categories:** bolhas/círculos laranja com ícones, nome e percentual: Groceries 32,8%, Clothes and Shoes 16,1%, Cafes and Restaurants 14,8%, Sport 11,3% e Health 8,4%. Em tela estreita, distribuir em grade fluida preservando círculos e rótulos.

## Direção visual

- Degradê vermelho escuro no topo para laranja saturado na área de análise.
- Cartão de saldo usa texto branco e cartão bancário translúcido em pêssego; a lista de transações fica sobre superfície branca.
- Botões de ação em cinza muito claro com ícones lineares pretos.
- Valores principais grandes; percentuais em cápsulas; gráficos e bolhas com transparência e contornos claros.
- Fundo da página mantém continuidade entre os painéis coloridos; superfícies de leitura permanecem claras.

## Comportamento

- Rolagem vertical; saldo/ações/transações surgem primeiro, gráficos e categorias depois.
- Deposit, transferência, Withdraw e View All têm áreas de toque claras. Sem fluxo funcional de banco, manter os botões como protótipo sem sugerir uma transação concluída.
- Tooltip do gráfico aparece ao selecionar ponto; período e unidade visíveis.
- Categorias são selecionáveis e podem realçar o círculo correspondente.
- Barra de navegação inferior não deve encobrir o fim da lista; reservar espaço inferior.
