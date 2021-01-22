
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 160,
              color: Colors.blue,
            ),
            Text('Ingresar'),
            SizedBox(height: 16),
            _userEntry(context),
            SizedBox(height: 16),
            _pwdEntry(context),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: _cancelButton(context)),
                SizedBox(width: 16),
                Expanded(child: _submitButton(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _userEntry(BuildContext ctx) {
    return Container(
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        //controller: _userCtrl,
        decoration: _intpuDecoration(
            hint: 'Correo electronico', icon: Icon(Icons.mail_outline)),
      ),
    );
  }

  Widget _pwdEntry(BuildContext ctx) {
    return Container(
      child: TextField(
        //controller: _pwdCtrl,
        obscureText: true,//this._showPwd,
        obscuringCharacter: '*',
        keyboardType: TextInputType.text,
        decoration: _intpuDecoration(
          hint: 'Contraseña',
          icon: Icon(Icons.keyboard),
          //suffixIcon: InkWell(
          //    onTap: () => setState(() => this._showPwd = !this._showPwd),
          //    child: Icon(this._showPwd
          //        ? Icons.remove_red_eye
          //        : Icons.remove_circle_outline)),
        ),
      ),
    );
  }

  Widget _submitButton(BuildContext ctx) {
    return Container(
      child: FlatButton(
       // onPressed: _onSubmit,
        color: Colors.blue,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(26.0)),
        onPressed: () {  },
        child: Text(
          'Ingresar',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  Widget _cancelButton(BuildContext ctx) {
    return Container(
      child: OutlineButton(
        onPressed: () {},
        color: Colors.blue,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(26.0)),
        child: Text(
          'Cancelar',
          style: TextStyle(
              color: Colors.grey[500],
              fontSize: 18,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  InputDecoration _intpuDecoration(
      {String hint, Icon icon, Widget suffixIcon}) {
    return InputDecoration(
      enabledBorder: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey[350], width: 1),
        borderRadius: const BorderRadius.all(
          const Radius.circular(20.0),
        ),
      ),
      focusedBorder: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blue, width: 1),
        borderRadius: const BorderRadius.all(
          const Radius.circular(20.0),
        ),
      ),
      errorBorder: new OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1),
        borderRadius: const BorderRadius.all(
          const Radius.circular(20.0),
        ),
      ),
      hintText: hint,
      filled: true,
      hintStyle: new TextStyle(color: Colors.white38),
      fillColor: Colors.white10,
      prefixIcon: icon,
      suffixIcon: suffixIcon,
      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      // labelText: hint,
    );
  }

}