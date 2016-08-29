# Blackjack Lab: Part 2

![NameOfPerson](http://i.imgur.com/1jG7JnQ.jpg?1)  

> Your assumptions are your windows on the world. Scrub them off every once in a while, or the light won't come in. -[Isaac Asimov](https://en.wikipedia.org/wiki/Isaac_Asimov)
 
## Overview

In this lab, you will finish the UI for the simple Blackjack simulation you wrote in the previous lab.

## Introduction

The UI will have a button the user can press to run a simulation. Once the game simulation has been completed, the UI should be updated to show the winner of the blackjack game.

The UI will look like this:

![Blackjack UI](https://s3.amazonaws.com/learn-verified/blackjack-ui.png)

Open `BlackJack2.xcworkspace` to get started.

## Directions

The completed source code from the previous lab has been copied to this project, so you won't need to re-implement that. A `playGame()` method has been added to the `ViewController` class, too. Other than that, the implementation of this app is up to you.

### User Interface

The first thing to implement is the user interface. Open up `Main.storyboard` in Interface Builder to get started. A view controller has already been added to the storyboard.

1. Drag a new text label onto the storyboard. Change the font to Avenir Next Bold, size 42.
2. Drag another text label onto the view controller. Put this label below the label you just created. Change the font to Avenir Next Heavy, size 48. Change the text so simply be a question mark (**?**).
3. Add a button to the view controller. Place it a bit below the second label. Change the text in the button to say **Play Game**.
4. You need to create an IB outlet for the second text label, which will let the user know whether the house or player won the simulated game of Blackjack. Open up `ViewController.swift` in an assistant editor. <kbd>Control</kbd>-drag an IB outlet from the second text label to the `ViewController` class. Call it `winnerLabel`.
5. You also need to create an IB action for the button. <kbd>Control</kbd>-drag an IB action from the **Play Game** button to the `ViewController` class. Name the IB action `playGamePressed`.

### `ViewController`

Now it's time to implement the code to run the simulation in the `ViewController` class. Open `ViewController.swift` in Xcode's code editor. Some of `ViewController` has been implemented; in particular, a method called `playGame()` that will run one game simulation and return the winner of the game.

Here are the parts of `ViewController` that you need to finish to run the game:

1. Add a property of type `Dealer` called `dealer`. It should be assigned a `Dealer` instance.
2. Implement `playGamePressed(_:)`. In this method, you should do the following:
	1. Create a new `Dealer` and assign it to the `dealer` property.
	2. Call `playGame()` and get the winner of the simulated game.
	3. Change `winnerLabel`'s text to be the name of the winner.

## Finishing Up

Your app should now work! Build and run the project. In the simulator, press **Play Game** to run a game simulation and see the winner!

<a href='https://learn.co/lessons/ClassesBlackjack2' data-visibility='hidden'>View this lesson on Learn.co</a>
