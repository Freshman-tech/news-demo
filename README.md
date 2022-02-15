# News Application Demo

Learn how to develop web applications with Go by building a News application.

Here's what the [completed application](https://freshman-news.herokuapp.com/)
looks like:

![demo](https://ik.imagekit.io/freshman/news-demo_MrYio9GKlzSi.png)

The code in this repo is meant to be a reference point for anyone following
along with the [tutorial](https://freshman.tech/web-development-with-go/).

## Prerequisites

- You need to have [Go](https://golang.org/dl/) installed on your computer. The
version used to test the code in this repository is **1.15.3**.

- Sign up for a [News API account](https://newsapi.org/register) and get your
free API key.

## Get started

- Clone this repository to your filesystem.

```bash
$ git clone https://github.com/sm43/news-demo
```

- Rename the `.env.example` file to `.env` and enter your News API Key.
- `cd` into it and run the following command: `go build && ./news-demo` to start the server on port 3000.
- Visit http://localhost:3000 in your browser.
