

data "consul_nodes" "read-eu-west-1-nodes" {
  query_options {
    # Optional parameter: implicitly uses the current datacenter of the agent
    datacenter = "eu-west-1"
  }
}


data "consul_service" "read-consul-dc1" {
  query_options {
    # Optional parameter: implicitly uses the current datacenter of the agent
    datacenter = "dc1"
  }

  name = "consul"
}


output "nodes" {
  value = "${data.consul_nodes.read-eu-west-1-nodes.node_names}"
}

output "consul_service" {
	value = "${data.consul_service.read-consul-dc1.name}"
}