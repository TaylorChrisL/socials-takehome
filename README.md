# README

* Take Home Assignment

```
bundle
rails s
```


command used for rpsec testing

```
bundle exec rake spec
```

* Also included is a txt file with a few of my thoughts as I was working on this

* Ruby Engineer 60 Minute Challenge
A client needs to know what is happening on the social networks. All of them. Right now. The three social networks the client is interested in are:
● https://takehome.io/twitter
● https://takehome.io/facebook ● https://takehome.io/instagram
Because these social networks are so webscale, they don't always respond predictably. The delay in their response almost appears like someone waited for a random integer of seconds before responding!
Also, sometimes they will respond with an error. This error will not be valid JSON. Life's hard sometimes.
The client needs to be able to run your thing, then issue the command:
curl localhost:3000
And get back a JSON response of the output from the three social networks in the format:
{ twitter: [tweets], facebook: [statuses], instagram: [photos] }
Order isn't important.
This should be a quick little task, but the client is paying us A Billion dollars for it so make sure your implementation is as robust as it is beautiful. In other words this submission should be representative of the code you would produce for a production, live 24x7 system, we suggest you include documentation, test coverage, robust error handling. You should also be thinking about how to make this code perform as fast as possible.
Have fun!
