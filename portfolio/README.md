# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


console commands:

rails db:create

rails db:migrate

 rails generate model UserType type:string description:text

 rails generate model SkillType type:string description:text

  rails generate model Skill name:string description:text

  rails generate migration AddSkillTypeRefToSkill skill_type:references

  rails generate model Project name:string creation_date:datetime language:string description:text

  rails generate model User name:string email:string password:string

rails generate migration AddUserTypeRefToUser user_type:references

 rails generate migration AddProjectRefToUser project:references

 rails generate migration AddSkillRefToUser skill:references