/* My DML for 
   my portfolio */

   --inserts to populate the database with a pre-defined list of Six skills
   INSERT INTO 'poolmembersskills' ('OtherAvailableSkills')
VALUES ('C#');

 INSERT INTO 'poolmembersskills' ('OtherAvailableSkills')
VALUES ('PHP');

 INSERT INTO 'poolmembersskills' ('OtherAvailableSkills')
VALUES ('Python');

 INSERT INTO 'poolmembersskills' ('OtherAvailableSkills')
VALUES ('Front End');

 INSERT INTO 'poolmembersskills' ('OtherAvailableSkills')
VALUES ('Processing');

 INSERT INTO 'poolmembersskills' ('OtherAvailableSkills')
VALUES ('JavaScript');
   
   --inserts to create two pool members each associated with two skills from the predefined list. 
   INSERT INTO 'poolmembersnames'('memberID', 'Membernames') VALUES ('017', 'Frank Arb');
   INSERT INTO 'poolmembersnames'('memberID', 'Membernames') VALUES ('018','Tracy Lu');

   INSERT INTO 'poolmembersskills'('memberID', 'Skillname', 'Skilltype', 'ProjectSkillNeeded', 'Level', 'OtherAvailableSkills') VALUES ('017','Back End','Java','U/A','Experienced','PHP');
   INSERT INTO 'poolmembersskills'('memberID', 'Skillname', 'Skilltype', 'ProjectSkillNeeded', 'Level', 'OtherAvailableSkills') VALUES ('018','Front End','Java','U/A','Experienced','Python');


   --inserts to populate the database with two client records.
INSERT INTO `clientaddresses`(`ClientID`, `ClientAddressLine1`, `ClientAddressLine2`) VALUES ('[091]','[17 Dioool street]','[London]');
INSERT INTO `clientaddresses`(`ClientID`, `ClientAddressLine1`, `ClientAddressLine2`) VALUES ('[092]','[17 BUioool street]','[London]');


INSERT INTO `clientnames`(`ClientID`, `ClientName`) VALUES ('[091]','[Ben Julio]');
INSERT INTO `clientnames`(`ClientID`, `ClientName`) VALUES ('[092]','[Tom Leo]');

INSERT INTO `clientorganisations`(`ClientID`, `OrganisationName`) VALUES ('[091]','[Facebook]');
INSERT INTO `clientorganisations`(`ClientID`, `OrganisationName`) VALUES ('[092]','[Instagram]');

INSERT INTO `clientpf`(`ClientID`, `PreferredContact`) VALUES ('[091]','email');
INSERT INTO `clientpf`(`ClientID`, `PreferredContact`) VALUES ('[092]','post');

INSERT INTO `clientsprojects`(`cID`, `ClientProjectsWanted`) VALUES ('[091]','[2]');
INSERT INTO `clientsprojects`(`cID`, `ClientProjectsWanted`) VALUES ('[092]','[200]');

    --inserts for one project that requires two of the pre-defined skills to complete.
INSERT INTO `projects`(`projectID`, `projectName`, `startDate`, `cID`) VALUES ('[0999]','F127','[19/07/12]','[007]');

INSERT INTO `projectsenddate`(`projectID`, `endDate`) VALUES ('[0999]','[26/05/27]');

INSERT INTO `projectsphase`(`projectID`, `ProjectPhase`) VALUES ('[0999]','design');

INSERT INTO `projectskillrequired`(`projectID`, `ProjectSkillNeeded`) VALUES ('[0999]','[Java]');
INSERT INTO `projectskillrequired`(`projectID`, `ProjectSkillNeeded`) VALUES ('[0999]','[Python]');



    --inserts to query the database to receive a list of pool members that 
    --match the project’s requirements, and assign them to the project
SELECT poolmembersskills.memberID,poolmembersskills.Skilltype , projectskillrequired.ProjectSkillNeeded
 FROM poolmembersskills, projectskillrequired
WHERE poolmembersskills.memberID
AND poolmembersskills.Skilltype = projectskillrequired.ProjectSkillNeeded;




 --inserts to demonstrate your design’s strengths by including additional SELECT statements to
--generate different reports for the project management team: 


-- query to the database to receive a list of pool members that match the project’s requirements, levels needed, and assign them to the project
SELECT poolmembersskills.memberID,poolmembersskills.Skilltype ,poolmembersskills.Level ,projectskillrequired.ProjectSkillNeeded
FROM poolmembersskills, projectskillrequired
WHERE poolmembersskills.memberID
AND poolmembersskills.Level
AND poolmembersskills.Skilltype = projectskillrequired.ProjectSkillNeeded;
    
--query to the database to find clients who want to be contacted by post.
SELECT clientaddresses.clientID,clientaddresses.ClientAddressLine1,clientaddresses.ClientAddressLine2,clientpf.PreferredContact
FROM clientaddresses,clientpf
WHERE clientpf.PreferredContact = post;


    


   
