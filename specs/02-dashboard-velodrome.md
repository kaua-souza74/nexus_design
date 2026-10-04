# Spec 02 — Dashboard Velodrome

**Referência:** `insp/2.png`. Dashboard de analytics com cabeçalho verde/fotográfico, quatro áreas de navegação, filtros, cartões de indicadores e tabela de produto.

## Objetivo

Dar visão de negócio de receita, crescimento, usuários e desempenho de produtos numa interface de analytics. Reproduzir hierarquia e aparência da referência, convertendo a página desktop em uma tela Flutter mobile rolável.

## Layout mobile

1. **Cabeçalho de impacto:** fundo com textura abstrata verde-oliva de alto contraste; data; “Good Morning”; nome em destaque “Velodrome”; pílulas “Stable 1,21%” e “Growing 5,30%”; ícones de configurações, guia, notificações e perfil.
2. **Navegação horizontal:** Overview, Analytics, Customers, Billing, Reports e Settings. No celular, faixa rolável horizontal, com Overview selecionado.
3. **Filtros:** seletor “2025 Season”, seletor “All” e ação Search em controles arredondados.
4. **Monthly Recurring Revenue:** cartão com `$87.410`, `0,13%`, texto de crescimento `+10%`, barra horizontal graduada e resumo New Revenue `$12,430`, Expansion `$4,210`, Churn `23%`.
5. **Net Revenue Growth:** cartão com `$3.150`, variação `↓ 0,21%`, linha roxa e indicação comparativa `$123.150` / `4,02%`.
6. **Active Users:** cartão com `97%`, `4,02%`, barras verticais pequenas em cinza e verde, “New User 814%”, “Golden Hour 2:00 PM”, qualidade “Excellent” e churn `13%`.
7. **Product Overview:** seção com ação Filter e botão preto Export CSV; cartão de pedido mobile que preserva Product Roche Watch A18, Order W82026CC, Status Waiting for payment, Price $19.99, Date April 8, 2026, Platform TikTok Shop, Tax $1.80 e Discount $8.50.

## Direção visual

- Cabeçalho com fotografia/textura verde profunda, preto e dourado/verde-limão.
- Conteúdo sobre fundo quase branco; cartões brancos grandes, arredondados e sem sombra marcada.
- Tipografia de alto contraste; valores financeiros grandes e percentuais pequenos em pílulas cinza.
- Roxo na série de crescimento; verde-limão nos indicadores selecionados.
- A tabela mantém aparência limpa e os mesmos títulos/valores legíveis numa composição mobile.

## Comportamento

- Rolagem vertical, com cabeçalho e navegação no início da página.
- Faixa de navegação pode ser deslocada horizontalmente; filtros ficam numa linha rolável.
- Filtros de temporada, categoria e busca devem ser controles acessíveis.
- Em mobile, Product Overview vira cartões de pedido ou tabela horizontal limitada a esta seção, sem comprimir ilegivelmente todas as colunas.
- A ação Export CSV apresenta estado/arquivo apenas se houver exportação implementada.
