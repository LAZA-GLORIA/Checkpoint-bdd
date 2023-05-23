-- toutes les offres d'emploi
SELECT * FROM `Offre_emploi`;

-- toutes les offres d'emploi d'une ville (Paris)
SELECT * FROM `Offre_emploi`
WHERE `ville` = 'Paris';

-- les informations de tous les candidats qui ont postulé à une offre précise
SELECT `Candidat`.* 
FROM `Candidat`
INNER JOIN `CANDIDATURE` ON `Candidat`.`id` = `CANDIDATURE`.`idCandidat`
WHERE `CANDIDATURE`.`idOffre_emploi` = 3; 

-- modifier le numéro de téléphone et le texte de présentation d'un candidat
UPDATE `Candidat` 
SET `telephone` = '000000', `texte_de_presentation` = 'Dev fs'
WHERE `id` = [ID_Candidat];

-- supprimer toutes les offres d'une entreprise.
DELETE FROM `Offre_emploi` 
WHERE `idEntreprise` = 2;


