# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

Market.create(name: 'Beleza', description: 'O setor de  beleza está entre os que mais crescem em todo o País. Apenas na categoria empreendedor individual, cabeleireiros e outras atividades de tratamento de beleza representam 11,8% do total no estado de São Paulo.')
Market.create(name: 'Design', description: 'Estudo da Federação das Indústrias do Rio de Janeiro (Firjan) mostra que o mercado da indústria criativa no Brasil cresceu 90%. Esses profissionais podem trabalhar em áreas como publicidade, design, moda, cinema, tecnologia e pesquisa. Este ano, o Brasil deve chegar a um milhão de profissionais formais nessas áreas.')
Market.create(name: 'Publicidade', description: 'O Brasil está entre os dez maiores mercados da publicidade e propaganda do mundo. Estamos falando de uma área que já movimentou, só neste ano, mesmo com a economia em recessão, mais de R$ 60 bilhões.')
Market.create(name: 'Saúde', description: 'Para o crescimento e a conquista de um bom modelo de negócio em saúde,  envolvem capturar novas fontes de crescimentos (novos produtos, novos mercados, novos ambientes), correr pela eficiência operacional, estar inserido na onda digital e vencer a guerra por talentos.')
Market.create(name: 'Tecnologia', description: 'O mercado de tecnologia no Brasil terá crescimento de 2,6% em dólares da receita em 2016. O percentual é metade do avanço registrado em 2015 e representa um dos piores desempenhos na história do setor, segundo a IDC.')

Group.create(name: 'Investidores em Beleza', description: 'Interessadores em Beleza')
Group.create(name: 'Investidores em Design', description: 'Interessadores em Design')
Group.create(name: 'Investidores em Publicidade', description: 'Interessadores em Publicidade')
Group.create(name: 'Investidores em Saúde', description: 'Interessadores em Saúde')
Group.create(name: 'Investidores em Tecnologia', description: 'Interessadores em Tecnologia')
