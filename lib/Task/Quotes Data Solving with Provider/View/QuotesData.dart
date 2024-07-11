import 'package:adv_flutter_ch1/Task/Quotes%20Data%20Solving%20with%20Provider/Provider/QuoteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Modal/QuoteModel.dart';

class Quotesdata extends StatelessWidget {
  const Quotesdata({super.key});

  @override
  Widget build(BuildContext context) {
    QuoteProvider quoteProviderTrue =
        Provider.of<QuoteProvider>(context, listen: true);
    QuoteProvider quoteProviderFalse =
        Provider.of<QuoteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Quote Data',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
        ),
      ),
      body: ListView.builder(
        itemCount: quoteProviderTrue.newQuoteList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(quoteProviderTrue.newQuoteList[index].quote),
            subtitle: Text(quoteProviderTrue.newQuoteList[index].author),
            trailing: GestureDetector(
              onTap: () {
                quoteProviderFalse.removeQuote(index);
              },
              child: Icon(Icons.delete),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          TextEditingController txtQuote = TextEditingController();
          TextEditingController txtAuthor = TextEditingController();

          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Add New Quote'),
              content: Container(
                height: 160,
                child: Column(
                  children: [
                    TextFormField(
                      controller: txtQuote,
                      maxLines: 2,
                      decoration: InputDecoration(
                          label: Text('Quote'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      controller: txtAuthor,
                      decoration: InputDecoration(
                          label: Text('Author'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    QuoteModal modal = QuoteModal(
                      quote: txtQuote.text,
                      author: txtAuthor.text,
                    );
                    quoteProviderFalse.newQuotes(modal);
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
