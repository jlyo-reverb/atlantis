{
  "repos":
    (env.ATLANTIS_REPO_WHITELIST | split(",")) | map({
      "allow_custom_workflows": true,
      "allowed_overrides": ["workflow"],
      "apply_requirements": [
        "mergeable"
      ],
      "id": .,
      "workflow": "custom"
    }
  ),
  "workflows": {
    "custom": {}
  }
}
