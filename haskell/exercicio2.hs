type Autores = [String]
type Musica = (String, Int, Int)

bandas :: [Autores]
bandas = [ ["Gilberto Gil"],
    ["Victor","Leo"],
    ["Gonzagao"],
    ["Claudinho","Bochecha"]
    ]

musicas :: [Musica]
musicas = [ ("Aquele Abraco", 1, 100),
    ("Esperando na Janela", 1, 150),
    ("Borboletas", 2, 120),
    ("Asa Branca", 3, 120),
    ("Assum Preto", 3, 140),
    ("Vem Morena", 3, 200),
    ("Nosso Sonho", 4, 150),
    ("Quero te Encontrar", 4, 100) ]

filter' :: (a->Bool) -> [a] -> [a]
filter' f [] = []
filter' f (e:l) =   if (f e) then e:(filter' f l)
                    else filter' f l

selmus120 :: Musica -> Bool
selmus120 (_,_,t) = t>=120

musica120 = filter' selmus120 musicas

main = print musica120