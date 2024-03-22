import 'package:cached_network_image/cached_network_image.dart';
import 'package:chef_app/core/utils/app_function.dart';
import 'package:chef_app/core/utils/app_text_style.dart';
import 'package:chef_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

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
            placeholder: (context, url) => SizedBox(
              width: 200.0,
              height: 100.0,
              child: Shimmer.fromColors(
                baseColor: Colors.red,
                highlightColor: Colors.yellow,
                child: const Text(
                  'Shimmer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
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
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  content: Text(
                    "",
                    style: boldStyle(
                      color: Colors.red,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        goBack(
                          context,
                        );
                      },
                      child: Text(
                        S.of(context).cancel,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        S.of(context).ok,
                      ),
                    ),
                  ],
                );
              },
            );
          },
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
