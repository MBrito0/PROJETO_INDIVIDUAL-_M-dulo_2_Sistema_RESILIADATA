# PROJETO INDIVIDUAL Módulo 2 - Sistema RESILIADATA

## Objetivo do Projeto :dart:
Um projeto proposto pelo senac / resilia, que é desenvolver um banco de dados (no caso criar um modelo lógico) que irá armazenar dados importantes que será utilizado pelo sistema RESILIADATA. <br>
> ➔ O sistema irá auxiliar na avaliação de quais são as tecnologias que as empresas parceiras estão utilizando e quem são seus colaboradores; <br>
> ➔ Vamos ter o cadastro de empresas parceiras, cadastro de tecnologias com a opção de selecionar a área (webdev, dados, marketing, etc.), uma tabela para registrar quais
tecnologias as empresas estão utilizando e uma tabela para cadastro de colaboradores. 

## Modelo Lógico :bar_chart:
![img](https://raw.githubusercontent.com/MBrito0/PROJETO_INDIVIDUAL-_M-dulo_2_Sistema_RESILIADATA/main/modelo%20logico-%20RESILIADATA.png)

## :question:Perguntas:question:
Para apoiar nesse sistema recebemos a tarefa de realizar essa modelagem e responder algumas perguntas com nosso modelo: <br>
### ⇨ 1.Quais são as entidades necessárias?
     - Empresas Parceiras
     - Tecnologias
     - Relação Empresa-Tecnologia
     - Colaboradores
### ⇨ 2.Quais são os principais campos e seus respectivos tipos?
     - **Empresas Parceiras:**
        - ID (Inteiro, Chave Primária)
        - Nome (Texto)
        - Endereço (Texto)
        - Contato (Texto)
         
     - **Tecnologias:**
        - ID (Inteiro, Chave Primária)
        - Nome (Texto)
        - Área (Texto)
         
    - **Relação Empresa-Tecnologia:**
       - ID da Empresa (Inteiro, Chave Estrangeira referenciando a tabela de Empresas Parceiras)
       - ID da Tecnologia (Inteiro, Chave Estrangeira referenciando a tabela de Tecnologias)

    - **Colaboradores:**
       - ID (Inteiro, Chave Primária)
       - Nome (Texto)
       - Cargo (Texto)
       - ID da Empresa (Inteiro, Chave Estrangeira referenciando a tabela de Empresas Parceiras)

### ⇨ 3.Como essas entidades estão relacionadas?
 - A tabela "Relação Empresa-Tecnologia" cria uma relação muitos-para-muitos entre Empresas Parceiras e Tecnologias, permitindo que uma empresa utilize várias tecnologias e uma tecnologia possa ser utilizada por várias empresas.
 - A tabela "Colaboradores" tem um relacionamento muitos-para-um com a tabela "Empresas Parceiras", indicando que muitos colaboradores podem trabalhar em uma mesma empresa.

### ⇨ 4.Simule 2 registros para cada entidade.
Essa é uma representação básica do modelo de banco de dados para o sistema RESILIADATA, com exemplos de registros para cada entidade.

**Tabela Empresas Parceiras:**
| ID_Empresas| Nome                | Endereço     | Contato               |
|------------|---------------------|--------------|-----------------------|
| 1          | Empresa A           | Rua A, 123   | contato@empresaA.com  |
| 2          | Empresa B           | Rua b, 123   | contato@empresaB.com  |

**Tabela Tecnologias:**
| ID_Tecnologia | Nome         | Area                        |
|---------------|--------------|-----------------------------|
| 1             | Python       | Desenvolvimento de Software |
| 2             | Google Ads   | Marketing Digital           |

**Tabela Relação Empresa-Tecnologia:**
| ID_Relacionamento | ID_Empresa | ID_Tecnologia |
|-------------------|------------|---------------|
| 1                 | 1          | 1             |
| 2                 | 2          | 2             |

**Tabela Colaboradores:**
| ID_Colaborador | Nome           | Cargo                    | ID_Empresa |
|----------------|----------------|--------------------------|------------|
| 1              | João Souza     | Desenvolvedor Full Stack |  1 (A)     |
| 2              | Maria Sana     | Analista de Marketing    |  2 (B)     |
