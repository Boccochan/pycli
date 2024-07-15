import typer

app = typer.Typer()


def cli(name: str, lastname: str) -> None:
    typer.echo(f"Hello {name} {lastname}")


def main() -> None:
    typer.run(cli)


if __name__ == "__main__":
    main()
