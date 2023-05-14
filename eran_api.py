from fastapi import FastAPI
import joblib

# Load the model
the_model = joblib.load("a_model.joblib")

# Create the FastAPI app
app = FastAPI()

# Define the prediction endpoint
@app.get("/predict")
def predict(height: int, weight: int, shoe: int):
    # Make predictions using the loaded model
    prediction = the_model.predict([[height, weight, shoe]])
    return {"prediction": prediction[0]}

# Run the FastAPI server
if __name__ == "__main__":
    import uvicorn
    uvicorn.run("eran_api:app", host="0.0.0.0", port=8000, reload=True)
