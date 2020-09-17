/// Mixin
/// just like interface. But the function is optional
/// instance it with 'with'
mixin BreathAble {
  void breath(){
    print("I'm breathing");
  }
}

/// Mixin example
/*
mixin Dancer implements Performer {
  @override
  void perform() {
    print('Dancing');
  }
}

mixin Singer implements Performer {
  @override
  void perform() {
    print('Singing');
  }
}

class Musician extends Performer with Dancer, Singer {
  void showTime() {
    perform();
  }
}

void main() {
  var arielNoah = Musician();
  arielNoah.perform();
}
the method perform is called from Singer mixin
mixin use a stack
last with = first or last in = first out

Performer => Dancer => Singer => Musician

*/