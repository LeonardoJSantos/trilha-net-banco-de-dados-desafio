
--1
SELECT
  Nome,
  Ano
  FROM Filmes

  --2
  SELECT nome, ano ,Duracao
  FROM filmes
  ORDER BY ano ASC;

  --3
SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';

--4
SELECT nome, ano
FROM filmes
WHERE ano = 1997;

--5

SELECT nome, ano ,Duracao
FROM filmes
WHERE ano > 2000;

--6
SELECT nome, duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

--7

SELECT ano, COUNT(*) AS quantidade
FROM filmes
GROUP BY ano
ORDER BY quantidade DESC;

--8

SELECT PrimeiroNome, UltimoNome ,Genero
FROM atores
WHERE genero = 'M';

--9
SELECT PrimeiroNome, UltimoNome ,Genero
FROM atores
WHERE genero = 'F'
ORDER BY PrimeiroNome;

--10

SELECT 
    F.Nome AS NomeDoFilme,
    G.Genero
FROM Filmes F
LEFT JOIN FilmesGenero FG ON F.Id = FG.IdFilme
LEFT JOIN Generos G ON FG.IdGenero = G.Id;



SELECT 
  F.Nome,
  G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG  ON F.Id =  FG.Id
INNER JOIN Generos G ON F.Id = G.Id
ORDER BY G.Id ASC;


--11
SELECT 
    F.Nome AS NomeDoFilme,
    G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';


-----12


SELECT 
    F.Nome AS Nome,
    A.PrimeiroNome,
    A.UltimoNome,
    EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id;
