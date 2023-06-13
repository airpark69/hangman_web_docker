FROM python:3.8-slim-buster
WORKDIR /HANGMAN_WEB_DOCKER
COPY . .
EXPOSE 4000
RUN pip install -r requirements.txt
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=4000" ]