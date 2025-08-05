import 'package:cuprofiles/constants/colors.dart';
import 'package:cuprofiles/models/cu_profile_model.dart';
import 'package:cuprofiles/providers/cu_profile_provider.dart';
import 'package:cuprofiles/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileSnapshot extends ConsumerWidget {
  const ProfileSnapshot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // CUProfileModel cuProfile = ref.watch(cuProfileProvider).cuProfileModel;
    // bool isLoading = ref.watch(cuProfileProvider).isLoading;

    return CustomCardWidget(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Langley Federal Credit Union",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            buildRow('Address:', '721 Lakefront Cmns'),
            buildRow('', 'Newport News, VA, 23606'),
            buildRow('Phone:', '(757) 827-5328'),
            buildRow('Fax:', '(757) 596-2061'),
            buildRow('URL:', 'https://www.langleyfcu.org/'),
            buildRow('CDFI Certification:', 'No'),
            buildRow('Subscription Level:', 'Professional - Peer Suite - Plus'),
            buildRow('Point of Contact:', 'Scott Sturkie'),
            buildRow('Last Updated:', '4/14/2026'),
          ],
        ),
      ),
    );
  }

  Widget buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
