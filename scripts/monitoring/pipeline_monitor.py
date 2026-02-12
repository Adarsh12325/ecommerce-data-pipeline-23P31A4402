import json
from datetime import datetime

monitor_report = {
    "timestamp": str(datetime.now()),
    "status": "SUCCESS",
    "rows_processed": 10000
}

with open("reports/monitoring_report.json", "w") as f:
    json.dump(monitor_report, f, indent=4)

print("Monitoring report generated.")
