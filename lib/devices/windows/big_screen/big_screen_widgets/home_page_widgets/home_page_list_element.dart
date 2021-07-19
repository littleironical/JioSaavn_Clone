import 'package:flutter/material.dart';

class HomePageListElement extends StatefulWidget {
  const HomePageListElement({Key? key, this.image, this.title, this.subtitle, this.isWideImage}) : super(key: key);
  final image;
  final title;
  final subtitle;
  final isWideImage;

  @override
  _HomePageListElementState createState() => _HomePageListElementState();
}

class _HomePageListElementState extends State<HomePageListElement> {
  bool insideTheRegion = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          insideTheRegion = true;
        });
      },
      onExit: (event) {
        setState(() {
          insideTheRegion = false;
        });
      },
      child: Container(
        width: (widget.isWideImage == true) ? 200 : 140,
        color: (insideTheRegion == true) ? Colors.grey[100] : Colors.transparent,
        padding: EdgeInsets.all(10),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: (widget.isWideImage == true) ? 110 : 120,
                width: (widget.isWideImage == true) ? 180 : 120,
                child: (widget.isWideImage == true)
                    ? ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        child: Image.network(
                          widget.image,
                          fit: BoxFit.fitWidth,
                        ),
                      )
                    : Image.network(
                        widget.image,
                        fit: BoxFit.fitWidth,
                      ),
              ),
              Text(
                widget.title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[800],
                ),
              ),
              (widget.isWideImage == true)
                  ? SizedBox()
                  : Text(
                      widget.subtitle,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[600],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
