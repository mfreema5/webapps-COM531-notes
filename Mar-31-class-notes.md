# Class Notes &ndash; March 31


https://apps.twitter.com/



Page:

----

`https://apps.twitter.com/app/8140524`

**Application Settings**

*Your application's Consumer Key and Secret are used to authenticate requests to the Twitter Platform.*

| Details | . |
|---------|---|
| Access level |	Read-only (*modify app permissions*) |
| Consumer Key (API Key) | 	MqFOOFOOFOOFOOFOOFOOFOO3w6 (*manage keys and access tokens*) |
| Callback URL | 	http://mfreema5.github.io/wishadverts |
| Sign in with Twitter | 	Yes |
| App-only authentication | 	https://api.twitter.com/oauth2/token |
| Request token URL | 	https://api.twitter.com/oauth/request_token |
| Authorize URL | 	https://api.twitter.com/oauth/authorize |
| Access token URL | 	https://api.twitter.com/oauth/access_token |


| Keys and Access Tokens | .  |
|------------------------|---|
| Consumer Key (API Key) | 	MqFOOFOOFOOFOOFOOFOOFOO3w6 |
| Consumer Secret (API Secret) | 	ioFBQ2FOOFOOFOOFOOFOOFOOFOOFOOFOOFOOFOOFOOD1xyX |
| Access Level | 	Read-only (modify app permissions) |
| Owner | 	mfreema55 |
| Owner ID | 	2774519113 |






----


Twitter sends hash of {lots of info} to "Callback URL"


Do not put kets into source code.  Use environment variables instead.

Set in .profile

```
export TOP_SECRET="OMG--so secret."
```

In `irb:

```
ENV['TOP_SECRET']
```

acts like `echo $TOP_SECRET`

----

Using environment variables for keys:

```
export WANTADS_KEY="MqFOOFOOFOOFOOFOOFOOFOO3w6"
export WANTADS_SECRET="ioFBQ2FOOFOOFOOFOOFOOFOOFOOFOOFOOFOOFOOFOOD1xyX"
```

Creating users:

```
def self.find_or_create_from_auth_hash(hash)
  if find_by_provider_and_uid(hash['provider'], hash['uid'])
  else
    create(username: hash['info']['nickname'], name: hash['info']['nickname'],location: hash['info']['location'], image: hash['info']['image'], provider: hash['provider'], uid: hash['uid'])
  end
end
```


Set session variables:

```
session[:user_id] = user.id
session[:user_name] = user.name
```

Logout user by dumping session variables:

```
def destroy
  reset_session
end
```

Get Twitter to authenticate user(?):

```
def auth_hash
  request.env['omniauth.auth']
end
```

Using routes to use the hash returned by Twitter
And logging out:
```
#get '/auth/:provider', to: lambda{|env| [404, {}, ["Not Found"]]}, as: 'login'
get '/auth/:provider/callback', to: 'sessions#create'
get '/logout', to: 'sessions#destroy', as: 'logout'
```

----

With one line in controller to check user authentication, and limit what they can and can't see.


In form: quick conditional to give unathenticate users a link to Twitter authentication. (Be sure to pass along the instance ID.)












