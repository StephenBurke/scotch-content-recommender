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
        "pandas",
        "scikit-learn",
        "bs4",
        "PySimpleGui",
        "requests",
    ],
    # List dependency links
    # dependency_links=["https://github.com/python/cpython/blob/3.9/Lib/pickle.py"],
    # List classifiers
    classifiers=[],
)