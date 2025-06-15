import 'package:flutter/material.dart';

void main() {
  runApp(const FinanceApp());
}

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHMR Finance',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ExpensesScreen(),
    );
  }
}

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Мои расходы"),
        centerTitle: true,
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Верхний блок: вкладки (всего, доходы, расходы)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.green[50],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Всего", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("аирывиариывриарвы"),
                Text("Расходы"),
              ],
            ),
          ),

          // Общая сумма
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "100 558 ₽",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // Список категорий
          Expanded(
            child: ListView(
              children: const [
                ExpenseItem(icon: Icons.home, label: "Аренда", amount: "50 000 ₽"),
                ExpenseItem(icon: Icons.fastfood, label: "Продукты", amount: "8 000 ₽"),
                ExpenseItem(icon: Icons.sports, label: "Спортзал", amount: "3 000 ₽"),
              ],
            ),
          ),
        ],
      ),

      // Кнопка добавления
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),

      // Таббар
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.remove), label: "Расходы"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Доходы"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Счёт"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Статьи"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Настройки"),
        ],
      ),
    );
  }
}

class ExpenseItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String amount;

  const ExpenseItem({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.green[100],
        child: Icon(icon, color: Colors.green[800]),
      ),
      title: Text(label),
      trailing: Text(
        amount,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
