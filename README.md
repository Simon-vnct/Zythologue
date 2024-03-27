
# Project zythologue

application mobile pourrait offrir une fenêtre exceptionnelle sur le monde brassicole, permettant la découverte et le partage d'informations sur les bières de toutes sortes


## Authors

- [@simon vincent](https://github.com/Simon-vnct)


## Deployment

To deploy this project run

```bash
  git clone https://github.com/Simon-vnct/Zythologue.git
```
## Installation

Install my-project with npm

```bash
  npm install my-project
  cd my-project
```
    
## Requête SQL


1.Lister les bières par taux d'alcool, de la plus légère à la plus forte. -[ ]
```bash
SELECT * FROM Beer ORDER BY ADV ASC;
```

2.Afficher le nombre de bières par catégorie -[ ]
```bash
SELECT ID_Beer_type, COUNT(*) AS ID_Beer FROM assign GROUP BY ID_Beer_type;
```

3.Trouver toutes les bières d'une brasserie donnée. -[ ]
```bash
SELECT * FROM Beer WHERE ID_Brewerie = '1';
```

4.Lister les utilisateurs et le nombre de bières qu'ils ont ajoutées à leurs favoris. -[ ]
```bash
SELECT u.Name_user, COUNT(f.ID_Beer) AS nombre_de_bières_favorites FROM User u 
LEFT JOIN favorite f ON u.ID_user = f.ID_user
GROUP BY u.Name_user;
```

5.Ajouter une nouvelle bière à la base de données. -[ ]
```bash
INSERT INTO Beer (name, description, ADV, creation, ID_Brewerie)
VALUES
('La biere', 'elle est fraiche et douce', '6', '2024/03/27', 1);
```

6.Afficher les bières et leurs brasseries, ordonnées par pays de la brasserie. -[ ]
```bash
SELECT b.name, r.name, r.country FROM Beer b INNER JOIN Brewerie r 
ON b.ID_Brewerie = r.ID_brewerie
ORDER BY r.country;
```

7.Lister les bières avec leurs ingrédients. -[ ]
```bash
SELECT b.name, GROUP_CONCAT(i.name SEPARATOR ', ') AS ingredient_de_biere
FROM Beer b
JOIN contain c ON b.ID_beer = c.ID_beer
JOIN ingredient i ON c.ID_ingredient = i.ID_ingredient
GROUP BY b.ID_beer;
```


8.Afficher les brasseries et le nombre de bières qu'elles produisent, pour celles ayant plus de 5 bières. -[ ]
```bash
SELECT br.name AS Brasserie, COUNT(b.ID_Beer) AS production
FROM Brewerie br
LEFT JOIN Beer b ON br.ID_brewerie = b.ID_Brewerie
GROUP BY br.name
HAVING COUNT(br.ID_Brewerie) >= 5;
```

9.Lister les bières qui n'ont pas encore été ajoutées aux favoris par aucun utilisateur. -[ ]
```bash
SELECT * FROM Beer WHERE ID_Beer NOT IN (SELECT DISTINCT Id_Beer FROM favorite);
```

10.Trouver les bières favorites communes entre deux utilisateurs. -[ ]
```bash
SELECT b.name
FROM favorite f1
JOIN favorite f2 ON f1.ID_Beer = f2.ID_Beer
JOIN beer b ON f1.ID_Beer = b.Id_Beer
WHERE f1.ID_user = 1
AND f2.ID_user = 2;
```

11.Afficher les brasseries dont les bières ont une moyenne des notes supérieure à une certaine valeur. -[ ]
```bash
SELECT br.name AS Brasserie, AVG(r.rating_review) AS moyenne
FROM brewerie br 
JOIN Beer b ON br.ID_brewerie = b.ID_Brewerie
LEFT JOIN review r ON b.ID_Beer = r.ID_Beer
GROUP BY br.name
HAVING AVG(r.rating_review) > 3;
```

12.Mettre à jour les informations d'une brasserie. -[ ]
```bash
UPDATE Brewerie
SET Country = 'ALLEMAGNE', Address = ' quelque part dans le pays', modification = '2024/03/27'
WHERE ID_Brewerie = 3;
```

13.Supprimer les photos d'une bière en particulier. -[ ]
```bash
DELETE FROM Photo
WHERE ID_Beer = 13;
```