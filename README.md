# Todd & Mo


Problem:

Twitter API?

We want to interact with the twitter API:

* [X] how do we do that?
* look at the twitter gem?
  * [X] how do we find it?
  * [X] how do we set it up?
  * [X] how do we start playing around with it?
* Collect user info and how would we model that day?


CLI:
* class that we can call from a ruby script.

```yaml
~/.tweetclubrc.erb
profiles:
  default: "personal"
  personal:
    consumer_key: <%= ENV["TMP_CONSUMER_KEY"] %>
    consumer_secret:     = "YOUR_CONSUMER_SECRET"
    access_token        = "YOUR_ACCESS_TOKEN"
    access_token_secret = "YOUR_ACCESS_SECRET"
  work:
    consumer_key: "YOUR_CONSUMER_KEY"
    consumer_secret: "YOUR_CONSUMER_SECRET"
    access_token: "YOUR_ACCESS_TOKEN"
    access_token_secret: "YOUR_ACCESS_SECRET"
```

```bash
$ tweet-club --profile personal
$ tweet-club
```


```bash
------------------------------
| @tenderlove ....            |
|                             |
|                             |
|                             |
------------------------------
| $ /stream "#rubyconf"       |
------------------------------
```
