FROM python
RUN apt update
WORKDIR /workspaces/theproject
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt
# RUN --mount=type=bind,source=requirements.txt,target=/tmp/requirements.txt \
#    pip install --requirement /tmp/requirements.txt
COPY index.html .
EXPOSE 80
CMD ["python3", "-m", "http.server", "80"]

# index.html
# <html><head><title>My Server</title></head><body>Server is Running.</body></html>
