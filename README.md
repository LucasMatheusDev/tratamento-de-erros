# tratamento-de-erros
BUDISMO E FLUTTER JUNTOS, SERÁ POSSIVEL ? 

Um dos ensinamentos budista é que devemos nos acalmar e não tentar lutar contra os nossos problemas mas sim fazer amizade com eles, e será que podemos trazer esse conceito para a programação ?  

Eu sei o que você está pensando, e não, não precisa abraçar o seu Setup quando ele der tela vermelha rrsrs 😂 😂😂  Mas e se o problema não fosse totalmente um inimigo ?    

E se ele pudesse nós influenciar a buscar a solução ao invés de ficar só reclamando que o ListView não cabe na tela! (Ops!, acho que isso foi meio pessoal 🤭) 😂   

Seria incrível se ele tivesse um pouco de consideração por nós e falasse: “Ei, este widget é gigante, ele não cabe aqui, que tal buscar isso no Stack OverFlow? “   E é exatamente sobre isso a dica de hoje, vamos fazer amizade com aquela tela vermelha que ninguém gosta, afinal nada vermelho é bom, minha conta bancária que diga 😂 😂😂    

O flutter tem varias funções especificas para tratamento de erros, e as que iremos usar são “ FlutterError.OnError” e “ErrorWidget.Builder”  

###FlutterError.OnError : 
Responsável por tratar os erros conhecidos pelo flutter, como por exemplo um erro de assert() que não permite dar cor no container quando o BoxDecoration é diferente de nulo.  

###ErrorWidget.Builder : Responsável por erros relacionados a construção(build) e dizer como será a tela de erro, e o que fazer quando acontecer um erro de build.  


Entenda mais sobre como tratar erros, acesse a documentação do Flutter https://docs.flutter.dev/testing/errors  
