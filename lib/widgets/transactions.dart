import 'package:flutter/material.dart';
import 'package:flutter_admin_template/utils/constants.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 400,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Constants.cardbgColor),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Latest Transactions",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                "View All",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          buildPaymentTitle(),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey.shade200,
          ),
          showTransactionList()
        ]),
      ),
    );
  }
}

Widget buildPaymentTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5)),
      ),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "To/From",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
            Text(
              "Date",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
            Text(
              "Description",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
            Text(
              "Amount",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
            Text(
              "Status",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
            Text(
              "Action",
              style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
            ),
          ],
        ),
      )
    ],
  );
}

Widget showTransactionList() {
  return Expanded(
    child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 15,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "data:image/png;base64,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",
                              height: 30,
                              width: 30,
                            ),
                            Text(
                              "Elevate Agency",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Text(
                          "2 Oct 2023",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                        Text(
                          "Monthly Salary",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                        Text(
                          "\$1500.0",
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Success",
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.link,
                              color: Colors.grey.shade400,
                            ),
                            Icon(
                              Icons.delete,
                              color: Colors.grey.shade400,
                            ),
                            Icon(
                              Icons.more,
                              color: Colors.grey.shade400,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(
                color: Colors.grey.shade200,
              )
            ],
          );
        }),
  );
}
