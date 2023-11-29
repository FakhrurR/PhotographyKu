part of '../home_screen.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 12,
        left: 12,
        top: 55,
        bottom: 20,
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Hi, ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 28,
                  ),
                  children: [
                    TextSpan(
                        text: "Rizal",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        )),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const AccountScreen()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    image:
                        "https://c1.wallpaperflare.com/preview/622/843/732/man-male-photographer-camera.jpg",
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          const Text("My Life My Adventure")
        ],
      ),
    );
  }
}