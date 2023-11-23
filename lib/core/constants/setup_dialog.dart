import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/ui/widgets/dialogs/loader_dialog.dart';
import 'package:my_portfolio/ui/widgets/dialogs/loading_dialog.dart';
import 'package:my_portfolio/ui/widgets/dialogs/success_dialog.dart';
import 'package:my_portfolio/ui/widgets/dialogs/sucess_dialog2.dart';


void setupDialog() {
  final DialogService dialogService = locator<DialogService>();

  final builders = {
    DialogType.loader: (context, sheetRequest, completer) => LoaderDialog(request: sheetRequest as DialogRequest),
    DialogType.loading: (context, sheetRequest, completer) =>
        LoadingDialog(request: sheetRequest as DialogRequest),
    DialogType.success: (context, sheetRequest, completer) => SuccessDialogView(
      request: sheetRequest as DialogRequest,
      completer: completer as Function,
    ),
    DialogType.success2: (context, sheetRequest, completer) => SuccessDialog2(
      request: sheetRequest as DialogRequest,
      completer: completer as Function,
    ),
  };

  dialogService.registerCustomDialogBuilders(builders);
}