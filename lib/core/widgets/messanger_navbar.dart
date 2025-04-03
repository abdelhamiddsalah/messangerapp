import 'package:flutter/material.dart';
import 'package:messangerapp/features/chats/presentation/screens/chats_view.dart';
import 'package:messangerapp/features/people/presentation/screens/people_view.dart';


class MessengerNavBar extends StatefulWidget {
  const MessengerNavBar({super.key});

  @override
  _MessengerNavBarState createState() => _MessengerNavBarState();
}

class _MessengerNavBarState extends State<MessengerNavBar> {
  int _selectedIndex = 0;

  // ✅ قائمة الصفحات المرتبطة بكل أيقونة
  final List<Widget> _pages = [
    const ChatsView(),
   const PeopleView(),
   const ChatsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // ✅ تغيير الصفحة بناءً على الأيقونة المختارة
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey.shade300)),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.message, size: 28),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(Icons.people, size: 28),
                  Positioned(
                    right: -6,
                    top: -2,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.done_all, size: 28),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

