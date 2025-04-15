alias production_login="aws sso login --profile=production_console"
alias preproduction_login="aws sso login --profile=preproduction_console"
alias demo_login="aws sso login --profile=demo_console"

alias audit_production_console="aws ssm start-session --profile=production_console --target \$(aws ec2 describe-instances --profile=production_console --filters 'Name=tag:Name,Values=production-blue/k8s-console' 'Name=instance-state-name,Values=running' | grep 'InstanceId' | awk -F '\"' '{ print \$4 }' | tail -n 1)"
alias audit_preproduction_console="aws ssm start-session --profile=preproduction_console --target \$(aws ec2 describe-instances --profile=preproduction_console --filters 'Name=tag:Name,Values=preproduction-blue/k8s-console' 'Name=instance-state-name,Values=running' | grep 'InstanceId' | awk -F '"' '{ print $4 }' | tail -n 1)"
alias audit_demo_console="aws ssm start-session --profile=demo_console --target \$(aws ec2 describe-instances --profile=demo_console --filters 'Name=tag:Name,Values=demo-green/k8s-console' 'Name=instance-state-name,Values=running' | grep 'InstanceId' | awk -F '"' '{ print $4 }' | tail -n 1)"

alias preproduction_console="instance_id=\$(aws ec2 describe-instances --profile preproduction --filters 'Name=tag:Name,Values=preproduction-blue/k8s-console' --query 'Reservations[].Instances[].InstanceId' --output text); aws ssm start-session --profile=preproduction --target \$instance_id"
alias demo_console="instance_id=\$(aws ec2 describe-instances --profile demo --filters 'Name=tag:Name,Values=demo-green/k8s-console' --query 'Reservations[].Instances[].InstanceId' --output text); aws ssm start-session --profile=demo --target \$instance_id"
alias production_console="instance_id=\$(aws ec2 describe-instances --profile production --filters 'Name=tag:Name,Values=production-blue/k8s-console' --query 'Reservations[].Instances[].InstanceId' --output text); aws ssm start-session --profile=production --target \$instance_id"
