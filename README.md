# multi-cloud-security-portfolio
# Azure Incident Response & Detection Engineering Lab

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

## Screenshots
![Screentshot](azure/screenshots)

## Skills Demonstrated
- SIEM Deployment (Microsoft Sentinel)
- Log Pipeline Engineering
- KQL Detection Development
- MITRE ATT&CK Mapping
- Cloud Incident Simulation
- Azure Subscription-Level Logging
- Troubleshooting Telemetry Failures
