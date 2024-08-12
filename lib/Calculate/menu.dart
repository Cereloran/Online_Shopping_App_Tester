import 'dart:io';
import '../Widgets/01_Entree_Buttons/00_imports.dart';
import 'time.dart';
import 'homeowner.dart';
import 'available.dart';
import 'bills.dart';
import 'food.dart';
import 'income.dart';
import 'outgoing.dart';
import 'rent.dart';
import 'subscription.dart';

class Menu extends Time {
  static void menu() {
    Income income = Income();
    Rent rent = Rent();
    Food food = Food();
    Bills bills = Bills();
    Subscription subs = Subscription();
    Outgoing outgoing = Outgoing();
    Available available = Available();
    HomeOwner homeowner = HomeOwner();

    int choice = 1;
    while (choice >= 1 && choice <= 8) {
      print(
          '\nWhich numbers/statistics would you like to cost analyse?\n\n1. All Personal Income Stats(1-6)\n2. Income Stats Only\n3. Rent Stats Only\n4. Bills Stats Only\n5. Food Stats Only\n6. Subscription Stats Only\n7. Homeowner Stats\n8. Shipping costs for Profit\n9. Exit\nPlease enter your choice(1-7):');
      choice = int.parse(stdin.readLineSync()!);
      if (choice == 1) {
        available.available(
            income.income() - outgoing.outgoing(rent.rent() + food.food() + bills.bills() + subs.subscription()));
      }
      if (choice == 2) {
        income.income();
      }
      if (choice == 3) {
        rent.rent();
      }
      if (choice == 4) {
        bills.bills();
      }
      if (choice == 5) {
        food.food();
      }
      if (choice == 6) {
        subs.subscription();
      }
      if (choice == 7) {
        homeowner.mortgage();
      }
      if (choice > 7 || choice < 1) {
        if (kDebugMode) {
          print('Thanks for using my financial calculator!\n\nI hope it was helpful :D');
        }
        choice = 69;
      }
    }
  }
}