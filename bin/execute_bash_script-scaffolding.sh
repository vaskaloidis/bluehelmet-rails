#!/usr/bin/env bash

# rails g erb:scaffold Content name:string file:string \
# description:text type:string
#
# rails g erb:scaffold UserContent user_id:integer content_id:integer \
#  sticky:boolean

# Build the Models

# rails g scaffold Language name:string html:string

# rails g scaffold TemplateType name:string

# rails g scaffold TemplateCategory name:string

# rails g scaffold Template name:string description:text \
# purchaseUrl:string demoUrl:string TemplateType:references \
# TemplateCategory:references price:decimal tags:text \
# compatibleBrowsers:text bootstrapVersions:text

pry-models

rails db:migrate

 rails g scaffold UserNote note:text User:references sticky:boolean \
 author:integer

 rails g scaffold Project \
 name:text admin_id:references customer_id:references phaseLength:integer \
 totalPhases:integer currentPhase:integer rate:decimal \
 documentationUrl:string kanbanUrl:string ciServerUrl:string \
 status:boolean githubUrl:string stagingServer:string production:server:string \
 Language:references

rails g scaffold ProjectNote Project:reference note:text User:references sticky:boolean \
author:integer

rails g scaffold Payment Project:references User:references ammount:integer, method:string \

rails g scaffold Message User:references recipient:references message:text
