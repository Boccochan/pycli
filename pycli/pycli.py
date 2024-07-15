import sys

import click


@click.command()
@click.option("--name", default="world", help="Name to greet")
def main(name: str) -> None:
    """Simple program that greets NAME."""
    click.echo(f"Hi, {name}!")
    argv = sys.argv
    click.echo(argv)


if __name__ == "__main__":
    main()
