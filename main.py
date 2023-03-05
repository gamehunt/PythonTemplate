from flask import Flask, request

app = Flask(__name__)


def div(a, b):
    return a / b


@app.route("/")
def index():
    return "Go to /div"


@app.route("/div", methods=["GET"])
def endpoint():
    args = request.args.to_dict()
    if "a" not in args or "b" not in args:
        return "A and B required", 400
    a = float(args["a"])
    b = float(args["b"])
    return f"{div(a, b)}"


# if __name__ == "__main__":
# app.run()
