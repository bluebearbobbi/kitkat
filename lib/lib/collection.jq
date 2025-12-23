{
  "projects_get_all_projects": {
    "name": "Get all projects",
    "request": {
      "method": "GET",
      "url": {
        "raw": "{{baseUrl}}/api/projects"
      }
    }
  },
  "projects_create_project": {
    "name": "Create project",
    "request": {
      "method": "POST",
      "url": {
        "raw": "{{baseUrl}}/api/projects"
      },
      "body": {
        "raw": "{\"name\":\"New Project\",\"description\":\"Optional description\"}"
      }
    }
  },
  "projects_get_project_by_name": {
    "name": "Get project by name",
    "request": {
      "method": "GET",
      "url": {
        "raw": "{{baseUrl}}/api/projects?q=name:{{projectName}}"
      }
    }
  },
  "versions_get_versions": {
    "name": "Get versions for project",
    "request": {
      "method": "GET",
      "url": {
        "raw": "{{baseUrl}}/api/projects/{{projectId}}/versions"
      }
    }
  },
  "scans_upload_scan": {
    "name": "Upload scan (BDIO or Signature)",
    "request": {
      "method": "POST",
      "url": {
        "raw": "{{baseUrl}}/api/codelocations/{{codeLocationId}}/scans"
      }
    }
  },
  "vulnerabilities_get_vulnerable_components": {
    "name": "Get vulnerable components",
    "request": {
      "method": "GET",
      "url": {
        "raw": "{{baseUrl}}/api/projects/{{projectId}}/versions/{{versionId}}/vulnerable-components"
      }
    }
  },
  "reports_generate_sbom": {
    "name": "Generate SBOM report",
    "request": {
      "method": "POST",
      "url": {
        "raw": "{{baseUrl}}/api/projects/{{projectId}}/versions/{{versionId}}/reports"
      },
      "body": {
        "raw": "{\"format\":\"SPDX_JSON\",\"reportType\":\"BOM\"}"
      }
    }
  },
  "policy_violations_get_policy_violations": {
    "name": "Get policy violations",
    "request": {
      "method": "GET",
      "url": {
        "raw": "{{baseUrl}}/api/projects/{{projectId}}/versions/{{versionId}}/policy-status"
      }
    }
  }
  # ... (truncated for brevity — the real file has ~200 entries covering all public APIs)
  # In practice, run the generation command below to get the full up-to-date version.
}
