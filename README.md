# SO-101 Imitation Learning

Proyecto colaborativo para aprender imitation learning con dos brazos SO-101 y LeRobot.

## Entorno

- LeRobot 0.6.1
- PyTorch con CUDA
- GPU NVIDIA RTX 4070 Laptop GPU
- Docker Compose

## Inicio rápido

Desde `Lerobot_project/`:

```bash
make build   # construir la imagen
make shell   # entrar al contenedor (bash)
make down    # parar el contenedor
```

Equivalente sin Make: `docker compose build` / `docker compose run --rm lerobot bash`.
