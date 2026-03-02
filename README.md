# multi-cloud-security-portfolio

# Azure Incident Response & Detection Engineering Lab


## Project Summary

This project simulates a real-world cloud security monitoring environment using Microsoft Azure and Microsoft Sentinel. The objective was to design, deploy, and validate an end-to-end detection pipeline capable of identifying suspicious administrative activity within an Azure subscription.

The lab specifically simulates a resource group deletion attack to demonstrate how cloud activity logs can be ingested, analyzed, and converted into actionable security incidents within a SIEM platform.

## Problem Simulated

Cloud environments rely heavily on administrative actions. If a malicious or compromised account deletes critical infrastructure (e.g., a resource group), organizations must detect and respond immediately.

This project demonstrates:

- Subscription-level Azure Activity Log ingestion
- Custom KQL detection rule creation
- MITRE ATT&CK mapping (T1078 – Valid Accounts)
- Incident generation and validation in Microsoft Sentinel
- Telemetry troubleshooting when diagnostic settings were misconfigured
- Infrastructure automation using Terraform


## Overview
Built a multi-cloud detection engineering lab in Azure using Microsoft Sentinel as a SIEM platform. Implemented subscription-level logging, custom KQL detection rules, and simulated attack scenarios.

---

## Day 1 — Setup
- Created Resource Group (incident-response-lab)
- Configured Azure Cloud Shell
- Enabled Defender for Cloud
- Captured Secure Score baseline

## Day 2 — Logging Foundation
- Created Log Analytics Workspace (sentinel-lab1)
- Connected Azure Activity Logs at subscription level
- Verified AzureActivity ingestion using KQL
  ```kusto
  AzureActivity
  | sort by TimeGenerated desc
  | take 10 

## Day 3 — Microsoft Sentinel Setup
- Enabled Microsoft Sentinel on workspace
- Verified telemetry pipeline
- Explored Incidents dashboard

## Day 4 — Detection Engineering
- Created scheduled KQL rule detecting resource group deletion
-Detection logic
AzureActivity
| where OperationNameValue == "Microsoft.Resources/subscriptions/resourceGroups/delete"
- Mapped rule to MITRE ATT&CK (T1078 - Valid Accounts)

## Day 5 — Simulated Attack
- Triggered detection via resource group deletion
- Troubleshot ingestion pipeline
- Validated SIEM telemetry flow
- Diagnosed missing diagnostic settings
- Reconfigured subscription-level logging
- Validated ingestion pipeline

## Day 6 – Infrastructure as Code (Terraform)
- Created Terraform configuration for Azure infrastructure
- Configured azurerm provider with required features block
- Initialized working directory using `terraform init`
- Resolved provider configuration errors
- Troubleshot Terraform state lock issue in Azure Cloud Shell
- Manually cleared local state lock file
- Successfully validated configuration using `terraform validate`
- Executed `terraform plan` to review infrastructure changes

## Screenshots
![Screentshot](azure/screenshots)


## Tools & Technologies Used

- Microsoft Azure
- Log Analytics Workspace
- Microsoft Sentinel (Microsoft Defender Portal)
- Azure Activity Logs
- Kusto Query Language (KQL)
- MITRE ATT&CK Framework
- Terraform (Infrastructure as Code)
- Git & GitHub (Version control and documentation)

## Skills Demonstrated

###  Detection Engineering
- Built custom KQL detection for Azure resource group deletion
- Mapped detection to MITRE ATT&CK (T1078 – Valid Accounts)
- Tuned analytics rule logic
- Generated and validated Sentinel incidents

### Log Analysis & KQL
- Queried AzureActivity logs using KQL
- Filtered by OperationNameValue and ActivityStatusValue
- Sorted and summarized subscription-level telemetry
- Validated log ingestion pipeline

###Cloud Security Monitoring
- Configured subscription-level Diagnostic Settings
- Enabled Azure Activity log ingestion to Log Analytics
- Enabled Microsoft Sentinel workspace
- Investigated incidents in Defender portal

###Troubleshooting & Incident Simulation
- Simulated resource group deletion attack
- Diagnosed broken telemetry pipeline
- Identified missing diagnostic configuration
- Reconfigured subscription-level logging
- Validated end-to-end alert generation

### Infrastructure as Code (Terraform)
- Configured azurerm provider
- Resolved missing `features {}` provider error
- Initialized Terraform working directory
- Troubleshot Terraform state lock issue
- Validated and planned infrastructure changes
