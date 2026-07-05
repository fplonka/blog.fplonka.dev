---
date: 2026-05-24
draft: false
---
Like many others, I get annoyed whenever I read LLM generated text. The moment I notice the em dashes and short paragraphs and "not just X, it's Y" I am convinced that I know everything there is to know about the text and stop reading. And I think this actually makes perfect sense.

Think about it this way: an LLM output is a function of the prompt and the model weights. The prompt is usually quite short. But the weights are vast, and contain an immense amount of information.

The first time seeing an LLM text, one would probably find it engaging, maybe even very engaging. But as you read more LLM texts and interact with them yourself, you get a feel for the bit which is constant across the outputs, namely the model weights. It's as if you've seen hundreds of samples of the form (p1, W) -> t1, (p2, W) -> t2, and so on, and start getting a feel for the hidden W. Eventually you read a text, and you're barely getting new information from it: you learn a small little new bit about W, but mostly you're just getting what's contained in the prompt pn -- and the prompt was probably quite short, so you're reading a whole article that feel like it only contains one paragraph of actual content. Frustrating! 

That's my claim, that LLM texts are annoying because they're too predictable after you've seen many of them, that they're blowing up a small prompt pn into a long text tn without (for you, an expert on the hidden structure of W) adding much information. In particular I think the specific stylistic quirks of current LLMs aren't that important to why we find LLM texts annoying. If all models wrote like Hemingway we'd start going crazy reading the hundredth Hemingway-LLM article.

Now, is this actually true? I think there's something to this idea, but some caveats are in order.

First, there's probably something about the RL post-training process which beats the helpful assistant personality into the model that particularly makes the model outputs "all the same" such that we get bored of them, despite the vastness of the weights. "Entropy collapse" is the term of the art here.

Second, this frame suggests we can get a less boring/frustrating model output if we give it a big prompt full of interesting information. But this isn't exactly the case, as the output will still get "flattened" into the obnoxious LLM style. I expect this too is downstream of RLVR entropy collapse. Another consideration is that for frontier models, the weights are probably ~10^6 times bigger than even a 1M context window, so we can expect the "weights to dominate", in some sense. I'm being very handwavy about all this, I would love to see this complaint about LLM output phrased more formally and information theoretically.

Third, I don't think this is the only reason people find LLM outputs annoying. I think an important other one, at least for me, is the way in which they violate the social contract. For the first time ever, a reader can find themselves putting more effort into reading the text than the author put into producing it, and so unmarked LLM output is kind of "free riding" on our expectations of research and effort in polished-looking text.