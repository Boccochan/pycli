import sys

import click


@click.command()
@click.option("-v", "--verbose", is_flag=True)
@click.option("--name", default="world", help="Name to greet")
def main(verbose: int, name: str) -> None:
    """Simple program that greets NAME."""
    click.echo(f"Hi, {name} {verbose}!")
    argv = sys.argv
    click.echo(argv)


if __name__ == "__main__":
    main()
