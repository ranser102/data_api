# API

## Build

```bash
docker build -t my_api .
```

## Run
```bash
docker run -d -p 9000:8000 --name my_container my_api
```

## Test

```bash
curl -X GET "http://localhost:9000/predict?height=170&weight=90&shoe=40"
```
Result: `{"prediction":"male"}`

```bash
curl -X GET "http://localhost:9000/predict?height=170&weight=90&shoe=39"
```
Result: `{"prediction":"female"}`

