import openai
import os
import sys
from dotenv import load_dotenv

load_dotenv()   # load ENV from .env file

# Check if envvar (OPENAI_API_TOKEN) is set
if (os.getenv("OPENAI_API_TOKEN") == None):
    print("err: OPENAI_API_TOKEN not found !")
    exit(1)

if (len (sys.argv) != 2):
    print("err: No text input found !")
    exit(1)

openai.api_key = os.getenv("OPENAI_API_TOKEN")

try:
    res = openai.Completion.create(
        model="text-davinci-003",
        prompt=sys.argv[1],
        temperature=0,
        max_tokens=4000,
    )

    print(res.choices[0].text.split("\n\n")[1])
except:
    print("err: TOKEN / NETWORK CONNECTION")
    exit(1)
