FROM python:3.8.3-alpine

RUN pip install --upgrade pip

RUN adduser -D naveen

USER naveen

WORKDIR /home/naveen

RUN export PATH=/Users/naveen/Library/Python/3.8/bin:$PATH

COPY --chown=naveen:naveen requirements.txt requirements.txt

RUN pip install flask-restful

RUN pip install --user -r requirements.txt

ENV PATH="/home/naveen/.local/bin:${PATH}"

COPY --chown=naveen:naveen . .

CMD ["python", "app.py", "runserver", "0.0.0.0:5000"]
