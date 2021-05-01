from distutils.core import setup
from setuptools import find_packages
import os

# Optional project description in README.md:
current_directory = os.path.dirname(os.path.abspath(__file__))

try:
    with open(os.path.join(current_directory, "README.md"), encoding="utf-8") as f:
        long_description = f.read()

except Exception:

    long_description = ""

setup(
    # Project name:
    name="scotch-content-recommender",
    # Packages to include in the distribution:
    packages=find_packages("", ""),
    # Project version number:
    version="",
    # List a license for the project, eg. MIT License
    license="MIT",
    # Short description of your library:
    description="",
    # Long description of your library:
    long_description=long_description,
    long_description_content_type="text/markdown",
    # Your name:
    author="Stephen Burke",
    # Your email address:
    author_email="burke.stephenpaul@gmail.com",
    # Link to your github repository or website:
    url="https://github.com/StephenBurke/scotch-content-recommender",
    # Download Link from where the project can be downloaded from:
    download_url="",
    # List of keywords:
    keywords=["Python"],
    # List project dependencies:
    install_requires=[
        "pandas == 1.2.3",
        "scikit-learn == 0.24.1",
        "bs4 == 0.0.1",
        "PySimpleGui == 4.39.1",
        "tk == 0.1.0",
        "lxml == 4.6.3",
        "requests == 2.25.1",
        "numpy == 1.20.1",
        "python-dateutil == 2.8.1",
        "pytz == 2021.1",
        "wheel",
        "bdist_wheel",
    ],
    # List dependency links
    # dependency_links=["https://github.com/python/cpython/blob/3.9/Lib/pickle.py"],
    # List classifiers
    classifiers=[],
)