import 'package:flutter/material.dart';

class AwesomeScrollBar extends StatefulWidget {
  final ScrollController controller;
  final Widget child;
  const AwesomeScrollBar({ Key? key , required this.controller, required this.child}) : super(key: key);

  @override
  State<AwesomeScrollBar> createState() => _AwesomeScrollBarState();
}

class _AwesomeScrollBarState extends State<AwesomeScrollBar> {

  late ScrollController _controller;
  late Widget _child;
  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
    _child = widget.child;
  }
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      interactive: true,
      thickness: 6,
      trackVisibility: true,
      controller: _controller,
      child: _child,
      
    );
  }
}