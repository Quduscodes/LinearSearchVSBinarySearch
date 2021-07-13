void main() {

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

  Comparator<User> comparator = (a, b) => a.firstName.compareTo(b.firstName);
  users.sort(comparator);

  void linSearch(List<User> arr, var x){
    int startTime = new DateTime.now().millisecond;
    for(int i = 0; i < arr.length; i++){
      if (arr[i].firstName == x){
        print('$x was found at index $i');
      }
    }
    int endTime = new DateTime.now().millisecond;
    int totalTime = endTime - startTime;
    print('linear search took: $totalTime');
  }

  void binSearch(List<User> arr,int low, int high, var x){
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
    print('Binary Search took: $totalTime');
  }

  linSearch(users, 'Chicken');
  binSearch(users, 0, users.length, 'Fatungase');
}

class User{
String firstName;
String lastName;
String nationality;

User({ required this.firstName,required this.lastName, required this.nationality});
}


