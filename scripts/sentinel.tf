import "tfplan"

allowed_instance_types = [
  "t3.micro",
  "Standard_B1s"
]

main = rule {
  all tfplan.resources as _, instances {
    all instances as index, r {
      r.applied.instance_type in allowed_instance_types
    }
  }
}
