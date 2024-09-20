walker interact {
    can return_message with `root entry {
        report {
            "response": "Hello, world!"
        };
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {
            "response": "Hello, " + self.name + "!"
        };
    }
}

walker interact_with_price {
    has price: float;

    can return_message with `root entry {
        report{
            "response": "You are now $" + str(self.price) + " poorer"
        };
    }
}

walker interact_with_truth {
    has truth: bool;

    can return_message with `root entry{
        report{
            "response": "It is " + str(self.truth) + " that today will be a good day"
        };
    }
}
