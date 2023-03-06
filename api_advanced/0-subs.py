#!/usr/bin/python3
""""Doc"""
# Import the requests module for sending HTTP requests
import requests

# Define the function `number_of_subscribers` that takes a subreddit
def  number_of_subscribers(subreddit):
    """Returns the number of subscribers for a given subreddit."""

# Create the URL for the subreddit's about.json page using string formatting
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)

# Send a GET request to the subreddit's about.json page with a 'User-Agent'
    res = requests.get(url, headers={'User-Agent': 'Mozilla/5.0'})

# If the response status code is not 200, return 0
    if res.status_code != 200:
        return 0
# extract JSON data from the response and return the number of subscribers
    else:
        """Convert JSON response to a Python dictionary `json()` method"""
        json_response = res.json()
# Extract the number of subscribers JSON response using the `get()` method
        subscribers = json_response.get('data').get('subscribers')
        return subscribers
