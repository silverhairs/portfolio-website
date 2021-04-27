import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:website/src/constants.dart';
import 'package:website/src/core/models/models.dart';
import 'package:website/src/palette.dart';
import 'package:http/http.dart' as http;
import 'package:website/src/ui/widgets/home/empty_list_message.dart';

class ArticlesList extends StatelessWidget {
  const ArticlesList({
    Key? key,
  }) : super(key: key);

  Future<List<Article>?> _getArticles() async {
    http.Response res = await http.get(
      Uri.parse(articlesURI),
    );

    if (res.statusCode == 200) {
      try {
        List data = json.decode(res.body);
        return data
            .where((a) => data.indexOf(a) < 7)
            .map(
              (article) => Article.fromMap(article),
            )
            .toList();
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Blog Posts",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: FutureBuilder<List<Article>?>(
              future: _getArticles(),
              builder: (context, snapshot) {
                if (snapshot.hasData)
                  return Container(
                    height: 100.0 * snapshot.data!.length,
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.length,
                      separatorBuilder: (context, index) => Divider(
                        indent: 25,
                        endIndent: 25,
                      ),
                      itemBuilder: (context, index) {
                        var article = snapshot.data![index];
                        return ListTile(
                          isThreeLine: true,
                          title: Text(
                            article.title!,
                            style:
                                Theme.of(context).textTheme.headline6!.copyWith(
                                      color: AppColors.lightGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          subtitle: Text(article.description!),
                        );
                      },
                    ),
                  );
                else if (snapshot.connectionState == ConnectionState.waiting)
                  return EmptyListMessageBox(isLoading: true);
                return EmptyListMessageBox(isLoading: false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
