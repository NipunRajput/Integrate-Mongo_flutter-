import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

// HomePage with Sign Up and Login buttons
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome!'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),
                );
              },
              child: Text('Go to Sign Up Page'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Go to Login Page'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Sign Up Page
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign Up here',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Sign up logic here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blueAccent,
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Text('Already have an account?'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/google_logo.png'),
                  iconSize: 40,
                  onPressed: () {
                    // Google sign-in logic here
                  },
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Image.asset('assets/facebook_logo.png'),
                  iconSize: 40,
                  onPressed: () {
                    // Facebook sign-in logic here
                  },
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Image.asset('assets/apple_logo.png'),
                  iconSize: 40,
                  onPressed: () {
                    // Apple sign-in logic here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Login Page with navigation to Information Extractor on Sign In
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login here',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome back you’ve been missed!',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Forgot password logic here
                },
                child: Text('Forgot your password?'),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate to Information Extractor Page on successful login
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformationExtractorPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blueAccent,
              ),
              child: Text(
                'Sign in',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Text('Create new account'),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/google_logo.png'),
                  iconSize: 40,
                  onPressed: () {
                    // Google sign-in logic here
                  },
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Image.asset('assets/facebook_logo.png'),
                  iconSize: 40,
                  onPressed: () {
                    // Facebook sign-in logic here
                  },
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Image.asset('assets/apple_logo.png'),
                  iconSize: 40,
                  onPressed: () {
                    // Apple sign-in logic here
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Information Extractor Page after successful Sign In
class InformationExtractorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information Extractor'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Information Extractor',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Paste link here!!',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Link..',
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Logic to extract info from the link
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.blueAccent,
              ),
              child: Text(
                'Click here',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
