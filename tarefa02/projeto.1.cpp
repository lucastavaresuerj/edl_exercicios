#include<stdlib.h>
#include<iostream>
#include<string>
#include <stdio.h>
using namespace std;


struct familia
{
    string* pais;
    string* filhos;
    int qpais,qfilhos;
};

struct criou
{
    struct familia* relacao;  
    int qrelacao;
}Deuses;

void criarvore()
{
    Deuses.relacao = (struct familia*) malloc(Deuses.qrelacao*sizeof(struct familia));
}

void criafamilia(int np,int nf,int geracao)
{
    Deuses.relacao[geracao].qfilhos=nf;
    Deuses.relacao[geracao].qpais=np;
    Deuses.relacao[geracao].pais = (string* ) malloc(np*sizeof(string));
    Deuses.relacao[geracao].filhos = (string* ) malloc(nf*sizeof(string ));
}

void insereparente(int op,string deus,int at,int geracao)
{
    if(op==1)
    {
        Deuses.relacao[geracao].pais[at]=deus;
    }
    else
    {
        Deuses.relacao[geracao].filhos[at]=deus;
    }
}

bool gerou(string p,string f)
{
    int i,j,k;
    for(i=0;i<Deuses.qrelacao;i++)
    {
        for(j=0;j<Deuses.relacao[i].qpais;j++)
        {
            if(Deuses.relacao[i].pais[j] == p)
            {
                for(k=0;k<Deuses.relacao[i].qfilhos;k++)
                {
                    if(Deuses.relacao[i].filhos[k] == f)
                    {
                        return true;
                    }
                }
            }
        }
    }
    return false;
}

int main(int argc, char* argv[])
{
    int i,j,np,nf,op=0;
    FILE* pfile = fopen(argv[1], "r");
    bool ligado = true;
    char gregin[100];
    string grego,pai,filho;
    //cin>>Deuses.qrelacao;
    criarvore();
    if(argc==1)
    {
        if(pfile!=NULL)
        {
            fscanf(pfile,"%d",&Deuses.qrelacao);

            for(i=0;i<Deuses.qrelacao;i++)
            {
                //cin>>np>>nf;
                //fscanf(pfile,"%d %d",&np,&nf);
                fgets(gregin,99,pfile);
                criafamilia(np,nf,i);
                for(j=0;j<np;j++)
                {
                    //cin>>grego;
                    //fscanf(pfile,"%s",&grego);
                    insereparente(1,grego,j,i);
                }
                for(j=0;j<nf;j++)
                {
                    //cin>>grego;
                    //fscanf(pfile,"%s",&grego);
                    insereparente(2,grego,j,i);
                }
            }
            
            while(ligado)
            {
                printf("\n------\nopçoes\n0-termina\n1-gerou\n");
                cin>>op;
                switch(op)
                {
                    case 1:
                    {
                        printf("pai e filho\n");
                        cin>>pai>>filho;
                        cout<<gerou(pai,filho)<<endl;
                        break;
                    }
                    case 0:
                    {
                        ligado = 0;
                    }
                    default:
                    {
                        //ligado = 0;
                        break;
                    }
                
                }
            }

        }
    }

}