from click.testing import CliRunner

from {{cookiecutter.repo_name}} import cli
from {{cookiecutter.repo_name}}.{{cookiecutter.repo_name}} import fib


def test_fib() -> None:
    assert fib(0) == 0
    assert fib(1) == 1
    assert fib(2) == 1
    assert fib(3) == 2
    assert fib(4) == 3
    assert fib(5) == 5
    assert fib(10) == 55


def test_cli() -> None:
    runner = CliRunner()
    result = runner.invoke(cli.main)
    assert result.exit_code == 0
