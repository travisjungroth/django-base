from django.contrib.auth import get_user_model
from pytest import mark


def test_true():
    """When you want a test that definitely should pass"""
    assert True


@mark.django_db()
def test_admin_response(client):
    response = client.get('/admin/login/')
    assert response.status_code == 200


@mark.django_db()
def test_database():
    get_user_model().objects.all().exists()
