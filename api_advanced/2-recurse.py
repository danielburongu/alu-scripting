#!/usr/bin/python3
""""Documentation for recurse module"""
import requests

def recurse(subreddit, hot_list=[], after=None):
    """
    A recursive function that queries the Reddit API and returns a list containing the titles of all hot articles for a given subreddit.

    Args:
        subreddit (str): The subreddit to query.
        hot_list (list): The list to store the titles of the hot articles.
        after (str): The ID of the last post in the previous page of results.

    Returns:
        A list containing the titles of all hot articles for the given subreddit, or None if no results are found.
    """
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=100"
    headers = {'User-Agent': 'Mozilla/5.0'}
    params = {'after': after} if after else {}
    response = requests.get(url, headers=headers, params=params, allow_redirects=False)

    if response.status_code != 200:
        return None

    data = response.json()
    for post in data['data']['children']:
        hot_list.append(post['data']['title'])

    if data['data']['after']:
        recurse(subreddit, hot_list, after=data['data']['after'])

    return hot_list
