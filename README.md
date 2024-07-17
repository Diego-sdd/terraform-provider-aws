# Projeto Terraform para Implantação de Infraestrutura na AWS

Este projeto utiliza o Terraform para provisionar uma infraestrutura na AWS, incluindo uma VPC com subnets públicas e privadas, instância EC2 e um banco de dados PostgreSQL. A infraestrutura é definida como código para facilitar a replicação e o gerenciamento.

## Recursos Principais

- **VPC e Subnets:** Configuração de uma VPC com subnets públicas e privadas.
- **EC2 Instance:** Provisionamento de uma instância EC2 utilizando uma AMI específica e associada à subnet pública da VPC.
- **PostgreSQL:** Criação de um banco de dados PostgreSQL com configurações personalizadas, integrado à VPC e com regras de segurança definidas.

## Configuração

- **Provider AWS:** Configuração da região e perfil AWS a serem utilizados.
- **Módulos Terraform:** Utilização de módulos locais para organizar e reutilizar código, facilitando a manutenção e escalabilidade do projeto.

## Como Utilizar

1. Clone este repositório.
2. Configure suas variáveis de ambiente e credenciais AWS conforme necessário.
3. Execute `terraform init` para inicializar o ambiente Terraform.
4. Execute `terraform workspace new dev` para criar o espaço de trabalho para desenvolvimento.
4. Execute `terraform apply` para aplicar as configurações e provisionar a infraestrutura na AWS.

**Observações:**
- Certifique-se de ter configurado o AWS CLI e o Terraform na sua máquina antes de executar os comandos.

Este projeto demonstra as práticas recomendadas para a implantação de infraestrutura na nuvem de forma automatizada e controlada através do Terraform.
