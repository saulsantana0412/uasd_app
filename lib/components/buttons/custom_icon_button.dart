import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {

  final IconData icon;
  final VoidCallback onPressed;
  final IconData? icon2;
  final bool? state;

  const CustomIconButton({super.key, required this.icon, required this.onPressed, this.icon2, this.state});

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {

  late IconData _icon;
  bool? _state;

  void _onPressed(){
    if(_state != null) {
      setState(() {
        _state = !_state!;
        _changeIcon();
      });
    }
    widget.onPressed();  
  }

  void _changeIcon(){
    _icon = (_state == false ? widget.icon : widget.icon2)!;   
  }

  @override
  void initState() {
    _state = widget.state;

    if(_state != null){
      _changeIcon();
    }else{
      _icon = widget.icon;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onPressed,
      child: Icon(_icon, size: 28,),
    );
  }
}