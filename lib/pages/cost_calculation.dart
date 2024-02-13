import 'package:flutter/material.dart';
// import 'bottom_navigation_bar.dart';

class CostCalculation extends StatefulWidget {
  const CostCalculation({super.key});

  @override
  _CostCalculationState createState() => _CostCalculationState();
}

class Item {
  String name;
  double costPerKG;
  double quantity;

  Item(this.name, this.costPerKG, this.quantity);
}

class _CostCalculationState extends State<CostCalculation> {
  List<Item> selectedItems = []; // List to keep track of selected items
  double totalCost = 0.0; // Total cost variable

  // int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0),
                child: Text(
                  'Calculate Cost',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: DropdownButtonFormField<String>(
                  value: null,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    labelText: "Choose Type Of Item",
                  ),
                  items: <String>[
                    'Newspapers',
                    'Office Papers',
                    'Books',
                    'Plastics',
                    'Steel',
                    'Copper',
                    'Cardboard',
                    'Used Battery',
                    // Add more items as needed
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    if (newValue != null &&
                        !selectedItems.any((item) => item.name == newValue)) {
                      // Check if the item is not already selected
                      setState(() {
                        selectedItems.add(
                          Item(newValue, getCostPerKG(newValue), 0.0),
                        );
                      });
                    }
                  },
                ),
              ),
              if (selectedItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Selected Items:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              for (int index = 0; index < selectedItems.length; index++)
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          '${selectedItems[index].name}: Rs. ${selectedItems[index].costPerKG} / KG',
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                          keyboardType:
                              TextInputType.numberWithOptions(decimal: true),
                          onChanged: (String value) {
                            // Update quantity when the user enters a quantity
                            setState(() {
                              selectedItems[index].quantity =
                                  double.tryParse(value) ?? 0.0;
                            });
                          },
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.green),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            labelText: "Enter Qty (In KG)",
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () {
                          // Remove the selected item when the remove button is pressed
                          setState(() {
                            selectedItems.removeAt(index);
                          });
                        },
                      ),
                    ],
                  ),
                ),
              if (selectedItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Calculate total cost when the "Calculate" button is pressed
                      calculateTotalCost();
                    },
                    child: Text('Calculate'),
                  ),
                ),
              if (totalCost > 0.0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Total Cost: Rs. $totalCost',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: CustomBottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //
      //     switch (index) {
      //       case 0:
      //         Navigator.of(context).popUntil((route) => route.isFirst);
      //         Navigator.pushNamed(context, '/home');
      //         break;
      //       case 1:
      //         Navigator.of(context).popUntil((route) => route.isFirst);
      //         Navigator.pushNamed(context, '/notifications');
      //         break;
      //       case 2:
      //         Navigator.of(context).popUntil((route) => route.isFirst);
      //         Navigator.pushNamed(context, '/settings');
      //         break;
      //     }
      //   },
      // ),
    );
  }

  double getCostPerKG(String itemName) {
    // Function to get cost per KG based on the item name
    switch (itemName) {
      case 'Newspapers':
        return 15.0;
      case 'Office Papers':
        return 20.0;
      case 'Books':
        return 25.0;
      case 'Plastics':
        return 20.0;
      case 'Steel':
        return 25.0;
      case 'Copper':
        return 25.0;
      case 'Cardboard':
        return 20.0;
      case 'Used Battery':
        return 25.0;
      default:
        return 0.0;
    }
  }

  void calculateTotalCost() {
    // Function to calculate total cost of selected items
    totalCost = 0.0;
    for (Item item in selectedItems) {
      totalCost += item.quantity * item.costPerKG;
    }
    setState(() {});
  }
}
