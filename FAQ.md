# Frequently Asked Questions

This is an FAQ for the class. If Dr.Herring, Dr.Trudgen, or the TAs receive the same question multiple times, they will post it along with an answer/solution here.

## 1. Git is rejecting my upload, saying "The remote contains work you do not have locally". What do I do?
  Before trying to push changes to a remote repository, make sure your local copy is up to date by executing `git pull`. If you and other member of your team have made changes to the same file, you'll have to manually decide which changes to keep. This is why [git branching](https://www.atlassian.com/git/tutorials/using-branches) is important for working smoothly on a collaborative software project.

## 2. I'm trying to use the pigpio_encoder library, and I'm getting the Error: cannot import name 'Rotary' from 'pigpio_encoder'

  This error is cause by Python's wonderful import system. To solve it, you should use the included `pigpio_encoder.py` file instead of importing it through your virtual environment. To do this set up the `lib` directory (which contains the `pigpio_encoder.py` file) in your group repository as a Python library by creating a empty file named `__init__.py` in the `lib` directory.

  Now, from the top-level of your repository, you can import the `Rotary` module as such:
  ```
  from lib.pigpio_encoder import Rotary
  ```

  If you want to import the library from a file in another directory, you'll need to append the Python Path with the top-level of your group repository.

  For instance, if your directory structure looks like this:

  ```
  Group_1/
    README.md
    lib/
      __init__.py
      pigpio_encoder.py
      rgb1602.py
    scripts/
      test.py
  ```
  And you would like to use the `pigpio_encoder.py` or `rgb1602.py` libraries in the `test.py` file, you'll need to add the following to the top of `test.py`, before trying to import anything else:
  
  ```python
  import sys
  sys.path.append("..")
  ```

  > Note: the `..` represents a relative file path, which points to the parent directory of the `scripts` directory, in this case `Group_1`. If you needed to go higher up to access your libraries, you would need to add an extra `.` for every directory level.