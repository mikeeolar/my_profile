class FormattedResponse {
  final bool success;
  final dynamic data;
  final String? responseCodeError;

  FormattedResponse({required this.success, this.data, this.responseCodeError});
}
