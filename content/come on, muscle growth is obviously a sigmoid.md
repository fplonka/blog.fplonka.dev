---
date: 2025-04-27
draft:
---
Fitness people often talk about beginner gains, where you start training and gain muscle quickly. Then after you train for a while the gains slow down. I think the implied graph of total muscle mass gained over time is something like "linear at the beginning then flattening after a year or two". This feels obviously wrong to me!

In particular, this feels like the sort of thing which should really be sigmoidal: slow at the beginning, then fast in the middle, then slow at the end:

![](images/file-20250427175903507.png)

In nature a sigmoid pops up when you have self-amplifying growth but also a throttle proportional to the size of the system. So for example in a pandemic, in the beginning the growth is exponential: more people get infected, so more people can spread the infection, and so on. But then eventually the growth slows down because so many people are already infected that there's not that many people left to infect. So the plot of infected people over time would look like a sigmoid. 

Or in growth of a rabbit population: rabbits breed exponentially until food, space, and predators choke expansion. Note that in the sigmoid plot, the fastest rate of growth occurs exactly in the middle. At the beginning growth is exponential, but the population is smaller so growing the population by 1% isn't a huge increase. And then at the end the population is large and a 1% increase would be a big deal, but the throttles mean you don't get a 1% increase, you get a slower-than-exponential 0.5% increase or whatever. Contrast this with perpetual exponential growth (the rate of growth keeps increasing) or the "linear then flattening" growth I mentioned at the beginning (rate of growth highest at the start).

And muscle growth really feels like it should be the same sort of thing. If you start off very lanky and weak, then early growth will be slow. The fact that you have little muscle makes it harder to gain muscle - your muscles can get a signal to grow by 1%, but this won't be a huge increase. Then you have some exponential progress, until you hit limits which cause growth to plateau (LLM suggests: satellite cell pool exhaustion, diffusion limits inside cells, systemic nutrient/hormone bottlenecks, myostatin and growth inhibition).

Is this true? I struggle to find studies which mention sigmoidal growth in the context of hypertrophy (one which does is [here](https://www.researchgate.net/figure/Schematic-representation-of-the-time-course-of-true-muscle-hypertrophy-ie_fig1_322092302) but the plot is a schematic, not based on empirical data). A query with OpenAI's Deep Research suggests that the growth curve is linear-and-then-plateauing and not sigmoidal. But come on! I choose to trust my priors here. I attribute the fact that people don't really talk about this to the facts that fitness nerds aren't technical enough and that hypertrophy researchers aren't competent enough. Also, if studies start with people who already have some moderate amount of muscle mass (i.e. they start in the middle of the sigmoid), then they will exactly find linear-then-plateauing growth, nicely compatible with the sigmoidal model.

If this is true then there are some obvious practical implications. First of all for the motivation of weak trainees - if your gains are slow that's fine, they'll speed up, just keep at it. And potentially for bulking efficiently? I expect a calorie surplus is most important in the period where you're gaining the fastest, and that maybe if you eat a lot when you're still in the early days you'll just get fat.