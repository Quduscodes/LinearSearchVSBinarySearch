void main() {

  // List<int> numbers = [10,12,20,2,5];

  List<User> users = [User(firstName: 'Tolulope', lastName: 'Abiona', nationality: 'Nigerian'),
    User(firstName: 'Fatungase', lastName: 'Qudus', nationality: 'Nigerian'),
    User(firstName: 'Fadeyi', lastName: 'Folarin', nationality: 'Nigerian'),
    User(firstName: 'Biola', lastName: 'Ajayi', nationality: 'Nigerian'),
    User(firstName: 'Johnson', lastName: 'Emmanuel', nationality: 'Nigerian'),
    User(firstName: 'Idowu', lastName: 'Stephen', nationality: 'Nigerian'),
    User(firstName: 'Anu', lastName: 'Adebayo', nationality: 'Nigerian'),
    User(firstName: 'Clinton', lastName: 'John', nationality: 'Nigerian'),
    User(firstName: 'Vin', lastName: 'Diesel', nationality: 'Nigerian'),

  ];

  // Comparator<User> comparator = (a, b) => a.firstName.compareTo(b.firstName);
  // users.sort(comparator);


  void stringBubbleSort(List<User> arr){
    int startTime = new DateTime.now().millisecond;
    for(int i = 0; i < arr.length; i++){
      for(int j = 0; j < arr.length -i-1; j++){
        if (arr[j].firstName.compareTo(arr[j+1].firstName) == 1){
          String obj = arr[j].firstName;
          arr[j].firstName = arr[j+1].firstName;
          arr[j+1].firstName = obj;
        }
      }
    }
    print(arr);
    int endTime = new DateTime.now().millisecond;
    int totalTime = endTime - startTime;
    print('bubble sort took: $totalTime ms');
  }

  // List<int> bubbleSort(List<int> arr){
  //   int startTime = new DateTime.now().millisecond;
  //   for(int i = 0; i < arr.length; i++){
  //     for(int j = 0; j < arr.length -i-1; j++){
  //       if (arr[j] > arr[j+1]){
  //         int num = arr[j];
  //         arr[j] = arr[j+1];
  //         arr[j+1] = num;
  //       }
  //     }
  //   }
  //   print(arr);
  //   int endTime = new DateTime.now().millisecond;
  //   int totalTime = endTime - startTime;
  //   print('bubble sort took: $totalTime ms');
  //   return arr;
  // }

  void linSearch(List<User> arr, var x){
    stringBubbleSort(arr);
    int startTime = new DateTime.now().millisecond;
    for(int i = 0; i < arr.length; i++){
      if (arr[i].firstName == x){
        print('$x was found at index $i');
      }
    }
    int endTime = new DateTime.now().millisecond;
    int totalTime = endTime - startTime;
    print('linear search took: $totalTime ms');
  }

  void binSearch(List<User> arr,int low, int high, var x){
    stringBubbleSort(arr);
    int startTime = new DateTime.now().millisecond;
    if (high > low){
      int mid = (high + low) ~/ 2;
      if(x == arr[mid].firstName){
        print('$x was found at index $mid');
      }
      if(x.compareTo(arr[mid].firstName) == 1 ){
        return binSearch(arr, mid+1, high, x);
      }
      else if(x.compareTo(arr[mid].firstName) == -1){
        return binSearch (arr, 0, mid - 1, x);
      }
    }
    else{
      print('object not found in list');
    }

    int endTime = new DateTime.now().millisecond;
    int totalTime = endTime - startTime;
    print('Binary Search took: $totalTime ms');
  }

  linSearch(users, 'Fadeyi');
  binSearch(users, 0, users.length, 'Fatungase');
  // bubbleSort(numbers);
  // stringBubbleSort(users);
}

class User{
String firstName;
String lastName;
String nationality;

User({ required this.firstName,required this.lastName, required this.nationality});

@override toString() => 'firstname: $firstName';
}


