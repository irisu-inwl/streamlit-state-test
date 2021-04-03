- Build:

```
docker build --tag streamlit-state .
```

- Running wrong app

```
docker run -itd -v $(pwd)/src:/opt/streamlit/src -p 8080:8501 --name streamlit-state streamlit-state streamlit run src/wrong_app.py
```

- Running correct app

```
docker run -itd -v $(pwd)/src:/opt/streamlit/src -p 8080:8501 --name streamlit-state streamlit-state streamlit run src/app.py
```