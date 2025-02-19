

class ExampleClass:
    def __init__(self, name):
        self.name = name
        self.data = []

    def add_data(self, value):
        self.data.append(value)

    def get_data(self):
        return self.data

    def greet(self, greeting="Hello"):
        return f"{greeting}, {self.name}!"

    def multiply(self, a, b):
        return a * b

    def summarize(self, *values, separator=", "):
        return separator.join(map(str, values))
