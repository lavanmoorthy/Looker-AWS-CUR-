connection: "connection_name"  #Looker DB connection name

include: "/views/aws_cost_usage.view.lkml"
include: "/refinements/aws_cost_usage.refinement.lkml"


explore: aws_cost_usage {
  label: "AWS Usage & Cost"
  description: "Explore AWS CUR data"
}

explore: customer_cost_analysis {
  from: aws_cost_usage
  label: "Customer Specific AWS Cost Explore"
  description: "Restricted view with access filtering"
  
  access_grant: customer_access_grant
}

