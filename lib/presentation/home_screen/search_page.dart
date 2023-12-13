import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_demo/applications/weather_page/weather_screen_bloc.dart';
import 'package:weather_app_demo/core/constands/constands.dart';
import 'package:weather_app_demo/presentation/home_screen/weather_page.dart';
import 'package:weather_app_demo/presentation/home_screen/widgets/language_selection_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    String language = "en";
    void onLanguageSelected(String lang) {
      language = lang;
    }

    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: ConstrainedBox(
                  constraints:const BoxConstraints(maxWidth: 400),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.location_on),
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.blue.shade300,
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(16.0),
                      hintText: "Enter city name",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
              ),
              BlocConsumer<WeatherScreenBloc, WeatherScreenState>(
                  listener: (context, state) {
                if (state.isError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.errorText),
                    ),
                  );
                  return;
                }
                if (state.forecastData != null && !state.isLoading) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          WeatherPage(forecastModel: state.forecastData!),
                    ),
                  );
                }
              }, builder: (context, state) {
                return Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (controller.text.trim().isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Please enter the city name"),
                            ),
                          );
                          return;
                        }
                        BlocProvider.of<WeatherScreenBloc>(context).add(
                          WeatherScreenEvent.fromCityName(
                            language: language,
                            isLocation: false,
                            cityName: controller.text.trim(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .blue.shade300, // Matches the focus border color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text(
                        "Search",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    sbh20,
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<WeatherScreenBloc>(context).add(
                           WeatherScreenEvent.fromCityName(
                            isLocation: true,
                            cityName: "",
                            language: language
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .blue.shade300, // Matches the focus border color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text(
                        "Using Location",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    LanguageSelectionButton(
                      onLanguageSelected: onLanguageSelected,
                    )
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
