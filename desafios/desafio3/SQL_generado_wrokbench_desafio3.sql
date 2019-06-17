--generado en punto 2 del desafio 3

ALTER TABLE `desafio3`.`alumno_seccion` 
ADD INDEX `idalumno_idx` (`alumno_id` ASC);
;
ALTER TABLE `desafio3`.`alumno_seccion` 
ADD CONSTRAINT `idalumno`
  FOREIGN KEY (`alumno_id`)
  REFERENCES `desafio3`.`alumno` (`id`)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE `desafio3`.`alumno_seccion` 
ADD INDEX `id_seccion_idx` (`seccion_id` ASC);
;
ALTER TABLE `desafio3`.`alumno_seccion` 
ADD CONSTRAINT `id_seccion`
  FOREIGN KEY (`seccion_id`)
  REFERENCES `desafio3`.`seccion` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `desafio3`.`seccion` 
ADD INDEX `id_profesor_idx` (`profesor_id` ASC);
;
ALTER TABLE `desafio3`.`seccion` 
ADD CONSTRAINT `id_profesor`
  FOREIGN KEY (`profesor_id`)
  REFERENCES `desafio3`.`profesor` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `desafio3`.`seccion` 
ADD INDEX `id_curso_idx` (`curso_id` ASC);
;
ALTER TABLE `desafio3`.`seccion` 
ADD CONSTRAINT `id_curso`
  FOREIGN KEY (`curso_id`)
  REFERENCES `desafio3`.`curso` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;




