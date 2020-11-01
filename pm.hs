optionMenu :: Int -> String -> IO()
optionMenu 1 evento = mensagens evento
optionMenu 2 _ = perfil
optionMenu 3 evento = contratos evento
optionMenu 4 evento = noticia evento
optionMenu 5 _ = desenvolvedores
optionMenu _ evento = do
  putStrLn operacaoInvalida
  menu evento

{-FUNÇÕES DE RETORNO DE TEXTO-}

operacaoInvalida :: String
operacaoInvalida = "Operação inválida! Tente novamente."

noticia1 :: String
noticia1 = 
  "------------------------------------------------------------------------------------------------------------------------\
  \\n\
  \\n****************************Tecnologia: Projeto Connected World É Um Sucesso!****************************\
  \\n\
  \\nApós anos de desenvolvimento, hoje, no dia 26/04/2048, a Digital Spider, maior empresa distribuidora\
  \\nde internet do mundo, anunciou que o projeto Connected World está oficialmente finalizado.\
  \\n\
  \\nNas palavras de Edwart T. Johnson, fundador da Digital Spider e atualmente a pessoa mais rica do mundo:\
  \\n\"Vivemos em uma era em que a internet se faz um recurso tão essencial quanto água, comida ou energia\
  \\nelétrica. Sabendo disso, nossa empresa, com o apoio de vários países, iniciou um projeto que, dentre\
  \\noutros objetivos, visava tornar a internet um recurso acessível e, mais importante, gratuito para todos.\
  \\nEstamos orgulhosos em anunciar a concretização deste feito.\".\
  \\n\
  \\nA nova radiofrequência desenvolvida nos laboratórios da Digital Spider, popularmente conhecida como\
  \\nGhostWeb, é em grande parte responsável pelo sucesso do projeto. A tecnologia possibilitou alcance e\
  \\nvelocidade nunca antes atingidos, além de apresentar 100% de imunidade a interferência.\
  \\nAtualmente, milhares de torres espalhadas ao redor do mundo cobrem praticamente todo o planeta com o\
  \\nsinal da GhostWeb, permitindo que qualquer pessoa, em qualquer lugar do mundo, tenha acesso gratuito a\
  \\nrede mundial de computadores.\
  \\n\
  \\nComo tamanha revolução afetará a sociedade contemporânea, só o tempo dirá. Mas uma coisa é certa: as\
  \\nexpectativas são, em sua esmagadora maioria, otimistas.\
  \\n"

noticia2 :: String
noticia2 = 
  "------------------------------------------------------------------------------------------------------------------------\
  \\n\
  \\n****************************Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web.****************************\
  \\n\
  \\nA cyberpolicia atualmente investiga o caso do possível aparecimento de uma nova rede de comunicações criminosas no\
  \\nambiente virtual conhecido como \"Dark Web\". Segundo suspeitas, a nova plataforma virtual conhecida como \"Abyss\" reúne\
  \\ncybercriminosos dos mais variados tipos, como traficantes, golpistas e, em especial, hackers. O AV (Ambiente Virtual)\
  \\naparentemente permite que tais criminosos aceitem contratos para a venda de seus produtos/serviços.\
  \\n\
  \\nApesar de possuir tais informações a cyberpolicia atualmente se vê de mãos atadas, pois nada pode fazer para derrubar o\
  \\nambiente, rastrear seus usuários, ou impedir as transações ilegais que, a todo momento, ocorrem no submundo da internet.\
  \\nQuando questionado sobre o plano de ação contra esta nova ameaça virtual, um dos cyberpoliciais que escolheu não se\
  \\nidentificar respondeu: \"Estamos trabalhando nisso.\".\
  \\n"

main = do
  menu "evento 0"

menu :: String -> IO()
menu "evento 0" = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias (2)"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "evento 0"
menu "noticia 1 lida" = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias (1)"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "noticia 1 lida"
menu "noticia 2 lida" = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias (1)"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "noticia 2 lida"
menu "noticias 1 e 2 lidas" = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens (1)"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "noticias 1 e 2 lidas"
menu _ = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "O ambiente de trabalho para aqueles que seguem suas próprias leis."
  putStrLn ""
  putStrLn ":::::::::::::MENU:::::::::::::"
  putStrLn "1. Mensagens"
  putStrLn "2. Perfil"
  putStrLn "3. Contratos"
  putStrLn "4. Notícias"
  putStrLn "5. Desenvolvedores"
  putStrLn ""
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  optionMenu (read operacao :: Int) "outro evento"

mensagens :: String -> IO()
mensagens _ = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "Imagina a tela de mensagem aqui"
  putStrLn "Pressione ENTER para sair"
  cm <- getLine
  main

perfil :: IO()
perfil = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "Imagina a tela de perfil aqui"
  putStrLn "Pressione ENTER para sair"
  cm <- getLine
  main

contratos :: String -> IO()
contratos _ = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "««««««««ABYSS»»»»»»»»"
  putStrLn "Imagina a tela de contratos aqui"
  putStrLn "Pressione ENTER para sair"
  cm <- getLine
  main


noticia :: String -> IO()
noticia evento = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "-----------------------------------------------"
  putStrLn ""
  putStrLn ":::::::::::::NOTÍCIAS:::::::::::::"
  noticiaEventos evento

  
noticiaEventos :: String -> IO ()
noticiaEventos "evento 0" = do
  putStrLn "Você possui 2 novas notícias."
  putStrLn ""
  putStrLn "1. (!) Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. (!) Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn ""
  putStrLn "3. Voltar ao Menu"
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1" 
    then do
      putStrLn noticia1
      noticia "noticia 1 lida"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "noticia 2 lida"
  else if operacao == "3"
    then
      menu "evento 0"
  else do
    putStrLn operacaoInvalida
    noticia "evento 0"
noticiaEventos "noticia 1 lida" = do
  putStrLn "Você possui 1 nova notícia."
  putStrLn ""
  putStrLn "1. Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. (!) Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn ""
  putStrLn "3. Voltar ao Menu"
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1"
    then do
      putStrLn noticia1
      noticia "noticia 1 lida"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "noticias 1 e 2 lidas"
  else if operacao == "3"
    then
      menu "noticia 1 lida"
  else do
    putStrLn operacaoInvalida
    noticia "noticia 1 lida"
noticiaEventos "noticia 2 lida" = do
  putStrLn "Você possui 1 nova notícia."
  putStrLn ""
  putStrLn "1. (!) Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn ""
  putStrLn "3. Voltar ao Menu"
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1"
    then do
      putStrLn noticia1
      noticia "noticias 1 e 2 lidas"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "noticia 2 lida"
  else if operacao == "3"
    then
      menu "noticia 2 lida"
  else do
    putStrLn operacaoInvalida
    noticia "noticia 2 lida"
noticiaEventos "noticias 1 e 2 lidas" = do
  putStrLn "Você possui 0 novas notícias."
  putStrLn ""
  putStrLn "1. Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn ""
  putStrLn "3. Voltar ao Menu"
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1"
    then do
      putStrLn noticia1
      noticia "noticias 1 e 2 lidas"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "noticias 1 e 2 lidas"
  else if operacao == "3"
    then
      menu "noticias 1 e 2 lidas"
  else do
    putStrLn operacaoInvalida
    noticia "noticias 1 e 2 lidas"
noticiaEventos "outro evento" = do
  putStrLn "Você possui 0 novas notícias."
  putStrLn ""
  putStrLn "1. Tecnologia: Projeto Connected World É Um Sucesso!"
  putStrLn "2. Cybercrime: Suspeitas de Nova Rede de Comunicações da Dark Web."
  putStrLn ""
  putStrLn "3. Voltar ao Menu"
  putStrLn "Digite o número da operação desejada: "
  operacao <- getLine
  if operacao == "1"
    then do
      putStrLn noticia1
      noticia "outro evento"
  else if operacao == "2"
    then do
      putStrLn noticia2
      noticia "outro evento"
  else if operacao == "3"
    then
      menu "outro evento"
  else do
    putStrLn operacaoInvalida
    noticia "outro evento"
noticiaEventos _ = menu "outro evento"


desenvolvedores :: IO()
desenvolvedores = do
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn ""
  putStrLn "1. Caio"
  putStrLn "2. Enock"
  putStrLn "3. Joao"
  putStrLn "4. Jonatha"
  putStrLn "5. Thiago, senhor supremo do universo, e do conhecimento em Haskell..."
  putStrLn "... Curvem-se perante sua infinita sabedoria, mortais"
  cm <- getLine
  main