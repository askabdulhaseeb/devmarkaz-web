import 'package:flutter/material.dart';

import '../../utilities/app_images.dart';
import '../../widgets/custom_widgets/custom_profile_image.dart';

class TestimonyWebview extends StatelessWidget {
  const TestimonyWebview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            const SelectableText(
              'What our client says',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: const SelectableText(
                  '''We always priority what cliend need and solving their problem with our solution by technology so, this is what they say about our service :''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 42),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 42,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 430,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const CustomProfileImage(
                            imageURL: AppImages.demoImageURL),
                        const SizedBox(height: 10),
                        const Text(
                          'Ben Affleck',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Nationalistic CEO',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 3,
                          width: 200,
                          margin: const EdgeInsets.all(16),
                          color: Colors.grey,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            '''Very impressive job was i got from this company, VERY RECOMMENDED Very impressive job was i got from this company, VERY RECOMMENDED Very impressive job was i got from this company, VERY RECOMMENDED Very impressive job was i got from this company, VERY RECOMMENDED''',
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 42,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
