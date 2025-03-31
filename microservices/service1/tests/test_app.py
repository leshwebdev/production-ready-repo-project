import pytest
from app import app
#import sys  # Add this import


@pytest.fixture
def client():
    app.testing = True
    return app.test_client()


def test_home(client):
    response = client.get('/')
    assert response.status_code == 200
    assert b"Hello" in response.data
    print("test1 has run successfully", flush=True)
