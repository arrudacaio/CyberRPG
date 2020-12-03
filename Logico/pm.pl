/*
LISTA DE EVENTOS E SUAS DESCRICOES:

'evento 0': Momento em que o usuario acabou de entrar no jogo.

'noticia 1 lida': Momento em que o texto 1 da aba Noticias foi lido pelo jogador.

'noticia 2 lida': Momento em que o texto 2 da aba Noticias foi lido pelo jogador.

'noticia 1 e 2 lida': Momento em que os dois primeiros textos da aba Noticias foram lidos pelo jogador, desbloquando a primeira mensagem.

'inicio do contrato': Momento em que a missao fica disponivel.

'contrato finalizado': Termino da missao e inicio do ultimo dialogo em Mensagens.

'ultima mensagem': Ultimo dialogo finalizado. A ultima noticia eh liberada.

'fim de jogo': Nao ha mais eventos para ocorrer.
*/


getRandom(N1, N2, R):- R = random_between(0, 100, R).


getCabecalho('1', '\n\n\n\n\n\n\n:::::::::::::MENSAGENS:::::::::::::\n\n').
getCabecalho('2', '\n\n\n\n\n\n\n:::::::::::::PERFIL:::::::::::::\n\n').
getCabecalho('3', '\n\n\n\n\n\n\n:::::::::::::CONTRATOS:::::::::::::\n\n').
getCabecalho('4', '\n\n\n\n\n\n\n:::::::::::::NOTÍCIAS:::::::::::::\n\n').
getCabecalho('5', '\n\n\n\n\n\n\n:::::::::::::DESENVOLVEDORES:::::::::::::').
getCabecalho('chat', '\n\n\n\n\n\n\n:::::::::::::M3lch10r:::::::::::::\n\n').
getCabecalho('ninho', '\n\n\n\n\n\n\n:::::::::::::O Ninho da Aranha:::::::::::::\n\n').
getCabecalho('ninho2', '\n\n\n\n\n\n\n:::::::::::::O Ninho da Aranha:::::::::::::').
getCabecalho('Tunderstorm#231982', ':::::::::::>>Tunderstorm<<:::::::::::\n\n').
getCabecalho('ZTX#53325', ':::::::::::>>ZTX<<:::::::::::\n\n').
getCabecalho('Sphinx#142731', ':::::::::::>>Sphinx<<:::::::::::\n\n').


getOpcaoInvalida:- 
  writeln('Opção inválida. Tente novamente').


getMenu('evento 0', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos\n 4. Notícias(2)\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('noticia 1 lida', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos\n 4. Notícias(1)\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('noticia 2 lida', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos\n 4. Notícias(1)\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('noticia 1 e 2 lida', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens(!)\n 2. Perfil\n 3. Contratos\n 4. Notícias\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('inicio do contrato', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos(!)\n 4. Notícias\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('contrato finalizado', ' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens(!)\n 2. Perfil\n 3. Contratos\n 4. Notícias\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n ').
getMenu('ultima noticia','\n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos\n 4. Notícias (1)\n 5. Crédito aos Desenvolvedores\n \n Digite o número da operação desejada: \n').



getNoticia('evento 0', 'Você possui 0 novas notícias.\n (!)1.Tecnologia: Projeto Connected World É Um Sucesso!\n (!)2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n \n 3. Voltar ao Menu\n \nDigite o número da opção desejada').
getNoticia('noticia 1 lida', 'Você possui 0 novas notícias.\n 1.Tecnologia: Projeto Connected World É Um Sucesso!\n (!)2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n \n 3. Voltar ao Menu\n \nDigite o número da opção desejada').
getNoticia('noticia 2 lida', 'Você possui 0 novas notícias.\n (!)1.Tecnologia: Projeto Connected World É Um Sucesso!\n 2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n \n 3. Voltar ao Menu\n \nDigite o número da opção desejada').
getNoticia('noticia 1 e 2 lida', 'Você possui 0 novas notícias.\n 1.Tecnologia: Projeto Connected World É Um Sucesso!\n 2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n \n 3. Voltar ao Menu\n \nDigite o número da opção desejada').
getNoticia('ultima noticia', 'Você possui 1 novas notícias.\n 1.Tecnologia: Projeto Connected World É Um Sucesso!\n 2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n 3.(!) URGENTE: Projeto Connected Word É Um Golpe de Nível Mundial! \n 4. Voltar ao Menu \nDigite o número da opção desejada').
getNoticia('noticia 3 lida','Você possui 0 novas notícias.\n 1.Tecnologia: Projeto Connected World É Um Sucesso!\n 2.Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.\n 3.URGENTE: Projeto Connected Word É Um Golpe de Nível Mundial! \n 4. Voltar ao Menu \nDigite o número da opção desejada').

getDesenvolvedores('dev','1. Caio José dos Santos Arruda\n2. Enock Bezerra Ferreira de Souza\n3. João Vitor Patrício Romão\n4. Jonatha Kennedy Monteiro da Costa\n5. Thiago Farias de Almeida\n\nDigite(1) para Voltar ao Menu:').
  

getContrato('tela 1',
'*********ATIVOS*********
Você possui 0 contratos ativos.

******FINALIZADOS*******
Você possui 0 contratos finalizados.

1. Voltar ao Menu

Digite o número da operação desejada: ').

getContrato('tela 2',
'*********ATIVOS*********
Você possui 1 contrato ativo.

1. (!) O Ninho da Aranha

******FINALIZADOS*******
Você possui 0 contratos finalizados.

2. Voltar ao Menu

Digite o número da operação desejada: ').

getContrato('tela 3',
'*********ATIVOS*********
Você possui 0 contratos ativos.

******FINALIZADOS*******
Você possui 1 contrato finalizado.

O Ninho da Aranha

1. Voltar ao Menu

Digite o número da operação desejada: ').


getMensagem('evento 0', 'Você possui 0 novas mensagens. \n\n\n 1. Voltar ao Menu. \n\n Digite o número da operação desejada').
getMensagem('noticia 1 e 2 lida', 'Você possui 1 novas mensagens.\n\n1. (!) M3lch10r: Oi, ouvi falar que você sabe hackear coisas... \n2. Voltar ao Menu\n\n Digite o número da operação desejada:').
getMensagem('inicio do contrato', 'Você possui 0 novas mensagens\n\nM3lch10r: Fico no aguardo.\n\n1. Voltar ao Menu\n\nDigite o número da operação desejada: ').
getMensagem('contrato finalizado', 'Você possui 1 nova mensagem\n\n1.(!) M3lch10r: Você realmente conseguiu\n\n2. Voltar ao Menu.\n\nDigite o número da operação desejada.').
getMensagem('ultima mensagem', 'Você possui 0 novas mensagens\n\nM3lch10r saiu.\n\n1. Voltar ao Menu\n\nDigite o número da operação desejada:  ').


mensagem('mensagem 1', 'M3lch10r: Oi, ouvi falar que você sabe hackear coisas. Gostaria que fizesse um pequeno serviço pra mim.').
mensagem('mensagem 2', 'M3lch10r: Você sabe como isso aqui funciona. Só usuários \"verificados\" pelos chefões do Abyss podem entrar\nem contato com vocês. Além disso, mesmo se eu fosse um tira, o que diabos eu poderia fazer? Todo mundo é\npraticamente irrastreável aqui, contanto que não façam nada muito estúpido. Agora, você quer o trabalho\nou não?\n').
mensagem('mensagem 3', 'M3lch10r: E eu aqui achando que você levaria o trabalho a sério. Tudo bem. Mas supondo que eu não tenha\nouvido errado, enquanto eu não achar alguém mais disposto a me ajudar, vou estar por aqui se mudar de\nideia (mas não por muito tempo).').
mensagem('mensagem 4', 'M3lch10r: Sabe a Digital Spider? Então, preciso que você invada ela e \"pegue emprestado\" alguns dados\npra mim. Quero tudo o que você puder encontrar sobre a GhostWeb, sobre o projeto Connected World, e, se\npossível, sobre algo chamado \"Puppet_M@ster\". Não se preocupe se não achar nada sobre este último. Ele\né mais uma lenda urbana do que qualquer outra coisa. Enfim, se olhar em sua conta bancária do Abyss,\nverá que o pagamento já foi enviado e só aguarda a confirmação de que nosso contrato foi concluído para\nque você de fato receba o dinheiro. Verá também que é uma quantia bem generosa. Posso contar com seus\nserviços?').
mensagem('mensagem 5', 'M3lch10r: Fico no aguardo.').
mensagem('mensagem 6', 'M3lch10r: Você realmente conseguiu! Eu admito, por vários momentos duvidei de\nvocê. Tenho que aprender a confiar mais na minha rede de contatos. Enfim, saiba\nque você não apenas prestou a MIM um grande serviço, mas provavelmente ao\nmundo inteiro. Te agradeço de verdade.').
mensagem('mensagem 7', 'M3lch10r: Sabe aquela \"lenda urbana\" que eu te falei? Aquilo sobre um tal de Puppet_M@ster? Acontece que\nessa coisa é muito mais real do que eu gostaria. Acho que não preciso te explicar. Se quiser saber mais,\napenas fique de olho nas notícias. Tenho certeza de que não vai demorar muito até aqueles desgraçados da\nDigital Spider serem desmascarados globalmente. Ah, já ia esquecendo: eu faço parte da AGI (Agência Global\nde Inteligência). Sim, sim, acontece que eu SOU um \"tira\", como vocês malandros dizem. Mas não se preocupe.\nJá que você foi tão cooperativo, não tenho interesse em te prender... ainda. Mas saiba que você se daria\nmuito bem por aqui na AGI. Sempre precisamos de pessoas com suas... habilidades. Pense no assunto. Você sabe\nonde nos encontrar se estiver interessado. Agora eu pretendo desaparecer dessa rede. Acho que os chefões\ndo Abyss vão me deletar daqui em breve de qualquer forma. Mais uma vez, em nome de toda a AGI e, pra ser\nsincero, de todo o mundo: muito obrigado.').


getNoticia1 :-
  getCabecalho('4', R),
  writeln(R),
  writeln('\n \n ------------------------------------------------------------------------------------------------------------------------'),
  writeln('\n \n ****************************Tecnologia: Projeto Connected World É Um Sucesso!****************************'),
  writeln('Após anos de desenvolvimento, hoje, no dia 26/04/2048, a Digital Spider, maior empresa distribuidora'),
  writeln('de internet do mundo, anunciou que o projeto Connected World está oficialmente finalizado.'),
  writeln('\n Nas palavras de Edwart T. Johnson, fundador da Digital Spider e atualmente a pessoa mais rica do mundo:'),
  writeln('\"Vivemos em uma era em que a internet se faz um recurso tão essencial quanto água, comida ou energia'),
  writeln('elétrica. Sabendo disso, nossa empresa, com o apoio de vários países, iniciou um projeto que, dentre'),
  writeln('outros objetivos, visava tornar a internet um recurso acessível e, mais importante, gratuito para todos.'),
  writeln('Estamos orgulhosos em anunciar a concretização deste feito.\".'),
  writeln('\n A nova radiofrequência desenvolvida nos laboratórios da Digital Spider, popularmente conhecida como'),
  writeln('GhostWeb, é em grande parte responsável pelo sucesso do projeto. A tecnologia possibilitou alcance e'),
  writeln('velocidade nunca antes atingidos, além de apresentar 100% de imunidade a interferência.'),
  writeln('Atualmente, milhares de torres espalhadas ao redor do mundo cobrem praticamente todo o planeta com o'),
  writeln('sinal da GhostWeb, permitindo que qualquer pessoa, em qualquer lugar do mundo, tenha acesso gratuito a'),
  writeln('rede mundial de computadores.'),
  writeln('\nComo tamanha revolução afetará a sociedade contemporânea, só o tempo dirá. Mas uma coisa é certa: as'),
  writeln('expectativas são, em sua esmagadora maioria, otimistas. \n \n'),
  writeln('').
  
getNoticia2 :-
  getCabecalho('4', R),
  writeln(R),
  writeln('\n'),
  writeln('------------------------------------------------------------------------------------------------------------------------'),
  writeln('\n'),
  writeln('****************************Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.****************************'),
  writeln('\n A cyberpolicia atualmente investiga o caso do possível aparecimento de uma nova rede de comunicações criminosas no'),
  writeln('ambiente virtual conhecido como \"Dark Web\". Segundo suspeitas, a nova plataforma virtual conhecida como \"Abyss\" reúne'),
  writeln('cybercriminosos dos mais variados tipos, como traficantes, golpistas e, em especial, hackers. O AV (Ambiente Virtual)'),
  writeln('aparentemente permite que tais criminosos aceitem contratos para a venda de seus produtos/serviços.'),
  writeln('\nApesar de possuir tais informações a cyberpolicia atualmente se vê de mãos atadas, pois nada pode fazer para derrubar o'),
  writeln('ambiente, rastrear seus usuários, ou impedir as transações ilegais que, a todo momento, ocorrem no submundo da internet.'),
  writeln('Quando questionado sobre o plano de ação contra esta nova ameaça virtual, um dos cyberpoliciais que escolheu não se'),
  writeln('identificar respondeu: \"Estamos trabalhando nisso.\".'),
  writeln('\n').

getNoticia3 :-
  getCabecalho('4', R),
  writeln(R),
  writeln('------------------------------------------------------------------------------------------------------------------------'),
  writeln('\n****************************URGENTE: Projeto Connected World É Um Golpe de Nível Mundial!****************************'),
  writeln('\n O mundo está em caos desde que uma terrível verdade foi descoberta há poucos minutos. A Digital Spider arquitetou um'),
  writeln('golpe classificado como Crime contra a humanidade, o nível mais grave de ato criminoso.'),
  writeln('\n Através das ações de um agente da AGI (Agência Global de Inteligência) que preferiu se manter anônimo, e das'),
  writeln('habilidades de um misterioso hacker, a rede privada da Digital Spider foi invadida hoje. O que foi encontrado chocou o'),
  writeln('mundo: detalhes sobre um projeto secreto chamado de \"Puppet_M@ster\".'),
  writeln('\nSegundo os arquivos extraídos da Digital Spider, o tão aclamado projeto Connected World nada mais era do que uma farsa'),
  writeln('para o real objetivo da empresa. O que foi descoberto parece tema de ficção científica, mas a própria AGI divulgou'),
  writeln('publicamente que esta é uma ameaça real, e que deve ser tratada com o máximo de urgência.'),
  writeln('\nO projeto Puppet_M@ster envolve nada mais nada menos do que controlar as mentes humanas de todas as partes do mundo'),
  writeln('através da tecnologia da GhostWeb. Pelo que foi dito pela AGI, a nova radiofrequência possui a estranha capacidade de'),
  writeln('alterar as sinapses cerebrais, dessa forma se tornando um potencial controlador de mentes. Pelo que é dito nos'),
  writeln('arquivos, a Digital Spider faria uso de tal atrocidade para colocar a empresa permanentemente no topo de tudo e de'),
  writeln('todos. A Digital Spider seria bem-sucedida no que monstros históricos como Hitler apenas tentaram: ter o mundo inteiro'),
  writeln('nas palmas das mãos. É bem provável que o mundo deva o direito do livre arbítrio ao trabalho conjunto entre um agente'),
  writeln('da lei e um criminoso.'),
  writeln('\nAgora, a Digital Spider está sofrendo um imenso processo de queda, a medida que órgãos de todas as partes do mundo se'),
  writeln('unem para derrubar a grande besta empresarial pedaço por pedaço.'),
  writeln('\nHá aqueles que dizem que tudo isso é apenas o começo de uma guerra para adquirir o controle dessa aterrorizante'),
  writeln('tecnologia, e tal afirmação é difícil de ser negada atualmente.'),
  writeln('\nO que essa reviravolta assustadora trará para o futuro de nossa sociedade, só o tempo dirá. Mas uma coisa é certa: o'),
  writeln('mundo jamais será o mesmo.'),
  writeln('\n').
  
getGameOverMsg('::::::::::::NOTA OFICIAL DOS DESENVOLVEDORES::::::::::::\nNós do Abyss lamentamos seu miserável fracasso. Infelizmente, para você, não podemos deixar que sua\nincompetência nos arraste junto com você para a fossa. Você está imediatamente desligado do nosso sistema.\nA partir de agora, não temos ligação alguma com você, não o conhecemos, e, para prevenir que nenhuma de\nnossas informações será vazada para ouvidos indesejáveis, garantiremos que você permaneça em completo e\nabsoluto silêncio.\n\nObrigado por ter escolhido o Abyss!\n\nAh, e é melhor não pisar lá fora. Bem, na verdade não faz diferença. Eles já estão dentro :).\n\n#######GAME OVER#######\n').


operacaoInvalida() :- writeln('Operacao invalida! Tente novamente.').


noticia('evento 0') :-
  writeln('\n \n \n'),
  getNoticia('evento 0', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getNoticia1, noticia('noticia 1 lida'); Option = '2' -> getNoticia2, noticia('noticia 2 lida'); Option = '3' -> menu('evento 0'); getOpcaoInvalida, noticia('evento 0')).

noticia('noticia 1 lida') :-
  writeln('\n \n \n'),
  getNoticia('noticia 1 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getNoticia1, noticia('noticia 1 lida'); Option = '2' -> getNoticia2, noticia('noticia 1 e 2 lida'); Option = '3' -> menu('noticia 1 lida')),
  writeln('Digite uma opção válida'),
  noticia('noticia 1 lida').

noticia('noticia 2 lida') :-
  writeln('\n \n \n'),
  getNoticia('noticia 2 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getNoticia1, noticia('noticia 1 e 2 lida'); Option = '2' -> getNoticia2, noticia('noticia 2 lida'); Option = '3' -> menu('noticia 2 lida')),
  writeln('Digite uma opção válida'),
  noticia('noticia 2 lida').
 
noticia('noticia 1 e 2 lida') :-
  writeln('\n \n \n'),
  getNoticia('noticia 1 e 2 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op), 
  (Option = '1' -> getNoticia1, noticia('noticia 1 e 2 lida'); Option = '2' -> getNoticia2, noticia('noticia 1 e 2 lida'); Option = '3' -> menu('noticia 1 e 2 lida'); getOpcaoInvalida, noticia('noticia 1 e 2 lida')).

noticia('noticia 3 lida') :-
  writeln('\n \n \n'),
  getNoticia('noticia 3 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getNoticia1, noticia('noticia 3 lida');Option = '2' -> getNoticia2, noticia('noticia 3 lida');Option = '3' -> getNoticia3, noticia('noticia 3 lida');Option = '4' -> menu('evento 0'); getOpcaoInvalida, noticia('noticia 3 lida')).

noticia('ultima noticia'):-
writeln('\n \n \n'),
  getNoticia('ultima noticia', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op), 
  (Option = '1' -> getNoticia1, noticia('ultima noticia');Option = '2' -> getNoticia2, noticia('ultima noticia');Option = '3' -> getNoticia3, noticia('noticia 3 lida');Option = '4' -> menu('ultima noticia');noticia('ultima noticia')).



noticia('ultima mensagem'):-
  writeln('\n \n \n'),
  getNoticia('ultima mensagem', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op), 
  (Option = '1' -> getNoticia1, noticia('ultima mensagem'); Option = '2' -> getNoticia2, noticia('noticia 1 e 2 lida'); Option = '3' -> getNoticia3, noticia('ultima mensagem'); Option =:= 4, menu('ultima mensagem'); getOpcaoInvalida, noticia('ultima mensagem')).

noticia('inicio do contrato'):-
  writeln('\n \n \n'),
  getNoticia('noticia 1 e 2 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op), 
  (Option = '1' -> getNoticia1, noticia('noticia 1 e 2 lida'); Option = '2' -> getNoticia2, noticia('noticia 1 e 2 lida'); Option = '3' -> menu('inicio do contrato'); getOpcaoInvalida, noticia('inicio do contrato')).

/* A partir daqui vai ser as funções de mensagem */

getChat('mensagem 1'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 1', Text),
  writeln(Text),
  writeln('1. Ok, pode mandar.'),
  writeln('2. E como sei que você não é um tira?'),
  writeln('3. Você ouviu errado. Cai fora.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 4'); Option = '2' -> getChat('mensagem 2'); Option = '3' -> getChat('mensagem 3'); getChat('mensagem 1'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 1')).
  
getChat('mensagem 2'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 2', Text),
  writeln(Text),
  writeln('1. Ok, pode mandar.'),
  writeln('2. Você ouviu errado. Cai fora.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 4'); Option = '2' -> getChat('mensagem 4'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 2')).

getChat('mensagem 3'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 3', Text),
  writeln(Text),
  writeln('1. Ok, pode mandar.'),
  writeln('2. E como sei que você não é um tira?'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 4'); Option = '2' -> getChat('mensagem 6'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 3')).
 
getChat('mensagem 4'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 4', Text),
  writeln(Text),
  writeln('1. Considere feito.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('inicio do contrato');  writeln('Operação inválida! Tente novamente.'), getChat('mensagem 4')).


  
/*Se o for para mensagem 2  digitar 'voce ouviu errado, cai fora'  */
getChat('mensagem 5'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 3', Text),
  writeln(Text),
  writeln('1. Ok, pode mandar.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 4'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 5')).

/*Se o jogador for para mensagem 3 e digitar 'e como sei que vc n e um tira?'*/
getChat('mensagem 6'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 2', Text),
  writeln(Text),
  writeln('1. Ok, pode mandar.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 4'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 6')).


  getChat('mensagem 6finalizacao'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 6', Text),
  writeln(Text),
  writeln('\n1. Do que está falando?'),
  writeln('2. Voltar a Mensagens.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 7'); Option = '2' -> mensagemMenu('contrato finalizado') ;writeln('Operação inválida! Tente novamente.'), getChat('mensagem 6finalizacao')).

  getChat('mensagem 7'):-
  getCabecalho('chat', Cabecalho),
  writeln(Cabecalho),
  mensagem('mensagem 7', Text),
  writeln(Text),
  writeln('\n1. Voltar a Mensagens.'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> mensagemMenu('ultima mensagem'); writeln('Operação inválida! Tente novamente.'), getChat('mensagem 7')).

mensagemMenu('evento 0'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('evento 0', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('evento 0'); writeln('Operação inválida! Tente novamente'), mensagemMenu('evento 0')).
  
mensagemMenu('noticia 1 lida'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('evento 0', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('noticia 1 lida'); writeln('Operação inválida! Tente novamente'), mensagemMenu('noticia 1 lida')).
  
mensagemMenu('noticia 2 lida'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('evento 0', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('noticia 2 lida'); writeln('Operação inválida! Tente novamente'), mensagemMenu('noticia 2 lida')).

mensagemMenu('noticia 1 e 2 lida'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('noticia 1 e 2 lida', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> getChat('mensagem 1'); mensagemMenu('noticia 1 e 2 lida')).
  
mensagemMenu(''):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('inicio do contrato', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('inicio do contrato')).

mensagemMenu('contrato finalizado'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('contrato finalizado', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '2' -> menu('contrato finalizado'); Option = '1' -> getChat('mensagem 6finalizacao')).

  mensagemMenu('ultima mensagem'):-
  getCabecalho('1', Cabecalho),
  writeln(Cabecalho),
  getMensagem('ultima mensagem', Text),
  writeln(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('ultima noticia')).

/*Inicio da tela de Perfil*/

/*TODO -> Pegar dados do usuario atual*/
perfil() :- 
  getCabecalho('2', Cabecalho),
  writeln('\n \n*********ID*********'),
  get_User_Atual(R),
  write('Nickname: '),
  write(R),
  writeln('Senha: *********'),
  writeln('\n*****HABILIDADES*****'),
  writeln('\nAQUI VAI A LISTA DE HABILIDADES'),
  writeln('\n*****EXPERIÊNCIA*****'),
  writeln('Fama: Hacker Mediano'),
  writeln('\n1. Melhoria de Habilidade'),
  writeln('2. Voltar ao Menu'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> writeln('Nao foi implementada! Tudo no seu tempo, jovem gafanhoto.');
  Option = '2' -> menu('evento 0'));
  writeln('Operacao invalida! Tente novamente.').

/*INICIO DA TELA DE CONTRATOS*/

contratos('evento 0') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 1', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('evento 0');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('evento 0').

contratos('noticia 1 lida') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 1', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('noticia 1 lida');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('noticia 1 lida').

contratos('noticia 2 lida') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 1', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('noticia 2 lida');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('noticia 2 lida').

contratos('noticia 1 e 2 lida') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 1', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('noticia 1 e 2 lida');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('noticia 1 e 2 lida').

contratos('inicio do contrato') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 2', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    (Option == '1' -> ninho1();
    Option == '2' -> menu('inicio do contrato');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('inicio do contrato')).

contratos('contrato finalizado') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 3', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('contrato finalizado');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('contrato finalizado').

contratos('ultima mensagem') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 3', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('ultima mensagem');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('ultima mensagem').

contratos('fim de jogo') :-
    getCabecalho('3', Cabecalho),
    writeln(Cabecalho),
    getContrato('tela 3', Msg),
    writeln(Msg),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    Option = '1' -> menu('fim de jogo');
    writeln('Operacao invalida! Tente novamente.'),
    contratos('fim de jogo').

/*FIM DA TELA DE CONTRATOS*/

/*INICIO DA TELA DE DESENVOLVEDORES*/
desenvolvedores() :-
  getCabecalho('5',X),
  getDesenvolvedores('dev',Y),
  writeln(X),
  writeln(Y),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option = '1' -> menu('evento 0'); writeln('Operação inválida! Tente novamente'), desenvolvedores()).

/*FIM DA TELA DE DESENVOLVEDORES*/

/*INICIO DA TELA DE "O NINHO DA ARANHA"*/
getBloqueioFail():-
  getCabecalho('ninho',X),
  writeln(X),
  writeln('\n\n'),
  writeln('Falha no bloqueio. Você foi rastreado! Sua identidade e localização foram comprometidos!'),
  getGameOverMsg(Msg),
  writeln(''),
  writeln(Msg),
  menu('inicio do contrato').

ninho1() :-
    getCabecalho('ninho',X),
    writeln(X),
    writeln('1. Analisar a rede interna da Digital Spider'),
    writeln('2. Voltar a Contratos'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    writeln(''),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    (Option == '1' -> ninhoSeguranca([],37);
    Option == '2' -> contratos('inicio do contrato');
    operacaoInvalida()),
    ninho1().

ninhoSeguranca(MissoesFeitas,FuncsOn) :-
    (
    (member('funcionarios derrubados',MissoesFeitas),
    member('drone hackeado',MissoesFeitas)) ->
        Dificuldade = 'Baixa',
        Dica = 'Invasao direta';
    (member('funcionarios derrubados',MissoesFeitas);
    member('drone hackeado',MissoesFeitas)) ->
        Dificuldade = 'Media',
        Dica = 'Diminuir a seguranca antes de realizar a invasao';
    Dificuldade = 'Alta',
    Dica = 'Diminuir a seguranca antes de realizar a invasao'
    ),
    getCabecalho('ninho',X),
    writeln(X),
    write('Funcionarios online: '),
    writeln(FuncsOn),
    write('Protecao da rede: '),
    writeln(Dificuldade),
    writeln(''),
    writeln(''),
    write('Chance de o invasor ser rastreado ao invadir: '),
    writeln(Dificuldade),
    writeln(''),
    write('Dificuldade atual de uma invasao direta: '),
    writeln(Dificuldade),
    writeln(''),
    write('Melhor curso de acao: '),
    writeln(Dica),
    writeln(''),
    writeln(''),
    writeln(''),
    writeln('1. Iniciar invasao'),
    writeln('2. Derrubar funcionarios da rede'),
    writeln('3. Hackear drone'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    writeln(''),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    (
    Option == '1' ->
        writeln('Iniciando invasao...'),
        writeln(''),
        writeln('Atravessando firewall...'),
        writeln(''),
        invasao(MissoesFeitas,FuncsOn,Dificuldade);
    Option == '2' ->
        derrubaFuncs(MissoesFeitas,FuncsOn);
    Option == '3' ->
        drone(MissoesFeitas,FuncsOn)
    );
    operacaoInvalida(),
    ninhoSeguranca(MissoesFeitas,FuncsOn).
	
derrubaFuncs(MissoesFeitas,FuncsOn) :-
	random_between(10,25,Derrubados),
	writeln('Bloqueando o acesso dos funcionários online...'),
    writeln(''),
	FuncsRestantes is 37 - Derrubados,
	write(Derrubados),
	write(' funcionários bloqueados com sucesso. Restam '),
	write(FuncsRestantes),
	write(' online.'),
	writeln(''),
	(Derrubados > 18 ->
		writeln(''),
		writeln('Mais de 50% dos usuários online foram derrubados.'),
		writeln(''),
		writeln('Nível de proteção da rede Digital Spider diminuído!'),
		append(['funcionarios derrubados'],MissoesFeitas,NewList),
        ninhoSeguranca(NewList,FuncsRestantes));
	writeln('Poucos usuários derrubados. Ataque ineficaz.'),
	writeln('Nível de proteção da rede Digital Spider não sofreu alterações.'),
	writeln(''),
	writeln('Você está sofrendo uma tentativa de rastreio. Bloqueando rastreador...'),
	random_between(0,100,Chance),
	(Chance < 40 ->getBloqueioFail());
	writeln('Rastreio bloqueado com sucesso. Você conseguiu despistar seus inimigos!'),
	ninhoSeguranca(MissoesFeitas,FuncsOn).


/*INICIO DA INVASAO*/

invasao(MissoesFeitas,FuncsOn,'Alta') :-
    random_between(1,6,D1),
    random_between(1,6,D2),
    random_between(1,6,D3),
    (
    (D1 == 6, D2 == 6, D3 == 6) ->
        writeln('Rede interna Digital Spider invadida com sucesso!'),
        roubarArquivos1();
    writeln('Acesso bloqueado. Invasão mal sucedida.'),
    writeln(''),
    writeln('Você está sofrendo uma tentativa de rastreio. Bloqueando rastreador...'),
    writeln(''),
	random_between(0,100,Chance),
	(Chance < 60 ->getBloqueioFail());
	writeln('Rastreio bloqueado com sucesso. Você conseguiu despistar seus inimigos!'),
	ninhoSeguranca(MissoesFeitas,FuncsOn)
    ).

invasao(MissoesFeitas,FuncsOn,'Media') :-
    random_between(1,6,D1),
    random_between(1,6,D2),
    random_between(1,6,D3),
    (
    (D1 > 3, D2 > 3, D3 > 3) ->
        writeln('Rede interna Digital Spider invadida com sucesso!'),
        roubarArquivos1();
    writeln('Acesso bloqueado. Invasão mal sucedida.'),
    writeln(''),
    writeln('Você está sofrendo uma tentativa de rastreio. Bloqueando rastreador...'),
    writeln(''),
	random_between(0,100,Chance),
	(Chance < 60 ->getBloqueioFail());
	writeln('Rastreio bloqueado com sucesso. Você conseguiu despistar seus inimigos!'),
	ninhoSeguranca(MissoesFeitas,FuncsOn)
    ).

invasao(MissoesFeitas,FuncsOn,'Baixa') :-
    random_between(1,6,D1),
    random_between(1,6,D2),
    random_between(1,6,D3),
    (
    (D1 > 1, D2 > 1, D3 > 1) ->
        writeln('Rede interna Digital Spider invadida com sucesso!'),
        roubarArquivos1();
    writeln('Acesso bloqueado. Invasão mal sucedida.'),
    writeln(''),
    writeln('Você está sofrendo uma tentativa de rastreio. Bloqueando rastreador...'),
    writeln(''),
	random_between(0,100,Chance),
	(Chance < 60 ->getBloqueioFail());
	writeln('Rastreio bloqueado com sucesso. Você conseguiu despistar seus inimigos!'),
	ninhoSeguranca(MissoesFeitas,FuncsOn)
    ).

/*FIM DA INVASAO*/


/*INICIO DO ROUBO DE DADOS*/

roubarArquivos1() :-
    writeln(''),
    writeln('DIGITAL SPIDER - BANCO DE DADOS'),
    writeln(''),
    writeln(''),
    writeln(''),
    writeln(''),
    writeln(''),
    writeln('Informacoes a pesquisar:'),
    writeln(''),
    writeln('-> Connected World'),
    writeln('-> GhostWeb'),
    writeln('-> Pupp3t_M@st3r'),
    writeln(''),
    writeln('1. Realizar o download automatico dos dados'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    (
    Option == '1' ->
        writeln(''),
        writeln('Pesquisando arquivos...'),
        writeln('3/3 Arquivos encontrados!'),
        writeln(''),
        writeln('Realizando download...'),
        writeln('1/3...'),
        writeln('2/3...'),
        writeln('3/3'),
        writeln('Download completo!'),
        writeln(''),
        roubarArquivos2();
    operacaoInvalida,
    roubarArquivos1()
    ).
    
roubarArquivos2() :-
    writeln('DIGITAL SPIDER - BANCO DE DADOS'),
    writeln(''),
    writeln(''),
    writeln(''),
    writeln(''),
    writeln(''),
    writeln('Todas as informacoes necessarias foram baixadas.'),
    writeln(''),
    writeln('1. Sair do banco de dados.'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    writeln(''),
    (
    Option == '1' ->
        ninho4();
    operacaoInvalida,
    roubarArquivos2()
    ).

/*

/*O CODIGO ABAIXO CONTEM ERROS, E NAO FOI UTILIZADO DEVIDO A DIFICULDADES COM RECURSÃO E CONDIÇÕES IF ELSE EM PROLOG.*/

/*Função que garante que um elemento da pesquisa só aparece como opção se não tiver sido pesquisado ainda:*/
verificaPesquisa(Pesquisa, PesquisasAnteriores) :-
    (member(Pesquisa, PesquisasAnteriores) -> write('');
    writeln(Pesquisa)).

roubarArquivos(PesquisasFeitas) :-
    PesquisasFeitas = [UltimaPesquisa|_],
    (
    UltimaPesquisa == '' ->
        writeln('DIGITAL SPIDER - BANCO DE DADOS'),
        writeln(''),
        writeln(''),
        writeln(''),
        writeln(''),
        writeln(''),
        writeln('Informacoes a pesquisar:'),
        writeln(''),
        writeln('-> Connected World'),
        writeln('-> GhostWeb'),
        writeln('-> Pupp3t_M@st3r'),
        writeln(''),
        write('Pesquise por um arquivo digitando seu nome: '),
        read_line_to_codes(user_input, Rp),
        atom_codes(Resposta, Rp),
        
        (
        Resposta == 'Connected World' ->
            writeln('Pesquisando...'),
            writeln(''),
            writeln('1 resultado encontrado:'),
            writeln(''),
            writeln('Connected_World.zip'),
            writeln(''),
            writeln('Baixar arquivo?'),
            writeln(''),
            writeln('Digite sua resposta: '),
            read_line_to_codes(user_input, Bx),
            atom_codes(Baixar, Bx),
            (
            (Baixar \== 'sim', Baixar \== 'Sim') ->
                operacaoInvalida(),
                writeln('-----------------------------------------------'),
                roubarArquivos(PesquisasFeitas);
            writeln('Baixando...'),
            
            writeln(''),
            writeln('Baixado!'),
            writeln(''),
            writeln('-----------------------------------------------'),
            append(['-> Connected World'],PesquisasFeitas,NewList),
            roubarArquivos(NewList)
            )
        );
                    
        (
        Resposta == 'GhostWeb' ->
            writeln('Pesquisando...'),
            writeln(''),
            writeln('1 resultado encontrado:'),
            writeln(''),
            writeln('GhostWeb.zip'),
            writeln(''),
            writeln('Baixar arquivo?'),
            writeln(''),
            writeln('Digite sua resposta: '),
            read_line_to_codes(user_input, Bx),
            atom_codes(Baixar, Bx),
            (
            (Baixar \== 'sim', Baixar \== 'Sim') ->
                operacaoInvalida(),
                writeln('-----------------------------------------------'),
                roubarArquivos(PesquisasFeitas)
            );
            writeln('Baixando...'),
            writeln(''),
            writeln('Baixado!'),
            writeln('-----------------------------------------------'),
            writeln(''),
            append(['-> GhostWeb'],PesquisasFeitas,NewList),
            roubarArquivos(NewList)
        );
        
        (
        Resposta == 'Pupp3t_M@st3r' ->
            writeln('Pesquisando...'),
            writeln(''),
            writeln('1 resultado encontrado:'),
            writeln(''),
            writeln('Pupp3t_M@st3r.zip'),
            writeln(''),
            writeln('Baixar arquivo?'),
            writeln(''),
            writeln('Digite sua resposta: '),
            read_line_to_codes(user_input, Bx),
            atom_codes(Baixar, Bx),
            (
            (Baixar \== 'sim', Baixar \== 'Sim') ->
                operacaoInvalida(),
                writeln('-----------------------------------------------'),
                roubarArquivos(PesquisasFeitas)
            );
            writeln('Baixando...'),
            writeln(''),
            writeln('Baixado!'),
            writeln(''),
            writeln('-----------------------------------------------'),
            append(['-> Pupp3t_M@st3r'],PesquisasFeitas,NewList),
            roubarArquivos(NewList)
        );

        operacaoInvalida(),
        writeln('-----------------------------------------------'),
        roubarArquivos(PesquisasFeitas)
    ).
   
roubarArquivos(PesquisasFeitas) :-
    PesquisasFeitas = [UltimaPesquisa|_],  
    (
    UltimaPesquisa == '-> Connected World' ->
        writeln('DIGITAL SPIDER - BANCO DE DADOS'),
        writeln(''),  
        writeln(''),
        writeln(''),
        writeln(''),
        writeln(''),
        writeln('Informacoes a pesquisar:'),
        writeln(''),
        verificaPesquisa('-> GhostWeb',PesquisasFeitas),
        verificaPesquisa('-> Pupp3t_M@st3r',PesquisasFeitas),
        writeln(''),
        write('Pesquise por um arquivo digitando seu nome: '),
        read_line_to_codes(user_input, Rp),
        atom_codes(Resposta, Rp),
        
        (
        Resposta == 'GhostWeb' ->
            writeln('Pesquisando...'),
            writeln(''),
            writeln('1 resultado encontrado:'),
            writeln(''),
            writeln('GhostWeb.zip'),
            writeln(''),
            writeln('Baixar arquivo?'),
            writeln(''),
            writeln('Digite sua resposta: '),
            read_line_to_codes(user_input, Bx),
            atom_codes(Baixar, Bx),
            (
            (Baixar \== 'sim', Baixar \== 'Sim') ->
                operacaoInvalida(),
                writeln('-----------------------------------------------'),
                roubarArquivos(PesquisasFeitas)
            );
            writeln('Baixando...'),
            writeln(''),
            writeln('Baixado!'),
            writeln(''),
            writeln('-----------------------------------------------'),
            (
            member('-> Pupp3t_M@st3r',PesquisasFeitas) ->
                roubarArquivos(['finalizado']);
            append(['-> GhostWeb'],PesquisasFeitas,NewList),
            roubarArquivos(NewList)
            )
        );
        
        (Resposta == 'Pupp3t_M@st3r' ->
            writeln('Pesquisando...'),
            writeln(''),
            writeln('1 resultado encontrado:'),
            writeln(''),
            writeln('Pupp3t_M@st3r.zip'),
            writeln(''),
            writeln('Baixar arquivo?'),
            writeln(''),
            writeln('Digite sua resposta: '),
            read_line_to_codes(user_input, Bx),
            atom_codes(Baixar, Bx),
            (
            (Baixar \== 'sim', Baixar \== 'Sim') ->
                operacaoInvalida(),
                writeln('-----------------------------------------------'),
                roubarArquivos(PesquisasFeitas)
            );
            writeln('Baixando...'),
            writeln(''),
            writeln('Baixado!'),
            writeln(''),
            writeln('-----------------------------------------------'),
            (
            member('-> GhostWeb',PesquisasFeitas) ->
                roubarArquivos(['finalizado']);
            append(['-> Pupp3t_M@st3r'],PesquisasFeitas,NewList),
            roubarArquivos(NewList)
            )
        );
        
        operacaoInvalida(),
        writeln('-----------------------------------------------'),
        roubarArquivos(PesquisasFeitas)
    ).

roubarArquivos(PesquisasFeitas) :-
    PesquisasFeitas = [UltimaPesquisa|_],  
    (
    UltimaPesquisa == '-> GhostWeb' ->
        writeln('DIGITAL SPIDER - BANCO DE DADOS'),
        writeln(''),  
        writeln(''),
        writeln(''),
        writeln(''),
        writeln(''),
        writeln('Informacoes a pesquisar:'),
        writeln(''),
        verificaPesquisa('-> Connected World',PesquisasFeitas),
        verificaPesquisa('-> Pupp3t_M@st3r',PesquisasFeitas),
        writeln(''),
        write('Pesquise por um arquivo digitando seu nome: '),
        read_line_to_codes(user_input, Rp),
        atom_codes(Resposta, Rp),
        
        (
        Resposta == 'Connected World' ->
            writeln('Pesquisando...'),
            writeln(''),
            writeln('1 resultado encontrado:'),
            writeln(''),
            writeln('Connected_World.zip'),
            writeln(''),
            writeln('Baixar arquivo?'),
            writeln(''),
            writeln('Digite sua resposta: '),
            read_line_to_codes(user_input, Bx),
            atom_codes(Baixar, Bx),
            (
            (Baixar \== 'sim', Baixar \== 'Sim') ->
                operacaoInvalida(),
                writeln('-----------------------------------------------'),
                roubarArquivos(PesquisasFeitas)
            );
            writeln('Baixando...'),
            writeln(''),
            writeln('Baixado!'),
            writeln(''),
            writeln('-----------------------------------------------'),
            (
            member('-> Pupp3t_M@st3r',PesquisasFeitas) ->
                roubarArquivos(['finalizado']);
            append(['-> Connected World'],PesquisasFeitas,NewList),
            roubarArquivos(NewList)
            )
        );
        
        (Resposta == 'Pupp3t_M@st3r' ->
            writeln('Pesquisando...'),
            writeln(''),
            writeln('1 resultado encontrado:'),
            writeln(''),
            writeln('Pupp3t_M@st3r.zip'),
            writeln(''),
            writeln('Baixar arquivo?'),
            writeln(''),
            writeln('Digite sua resposta: '),
            read_line_to_codes(user_input, Bx),
            atom_codes(Baixar, Bx),
            (
            (Baixar \== 'sim', Baixar \== 'Sim') ->
                operacaoInvalida(),
                writeln('-----------------------------------------------'),
                roubarArquivos(PesquisasFeitas)
            );
            writeln('Baixando...'),
            writeln(''),
            writeln('Baixado!'),
            writeln(''),
            writeln('-----------------------------------------------'),
            (
            member('-> Connected World',PesquisasFeitas) ->
                roubarArquivos(['finalizado']);
            append(['-> Pupp3t_M@st3r'],PesquisasFeitas,NewList),
            roubarArquivos(NewList)
            )
        );
        
        operacaoInvalida(),
        writeln('-----------------------------------------------'),
        roubarArquivos(PesquisasFeitas)
    ).

roubarArquivos(PesquisasFeitas) :-
    PesquisasFeitas = [UltimaPesquisa|_],  
    (
    UltimaPesquisa == '-> Pupp3t_M@st3r' ->
        writeln('DIGITAL SPIDER - BANCO DE DADOS'),
        writeln(''),  
        writeln(''),
        writeln(''),
        writeln(''),
        writeln(''),
        writeln('Informacoes a pesquisar:'),
        writeln(''),
        verificaPesquisa('-> Connected World',PesquisasFeitas),
        verificaPesquisa('-> GhostWeb',PesquisasFeitas),
        writeln(''),
        write('Pesquise por um arquivo digitando seu nome: '),
        read_line_to_codes(user_input, Rp),
        atom_codes(Resposta, Rp),
        
        (
        Resposta == 'Connected World' ->
            writeln('Pesquisando...'),
            writeln(''),
            writeln('1 resultado encontrado:'),
            writeln(''),
            writeln('Connected_World.zip'),
            writeln(''),
            writeln('Baixar arquivo?'),
            writeln(''),
            writeln('Digite sua resposta: '),
            read_line_to_codes(user_input, Bx),
            atom_codes(Baixar, Bx),
            (
            (Baixar \== 'sim', Baixar \== 'Sim') ->
                operacaoInvalida(),
                writeln('-----------------------------------------------'),
                roubarArquivos(PesquisasFeitas)
            );
            writeln('Baixando...'),
            writeln(''),
            writeln('Baixado!'),
            writeln(''),
            writeln('-----------------------------------------------'),
            (
            member('-> GhostWeb',PesquisasFeitas) ->
                roubarArquivos(['finalizado']);
            append(['-> Connected World'],PesquisasFeitas,NewList),
            roubarArquivos(NewList)
            )
        );
        
        (Resposta == 'GhostWeb' ->
            writeln('Pesquisando...'),
            writeln(''),
            writeln('1 resultado encontrado:'),
            writeln(''),
            writeln('GhostWeb.zip'),
            writeln(''),
            writeln('Baixar arquivo?'),
            writeln(''),
            writeln('Digite sua resposta: '),
            read_line_to_codes(user_input, Bx),
            atom_codes(Baixar, Bx),
            (
            (Baixar \== 'sim', Baixar \== 'Sim') ->
                operacaoInvalida(),
                writeln('-----------------------------------------------'),
                roubarArquivos(PesquisasFeitas)
            );
            writeln('Baixando...'),
            writeln(''),
            writeln('Baixado!'),
            writeln(''),
            writeln('-----------------------------------------------'),
            (
            member('-> Connected World',PesquisasFeitas) ->
                roubarArquivos(['finalizado']);
            append(['-> GhostWeb'],PesquisasFeitas,NewList),
            roubarArquivos(NewList)
            )
        );
        
        operacaoInvalida(),
        writeln('-----------------------------------------------'),
        roubarArquivos(PesquisasFeitas)
    ).
    
roubarArquivos([UltimaPesquisa|_]) :-
    (
    UltimaPesquisa == 'finalizado' ->
        writeln('DIGITAL SPIDER - BANCO DE DADOS'),
        writeln(''),
        writeln(''),
        writeln(''),
        writeln(''),
        writeln(''),
        writeln('Todas as informacoes necessarias foram baixadas.'),
        writeln(''),
        writeln('1. Sair do banco de dados.'),
        writeln(''),
        writeln('Digite o numero da operacao desejada: '),
        read_line_to_codes(user_input, Op),
        atom_codes(Option, Op),
        writeln(''),
        (
        operacao == '1' ->
            ninho4();
        operacaoInvalida,
        roubarArquivos(['finalizado'])
        )
    ).
*/
/*FIM DO ROUBO DE DADOS*/


ninho4() :-
    getCabecalho('ninho',X),
    writeln(X),
    writeln(''),
    writeln('1. Enviar 3 arquivos baixados para M3lch10r'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    writeln(''),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
    (Option == '1' ->
        writeln('Enviando...'),
        writeln('1/3...'),
        writeln('2/3...'),
        writeln('3/3'),
        writeln('Envio completo!'),
        ninho5();
    operacaoInvalida(),
    ninho4()).

ninho5() :-
    getCabecalho('ninho',X),
    writeln(X),
    writeln(''),
    writeln('CONTRATO FINALIZADO!'),
    writeln(''),
    writeln('1. Voltar a Contratos'),
    writeln(''),
    writeln('Digite o numero da operacao desejada: '),
    writeln(''),
    read_line_to_codes(user_input, Op),
    atom_codes(Option, Op),
   (Option == '1' -> contratos('contrato finalizado');
   operacaoInvalida(),
   ninho5()).


drone(MissoesFeitas,FuncsOn):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  writeln('Detectando drones...\n'),
  writeln('DRONES DISPONÍVEIS:\n'),
  writeln('1. Tunderstorm#231982\n2. ZTX#53325\n3. Sphinx#142731\n\n4. Voltar'),
  writeln('\nDigite o número da operação desejada:'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> invadindoDrone('Tunderstorm#231982', MissoesFeitas,FuncsOn); Option == '2' -> invadindoDrone('ZTX#53325', MissoesFeitas,FuncsOn); Option == '3' -> invadindoDrone('Sphinx#142731', MissoesFeitas,FuncsOn); Option == '4' -> ninhoSeguranca(MissoesFeitas,FuncsOn)),
  operacaoInvalida(),
  drone().

 
invadindoDrone(DroneName, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  writeln(DroneName),
  writeln('\n\nSistema de armas: Offline\nBateria: 80% carregada\nLocomoção: Aérea\nTamanho: Pequeno\nCondição da estrutura: 100% (Intacto)'),
  writeln('\n\n1. Tomar controle do drone\n2. Voltar\n\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> droneInvadido(DroneName, MissoesFeitas,FuncsOn)),
  (Option == '2' -> drone(MissoesFeitas,FuncsOn)),
  operacaoInvalida(),
  invadindoDrone(DroneName, MissoesFeitas,FuncsOn).

invadindoDrone2(DroneName, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  writeln('Invadindo drone...'),
  random_between(0,100,Chance),
  (Chance >= 40 -> writeln('Invasão bem sucedida.'), droneInvadido(DroneName, MissoesFeitas,FuncsOn)),
  writeln('\n\nInvasão mal sucedida.\n\nVocê está sofrendo uma tentativa de rastreio. Bloqueando rastreador...'),
  random_between(0,100, Chance2),
  (Chance2 < 40 -> getBloqueioFail()),
  writeln('Rastreio bloqueado com sucesso. Você conseguiu despistar seus inimigos!'),
  drone().
  
droneInvadido(DroneName, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho',X),
  writeln(X),
  writeln(''),
  My_string = 'Você agora tem o controle do ',
  atom_concat(My_string, DroneName, Result),
  writeln(Result),
  writeln('\n1. Controlar drone.'),
  writeln('2. Voltar\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> virusInstalado(DroneName, MissoesFeitas,FuncsOn)),
  (Option == '2' -> drone()),
  operacaoInvalida(),
  droneInvadido(DroneName, MissoesFeitas,FuncsOn).
  
virusInstalado(DroneName, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho2',X),
  getCabecalho(DroneName, X2),
  writeln(X),
  writeln(X2),
  writeln(''),
  write(DroneName),
  write(': Iniciando sistema de vôo.'),
  writeln('\n\n'),
  write(DroneName),
  write(':Recebendo informações da planta do prédio.'),
  writeln('\nPontos estratégicos:\n\n1.Central de TI\n2.Câmara de resfriamento\n\n4.Abandonar drone'),
  writeln('\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> droneEscolhaPonto1(DroneName, MissoesFeitas,FuncsOn); Option == '2' -> droneEscolhaPonto2(DroneName, MissoesFeitas,FuncsOn)),
  operacaoInvalida(),
  virusInstalado(DroneName, 1, MissoesFeitas,FuncsOn).

virusInstalado(DroneName, 1, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho2',X),
  getCabecalho(DroneName, X2),
  writeln(X),
  writeln(X2),
  writeln(''),
  write(DroneName),
  write(': Iniciando sistema de vôo.'),
  writeln('\n\n'),
  write(DroneName),
  write(':Recebendo informações da planta do prédio.'),
  writeln('\n\n Pontos estratégicos:\n\n1.Central de TI\n2.Abandonar drone'),
  writeln('\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> droneEscolhaPonto1(DroneName, 1, MissoesFeitas,FuncsOn); Option == '2' -> drone()),
  operacaoInvalida(),
  virusInstalado(DroneName, 1, MissoesFeitas,FuncsOn).

droneEscolhaPonto1(DroneName, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho2',X),
  getCabecalho(DroneName, X2),
  writeln(X),
  writeln(X2),
  writeln(''),
  write('2 elementos hostil detectados.'),
  writeln('\n\n'),
  writeln('Inimigo1:\nTipo:Humano\nArma detectada:Fuzil de assalto\nID de Profissao: Segurança Particular\nSaúde:100%'),
  writeln('\n\n'),
  writeln('Inimigo2:\nTipo:Humano\nArma detectada:Fuzil de assalto\nID de Profissao: Segurança Particular\nSaúde:100%'),
  writeln('\n\n'),
  writeln('1. Voltar\n2. Abandonar drone e voltar'),
  writeln('\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> virusInstalado(DroneName, MissoesFeitas,FuncsOn); Option == '2' -> drone()),
  operacaoInvalida(),
  droneEscolhaPonto1(DroneName, MissoesFeitas,FuncsOn).

droneEscolhaPonto1(DroneName, 1, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho2',X),
  getCabecalho(DroneName, X2),
  writeln(X),
  writeln(X2),
  writeln(''),
  writeln('Nenhum elemento hostil detectado. Seguindo para: Central de TI.'),
  writeln('\n\n'),
  writeln('---------- Central de TI ---------'),
  writeln('1. Invadir sistema\n2. Abandonar drone e voltar'),
  writeln('\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> droneInstalarVirusSistema(DroneName, MissoesFeitas,FuncsOn); Option == '2' -> drone(MissoesFeitas,FuncsOn)),
  operacaoInvalida(),
  droneEscolhaPonto1(DroneName, MissoesFeitas,FuncsOn).

droneEscolhaPonto2(DroneName, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho2',X),
  getCabecalho(DroneName, X2),
  writeln(X),
  writeln(X2),
  writeln(''),
  writeln('Movendo até: Câmara de Resfriamento'),
  writeln(''),
  writeln('------ Câmera de Resfriamento ------'),
  writeln('\nEncontrada vulnerabilidade no sistema de ar-condicionados do predio!'),
  writeln('\n1. Sabotar sistema de ar-condicionado.\n3. Voltar'),
  writeln('\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> droneSabotaAr(DroneName, MissoesFeitas,FuncsOn); Option == '3' -> virusInstalado(DroneName, MissoesFeitas,FuncsOn)),
  operacaoInvalida(),
  droneEscolhaPonto2(DroneName, MissoesFeitas,FuncsOn).

droneInstalarVirusSistema(DroneName, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho2',X),
  getCabecalho(DroneName, X2),
  writeln(X),
  writeln(X2),
  writeln('---------- Central de TI ---------\n'),
  writeln('Encontrada vulnerabilidade no Firewall do sistema!'),
  writeln('1. Derrubar Firewall do sistema\n2. Voltar'),
  writeln('\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> droneVirusSistemaInstalado(DroneName, MissoesFeitas,FuncsOn); Option == '2' -> virusInstalado(DroneName, 1, MissoesFeitas,FuncsOn)),
  operacaoInvalida(),
  droneInstalarVirusSistema(DroneName, MissoesFeitas,FuncsOn).

droneVirusSistemaInstalado(DroneName, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho2',X),
  getCabecalho(DroneName, X2),
  writeln(X),
  writeln(X2),
  writeln('---------- Central de TI ---------\n'),
  writeln('Firewall derrubado com sucesso. O Sistema de defesa está mais debilitado'),
  writeln('\n1.Concluir e voltar.'),
  append(['drone hackeado'],MissoesFeitas,NewList),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  Option == '1' -> ninhoSeguranca(NewList,FuncsOn);
  operacaoInvalida(),
  droneVirusSistemaInstalado(DroneName, MissoesFeitas,FuncsOn).

droneSabotaAr(DroneName, MissoesFeitas,FuncsOn):-
  getCabecalho('ninho2',X),
  getCabecalho(DroneName, X2),
  writeln(X),
  writeln(X2),
  writeln(''),
  writeln('------ Câmera de Resfriamento ------'),
  writeln('\nInfiltrado-se em vulnerabilidade de ar-condicionados...\nDesativando aparelhos...\n\nSabotagem concluída'),
  writeln('\nFoi criada uma distração. A Central de TI está vulnerável'), 
  writeln('1. Voltar'),
  writeln('\n'),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  (Option == '1' -> virusInstalado(DroneName, 1, MissoesFeitas,FuncsOn)),
  operacaoInvalida(),
  droneSabotaAr(DroneName, MissoesFeitas,FuncsOn).


/*FIM DA TELA DE "O NINHO DA ARANHA"*/


  

/*Opcoes do MENU*/

getOption(Evento, '1') :- mensagemMenu(Evento).
getOption(Evento, '2') :- perfil().
getOption(Evento, '3') :- contratos(Evento).
getOption(Evento, '4') :- noticia(Evento).
getOption(Evento, '5') :- desenvolvedores().
getOption(Evento,_) :- writeln('Opção inválida'), menu(Evento).

/*Obter User Atual Logado*/
get_User_Atual(R) :- 
	open("userAtual.txt",read,X),
	read_line_to_codes(X, User),
	atom_codes(UserAtual, User),
  R = UserAtual.
	
/*Funcionalidade de Login*/
  
verifica_senha(Senha,SenhaArq,Arquivo):- Senha = SenhaArq, 
	open("userAtual.txt",write,X),
	string_length(Arquivo,Ta),
	Tamanho is Ta - 4,
	sub_string(Arquivo,_,Tamanho,_,UserAtual),
	write(X,UserAtual),
	close(X),
	menu('evento 0').
verifica_senha(Senha,SenhaArq,_):- Senha \= SenhaArq, writeln("Senha incorreta!!"),signIn.

verifica_existencia(Arquivo):- exists_file(Arquivo), login(Arquivo).
verifica_existencia(Arquivo):- not(exists_file(Arquivo)), writeln("Usuário não encontrado!"),main.

verifica_usuario(Arquivo):- not(exists_file(Arquivo)), signUp2(Arquivo).
verifica_usuario(Arquivo):- exists_file(Arquivo), writeln("Usuário já existente!! Tente outro!"), signUp.

login(Arquivo):-
    write("Senha: "),
	read_line_to_codes(user_input, Pass1),
	atom_codes(Senha, Pass1),
	open(Arquivo,read,X),
	read_line_to_codes(X, Pass),
	atom_codes(SenhaArq, Pass),
	verifica_senha(Senha,SenhaArq,Arquivo),
	close(X).

signUp:-
	write("Nome: "),
	read_line_to_codes(user_input, Nom1),
	atom_codes(Nome, Nom1),
	string_concat(Nome,".txt",Arquivo),
	verifica_usuario(Arquivo).
	
signUp2(Arquivo):-
	open(Arquivo,write,X),
	write("Senha: "),
	read_line_to_codes(user_input, Pass),
	atom_codes(Senha, Pass),
	write(X,Senha),
	close(X),
	write("Usuário criado com sucesso!!\n\n"),
	main.

	
signIn:-
    write("Nome: "),
	read_line_to_codes(user_input, Nom),
	atom_codes(Nome, Nom),
	string_concat(Nome,".txt",Arquivo),
	verifica_existencia(Arquivo).

main:-
 	writeln("\n\n\n\n««««««««ABYSS»»»»»»»»"),
    writeln("O ambiente de trabalho para aqueles que seguem suas próprias leis."),
    writeln(""),
    writeln(":::::::::::::LOGIN:::::::::::::"),
    writeln("Já possui uma conta? (S/N) ou Q para sair!"),
	read_line_to_codes(user_input, Op),
	atom_codes(Opp, Op),
	string_lower(Opp,Option),
    (Option = "s" -> signIn; Option = "n" -> signUp; Option = "q" -> write("ADEUS!"), halt; write("getOpcaoInvalida"), main).

menu(Evento) :-
  getMenu(Evento, Text),
  write(Text),
  read_line_to_codes(user_input, Op),
  atom_codes(Option, Op),
  getOption(Evento, Option).

