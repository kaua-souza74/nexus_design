import 'package:flutter/material.dart';
import 'design.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.onLogin});
  final VoidCallback onLogin;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _showPassword = false;
  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  InputDecoration _decoration(String hint, IconData icon, {Widget? suffix}) =>
      InputDecoration(
          hintText: hint,
          prefixIcon: Icon(icon, size: 19, color: N.rose),
          suffixIcon: suffix,
          filled: true,
          fillColor: const Color(0xFFFAF7F6),
          contentPadding: const EdgeInsets.symmetric(vertical: 17),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(color: N.line)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: const BorderSide(color: N.rose, width: 1.4)));

  Widget _form(BuildContext context) => Form(
      key: _formKey,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/brand/nexus_logo.png',
                  width: 42, height: 42)),
          const SizedBox(width: 10),
          const Text('NEXUS',
              style: TextStyle(
                  color: N.wine,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2.4))
        ]),
        const SizedBox(height: 35),
        const Text('Bem-vindo de volta',
            style: TextStyle(
                fontFamily: 'Georgia',
                fontSize: 32,
                color: N.ink,
                height: 1.1)),
        const SizedBox(height: 9),
        const Text('Acesse o painel e acompanhe seus espaços.',
            style: TextStyle(color: N.muted, fontSize: 13)),
        const SizedBox(height: 30),
        const Text('E-mail',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
        const SizedBox(height: 8),
        TextFormField(
            controller: _email,
            keyboardType: TextInputType.emailAddress,
            decoration: _decoration(
                'seuemail@exemplo.com', Icons.person_outline_rounded),
            validator: (v) => (v == null || !v.contains('@'))
                ? 'Informe um e-mail válido'
                : null),
        const SizedBox(height: 17),
        const Text('Senha',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
        const SizedBox(height: 8),
        TextFormField(
            controller: _password,
            obscureText: !_showPassword,
            decoration: _decoration('Sua senha', Icons.lock_outline_rounded,
                suffix: IconButton(
                    onPressed: () =>
                        setState(() => _showPassword = !_showPassword),
                    icon: Icon(
                        _showPassword ? Icons.visibility_off : Icons.visibility,
                        size: 19))),
            validator: (v) => (v == null || v.length < 4)
                ? 'Digite ao menos 4 caracteres'
                : null),
        Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text(
                            'Recuperação de senha disponível na integração final.'))),
                child: const Text('Esqueceu a senha?',
                    style: TextStyle(color: N.rose, fontSize: 12)))),
        const SizedBox(height: 8),
        SizedBox(
            height: 54,
            child: FilledButton.icon(
                onPressed: () {
                  if (_formKey.currentState!.validate()) widget.onLogin();
                },
                icon: const Icon(Icons.arrow_forward_rounded),
                label: const Text('Entrar',
                    style: TextStyle(fontWeight: FontWeight.w600)),
                style: FilledButton.styleFrom(
                    backgroundColor: N.wine,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))))),
        const SizedBox(height: 14),
        OutlinedButton(
            onPressed: widget.onLogin,
            style: OutlinedButton.styleFrom(
                foregroundColor: N.wine,
                side: const BorderSide(color: N.line),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18))),
            child: const Text('Acessar demonstração')),
        const SizedBox(height: 25),
        const Center(
            child: Text('SENAI  ·  PROTÓTIPO DE DEMONSTRAÇÃO',
                style:
                    TextStyle(color: N.muted, fontSize: 9, letterSpacing: 1.1)))
      ]));

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.sizeOf(context).width >= 800;
    final form = ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 410),
        child: _form(context));
    if (wide) {
      return Scaffold(
          backgroundColor: N.canvas,
          body: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(children: [
                    Expanded(
                        flex: 6,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: Stack(fit: StackFit.expand, children: [
                              Image.asset('assets/images/lobby-evening.png',
                                  fit: BoxFit.cover),
                              const DecoratedBox(
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [
                                    Color(0xCC2E1D24),
                                    Color(0x222E1D24)
                                  ],
                                          begin: Alignment.bottomLeft,
                                          end: Alignment.topRight))),
                              const Positioned(
                                  left: 38,
                                  bottom: 45,
                                  right: 30,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('NEXUS',
                                            style: TextStyle(
                                                color: Colors.white,
                                                letterSpacing: 3,
                                                fontSize: 13)),
                                        SizedBox(height: 14),
                                        Text('Inteligência para cada espaço.',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Georgia',
                                                fontSize: 38)),
                                        SizedBox(height: 10),
                                        Text(
                                            'Uma visão clara do que acontece, em tempo real.',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14))
                                      ]))
                            ]))),
                    Expanded(
                        flex: 5,
                        child: Center(
                            child: SingleChildScrollView(
                                padding: const EdgeInsets.all(44),
                                child: form)))
                  ]))));
    }
    return Scaffold(
        backgroundColor: N.canvas,
        body: SafeArea(
            child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(23, 20, 23, 28),
                child: Center(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(28),
                          child: SizedBox(
                              height: 218,
                              child: Stack(fit: StackFit.expand, children: [
                                Image.asset('assets/images/lobby-evening.png',
                                    fit: BoxFit.cover),
                                const DecoratedBox(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                      Color(0xD92E1D24),
                                      Color(0x222E1D24)
                                    ],
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.topRight))),
                                Positioned(
                                    left: 22,
                                    top: 19,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(11),
                                        child: Image.asset(
                                            'assets/brand/nexus_logo.png',
                                            width: 40,
                                            height: 40))),
                                const Positioned(
                                    left: 22,
                                    right: 20,
                                    bottom: 22,
                                    child: Text('Cuidado com cada detalhe.',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Georgia',
                                            fontSize: 28,
                                            height: 1.1)))
                              ]))),
                      const SizedBox(height: 27),
                      Center(
                          child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 440),
                              child: form))
                    ])))));
  }
}
