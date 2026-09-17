# Copilot Instructions

## Shared Instructions

Shared Copilot instruction files are maintained centrally in the [.github](https://github.com/f2calv/.github) repository under `instructions/`, and are applied to every workspace from the VS Code user profile via `~/.copilot/instructions`. They are deliberately not copied into this repository, so a change there takes effect everywhere without a pull request here.

Everything below is specific to this repository.

## Repository Purpose

This repository publishes a single reusable Terraform child module that provisions an Azure public IP address for use by load balancers, gateways and ingress controllers.

## Address Churn

Destroying and recreating a public IP allocates a new address, which invalidates any DNS record pointing at it. Call this out in the root `README.md` so consumers plan the DNS change alongside the apply.
