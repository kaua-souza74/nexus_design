# Design QA — NEXUS: Home, Dispositivos e Perfil

**Findings**

- [P2] Revisão visual após as últimas alterações não pôde ser concluída.
  Location: Home, Dispositivos e Perfil no preview web local.
  Evidence: as duas referências enviadas foram abertas e analisadas; a prévia local anterior a estes ajustes também foi inspecionada. Ao atualizar o preview depois das mudanças, o navegador recusou a URL local por política de segurança. O novo banner de Perfil também não tem uma captura da versão atual.
  Impact: a compilação confirma que os widgets estão corretos, mas sem a captura final não é possível atestar o recuo dos banners, a legibilidade dos painéis de vidro nem o novo corte fotográfico do Perfil.
  Fix: abrir a prévia atual no navegador e comparar as telas no viewport mobile.

**Fontes visuais**

- Home: `C:\Users\Olá\AppData\Local\Temp\codex-clipboard-13ea6fcc-c345-486f-b5c4-c2fb8550f72b.png` — 607 × 795 px.
- Dispositivos: `C:\Users\Olá\AppData\Local\Temp\codex-clipboard-d20171f8-0e12-418e-a6cc-3ac83129d02d.png` — 600 × 373 px.

**Implementação e evidência**

- Alvo: `http://127.0.0.1:8082/` (Flutter Web local), páginas Home, Dispositivos e Perfil.
- Captura pós-ajuste: não disponível; bloqueada pela política do navegador ao reabrir o endereço local.
- Viewport pretendido: mobile, correspondente às capturas do app (aprox. 435 × 867 CSS px na captura anterior). A dimensão e o DPR da versão posterior às alterações não puderam ser medidos.
- Normalização: nenhuma; não foi criado um par comparável de capturas.
- Estado: Home e Dispositivos; conteúdo NEXUS com dados simulados.
- Comparação visual conjunta pós-ajuste: não realizada por falta da captura da implementação atual. Comparação da região do cabeçalho/contadores: bloqueada pelo mesmo motivo.

**Superfícies de fidelidade**

- Tipografia: os títulos serifados nos banners e os rótulos compactos das métricas foram mantidos; comparação final de escala e quebra de linha pendente.
- Espaçamento e layout: a Home usa margem horizontal menor; o resumo de Dispositivos foi integrado ao banner para eliminar a faixa branca desproporcional. A margem final não foi verificada após recompilar.
- Cores e tokens: permanecem os tons vinho NEXUS; painel translúcido de borda clara e desfoque leve foi aplicado sobre a foto.
- Imagens: banners existentes do lobby e corredor permanecem como assets locais do projeto; novo corte e contraste após o ajuste precisam de captura final.
- Conteúdo: dados simulados preservados; opções “Acesso biométrico” e “Reduzir movimento” removidas do Perfil. O estado interno de movimento ainda atende ao controle de animações do app.

**Histórico**

- Iteração anterior: o resumo de Dispositivos distribuía dois contadores e um ícone em três larguras, produzindo uma área vazia e rótulos sem hierarquia. O banner da Home tinha recuo amplo.
- Correções feitas: Home com 12 px de recuo horizontal; contadores Online/Offline em painel de vidro fosco sobre a imagem, com divisor central e rótulos alinhados; preferências removidas.
- Correção posterior no Perfil: banner fotográfico com logo, cartão glass de usuário/hotel e edição do nome; linhas de preferências com ícones em tiles, chevrons e áreas de toque mais claras.
- Evidência pós-correção: Flutter Analyzer e build web concluídos sem erros; a captura visual pós-correção foi bloqueada pela política do navegador.

**Open Questions**

- Nenhuma decisão de produto pendente. A confirmação visual final depende de uma captura atual do preview.

**Implementation Checklist**

- [x] Reduzir o recuo horizontal do banner da Home.
- [x] Unificar os contadores do resumo de Dispositivos em um painel translúcido.
- [x] Remover biometria e redução de movimento das opções do Perfil.
- [x] Criar banner fotográfico e cartões de preferência mais definidos para o Perfil.
- [x] Documentar SDK, comandos, simulação, telas e direção visual no README.
- [x] Executar Flutter Analyzer e build web.
- [ ] Capturar e comparar a implementação recompilada no mesmo viewport das referências.

**Follow-up Polish**

- [P3] Ajustar o corte da imagem Home depois de validar a nova margem em um telefone real.

final result: blocked
