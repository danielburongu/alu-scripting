#!/usr/bin/python3
""""Documentation for top_ten module"""
import requests


def top_ten(subreddit):
    """"Documentation for top_ten function"""
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=10"

    headers = {'User-Agent': 'Mozilla/5.0'}
   
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code != 200:
        print("None")
        return

    data = response.json()
    for post in data['data']['children']:
        print(post['data']['title'])
