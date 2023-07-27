import 'package:flutter/material.dart';

class CircleAvatarImage extends StatelessWidget {
  const CircleAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircleAvatar(
        radius: 80,
        backgroundColor: Colors.purpleAccent,
        child: CircleAvatar(
          radius: 75,
          backgroundImage: NetworkImage(
            'https://th.bing.com/th/id/R.8e5e293cae342149832fff96bb4c8caa?rik=dbonSUJuDVqx5A&riu=http%3a%2f%2fimg.mm4000.com%2ffile%2f8%2fd7%2f6527dce099.jpg%3fdown&ehk=E9%2bVucd%2fent1hsPcwHCre695jRwtoRQJzu1ymZuXJL0%3d&risl=&pid=ImgRaw&r=0',
          ),
        ),
      ),
    );
  }
}

class ClipOvalImage extends StatelessWidget {
  const ClipOvalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.network(
          'https://th.bing.com/th/id/R.8e5e293cae342149832fff96bb4c8caa?rik=dbonSUJuDVqx5A&riu=http%3a%2f%2fimg.mm4000.com%2ffile%2f8%2fd7%2f6527dce099.jpg%3fdown&ehk=E9%2bVucd%2fent1hsPcwHCre695jRwtoRQJzu1ymZuXJL0%3d&risl=&pid=ImgRaw&r=0',
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class BorderRadiusImage extends StatelessWidget {
  const BorderRadiusImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(75),
          image: const DecorationImage(
            image: NetworkImage(
              'https://th.bing.com/th/id/R.8e5e293cae342149832fff96bb4c8caa?rik=dbonSUJuDVqx5A&riu=http%3a%2f%2fimg.mm4000.com%2ffile%2f8%2fd7%2f6527dce099.jpg%3fdown&ehk=E9%2bVucd%2fent1hsPcwHCre695jRwtoRQJzu1ymZuXJL0%3d&risl=&pid=ImgRaw&r=0',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        decoration: const BoxDecoration(
          color: Colors.yellow,
        ),
        child: Image.network(
          'https://th.bing.com/th/id/R.8e5e293cae342149832fff96bb4c8caa?rik=dbonSUJuDVqx5A&riu=http%3a%2f%2fimg.mm4000.com%2ffile%2f8%2fd7%2f6527dce099.jpg%3fdown&ehk=E9%2bVucd%2fent1hsPcwHCre695jRwtoRQJzu1ymZuXJL0%3d&risl=&pid=ImgRaw&r=0',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}