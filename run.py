import sys
import os
sys.path.append(os.path.abspath(os.path.dirname(__file__)))
from app import create_app
from dotenv import load_dotenv
import os

load_dotenv()  # <--- ini penting

app = create_app()

if __name__ == '__main__':
    app.run(debug=True)
