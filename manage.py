import click
import subprocess


@click.command()
@click.option('-n', '--name')
def startapp(name):
    click.echo("make vim app {0}".format(name))
    cmd = "touch src/{0}.py plugin/{0}.vim autoload/{0}.vim doc/{0}.txt".format(name)
    subprocess.call(cmd, shell=True)


def main():
    startapp()


if __name__ == "__main__":
    main()
