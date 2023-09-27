import 'package:flutter/material.dart';
import 'package:shoes_app/model/model.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Color(0xff3A3E3E),
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0.5,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/fotome.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Nasikhun Amin',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff3A3E3E),
                ),
              ),
              const Text(
                'idcampsubmission1.com',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff3A3E3E),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: menuProfile.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        menuProfile[index],
                        style: const TextStyle(
                          color: Color(0xff32323C),
                          fontSize: 15,
                        ),
                      ),
                      leading: profileIcons[index],
                      trailing: IconButton(
                          onPressed: () {},
                          icon:
                              const Icon(Icons.keyboard_arrow_right_outlined)),
                      onTap: () {},
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Divider(
                        indent: 5,
                        endIndent: 17,
                        thickness: 0.5,
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
