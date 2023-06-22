# Terraform Cloud Run Configuration Sample for Personal Use

## About

This repository contains Terraform configuration files that I have prepared for my personal use. These configurations assume the specifications for infrastructure management on Google Cloud Platform (GCP).

## Prerequisites

- __Terraform__ version 0.14 or later
- __Google Cloud SDK__ (for authentication)
- A Google Cloud Platform (GCP) project

## Setup and Usage

### 1. Set up the Service Account credentials

- Execute `cp credentials.json.sample credentials.json`.
- Fill in own GCP service account information to __credentials.json__.

Note: __Be sure to handle the service account information with care, as it can grant access to the GCP resources. Do not share it and do not commit it to version control.__

### 2. Temporarily comment out specific Terraform configuration

Comment out the parts of the Terraform configuration that are __NOT related to the Artifact Registry__.

### 3. Plan and apply

- Run terraform plan to confirm that there are no issues with the configuration:

  ```sh
  terraform plan
  ```

- If no issues are detected, apply the configuration to create the Artifact Registry on the GCP project:

  ```sh
  terraform apply
  ```

After running terraform apply, the Artifact Registry will be set up on the GCP project. And can now use it to manage a Docker images.

## Caution

These configurations can affect real resources on GCP. Always double-check the settings and understand what changes will occur before running terraform apply.
