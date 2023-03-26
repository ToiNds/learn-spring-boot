<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>

<header>
    <section>
        <h3 class="text-center">Add Form</h3>
    </section>
</header>

<main>
    <section class="container">
        <form method="post">
            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">Id</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="id"/>
                </div>
            </div>

            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">Username</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="username"/>
                </div>
            </div>

            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">Description</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="description"/>
                </div>
            </div>

            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">Date</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="localDate"/>
                </div>
            </div>

            <div class="mb-3 row">
                <label class="col-sm-2 col-form-label">Done</label>
                <div class="col-sm-10">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="done"
                               id="flexRadioDefault1" value="true" checked>
                        <label class="form-check-label" for="flexRadioDefault1">
                            Da hoan thanh
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="done"
                               id="flexRadioDefault2" value="false"
                               >
                        <label class="form-check-label" for="flexRadioDefault2">
                            Chua hoan thanh
                        </label>
                    </div>
                </div>
            </div>

            <input type="submit" value="Add" class="btn btn-primary">
        </form>
    </section>
</main>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.min.js"
        integrity="sha384-heAjqF+bCxXpCWLa6Zhcp4fu20XoNIA98ecBC1YkdXhszjoejr5y9Q77hIrv8R9i"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
        crossorigin="anonymous"></script>
</body>
</html>