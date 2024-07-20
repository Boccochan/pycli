import typer
from rich import print

app = typer.Typer()


def cli(name: str, lastname: str) -> None:
    print(f"name {name}, lastname {lastname}")


def main() -> None:
    typer.run(cli)


if __name__ == "__main__":
    main()
