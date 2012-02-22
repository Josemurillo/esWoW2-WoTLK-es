
-- ==================== --
--   ITEM (fix glifos)  --
-- ==================== --

ALTER TABLE `locales_item` CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;
INSERT IGNORE INTO `locales_item` (`entry`) SELECT `entry` FROM `item_template`;

UPDATE `locales_item` SET `name_loc6`='Glifo de Bramido' WHERE `entry`='40899';
UPDATE `locales_item` SET `name_loc6`='Glifo de Arañazo' WHERE `entry`='40903';
UPDATE `locales_item` SET `name_loc6`='Glifo de Sello de Orden' WHERE `entry`='41094';
UPDATE `locales_item` SET `name_loc6`='Glifo de Armonización Espiritual' WHERE `entry`='41096';
UPDATE `locales_item` SET `name_loc6`='Glifo de Defensa Recta' WHERE `entry`='41100';
UPDATE `locales_item` SET `name_loc6`='Glifo de Escudo de Vengador' WHERE `entry`='41101';
UPDATE `locales_item` SET `name_loc6`='Glifo de Destello de Luz' WHERE `entry`='41105';
UPDATE `locales_item` SET `name_loc6`='Glifo de Luz Sagrada' WHERE `entry`='41106';
UPDATE `locales_item` SET `name_loc6`='Glifo de Cólera Vengativa' WHERE `entry`='41107';
UPDATE `locales_item` SET `name_loc6`='Glifo de Sello de Sabiduría' WHERE `entry`='41109';
UPDATE `locales_item` SET `name_loc6`='Glifo de Sello de Luz' WHERE `entry`='41110';
UPDATE `locales_item` SET `name_loc6`='Glifo de Lava' WHERE `entry`='41524';
UPDATE `locales_item` SET `name_loc6`='Glifo de Ola de Sanación Inferior' WHERE `entry`='41535';
UPDATE `locales_item` SET `name_loc6`='Glifo de Tótem Marea de Maná' WHERE `entry`='41538';
UPDATE `locales_item` SET `name_loc6`='Glifo de Maestría en Agua' WHERE `entry`='41541';
UPDATE `locales_item` SET `name_loc6`='Glifo de Control Mental' WHERE `entry`='42405';
UPDATE `locales_item` SET `name_loc6`='Glifo de Sombra' WHERE `entry`='42407';
UPDATE `locales_item` SET `name_loc6`='Glifo de Espíritu Redentor' WHERE `entry`='42417';
UPDATE `locales_item` SET `name_loc6`='Glifo de Maldición de Agonía' WHERE `entry`='42456';
UPDATE `locales_item` SET `name_loc6`='Glifo de Dolor Abrasador' WHERE `entry`='42466';
UPDATE `locales_item` SET `name_loc6`='Glifo de Succionar Vida' WHERE `entry`='42469';
UPDATE `locales_item` SET `name_loc6`='Glifo de Súcubo' WHERE `entry`='42471';
UPDATE `locales_item` SET `name_loc6`='Glifo de Deflagración Arcana' WHERE `entry`='42734';
UPDATE `locales_item` SET `name_loc6`='Glifo de Explosión de Fuego' WHERE `entry`='42740';
UPDATE `locales_item` SET `name_loc6`='Glifo de Armadura de Hielo' WHERE `entry`='42743';
UPDATE `locales_item` SET `name_loc6`='Glifo de Agostar' WHERE `entry`='42747';
UPDATE `locales_item` SET `name_loc6`='Glifo de Gema de Maná' WHERE `entry`='42750';
UPDATE `locales_item` SET `name_loc6`='Glifo de Eliminar Maldición' WHERE `entry`='42753';
UPDATE `locales_item` SET `name_loc6`='Glifo de Elemental de Agua' WHERE `entry`='42754';
UPDATE `locales_item` SET `name_loc6`='Glifo de la Bestia' WHERE `entry`='42899';
UPDATE `locales_item` SET `name_loc6`='Glifo de Aspecto de La Víbora' WHERE `entry`='42901';
UPDATE `locales_item` SET `name_loc6`='Glifo de Trampa de Escarcha' WHERE `entry`='42906';
UPDATE `locales_item` SET `name_loc6`='Glifo de Marca del Cazador' WHERE `entry`='42907';
UPDATE `locales_item` SET `name_loc6`='Glifo del Halcón' WHERE `entry`='42909';
UPDATE `locales_item` SET `name_loc6`='Glifo de Multidisparo' WHERE `entry`='42910';
UPDATE `locales_item` SET `name_loc6`='Glifo de Aura de Disparo Certero' WHERE `entry`='42915';
UPDATE `locales_item` SET `name_loc6`='Glifo de Salva' WHERE `entry`='42916';
UPDATE `locales_item` SET `name_loc6`='Glifo de Golpe Fantasmal' WHERE `entry`='42965';
UPDATE `locales_item` SET `name_loc6`='Glifo de Vigor' WHERE `entry`='42971';
UPDATE `locales_item` SET `name_loc6`='Glifo de lo Salvaje' WHERE `entry`='43335';
UPDATE `locales_item` SET `name_loc6`='Glifo de Revivir Mascota' WHERE `entry`='43338';
UPDATE `locales_item` SET `name_loc6`='Glifo de Intelecto Arcano' WHERE `entry`='43339';
UPDATE `locales_item` SET `name_loc6`='Glifo de Bendición de Poderío' WHERE `entry`='43340';
UPDATE `locales_item` SET `name_loc6`='Glifo de lo Desvaído' WHERE `entry`='43342';
UPDATE `locales_item` SET `name_loc6`='Glifo de Robar' WHERE `entry`='43343';
UPDATE `locales_item` SET `name_loc6`='Glifo de Respiración Acuática' WHERE `entry`='43344';
UPDATE `locales_item` SET `name_loc6`='Glifo de Aliviar Mascota' WHERE `entry`='43350';
UPDATE `locales_item` SET `name_loc6`='Glifo de Fuerza Poseída' WHERE `entry`='43354';
UPDATE `locales_item` SET `name_loc6`='Glifo de la Manada' WHERE `entry`='43355';
UPDATE `locales_item` SET `name_loc6`='Glifo de Resguardo contra el Fuego' WHERE `entry`='43357';
UPDATE `locales_item` SET `name_loc6`='Glifo de Armadura de Escarcha' WHERE `entry`='43359';
UPDATE `locales_item` SET `name_loc6`='Glifo de Resguardo contra la Escarcha' WHERE `entry`='43360';
UPDATE `locales_item` SET `name_loc6`='Glifo de Bendición de Sabiduría' WHERE `entry`='43366';
UPDATE `locales_item` SET `name_loc6`='Glifo de Captar No-muertos' WHERE `entry`='43368';
UPDATE `locales_item` SET `name_loc6`='Glifo del Sabio' WHERE `entry`='43369';
UPDATE `locales_item` SET `name_loc6`='Glifo de Esfumarse' WHERE `entry`='43380';
UPDATE `locales_item` SET `name_loc6`='Glifo de Escudo de Agua' WHERE `entry`='43386';
UPDATE `locales_item` SET `name_loc6`='Glifo de Kilrogg' WHERE `entry`='43391';
UPDATE `locales_item` SET `name_loc6`='Glifo de Almas' WHERE `entry`='43394';
UPDATE `locales_item` SET `name_loc6`='Glifo de Ira Sangrienta' WHERE `entry`='43396';
UPDATE `locales_item` SET `name_loc6`='Glifo de Cargar' WHERE `entry`='43397';
UPDATE `locales_item` SET `name_loc6`='Glifo de Falsa Arremetida' WHERE `entry`='43398';
UPDATE `locales_item` SET `name_loc6`='Glifo de Sed de Sangre' WHERE `entry`='43412';
UPDATE `locales_item` SET `name_loc6`='Glifo de Ejecutar' WHERE `entry`='43416';
UPDATE `locales_item` SET `name_loc6`='Glifo de Seccionar' WHERE `entry`='43417';
UPDATE `locales_item` SET `name_loc6`='Glifo de Golpe Heroico' WHERE `entry`='43418';
UPDATE `locales_item` SET `name_loc6`='Glifo de Insultos Barbáricos' WHERE `entry`='43420';
UPDATE `locales_item` SET `name_loc6`='Glifo de Desgarrar' WHERE `entry`='43423';
UPDATE `locales_item` SET `name_loc6`='Glifo de Bloqueo' WHERE `entry`='43425';
UPDATE `locales_item` SET `name_loc6`='Glifo de Última Carga' WHERE `entry`='43426';
UPDATE `locales_item` SET `name_loc6`='Glifo de Provocar' WHERE `entry`='43429';
UPDATE `locales_item` SET `name_loc6`='Glifo de Torbellino' WHERE `entry`='43432';
UPDATE `locales_item` SET `name_loc6`='Glifo de Orden Oscura' WHERE `entry`='43538';
UPDATE `locales_item` SET `name_loc6`='Glifo de Entereza Ligada al Hielo' WHERE `entry`='43545';
UPDATE `locales_item` SET `name_loc6`='Glifo de Golpe de Peste' WHERE `entry`='43548';
UPDATE `locales_item` SET `name_loc6`='Glifo del Necrófago' WHERE `entry`='43549';
UPDATE `locales_item` SET `name_loc6`='Glifo de Armadura Inquebrantable' WHERE `entry`='43553';
UPDATE `locales_item` SET `name_loc6`='Glifo de Deflagración de Cadáver' WHERE `entry`='43671';
UPDATE `locales_item` SET `name_loc6`='Glifo de Pestilencia' WHERE `entry`='43672';
UPDATE `locales_item` SET `name_loc6`='Glifo de Levantar a Muerto' WHERE `entry`='43673';
UPDATE `locales_item` SET `name_loc6`='Glifo de Golpe Sangriento' WHERE `entry`='43826';
UPDATE `locales_item` SET `name_loc6`='Glifo de Sello de Rectitud' WHERE `entry`='43868';
UPDATE `locales_item` SET `name_loc6`='Glifo de Sello de Venganza' WHERE `entry`='43869';
UPDATE `locales_item` SET `name_loc6`='Glifo de Nutrir' WHERE `entry`='45603';
UPDATE `locales_item` SET `name_loc6`='Glifo de Trampa Explosiva' WHERE `entry`='45733';
UPDATE `locales_item` SET `name_loc6`='Glifo de Bomba Viva' WHERE `entry`='45737';
UPDATE `locales_item` SET `name_loc6`='Glifo de Tormenta Divina' WHERE `entry`='45743';
UPDATE `locales_item` SET `name_loc6`='Glifo de Escudo de Rectitud' WHERE `entry`='45744';
UPDATE `locales_item` SET `name_loc6`='Glifo de Abrasamiento Mental' WHERE `entry`='45757';
UPDATE `locales_item` SET `name_loc6`='Glifo de Himno de Esperanza' WHERE `entry`='45758';
UPDATE `locales_item` SET `name_loc6`='Glifo de Supresión de Dolor' WHERE `entry`='45760';
UPDATE `locales_item` SET `name_loc6`='Glifo de Hambre de Sangre' WHERE `entry`='45761';
UPDATE `locales_item` SET `name_loc6`='Glifo de Tótem de Cólera' WHERE `entry`='45776';
UPDATE `locales_item` SET `name_loc6`='Glifo de Vigilancia' WHERE `entry`='45793';
UPDATE `locales_item` SET `name_loc6`='Glifo de Regeneración Iracunda' WHERE `entry`='45794';
UPDATE `locales_item` SET `name_loc6`='Glifo de Añublo Profano' WHERE `entry`='45803';
UPDATE `locales_item` SET `name_loc6`='Glifo de Muerte Oscura' WHERE `entry`='45804';
UPDATE `locales_item` SET `name_loc6`='Glifo de Enfermedad' WHERE `entry`='45805';
UPDATE `locales_item` SET `name_loc6`='Glifo de Instintos de Supervivencia' WHERE `entry`='46372';
UPDATE `locales_item` SET `name_loc6`='Glifo de Zarpa' WHERE `entry`='48720';
UPDATE `locales_item` SET `name_loc6`='Glifo de Orden' WHERE `entry`='49084';
UPDATE `locales_item` SET `name_loc6`='Glifo de Agua Eterna' WHERE `entry`='50045';
UPDATE `locales_item` SET `name_loc6`='Glifo de Descomposición Presurosa' WHERE `entry`='50077';
UPDATE `locales_item` SET `name_loc6`='Glifo de Rejuvenecimiento Rápido' WHERE `entry`='50125';