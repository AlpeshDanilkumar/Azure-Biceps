# Azure Bicep Template Repo

This repository contains Azure Bicep templates for deploying infrastructure as code (IaC) on the Microsoft Azure cloud platform. Bicep is a domain-specific language (DSL) and a declarative syntax used to describe and deploy Azure resources.

## What is Bicep?

Bicep is an open-source project from Microsoft that simplifies the authoring and deployment of Azure Resource Manager (ARM) templates. It is designed to be a more concise and readable alternative to the traditional JSON syntax used in ARM templates. Bicep provides a higher-level abstraction, allowing you to write infrastructure code using a familiar programming language-like syntax.

Bicep templates are compiled into ARM templates, which are then deployed to Azure using the Azure Resource Manager API. Bicep offers several advantages over traditional ARM templates, including:

- **Simplicity**: Bicep's syntax is more concise and easier to read and understand compared to JSON, making it more developer-friendly.
- **Modularity**: Bicep templates support modules, allowing you to encapsulate and reuse infrastructure components.
- **Type safety**: Bicep enforces type safety and provides compile-time validation, reducing the risk of errors during deployment.
- **Better tooling**: Bicep integrates with popular code editors and provides features like IntelliSense, auto-completion, and error checking.
- **Seamless integration**: Bicep integrates seamlessly with existing ARM templates, enabling a gradual migration from JSON to Bicep.


## Getting Started

To get started with Bicep and this repository, follow these steps:

1. **Install Bicep CLI**: Install the Bicep CLI on your local machine. Instructions can be found in the [Bicep documentation](https://docs.microsoft.com/azure/azure-resource-manager/bicep/install).
2. **Clone the repository**: Clone this repository to your local machine using the Git command: git clone https://github.com/AlpeshDanilkumar/Azure-Biceps.git.
3. **Compile the templates**: Use the Bicep CLI to compile the Bicep templates into ARM templates. Run the command `bicep build ./templates/template.bicep` to generate the corresponding ARM template.
4. **Deploy the infrastructure**: Use the Azure CLI or Azure Portal to deploy the compiled ARM template to your Azure subscription. Follow the deployment instructions provided in the template documentation.

## Additional Resources

- [Bicep documentation](https://docs.microsoft.com/azure/
