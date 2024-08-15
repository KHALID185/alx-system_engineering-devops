#!/usr/bin/python3
"""
Module to query the Reddit API and return the number of subscribers
for a given subreddit.
"""
import requests
import sys


def number_of_subscribers(subreddit):
    """
    Query the Reddit API and return the number of subscribers
    for a given subreddit.
    """
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {
        'User-Agent': 'linux:0x16.api.advanced:v1.0.0 (by /u/your_username)'
    }

    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        print(f"Status Code: {response.status_code}", file=sys.stderr)
        if response.status_code == 200:
            data = response.json()
            return data['data']['subscribers']
        else:
            print(f"Error: {response.status_code}", file=sys.stderr)
            return 0
    except Exception as e:
        print(f"Exception: {e}", file=sys.stderr)
        return 0
