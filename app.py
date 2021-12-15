import click


@click.command()
@click.option("--count", "-c", default=1, type=int, help="number of greetings")
def main(count):
    for _ in range(count):
        print("Hello World!")


if __name__ == "__main__":
    main()