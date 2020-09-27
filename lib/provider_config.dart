import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderConfig extends StatelessWidget {
  final Widget child;
  const ProviderConfig({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // O provider permite que você distribua uma classe por toda a aplicação
        // é uma forma comum de disponibilizar um store mobx
        // Todos os providers (localizados na pasta mobx_stores) devem ser
        // registrados aqui, da seguinte forma:

        // Provider<AuthStore>(
        //   create: (_) => AuthStore(),
        // ),

        // as vezes você precisa injetar dados de uma classe em um provider
        // (por exemplo, um token de autenticação de um provider)
        // neste caso é necessário utilizar um Proxy Provider da seguinte forma:
        // ProxyProvider<AuthStore, UsersStore>(
        //   update: (context, auth, _) => UsersStore(auth),
        // ),
      ],
      child: child,
    );
  }
}
