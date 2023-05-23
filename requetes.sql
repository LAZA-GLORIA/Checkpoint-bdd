CREATE TABLE `Entreprise` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nom` VARCHAR(255),
	`description` TEXT,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Recruteurs` (
    `idRecruteur` INT NOT NULL AUTO_INCREMENT,
    `login` VARCHAR(255) NOT NULL,
    `mot_de_passe` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`idRecruteur`)
);

ALTER TABLE `Recruteur` 
ADD `idEntreprise` INT,
ADD FOREIGN KEY (`idEntreprise`) REFERENCES `Entreprise`(`id`);


CREATE TABLE `Offre_emploi` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `titre_poste` VARCHAR(255),
    `descriptif_poste` TEXT,
    `idEntreprise` INT,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`idEntreprise`) REFERENCES `Entreprise`(`id`)
);

CREATE TABLE `Candidat` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `login` VARCHAR(255) NOT NULL,
    `mot_de_passe` VARCHAR(255) NOT NULL,
    `nom` VARCHAR(255),
    `prenom` VARCHAR(255),
    `email` VARCHAR(255),
    `telephone` VARCHAR(255),
    `texte_de_presentation` TEXT,
    PRIMARY KEY (`id`)
);

CREATE TABLE `CANDIDATURE` (
    `idCandidat` INT,
    `idOffre_emploi` INT,
    PRIMARY KEY (`idCandidat`, `idOffre_emploi`),
    FOREIGN KEY (`idCandidat`) REFERENCES `Candidat`(`id`),
    FOREIGN KEY (`idOffre_emploi`) REFERENCES `Offre_emploi`(`id`)
);

