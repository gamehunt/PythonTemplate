import pytest

from main import div


def test_div():
    assert div(1, 1) == 1


def test_div_negative():
    assert div(-1, 1) == -1


def test_div_error():
    with pytest.raises(ZeroDivisionError):
        div(0, 0)
