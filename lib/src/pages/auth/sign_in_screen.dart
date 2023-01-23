import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/pages/auth/components/custom_text_field.dart';
import 'package:greengrocer/src/pages/auth/sign_up_screen.dart';
import 'package:greengrocer/src/pages/base/base_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: CustomColors.customSwatchColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Nome do app
                  Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 40),
                      children: [
                        const TextSpan(
                          text: 'Green',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: 'grocer',
                            style: TextStyle(
                              color: CustomColors.customContrastColor,
                            ))
                      ],
                    ),
                  ),

                  //Categorias
                  SizedBox(
                    height: 30,
                    child: DefaultTextStyle(
                      style: const TextStyle(fontSize: 25),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        pause: Duration.zero,
                        animatedTexts: [
                          FadeAnimatedText('Frutas'),
                          FadeAnimatedText('Verduras'),
                          FadeAnimatedText('Legumes'),
                          FadeAnimatedText('Carnes'),
                          FadeAnimatedText('Cereais'),
                          FadeAnimatedText('Laticínios'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            // Formulario
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 40,
              ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(45))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //Email
                  const CustomTextField(
                    icon: Icons.email,
                    label: 'E-mail',
                  ),

                  //Senha
                  const CustomTextField(
                    icon: Icons.lock,
                    label: 'Senha',
                    isSecret: true,
                  ),

                  //Botão entrar
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18))),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (c) {
                              return const BaseScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        'Entrar',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),

                  //Botão esqueceu a senha
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Esqueceu a senha?',
                        style:
                            TextStyle(color: CustomColors.customContrastColor),
                      ),
                    ),
                  ),

                  // Divider
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text('ou'),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Botao de cadastro
                  SizedBox(
                    height: 50,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            side: const BorderSide(
                                width: 2, color: Colors.green)),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (c) {
                              return SignUpScreen();
                            }),
                          );
                        },
                        child: const Text(
                          'Criar Conta',
                          style: TextStyle(fontSize: 18),
                        )),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
