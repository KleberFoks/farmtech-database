-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-04-10 16:50:21 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE AplicacaoRecursos 
    ( 
     id_aplicacao        NUMBER  NOT NULL , 
     id_plantacao        NUMBER  NOT NULL , 
     data_hora           TIMESTAMP , 
     quantidade_agua     NUMBER , 
     quantidade_fosforo  NUMBER , 
     quantidade_potassio NUMBER 
    ) 
;

ALTER TABLE AplicacaoRecursos 
    ADD CONSTRAINT AplicacaoRecursos_PK PRIMARY KEY ( id_aplicacao ) ;

CREATE TABLE LeituraSensor 
    ( 
     id_leitura   NUMBER  NOT NULL , 
     id_sensor    NUMBER  NOT NULL , 
     id_plantacao NUMBER  NOT NULL , 
     data_hora    TIMESTAMP , 
     valor_lido   NUMBER 
    ) 
;

ALTER TABLE LeituraSensor 
    ADD CONSTRAINT LeituraSensor_PK PRIMARY KEY ( id_leitura ) ;

CREATE TABLE Plantação 
    ( 
     id_plantacao  NUMBER  NOT NULL , 
     nome_cultura  VARCHAR2 (50) , 
     localizacao   VARCHAR2 (100) , 
     area_hectares NUMBER 
    ) 
;

ALTER TABLE Plantação 
    ADD CONSTRAINT Plantação_PK PRIMARY KEY ( id_plantacao ) ;

CREATE TABLE Sensor 
    ( 
     id_sensor   NUMBER  NOT NULL , 
     tipo_sensor VARCHAR2 (50) , 
     modelo      VARCHAR2 (50) 
    ) 
;

ALTER TABLE Sensor 
    ADD CONSTRAINT Sensor_PK PRIMARY KEY ( id_sensor ) ;

ALTER TABLE AplicacaoRecursos 
    ADD CONSTRAINT AplicacaoRecursos_Plantação_FK FOREIGN KEY 
    ( 
     id_plantacao
    ) 
    REFERENCES Plantação 
    ( 
     id_plantacao
    ) 
;

ALTER TABLE LeituraSensor 
    ADD CONSTRAINT fk_leitura_plantação FOREIGN KEY 
    ( 
     id_plantacao
    ) 
    REFERENCES Plantação 
    ( 
     id_plantacao
    ) 
;

ALTER TABLE LeituraSensor 
    ADD CONSTRAINT fk_leitura_sensor FOREIGN KEY 
    ( 
     id_sensor
    ) 
    REFERENCES Sensor 
    ( 
     id_sensor
    ) 
;



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
