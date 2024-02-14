# Amazon Web Services - RDS - Terraform

## Overview

This repository contains infrastructure as a code written in Terraform to provision an RDS Database in AWS. The database uses the MySQL engine.

## Purpose

This database setup is used by the following two projects:

-   [Chat Application](https://github.com/tprzytula/terraform-aws-chat)
-   [Storage Application](https://github.com/tprzytula/Storage)

The liquibase patches and lambda connections can be seen in the repos above.

## Terraform State

The state is managed by the [Terraform Cloud](https://app.terraform.io/app). You can see the configuration file [here.](./backend.tf)

## Applying changes

Any changes can be validated by creating a pull request in this repository. The pull request will trigger Terraform Cloud to create a plan for your changes. Once merged the changes will also get applied.

The `database_username` and `database_password` variables are configured and provided by the Terraform Cloud setup.
