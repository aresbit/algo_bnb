"""
entry.py

Example entry functions.
"""


def cross_smas(data, smas=None, emas=None):
    """
    Checks if it's an entry point based on crossed smas.
    """
    if smas is None:
        smas = [5, 10]
    if emas is None:
        emas = [10]
    if (
        data.Last.rolling(smas[0]).mean().iloc[-1]
        > data.Last.rolling(smas[1]).mean().iloc[-1]
        and data.Last.rolling(smas[0]).mean().iloc[-2]
        < data.Last.rolling(smas[1]).mean().iloc[-2]
    ):
        return True

    return False
