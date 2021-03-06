create table job_portal.authority (
id INT UNSIGNED NOT NULL,
name varchar(50));

create table job_portal.users (
id INT UNSIGNED NOT NULL,
first_name varchar(50),
family_name varchar(50),
e_mail varchar(50),
phone varchar(50),
language char(2),
id_picture int,
login varchar(50) NOT NULL UNIQUE,
password varchar(50),
burth_date Date,
enabled boolean);

create table job_portal.users_authority (
id INT UNSIGNED NOT NULL,
id_user BIGINT,
id_authority BIGINT);

CREATE TABLE `job_portal`.`profile` (
  `userId` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `userType` VARCHAR(45) NULL);
  
  CREATE TABLE `job_portal`.`profile_dtl` (
  `profile_dtl_id` INT NOT NULL,
  `profession_title` VARCHAR(45) NULL,
  `Location` VARCHAR(45) NULL,
  `Web` VARCHAR(45) NULL,
  `pre_hour` VARCHAR(45) NULL,
  `Age` VARCHAR(45) NULL,
  `resume` BLOB NULL,
  `cover_later` BLOB NULL,
  `userId` INT NULL,
  PRIMARY KEY (`profile_dtl_id`));
  
  CREATE TABLE `job_portal`.`education` (
  `Education_id` INT UNSIGNED NOT NULL,
  `Degree` VARCHAR(45) NULL,
  `Field_of_Study` VARCHAR(45) NULL,
  `School_or_college` VARCHAR(45) NULL,
  `From_date` DATE NULL,
  `to_date` DATE NULL,
  `Description` VARCHAR(45) NULL,
  `userId` INT NULL);
  
  CREATE TABLE `job_portal`.`work_experience` (
  `Work_Experience_id` INT UNSIGNED NOT NULL,
  `Company_Name` VARCHAR(45) NULL,
  `Title` VARCHAR(45) NULL,
  `Date_Form` DATE NULL,
  `Date_To` DATE NULL,
  `Description` VARCHAR(45) NULL,
  `userId` INT NULL,
  PRIMARY KEY (`Work_Experience_id`));
  
  CREATE TABLE `job_portal`.`skills` (
  `Skills_id` INT NOT NULL,
  `Skill_Name` VARCHAR(45) NULL,
  `Skill_percentage` INT NULL,
  `userId` INT NULL,
  PRIMARY KEY (`Skills_id`));

CREATE TABLE `job_portal`.`jobs_details` (
  `jobs_details_id` INT NOT NULL,
  `email` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  `job_tags` VARCHAR(45) NULL,
  `description` VARCHAR(200) NULL,
  `application_email` VARCHAR(45) NULL,
  `closing_date` DATE NULL,
  `company_name` VARCHAR(45) NULL,
  `company_website` VARCHAR(45) NULL,
  `company_discription` VARCHAR(200) NULL,
  `jd_file` BLOB NULL,
  PRIMARY KEY (`jobs_details_id`));
  
  CREATE TABLE `job_portal`.`job_tags` (
  `job_tag_id` INT NOT NULL,
  `Job_tags` VARCHAR(45) NULL,
  `jobs_details_id` INT NULL,
  `job_tag_name` VARCHAR(45) NULL,
  PRIMARY KEY (`job_tag_id`));
  
  CREATE TABLE job_portal.jobs_details_tag (
	`jobs_details_id` INT NOT NULL,
	`job_tag_id` INT NOT NULL,
	PRIMARY KEY (`jobs_details_id`, `job_tag_id`),
	INDEX `FK_JOB_TAG` (`job_tag_id`),
	CONSTRAINT `FK_JOBS_DETAILS` FOREIGN KEY (`jobs_details_id`) REFERENCES `jobs_details` (`jobs_details_id`),
	CONSTRAINT `FK_JOB_TAG` FOREIGN KEY (`job_tag_id`) REFERENCES `job_tags` (`job_tag_id`)
)

ALTER TABLE `job_portal`.`profile` 
ADD COLUMN `status` VARCHAR(45) NULL AFTER `userType`,
ADD COLUMN `otp` VARCHAR(45) NULL AFTER `status`,
ADD COLUMN `logo` MEDIUMBLOB NULL AFTER `otp`,
ADD COLUMN `CRT_TS` TIMESTAMP NULL AFTER `logo`;
