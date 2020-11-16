getCabecalho(1, '\n\n\n\n\n\n\n:::::::::::::MENSAGENS:::::::::::::\n\n').
getCabecalho(2, '\n\n\n\n\n\n\n:::::::::::::PERFIL:::::::::::::\n\n').
getCabecalho(3, '\n\n\n\n\n\n\n:::::::::::::CONTRATOS:::::::::::::\n\n').
getCabecalho(4, '\n\n\n\n\n\n\n:::::::::::::NOTÍCIAS:::::::::::::\n\n').
getCabecalho(5, '\n\n\n\n\n\n\n:::::::::::::DESENVOLVEDORES:::::::::::::\n\n').


getOption(N, R) :- (getCabecalho(N, S), R = S; R = "Opção inválida").


menu :-
  write(' \n \n \n \n \n \n ««««««««ABYSS»»»»»»»» \n O ambiente de trabalho para aqueles que seguem suas próprias leis.\n  \n :::::::::::::MENU:::::::::::::\n 1. Mensagens\n 2. Perfil\n 3. Contratos\n 4. Notícias\n 5. Desenvolvedores\n \n Digite o número da operação desejada: \n '), nl,
  read(Option),
  getOption(Option, R),
  write(R),
  read(Skip),
  menu,
  halt.
  

