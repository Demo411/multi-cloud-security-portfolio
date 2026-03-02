# Detection: Azure Resource Group Deletion

## Objective
Detect potentially malicious or unauthorized deletion of Azure resource groups.

---

## Log Source
AzureActivity (Subscription-level Activity Logs)

---

## MITRE ATT&CK Mapping
- T1078 – Valid Accounts
- T1485 – Data Destruction (Impact)

---

## KQL Query

```kusto
AzureActivity
| where OperationNameValue == "Microsoft.Resources/subscriptions/resourceGroups/delete"
| where ActivityStatusValue == "Succeeded"
| project TimeGenerated, Caller, ResourceGroup, CorrelationId
| sort by TimeGenerated desc

---

## Rule Configuration

Query frequency: 5 minutes
Lookup period: 5 minutes
Trigger threshold: Greater than 0 events
Severity: Medium

--- 

## Testing Method

Created a temporary resource group
Deleted the resource group manually
Waited 2–3 minutes
Verified event ingestion in Log Analytics
Confirmed rule triggered alert

--- 

## Lessons Learned
Subscription-level diagnostic settings are critical
Missing diagnostic settings = no telemetry
Sentinel depends entirely on proper log routing
