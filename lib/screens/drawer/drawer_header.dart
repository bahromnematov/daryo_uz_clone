import 'package:flutter/material.dart';

class MyDrawerHeader extends StatefulWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  _MyDrawerHeaderState createState() => _MyDrawerHeaderState();
}

class _MyDrawerHeaderState extends State<MyDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(color: Colors.blue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            const Text(
              'Daryo',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            const SizedBox(width: 22.0),
            selectLang()
          ]),
          const SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Toshkent',
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: const [
                  Icon(Icons.filter_drama, color: Colors.white),
                  SizedBox(width: 4.0),
                  Text('+12.0', style: TextStyle(color: Colors.white)),
                ],
              )
            ],
          ),
          const Divider(
            thickness: 1.0,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              currencyRate(Icons.monetization_on_outlined, '10850'),
              currencyRate(Icons.euro_symbol, '10850'),
              currencyRate(Icons.euro_symbol, '10850'),
            ],
          )
        ],
      ),
    );
  }

  List<bool> _isSelected = [false, true];

  Widget selectLang() {
    return Container(
      width: 180,
      height: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ToggleButtons(
            children: [
              Container(
                width: 90,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                    color: _isSelected[0] ? Colors.white : Colors.blue),
                child: Text(
                  'LOTINCHA',
                  style: TextStyle(
                      color: _isSelected[0] ? Colors.blue : Colors.white),
                ),
                alignment: Alignment.center,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: _isSelected[1] ? Colors.white : Colors.blue),
                width: 85,
                height: 30,
                child: Text(
                  'KIRILCHA',
                  style: TextStyle(
                      color: _isSelected[1] ? Colors.blue : Colors.white),
                ),
                alignment: Alignment.center,
              ),
            ],
            isSelected: _isSelected,
            onPressed: (int index) {
              setState(() {
                if (index == 0) {
                  _isSelected[0] = true;
                  _isSelected[1] = false;
                } else {
                  _isSelected[1] = true;
                  _isSelected[0] = false;
                }
              });
            },
          )
        ],
      ),
    );
  }

  Widget currencyRate(IconData icon, String rate) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          rate,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
