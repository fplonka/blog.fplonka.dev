---
date: 2026-11-22
draft: true
---
War Chest is a two-player strategy game, a bit like chess but with varying units and an element of randomness and hidden information. You play on this hexagonal board:

[image]

In the base game there are 16 units, and each game you and your opponent command an army of four of them. You hold up to three coins of your units, and when it's your turn you can use a unit's coin: you can put this unit on the board if it's not there already, or if it is you can then move that unit or attack with it or control a location. Or you can use the coin to "recruit" some other unit, because there's a bag-building element: once you're out of coins you draw three more from the bag, and recruiting lets you influence what units you'll have available to play.

It's a lot of fun! The different units have different powers, for example the Archer can attack from 2 tiles but not from 1 tile, or the Cavalry can move then attack in one turn, etc. There's a lot of strategic depth but the randomness and draft variety makes it a lot less "brutal" than chess. And being able to blame a loss on bad luck makes War Chest a lot kinder to the ego.

But, there was one problem: my fiancee kept beating me. So, naturally, I decided to deploy overwhelming force agains the problem, to terminate it with extreme prejudice -- I would create a superhuman War Chest bot, and then I would use the bot to learn how to beat my fiancee.

This post details some observations and misadventures I had along the way.
## Making the bot

Board game engines are a well researched problem, and in particular chess bots have had a lot of smart people thinking about them. One effective approach to training a chess bot is something like this:

- you have a bot with a neural net that rates how good a position is 
- you play the bot against itself, using some search plus the net to pick a move
- you use the result of the bot self play game as a data point to improve the net ("oh, the net thought this position was good but this side later actually lost")
- you do this millions and millions of times

This works great, but, unlike chess, War Chest has hidden information, which makes optimal play actually involve some *randomness*, just like how in poker it makes sense to occasionally bluff. In particular, if you don't use randomness, your moves will reveal a lot of info about your hand, which your opponent can use to beat you. So we have to use a more complicated technique than what chess engines do, that somehow takes this into account.

Thankfully, this too is a well researched topic, and in fact there exists an entire zoo of techniques that can handle games with randomness and hidden info: CFR, CFR+, LCFR, DCFR, PCFR+, MCCFR, VR-MCCFR, CFR-D, Lazy-CFR, Deep CFR, SD-CFR, DREAM, ESCHER, ACH, RPG, NeuRD, Hedge, XFP, NFSP, PSRO, P2SRO, SP-PSRO, α-Rank, R-NaD, MMD, ReBeL, GT-CFR, SoG, PIMC, IS-MCTS, Smooth UCT, OOS, AlphaZe**, KLUSS, LBS, SPARTA, DMC… These differ in aspects like theoretical soundness, computational cost, and empirical effectiveness, and it was not clear which one will produce the strongest War Chest bot. 

In short, I started with ReBeL, which worked, and then spent a lot of time on SoG, which is a very complicated and "heavy weight" method that I liked because of it's smarter search algorithm which preferentially explores promising lines, and then tried IS-MCTS, which is a simpler, dumber and faster method that is not even theoretically entirely sound, and this turned out to produce the best bot. This unsound method performing the best suggests that bluffing and inferring hidden information are actually not that important in War Chest! And that at


There's a lot to be said about the details but that's the general idea, and this works great!

War Chest is a bit harder than chess to solve, however, because there's the aspect of hidden info -- and so optimal play actually involves some *randomness*, similarly to how in poker it makes sense to occasionally bluff. 