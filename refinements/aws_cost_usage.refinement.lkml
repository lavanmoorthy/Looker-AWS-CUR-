view: aws_cost_usage {
  refine: {
    
    ### Refined view with additional dimensions ###

    dimension: customer_id {
      type: string
      sql: ${TABLE}.customer_id ;;
      label: "Customer ID"
    }

    dimension: currency {
      type: string
      sql: ${TABLE}.currency ;;
      label: "Currency"
    }

    #Access Grant
    access_grant: customer_access_grant {
      user_attribute: customer_access
      allowed_values: ["customer_a", "customer_b"]
    }

    #Access Filter (limits rows based on customer_id value)
    access_filter: customer_id {
      access_grant: customer_access_grant
      user_attribute: customer_access
    }
  }
}
