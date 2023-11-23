// ignore_for_file: deprecated_member_use, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class BasePartialBuild<T extends BaseViewModel> extends HookViewModelWidget<T> {

  final Function(BuildContext, T) builder;

  BasePartialBuild({Key? key, required this.builder, bool reactive = true}) : super(key: key, reactive: reactive);

  @override
  Widget buildViewModelWidget(BuildContext context, T model) => builder(context, model) as Widget;

}

class ReactivePartialBuild<T extends ReactiveViewModel> extends HookViewModelWidget<T> {

  final Function(BuildContext, T) builder;

  ReactivePartialBuild({Key? key, required this.builder, bool reactive = true}) : super(key: key, reactive: reactive);

  @override
  Widget buildViewModelWidget(BuildContext context, T model) => builder(context, model) as Widget;

}