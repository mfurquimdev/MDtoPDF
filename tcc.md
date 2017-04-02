# Metodologia

## Scrum

O _framework_ _scrum_ é ideal para o desenvolvimento de projetos complexos no qual a produtividade e a criatividade são essenciais para a entrega de um produto de alto valor. Inicialmente, tal método de organização e gerenciamento do projeto foi aplicado para o desenvolvimento do sistema em questão \cite{the_scrum_guide}. O _kanban_ do \href{https://waffle.io/mfurquim/tcc}{waffle.io} foi utilizado para registrar tarefas devido à sua integração com as _issues_ do github. Reuniões com o orientador foram realizadas para discutir aspectos técnicos do jogo, como as estruturas de dados a serem utilizadas para reduzir os dados armazenados, e alguns métodos importantes para agilizar o processamento.

Porém, ao longo do tempo, o esforço para manter a rastreabilidade das tarefas tornou-se muito alto em relação à complexidade do projeto, e ao tamanho da equipe. As tarefas passaram a ser _branchs_ locais com nomes significativos, representando a funcionalidade a ser desenvolvida. Após a conclusão da tarefa, testes simples e manuais foram aplicados para então unir à _branch_ mestre[^git_merge]. Por fim, para trabalhar em outra _branch_, foi necessário atualizá-la em relação à mestre[^git_rebase].

[^git_merge]: `$ git merge`
[^git_rebase]: `$ git rebase`

## Regras do Big Points

_Big Points_ é um jogo abstrato e estratégico com uma mecânica de colecionar peças que pode ser jogado de dois a cinco jogadores. São cinco peões de cores distintas, que podem ser usadas por qualquer jogador, para percorrer um caminho de discos coloridos até chegar ao pódio. Durante o percurso, os jogadores coletam alguns destes discos e sua pontuação final é determinada a partir da ordem de chegada dos peões ao pódio e a quantidade de discos adquiridos daquela cor. Ganha o jogador com a maior pontuação.

O jogo é composto por cinco peões, um de cada uma das seguintes cores, denominadas **cores comuns**: vermelha, verde, azul, amarela e violeta. Para cada cor de peão, tem-se dez discos (totalizando cinquenta discos) denominados **discos comuns**, e cinco discos das cores branca e preta (totalizando dez discos) denominados **discos especiais**. Por fim, há um pódio (ou escada) com um lugar para cada peão. O pódio determinará a pontuação equivalente a cada disco da cor do peão, de maneira que o peão que ocupar o espaço mais alto no pódio (o primeiro a subir) fará sua cor valer quatro[^pawn_score], o segundo peão, três pontos e assim por diante, até o último valer zero pontos.

[^pawn_score]: No caso de um jogo com menos de cinco peões, a seguinte fórmula se aplica: $N_{c}-P_{pos}$, onde $N_{c}$ é o número de discos comuns e $P_{pos}$ é a posição do peão no pódio.

### Preparação



### Mecânica
