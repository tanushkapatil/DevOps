"""List the Git/GitHub/Pipeline plugins installed on the local Jenkins."""
import json
import urllib.request

URL = ("http://127.0.0.1:8090/pluginManager/api/json"
       "?depth=1&tree=plugins[shortName,longName,version,active]")
WANT = ["git", "git-client", "github", "github-api",
        "workflow-aggregator", "workflow-job", "pipeline-stage-view"]

plugins = json.load(urllib.request.urlopen(URL))["plugins"]
rows = sorted((p for p in plugins if p["shortName"] in WANT),
              key=lambda p: WANT.index(p["shortName"]))
print(f"{'PLUGIN':<21}{'NAME':<30}{'VERSION':<24}ACTIVE")
for p in rows:
    print(f"{p['shortName']:<21}{p['longName'][:28]:<30}{p['version'][:22]:<24}{p['active']}")
