#!/usr/bin/python3
""""Documentation for the `0-subs.py` module."""
# Import the requests module for sending HTTP requests
import requests

# Define the function `number_of_subscribers` that takes a subreddit
def number_of_subscribers(subreddit):
    """Returns the number of subscribers for a given subreddit."""

# Create the URL for the subreddit's about.json page using string formatting
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)

    # Send a GET request to the subreddit's about.json page with a 'User-Agent'
    res = requests.get(url, headers={'User-Agent': 'Mozilla/5.0'})

    # If the response status code is not 200, return 0
    if res.status_code != 200:
        return 0

    # Extract JSON data from the response and return the number of subscribers
    else:
        json_response = res.json()
        subscribers = json_response.get('data').get('subscribers')
        return subscribers
