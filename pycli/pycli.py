import click


@click.command()
@click.option("--name", default="world", help="Name to greet")
def main(name: str) -> None:
    """Simple program that greets NAME."""
    click.echo(f"Hello, {name}!")


if __name__ == "__main__":
    main()
