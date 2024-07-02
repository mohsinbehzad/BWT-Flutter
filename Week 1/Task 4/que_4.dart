import 'dart:math';

void main(){
  Box<String> nameBox = new Box<String>();
  nameBox.add('Ahsan');
  nameBox.add('Bilal');
  nameBox.add('Sudais');

  print(nameBox.drawItem());
  print(nameBox.drawItem());
  print(nameBox.drawItem());
  print(nameBox.drawItem());
  print(nameBox.drawItem());

  Box<int> numberBox = new Box<int>();
  numberBox.add(2);
  numberBox.add(3);
  numberBox.add(4);
  numberBox.add(5);

  print(numberBox.drawItem());
  print(numberBox.drawItem());
  
  Box<int> emptyBox = new Box();
  print(emptyBox.drawItem());
}

class Box<T> {
  final List<T> _itemsList = [];
  // The final keyword only ensures that the reference to the list is immutable, not the contents of the list. Thus, you can still add or remove items from _itemsList.

  void add(T item){
    _itemsList.add(item);
  }

  bool isEmpty(){
    return _itemsList.isEmpty;
  }

  T? drawItem(){
    if(isEmpty()){
      return null;
    }
    Random rand = Random();
    int index = rand.nextInt(_itemsList.length);
    return _itemsList[index];
  }
}