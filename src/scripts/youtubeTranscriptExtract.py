from youtube_transcript_api import YouTubeTranscriptApi

def generate_transcript(url):
    id = url[url.index("=")+1:]
    transcript = YouTubeTranscriptApi.get_transcript(id)
    script = ""

    for text in transcript:
        t = text["text"]
        if t != '[Music]':
            script += t + " "
		
    return script

url = input("Enter Video url")
generate_transcript(url)