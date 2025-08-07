#Looker Dashboard – AWS Cost And Usage Report
---

## Dashboard Sections

### 1. Total Cost by Department ###
- **Chart Type:** Pie or horizontal bar chart
- **Fields:** 
  - Dimension: `allocated_department`
  - Measure: `total_cost`
- **Purpose:** Understand department-level cost

---

### 2. Total Cost by Service Type ###
- **Chart Type:** Stacked bar chart
- **Fields:**
  - Dimension: `usage_type`
  - Measure: `total_cost`
- **Filter Options:** Department, Month
- **Purpose:** Service level cost visualization

---

### 3. Optimization Insights ###
- **Chart Type:** Table
- **Fields:**
  - Dimension: `resource_id`, `usage_type`, `region`, `allocated_department`
  - Measures: `total_cost`, `total_usage`, `average_cost_per_unit`
  - Flag: `underutilized`
- **Filter:** Show only underutilized = yes
- **Purpose:** Identify underutilized resources

---

### 4. Time Series – Cost Over Time ###
- **Chart Type:** Line graph
- **Fields:**
  - Dimension Group: `usage_date_month`
  - Measure: `total_cost`
- **Filter Options:** Department, Service, Region
- **Purpose:** Analyze trends in spending over time

---

### 5. Filters ###
- **Global Filters:**
  - Billing Date (range)
  - Usage Type
  - Region
  - Department
- **Purpose:** Enable drilldown and focused analysis

---