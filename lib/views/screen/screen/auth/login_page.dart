part of 'auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.jpg',
                width: screenWidth * 0.2,
              ),
              SizedBox(
                height: screenHeight * 0.05, //jarak dinamis
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2.0,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                ),
              ),

              // textpill pwd
              SizedBox(
                height: screenHeight * 0.05, //jarak dinamis
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2.0,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.visibility_off,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),

              // btn
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                 child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                 ),
                 style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 18, 160, 32),
                  minimumSize: Size(screenWidth * 0.8, screenHeight * 0.1),
                 ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}