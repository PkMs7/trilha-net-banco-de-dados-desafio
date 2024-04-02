-- Desafio 1: Buscar o nome e ano dos filmes

SELECT Nome, Ano FROM Filmes;

-- Desafio 2: Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano ASC;

-- Desafio 3: Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT Nome, Ano, Duracao FROM Filmes WHERE UPPER(Nome) = UPPER('De Volta para o Futuro');

-- Desafio 4: Buscar os filmes lançados em 1997

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997;

-- Desafio 5: Buscar os filmes lançados APÓS o ano 2000

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000;

-- Desafio 6: Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 1500 ORDER BY Duracao ASC;

-- Desafio 7: Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT Ano, Count(Duracao) as Quantidade FROM Filmes GROUP BY Ano ORDER BY Count(Duracao) DESC;

-- Desafio 8: Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE UPPER(Genero) = UPPER('M');

-- Desafio 9: Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE UPPER(Genero) = UPPER('F') ORDER BY PrimeiroNome;

-- Desafio 10: Buscar o nome do filme e o gênero

SELECT f.Nome, g.Genero 
FROM Filmes as f
JOIN FilmesGenero as fg 
ON f.id = fg.IdFilme 
JOIN Generos as g 
ON g.id = fg.idGenero;

-- Desafio 11: Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT f.Nome, g.Genero 
FROM Filmes as f
JOIN FilmesGenero as fg 
ON f.id = fg.IdFilme 
JOIN Generos as g 
ON g.id = fg.idGenero
WHERE UPPER(g.Genero) = UPPER('Mistério');

-- Desafio 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM ElencoFilme as ef
JOIN Atores as a
ON ef.IdAtor = a.Id
JOIN Filmes as f
ON ef.IdFilme = f.Id;