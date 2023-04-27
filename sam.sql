UPDATE dbVersion
SET
  version = '0.6.9';
ALTER TABLE user 






                  ADD CONSTRAINT FK_user_parentIdTag FOREIGN KEY(parentIdTag) REFERENCES user(idTag) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ENFORCED;
