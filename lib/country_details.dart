import 'package:flutter/material.dart';
import 'package:country_app/inline_text.dart';

class CountryDetailScreen extends StatelessWidget {
  const CountryDetailScreen({super.key, required this.country});
  final Map country;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text(country['name']['common'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  // width: size.width * 0.9,
                  width: double.infinity,
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        country['flags'] != null
                            ? country['flags']['png']
                            : const SizedBox.shrink(),
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              InlineText(
                countryInfo: '${country['population'] ?? 'N/A'}',
                title: 'Population',
              ),
              SizedBox(height: size.height * 0.01),
              InlineText(
                countryInfo: '${country['region'] ?? 'N/A'}',
                title: 'Region',
              ),
              SizedBox(height: size.height * 0.01),
              InlineText(
                countryInfo: '${country['capital']?[0] ?? 'N/A'}',
                title: 'Capital',
              ),
              SizedBox(height: size.height * 0.01),
              InlineText(
                countryInfo: '${country['continents'][0] ?? 'N/A'}',
                title: 'Continent',
              ),
              SizedBox(height: size.height * 0.03),
              InlineText(
                countryInfo: '${country['languages'].values.first ?? 'N/A'}',
                title: 'Official Language',
              ),
              SizedBox(height: size.height * 0.01),
              InlineText(
                countryInfo: '${country['independent'] ?? 'N/A'}',
                title: 'Independence',
              ),
              SizedBox(height: size.height * 0.01),
              InlineText(
                countryInfo: '${country['area'] ?? 'N/A'}',
                title: 'Area',
              ),
              SizedBox(height: size.height * 0.01),
              InlineText(
                countryInfo:
                    '${country['currencies'].values.first['name'] ?? 'N/A'}',
                title: 'Currency',
              ),
              SizedBox(height: size.height * 0.03),
              InlineText(
                countryInfo: '${country['timezones'][0] ?? 'N/A'}',
                title: 'Time zone',
              ),
              SizedBox(height: size.height * 0.01),
              InlineText(
                countryInfo: 'dd-mm-yyyy',
                title: 'Date Format',
              ),
              SizedBox(height: size.height * 0.01),
              InlineText(
                countryInfo: '${country['idd'].values.first ?? 'N/A'}',
                title: 'Dialing Code',
              ),
              SizedBox(height: size.height * 0.01),
              InlineText(
                countryInfo: '${country['car']['side'] ?? 'N/A'}',
                title: 'Driving Side',
              ),
              SizedBox(height: size.height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
