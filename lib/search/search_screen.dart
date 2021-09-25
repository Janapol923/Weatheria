import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weatheria/domain/weather_repository.dart';
import 'package:weatheria/search/search_bloc.dart';
import 'package:weatheria/widget/loading_section.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchBloc(GetIt.instance<WeatherRepository>()),
      child: BlocBuilder<SearchBloc, SearchState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: TextField(
                  cursorColor: Colors.white,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Search...",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.white30),
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                  onChanged: (query) {
                    context.read<SearchBloc>().add(SearchEvent.search(query));
                  },
                ),
              ),
              body: Stack(
                children: [
                  ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemCount: state.locations.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _LocationItems(
                        locationName: state.locations[index].name,
                        url: state.locations[index].url,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                  if (state.isLoading) LoadingSection(),
                ],
              ),
            );
          }),
    );
  }
}

class _LocationItems extends StatelessWidget {
  final String locationName;
  final String? url;

  const _LocationItems({required this.locationName, required this.url})
      : super();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context, url);
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
            locationName,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ),
    );
  }
}
