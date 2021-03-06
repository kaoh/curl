workflow "build" {
  resolves = ["GitHub Action for Maven & JDK 11"]
  on = "push"
}

workflow "pull request" {
  resolves = ["GitHub Action for Maven & JDK 11"]
  on = "pull_request"
}

action "GitHub Action for Maven & JDK 11" {
  uses = "xlui/action-maven-cli/jdk11@master"
  args = "test"
}
