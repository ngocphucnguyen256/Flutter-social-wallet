import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class IframeHtml extends StatelessWidget {
  final String url;

  IframeHtml({required this.url});

  @override
  Widget build(BuildContext context) {
    var htmlData = """
      <iframe width="100%" height="300" src="$url" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      """;
    return Container(
      child: Html(
        data: htmlData,
        onCssParseError: (css, messages) {
          print("css that errored: $css");
          print("error messages:");
          messages.forEach((element) {
            print(element);
          });
        },
      ),
    );
  }
}
