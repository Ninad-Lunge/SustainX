import 'package:flutter/material.dart';

class PickupHistory extends StatelessWidget {
  const PickupHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0),
                child: Text(
                  'Pickup History',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
              ),
              SizedBox(height: 20),
              PickupNotification(date: '02-01-2024', cost: '1070', index: 3),
              SizedBox(height: 20),
              PickupNotification(date: '25-11-2023', cost: '870', index: 2),
              SizedBox(height: 20),
              PickupNotification(date: '02-05-2023', cost: '515', index: 1),
            ],
          ),
        ),
      ),
    );
  }
}

class PickupNotification extends StatelessWidget {
  final String date, cost;
  final int index;

  const PickupNotification({
    Key? key,
    required this.date,
    required this.cost,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PickupDetailPage(date: date, cost: cost),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 1), // Stroke
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 1.5), // changes position of shadow
            ),
          ],
        ),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              SizedBox(
                width: 20,
                height: 55,
              ),
              Text(
                '  $date \n  Rs $cost ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Expanded(child: SizedBox(width: double.infinity)),
              IconButton(
                icon: const Icon(
                  Icons.arrow_right_outlined,
                  color: Colors.green,
                  size: 40,
                ),
                onPressed: () {
                  // Add navigation or further action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PickupDetailPage(date: date, cost: cost),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PickupDetailPage extends StatelessWidget {
  final String date, cost;

  const PickupDetailPage({Key? key, required this.date, required this.cost})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Item Detail Page',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text('Pickup Date: $date'),
              //Text('Cost: Rs $cost'),
              SizedBox(height: 20),
              Invoice(),
            ],
          ),
        ),
      ),
    );
  }
}

class Invoice extends StatelessWidget {
  final List<String> itemNames = ['Newspapers', 'Steel', 'Cardboard'];
  final List<int> itemQuantities = [10, 5, 12];
  final List<double> itemCosts = [15, 37, 15]; // Example costs for each item

  @override
  Widget build(BuildContext context) {
    // Calculate total cost and create a list of items with their details
    List<Map<String, dynamic>> items = List.generate(
      itemNames.length,
      (index) {
        double totalItemCost = itemQuantities[index] * itemCosts[index];
        return {
          'name': itemNames[index],
          'quantity': itemQuantities[index],
          'cost': itemCosts[index],
          'totalItemCost': totalItemCost,
        };
      },
    );

    // Calculate the total cost for all items
    double totalCost =
        items.fold(0, (sum, item) => sum + item['totalItemCost']);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: DataTable(
            columns: [
              DataColumn(label: Text('   Item')),
              DataColumn(label: Text('Quantity')),
              DataColumn(label: Text('Cost')),
              //DataColumn(label: Text('Total Cost (Rs)')),
            ],
            rows: List.generate(
              items.length,
              (index) => DataRow(
                cells: [
                  DataCell(Center(child: Text(items[index]['name']))),
                  DataCell(
                      Center(child: Text(items[index]['quantity'].toString()))),
                  DataCell(
                      Center(child: Text(items[index]['cost'].toString()))),
                  // DataCell(Center(child: Text(items[index]['totalItemCost'].toString()))),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Divider(),
        SizedBox(height: 10),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              'Total Cost:   Rs. $totalCost',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.green,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
