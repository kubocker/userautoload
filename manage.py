import click
import subprocess

@click.command()
@click.option('-n', '--name')
def startapp(name):
    click.echo("make vim app {0}".format(name))
    cmd = "touch src/{0}.py {0}.vim".format(name)
    subprocess.call(cmd, shell=True)

def main():
    startapp()


if __name__ == '__main__':
    main()
