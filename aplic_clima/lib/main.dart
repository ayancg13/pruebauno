import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back, color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Fecha y ciudad
              const Text("Jun 2", style: TextStyle(fontSize: 16, color: Colors.grey)),
              const Text("London", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),

              const SizedBox(height: 8),

              // Temperatura principal
              const Text(
                "21°C",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const Text(
                "Overcast Clouds",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),

              const SizedBox(height: 24),

              // Tabs (Today / This Week)
              const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(text: "Today"),
                  Tab(text: "This Week"),
                ],
              ),

              const Divider(),

              // Sección Temperaturas
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "Temperatures",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Column(
                    children: [
                      Icon(Icons.cloud, color: Colors.blueGrey),
                      Text("8 PM"),
                      Text("21°C", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.cloud, color: Colors.blueGrey),
                      Text("11 PM"),
                      Text("22°C", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Detalles
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Column(
                    children: [
                      Text("Minimum", style: TextStyle(color: Colors.grey)),
                      Text("21°C", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Maximum", style: TextStyle(color: Colors.grey)),
                      Text("22°C", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),

              const Divider(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Column(
                    children: [
                      Text("Pressure", style: TextStyle(color: Colors.grey)),
                      Text("1020 Pa", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Humidity", style: TextStyle(color: Colors.grey)),
                      Text("41%", style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
