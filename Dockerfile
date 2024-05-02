FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/rajveer01/docsRepo.git .

WORKDIR ./docsRepo

RUN git clone https://github.com/rajveer01/shareCode.git .

RUN mv shareCode src

RUN pip install --no-cache-dir -r requirements.txt

CMD ["mkdocs", "build"]

CMD ["mkdocs", "serve"]
