//network*
//required variable(s)

variable "name" {
  description = "The name of the network being created"
  type        = string
}

//optional variables

variable "description" {
  description = "The resource must be recreated to modify this field."
  type        = string
}
variable "auto_create_subnetworks" {
  description = "When set to true, the network is created in 'auto subnet mode' and it will create a subnet for each region automatically across the 10.128.0.0/9 address range. When set to false, the network is created in 'custom subnet mode' so the user can explicitly connect subnetwork resources."
  type        =  bool
}

variable "routing_mode" {
  description = "The network routing mode (default 'GLOBAL')"
  type        = string
}
variable "mtu" {
  description = "The network MTU. Must be a value between 1460 and 1500 inclusive. If set to 0 (meaning MTU is unset), the network will default to 1460 automatically."
  type        = number
}
variable "project" {
  description = "The ID of the project where this VPC will be created"
  type        = string
}

//subnet
//required variables

variable "ip_cidr_range" {
    description = "The range of internal addresses that are owned by this subnetwork"
    type = string
}
variable "subnet_name" {
    description = "The name of the resource, provided by the client when initially creating the resource"
    type = string
}
variable "network" {
    description = "The network this subnet belongs to"
    type = string
}
variable "range_name" {
    description = "The name associated with this subnetwork secondary range, used when adding an alias IP range to a VM instance"
    type = string
}
variable "secondary_ip_cidr_range" {
    description = "The range of IP addresses belonging to this subnetwork secondary range"
    type = string
}

//optional variables
variable "subnet_description" {
    description = "An optional description of this resource"
    type = string
}
variable "purpose" {
    description = "The purpose of the resource"
    type = string
}
variable "role" {
    description = "The role of subnetwork"
    type = string
}


variable "aggregation_interval" {
    description = "The role of subnetwork"
    type = string
}
variable "flow_sampling" {
    description = "Can only be specified if VPC flow logging for this subnetwork is enabled"
    type = number
}
variable "metadata" {
    description = "Can only be specified if VPC flow logging for this subnetwork is enabled"
    type = string
}
variable "metadata_fields" {
    description = "List of metadata fields that should be added to reported logs"
    type = set(string)

}
variable "filter_exp" {
    description = "Exp  ort filter used to define which VPC flow logs should be logged, as as CEL expression"
    type = bool
}
variable "private_ip_google_access" {
    description = "The private IPv6 google access type for the VMs in this subnet"
    type = bool
}
variable "region" {
    description = "The GCP region for this subnetwork"
    type = string
}
variable "stack_type" {
    description = "The stack type for this subnet to identify whether the IPv6 feature is enabled or not"
    type = string
}
variable "ipv6_access_type" {
    description = "The access type of IPv6 address this subnet holds"
    type = string
}
variable "private_ipv6_google_access" {
    description = "The private IPv6 google access type for the VMs in this subnet."
    type = bool
}