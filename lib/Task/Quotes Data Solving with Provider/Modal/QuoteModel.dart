class QuoteModal
{
  String? quote;
  String? author;

  QuoteModal({this.quote, this.author});

  factory QuoteModal.from(Map m1)
  {
    return QuoteModal(quote: m1['quote'],author: m1['author']);
  }
}