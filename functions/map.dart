  main () {
    final user = [
       { "name": "Ricardo", "status": false},
       { "name": "Joao", "status": false},
       { "name": "Pereira", "status": false},
       { "name": "Rafael", "status": false},
    ];

    final userTrue = user.map((it) => {
      "name": it["name"],
      "status": true,
    });

    //maneira de trocar apenas um usuario seu status
    final userFind = user.indexWhere((element) =>  element["name"] == "Ricardo");

   final name = user[userFind]["name"] as String;
    user[userFind] = {
      "name": name,
      "status": false,
    };
    //============


    print(user);
    print(userTrue);

  }


