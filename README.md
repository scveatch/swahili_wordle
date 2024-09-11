# Wordle Swahili Edition
Welcome to Wordle Swahili! Players have 6 attempts to guess a hidden five-letter Swahili word.
While most of the names, places, and English has been cleaned from this corpus, I'd love any
feedback about anything that might have slipped by me. 

Play this verion [here](https://scveatch.github.io/swahili_wordle/)!

## Extras

This game comes with two extra modes: Hard and Ultra-Hard. 

**Hard Mode** - Any hints revealed in previous guesses must be used in subsequent guesses. 

**Ultra-Hard Mode** - Hard mode is enabled, AND:
* You are not able to reuse letters from previous guesses that are not included in the word.
* You are not allowed to place yellow letters in the same slot. 

## Installation
The corpus used for this project comes from the [Leipzig Corpora Collection / Wortschatz Leipzig](https://wortschatz.uni-leipzig.de/en). 
A word file from the 2021 distribution of the Swahili corpus is used and provided in this repository
under swa_wikipedia_2021_10k. Others are available from Leipzig. 

If you'd like to modify or extend this corpus, you can run the two bash scripts provided in this file. 
Be sure to clone the repository as follows:

```bash
git clone https://github.com/scveatch/swahili_wordle.git
cd swahili_wordle
```

Running `extract_words.sh` over the corpus will output five_letter_words.txt -- you should clean this file for 
English, names, places, etc. 

```bash
./extract_words.sh corpus_file_here
```

Running `format.sh` will reshape the data into a format ready for use in the project. This can be copied and pasted 
or otherwise provided to `index.html` as `WordsGuessable` and/or `wordsAcceptedAsInput`. 

```bash
./format.sh clean_five_letter_words_here
```
