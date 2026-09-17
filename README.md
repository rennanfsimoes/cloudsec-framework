# CloudSec Framework — Zero-Trust & Cloud Security Baseline

> **Modular, Policy-as-Code (PaC) framework for automated cloud security auditing, CIS Benchmarks enforcement, and Zero-Trust architecture across AWS, Azure, and Google Cloud.**

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![OPA](https://img.shields.io/badge/Policy-Open_Policy_Agent-4C51BF.svg)](https://openpolicyagent.org)
[![Terraform](https://img.shields.io/badge/IaC-Terraform_1.6+-844FBA.svg)](https://terraform.io)
[![CIS](https://img.shields.io/badge/Compliance-CIS_Benchmark_v3.0-008080.svg)](https://cisecurity.org)

---

## 🛡️ Core Capabilities

- **Zero-Trust IAM Guardrails**: Least-privilege IAM policy generator and permission boundary validation.
- **Static Infrastructure Scanning**: Open Policy Agent (OPA) and Conftest rules for Terraform plans to catch security regressions pre-merge.
- **KMS & Secrets Management**: Automated key rotation patterns with HashiCorp Vault and AWS KMS.
- **Network Micro-segmentation**: Strict VPC, Security Group, and Kubernetes NetworkPolicy templates preventing lateral movement.

---

## 📁 Repository Structure

```
├── policies/
│   ├── opa/
│   │   ├── s3_encryption.rego
│   │   ├── iam_no_wildcards.rego
│   │   └── security_group_ingress.rego
│   └── conftest/
├── terraform/
│   ├── modules/
│   │   ├── secure_vpc/
│   │   ├── kms_cmk/
│   │   └── audit_trail_cloudtrail/
│   └── main.tf
├── .github/
│   └── workflows/
│       └── security-scan.yml
└── README.md
```

---

## ⚡ Quick Validation

```bash
# Run Policy-as-Code validation against Terraform plan
conftest test tfplan.json -p policies/opa/
```

---

## 📜 License
MIT License - Copyright (c) 2025-2026 Rennan Simões.
