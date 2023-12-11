import 'package:crypto_currency_project/core/utils/strings.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {

  final Function callback;
  const SearchTextField({super.key, required this.callback});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: TextFormField(
          controller: _controller,
          decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: AppStrings.enterNameOrSymbol,
              hintStyle: TextStyle(fontSize: 14.0, fontStyle: FontStyle.italic),
              icon: Icon(Icons.search)),
           textInputAction: TextInputAction.search,
          keyboardType: TextInputType.visiblePassword,
          maxLines: 1,
          onChanged: (value){
            widget.callback(value);
          },
        ),
      ),
    );
  }
}
