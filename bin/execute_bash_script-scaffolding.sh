#!/usr/bin/env bash

cd /Users/vkaloidis/Code/Rails/bluehelmet/ \


# rails g erb:scaffold Content name:string file:string \
# description:text type:string
#
# rails g erb:scaffold UserContent user_id:integer content_id:integer \
#  sticky:boolean

# Build the Models

rails g scaffold ProjectType name:string

rails g scaffold TemplateType name:string

rails g scaffold TemplateCategory name:string

rails g scaffold Template name:string description:text \
 purchaseUrl:string demoUrl:string TemplateType:references \
 TemplateCategory:references price:decimal tags:text \
 compatibleBrowsers:text bootstrapVersions:text

 rails g scaffold UserNote note:text User:references sticky:boolean \
 author:integer

 rails g scaffold Project name:text User:references \
 totalPhases:integer currentPhase:integer rate:decimal \
 documentationUrl:string kanbanUrl:string ciServerUrl:string \
 status:boolean githubUrl:string

 rails g scaffold ProjectNote Project:reference note:text User:references sticky:boolean \
 author:integer

 rails g scaffold

 # Populate Categories / Types
 ProjectType.create(name: "website");
 ProjectType.create(name: "web-app");
 ProjectType.create(name: "desktop-app");
 ProjectType.create(name: "mobile-app");
