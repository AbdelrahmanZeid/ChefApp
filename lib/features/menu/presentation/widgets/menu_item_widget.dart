
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 60.h,
          width: 60.w,
          child: CachedNetworkImage(
            imageUrl: "http://via.placeholder.com/350x150",
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "data",
            ),
            Text(
              "data",
            ),
            Text(
              "data",
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.cancel,
            size: 40,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
