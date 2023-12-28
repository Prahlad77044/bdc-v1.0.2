import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({super.key});
  final String bloodDonationInfoNepal = """
**Blood Donation in Nepal**

- **Blood Types:**
  - In Nepal, the most common blood types are A+, B+, O+, and AB+.
  - It's crucial to match the donor's blood type with the recipient's to ensure a safe transfusion.

- **Importance of Blood Donation:**
  - Blood donation saves lives by providing essential components for medical treatments, surgeries, and emergencies.
  - Regular blood donations help maintain an adequate supply for hospitals and clinics.

- **Who Can Donate?**
  - Individuals aged 18 to 60 are generally eligible to donate blood.
  - Donors should be in good health, not have certain medical conditions, and meet weight requirements.

- **How Often Can You Donate?**
  - Whole blood can typically be donated every 8 to 12 weeks.
  - Platelet and plasma donations may have different time intervals.

- **Where to Donate in Nepal:**
  - Find local blood donation centers and hospitals that accept blood donations.
  - Check for mobile blood donation drives happening in your area.

- **Online Platforms:**
  - Explore online platforms that connect blood donors with recipients in real-time.
  - Ensure the platform follows safety protocols and has a reliable verification process.

- **Preparation Before Donation:**
  - Eat a healthy meal and stay hydrated before donating blood.
  - Get a good night's sleep and avoid alcohol consumption.

- **Post-Donation Care:**
  - Rest for a short period after donation and have a light snack.
  - Stay hydrated to replenish fluids lost during the donation process.

- **Emergency Preparedness:**
  - Encourage friends and family to become blood donors for emergencies.
  - Create awareness about the importance of a consistent blood supply.

- **Emergency Helpline:**
  - In case of urgent blood needs, contact local emergency services or blood banks.

- **Thank You for Saving Lives!**
  - Your blood donation makes a significant impact on the health and well-being of others.
  - Spread awareness and inspire others to become blood donors.

#DonateBlood #SaveLives #NepalBloodDonation
""";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information'),
        backgroundColor: Colors.red[800],
      ),
      body: Padding(
        padding:  EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Text(
             bloodDonationInfoNepal,

          ),
        ),
      ),
    );
  }
}
