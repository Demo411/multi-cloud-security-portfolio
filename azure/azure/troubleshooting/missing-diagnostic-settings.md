# Troubleshooting: Missing Azure Diagnostic Settings

## Issue
No AzureActivity logs were appearing in Log Analytics.

## Root Cause
Subscription-level diagnostic settings were missing after resource group deletion.

## Impact
- No logs
- No detection alerts
- Sentinel incidents did not trigger

## Resolution Steps

1. Navigated to Subscription → Diagnostic Settings
2. Created new diagnostic setting
3. Enabled:
   - Administrative
   - Security
   - Policy
4. Sent logs to Log Analytics workspace
5. Verified ingestion using:

```kusto
AzureActivity
| sort by TimeGenerated desc
| take 10

## Validation

Logs began appearing within 2–3 minutes.
Detection rule successfully triggered afterward.

## Key Takeaway

Log routing is foundational in SIEM engineering.
Detection rules are useless without telemetry.
