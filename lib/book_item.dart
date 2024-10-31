import 'package:book_list/model/book.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book listedBook;
  const BookItem({required this.listedBook, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;

    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Image.asset('assets/images/' + listedBook.smallImage, width: 75, height: 75,),
            title: Text(listedBook.bookName, style: myTextStyle.bodyLarge,),
          subtitle: Text(listedBook.bookAuthor, style: myTextStyle.bodySmall,),
          trailing: Icon(Icons.arrow_forward, color: Colors.deepPurple, size: 35,),

          onTap: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context) => BookDetail(selectedBook: listedBook))
            // );

            Navigator.of(context).pushNamed('/bookDetail', arguments: listedBook);
          },
        ),
      ),
    );
  }
}