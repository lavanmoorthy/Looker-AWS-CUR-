# AWS Cost Analysis and Optimization – Looker Assignment

This repository contains a solution to the Looker assignment based on AWS Cost and Usage Report (CUR) data.

## Contents

- `data/aws_cur_sample_data.csv` — Sample CUR-like dataset
- `models/aws_cost_analysis.model.lkml` — Looker model file
- `views/aws_cost_usage.view.lkml` — Looker view with dimensions and measures
- `refinements/aws_cost_usage.refinement.lkml" - Refined view with additional dimensions
- `dashboards/aws_cost_dashboard.mock.md` — Mock Looker dashboard layout
- `README.md` — Explanation of logic and structure

## Objective

To enable cost analysis, allocation, and optimization insights from AWS CUR data via Looker modeling and dashboards.

## Features

- Dimensions: Usage type, resource ID, region, tags, timeframes
- Measures: Total cost, usage, cost per unit
- PDT: Pre-aggregated cost by department and usage type
- Cost Allocation: Based on tags and fallback logic
- Optimization Insight: Identifies high-cost, low-usage resources
- Dashboard: Interactive filters + visualizations by cost center and service

## Notes

- This assignment simulates CUR data. The CSV can be uploaded to BigQuery or another SQL engine Looker supports.
- No real Looker environment is required to review the logic or structure.

## Assumptions

- All CUR fields are available as flat columns.
- Untagged resources are allocated based on usage_type mapping.
- Optimization is demonstrated via cost per usage unit metric.

