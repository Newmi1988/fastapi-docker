import os

import uvicorn


def main():
    uvicorn.run(
        "minimalapp.app:app",
        host="0.0.0.0",
        port=os.getenv("FASTAPI_APP_PORT",8080),
        reload=True
    )

if __name__ == "__main__":
    main()
