import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color grey = Color.fromRGBO(121, 121, 121, 1);
Color navbar = Color.fromRGBO(192, 192, 192, 1);
Color btn = Color.fromRGBO(66, 66, 66, 1);

const baseURL = "http://192.168.53.46:8000/api/";
const loginURL = "${baseURL}login";
const regURL = "${baseURL}register";

const serverError = 'Server error';
const unauthorized = 'Unauthorized';
const somethingWentWrong = 'Something went wrong, try again!';

Widget frmField(String label, TextEditingController controller, String hintText,
    IconData icons) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 14),
              icon: Icon(
                icons,
                color: grey,
              ),
              border: InputBorder.none,
              hintText: hintText),
        ),
      ),
    ],
  );
}

Widget frmFieldPw(String label, TextEditingController controller,
    String hintText, IconData icons, bool isVisible, onPress) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      SizedBox(
        height: 10,
      ),
      Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
          obscureText: isVisible ? false : true,
          controller: controller,
          decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 14),
              suffixIconConstraints: BoxConstraints(maxHeight: 38),
              icon: Icon(
                icons,
                color: grey,
              ),
              suffixIcon: IconButton(
                onPressed: onPress,
                icon: isVisible
                    ? Icon(
                        Icons.visibility_off_outlined,
                        color: grey,
                      )
                    : Icon(
                        Icons.visibility_outlined,
                        color: grey,
                      ),
              ),
              border: InputBorder.none,
              hintText: hintText),
        ),
      ),
    ],
  );
}

Widget btnLoginRegister(double width, String label, routes) {
  return Center(
      child: ElevatedButton(
    onPressed: routes,
    child: Text(
      label,
      style: TextStyle(fontSize: 16),
    ),
    style: ElevatedButton.styleFrom(
        backgroundColor: btn,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        fixedSize: Size((width - 150), 40)),
  ));
}

Widget dotTrue() {
  return Container(
    height: 8,
    width: 8,
    decoration: BoxDecoration(
        color: Colors.black, borderRadius: BorderRadius.circular(15)),
  );
}

Widget dotFalse() {
  return Container(
    height: 8,
    width: 8,
    decoration: BoxDecoration(
        color: Color.fromRGBO(217, 217, 217, 1),
        borderRadius: BorderRadius.circular(15)),
  );
}

class BottomNavigation extends StatefulWidget {
  final int initialIndex;

  const BottomNavigation({Key? key, required this.initialIndex})
      : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.pushNamed(context, '/dashboard');
      } else if (index == 1) {
        // Navigator.pushNamed(context, '/ahli');
      } else if (index == 2) {
        // Navigator.pushNamed(context, '/chat');
      } else if (index == 3) {
        // Navigator.pushNamed(context, '/faq');
      } else if (index == 4) {
        // Navigator.pushNamed(context, '/profile');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.homeAlt,
              size: 18,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.clipboardList,
                size: 18,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.cartShopping,
                size: 18,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.userAlt,
                size: 18,
              ),
              label: ''),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedLabelStyle: TextStyle(height: 0),
        unselectedLabelStyle: TextStyle(height: 0),
        selectedItemColor: Colors.black,
        unselectedItemColor: navbar,
        onTap: _onItemTapped,
      ),
    );
  }
}
