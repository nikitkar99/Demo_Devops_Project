from app.main import app

def test_add():
    client = app.test_client()
    response = client.post("/add", json={"a": 2, "b": 3})
    assert response.status_code == 200
    assert response.get_json()["result"] == 5

def test_sqrt():
    client = app.test_client()
    response = client.post("/sqrt", json={"x": 9})
    assert response.status_code == 200
    assert response.get_json()["result"] == 3.0

def test_compound_interest():
    client = app.test_client()
    response = client.post("/compound_interest", json={"principal": 1000, "rate": 10, "time": 2})
    assert response.status_code == 200
    assert round(response.get_json()["result"], 2) == 1210.0
