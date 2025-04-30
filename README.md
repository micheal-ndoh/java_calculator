[![Docker Build and Push](https://github.com/micheal-ndoh/java_calculator/actions/workflows/docker.yml/badge.svg)](https://github.com/micheal-ndoh/java_calculator/actions/workflows/docker.yml)

# Java Calculator

This is a simple Java-based calculator application that supports basic arithmetic operations (`+`, `-`, `*`, `/`) and factorial (`!`). The application is containerized using Docker and can run on different Java versions.

## Prerequisites

- Docker installed on your system.

## Pulling the Docker Images

The calculator application is available as pre-built Docker images for different Java versions. You can pull the images from GitHub Container Registry (GHCR) using the following commands:

- **Java 8**:

  ```bash
  docker pull ghcr.io/micheal-ndoh/java_calculator:slim-8
  ```

- **Java 17**:

  ```bash
  docker pull ghcr.io/micheal-ndoh/java_calculator:slim-17
  ```

- **Java 21**:

  ```bash
  docker pull ghcr.io/micheal-ndoh/java_calculator:slim-21
  ```

## Running the Docker Image

Once you have pulled the Docker image, you can run it using the following command:

```bash
# Run the Docker image with Java 8
docker run -it ghcr.io/micheal-ndoh/java_calculator:slim-8
```

```bash
# Run the Docker image with Java 17
docker run -it ghcr.io/micheal-ndoh/java_calculator:slim-17
```

```bash
# Run the Docker image with Java 21
docker run -it ghcr.io/micheal-ndoh/java_calculator:slim-21
```

### Using the Calculator

Once the container is running, you will be prompted to enter a calculation. Use the following format:

>For addition: 5 + 3
>For subtraction: 10 - 4
>For multiplication: 6 * 7
>For division: 8 / 2
>For factorial: 5!;

The application will return the result of the calculation.

### Notes

Ensure that you input valid calculations. For example, division by zero will display an error message.
The application trims spaces from the input, so you can enter calculations with or without spaces (e.g., 5+3 or 5 + 3).
