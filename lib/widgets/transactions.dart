import 'package:flutter/material.dart';
import 'package:flutter_admin_template/utils/constants.dart';
import 'package:flutter_admin_template/utils/responsive.dart';

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
            height: 20,
          ),
          buildPaymentTitle(context),
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

Widget buildPaymentTitle(BuildContext context) {
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
            SizedBox(
              width: 60,
              child: Text(
                "To/From",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
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
            if (!Responsive.isMobile(context))
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
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 15,
        itemBuilder: (context, index) {
          return TransactionItem();
        }),
  );
}

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                        "https://cdn.dribbble.com/userupload/7889037/file/original-c3126d575055e7e9996b8e4643848edf.jpg?resize=400x300&vertical=center",
                        height: 30,
                        width: 30,
                      ),
                      if (!Responsive.isMobile(context))
                        Text(
                          "Elevate Agency",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        )
                      else
                        SizedBox(
                          width: 42,
                          child: Text(
                            "Elevate Agency",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                        )
                    ],
                  ),
                  if (!Responsive.isMobile(context))
                    Text(
                      "2 Oct 2023",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    )
                  else
                    Text(
                      "2/10/23",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                  if (!Responsive.isMobile(context))
                    Text(
                      "Monthly Salary",
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    )
                  else
                    SizedBox(
                      width: 45,
                      child: Text(
                        "Monthly Salary",
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ),
                  Text(
                    "\$1500.0",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                  ),
                  if (!Responsive.isMobile(context))
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
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
                  if (!Responsive.isMobile(context))
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
                          Icons.more_horiz,
                          color: Colors.grey.shade400,
                        )
                      ],
                    )
                  else
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey.shade400,
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
  }
}
