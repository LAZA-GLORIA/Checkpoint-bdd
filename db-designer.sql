CREATE TABLE `Recruteur` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`login` varchar NOT NULL,
	`mot_de_passe` varchar NOT NULL,
	`idEntreprise` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Entreprise` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nom` varchar NOT NULL,
	`description` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Offre_emploi` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`titre_poste` varchar NOT NULL,
	`descriptif_poste` TEXT NOT NULL,
	`idEntreprise` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Candidat` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`login` varchar NOT NULL,
	`mot_de_passe` varchar NOT NULL,
	`nom` varchar NOT NULL,
	`prenom` varchar NOT NULL,
	`email` varchar NOT NULL,
	`telephone` varchar NOT NULL,
	`texte_de_presentation` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `CANDIDATURE` (
	`idCandidat` INT NOT NULL AUTO_INCREMENT,
	`idOffre_emploi` INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`idCandidat`,`idOffre_emploi`)
);

ALTER TABLE `Recruteur` ADD CONSTRAINT `Recruteur_fk0` FOREIGN KEY (`idEntreprise`) REFERENCES `Entreprise`(`id`);

ALTER TABLE `Offre_emploi` ADD CONSTRAINT `Offre_emploi_fk0` FOREIGN KEY (`idEntreprise`) REFERENCES `Entreprise`(`id`);

ALTER TABLE `CANDIDATURE` ADD CONSTRAINT `CANDIDATURE_fk0` FOREIGN KEY (`idCandidat`) REFERENCES `Candidat`(`id`);

ALTER TABLE `CANDIDATURE` ADD CONSTRAINT `CANDIDATURE_fk1` FOREIGN KEY (`idOffre_emploi`) REFERENCES `Offre_emploi`(`id`);






