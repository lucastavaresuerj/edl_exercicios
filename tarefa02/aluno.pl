aluno(uranos,10,8).
aluno(gaia,9,9).
aluno(zeus,2,4).

situacao(X,R):- aluno(X,Z,Y),(Z+Y)/2 >=7, 
    R=passou.
situacao(X,R):- aluno(X,Z,Y),(Z+Y)/2 <7, 
    R=reprovou.
