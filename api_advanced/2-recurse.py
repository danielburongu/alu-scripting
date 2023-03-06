#!/usr/bin/python3
""""Documentation for recurse module"""
import requests

def recurse(subreddit, hot_list=[], after=None):
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=100"
    headers = {'User-Agent': 'Mozilla/5.0'}
    params = {'after': after} if after else {}
    response = requests.get(url, headers=headers, params=params, allow_redirects=False)

    if response.status_code != 200:
        return None

    data = response.json()
    after = data['data']['after']
    children = data['data']['children']
    for post in children:
        hot_list.append(post['data']['title'])

    if after is not None:
        recurse(subreddit, hot_list, after)

    return hot_list
