workflow "GitHubWorkflow" {
  on = "EVENT"
  resolves = "Build"
}

action "Build" {
  needs = "Lint"
  uses = "docker://alpine"
  runs = "echo Build"
}

action "Lint" {
  uses = "docker://alpine"
  runs = "echo Lint"
}
