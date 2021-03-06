<#
.SYNOPSIS

.EXAMPLE


#>
param(
[string]$ELBName,
[string[]]$instance_id_list
)

foreach( $instance_id in $instance_id_list )
{
    Remove-ELBInstanceFromLoadBalancer -LoadBalancerName $ELBName -Instance $instance_id -Force
    Register-ELBInstanceWithLoadBalancer -LoadBalancerName $ELBName -Instance $instance_id
}
# i-697dc2b5,i-3ec271f0,i-7ea516b0,i-7ca516b2,i-7da516b3,i-d078c70c,i-d178c70d,i-d278c70e,i-d378c70f,i-ee78c732

