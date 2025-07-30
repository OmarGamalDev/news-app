import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Newstilewidget extends StatelessWidget {
  const Newstilewidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          alignment: Alignment.center,
          imageUrl:
              'https://imgs.search.brave.com/7sUwE1Pmzw__zy1tV5onYKawdRimhvaJ8omj815PK_M/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMjE5/MDg2NjMzOS9waG90/by9yZWQtc2lsdmVy/LWZlc3RpdmUtZm9u/dC1sZXR0ZXItcy0z/ZC53ZWJwP2E9MSZi/PTEmcz02MTJ4NjEy/Jnc9MCZrPTIwJmM9/ZzlHRWNVYXUwS2pQ/ZGpJMGpTQUgwSFlR/WThrbzQ5MEp1MmJa/Tjg4enpLUT0',
          width: double.infinity,
          height: 200.h,
          fit: BoxFit.cover,
          placeholder: (context, url) =>
              Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Icon(Icons.error, size: 50.sp),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            'in bewsds jjsdds bhki sdsjdslk sjjdsjdslsdasdksals jshdsjdhsjd jdlksjdal hdskjadhasdlk hjds lsldlas',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            'this is describition sdjsahdhjs sjkdbasld dsdjbsadkisad udabwasd\n sdadsddddddddddasdxcxczc omar fanan ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
