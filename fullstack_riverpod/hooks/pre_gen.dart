import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  final pageName = context.vars['page'].toString().toLowerCase();
  final pageType = context.vars['page_type'].toString().toLowerCase();
  final pathPage = context.vars['path_folder'].toString().toLowerCase();

  final isHooks = pageType == 'hooks_riverpod';
  final isRiverpod = pageType == 'riverpod';
  final isNormal = pageType == 'normal' || !isHooks && !isRiverpod;

//   // directory path
//   final dirPath = Directory.current.path;

// // set folder list
//   List<String> folderList;

// // try to set folder list and context vars
//   try {
//     // path to lib folder
//     print(dirPath);
//     folderList = dirPath.split('/').toList();

//     final libPath = folderList.indexOf('lib');

//     // get folder path to after lib folder
//     var folderPath =
//         folderList.sublist(libPath + 1, folderList.length).join('/').toString();
//     logger.info('folderPath: $folderPath');

//     if (folderPath.isNotEmpty) folderPath += '/';

//     // set context vars path
//     context.vars['path'] = folderPath + pageName;

  // set context vars
  context.vars = {
    ...context.vars,
    'isRiverpod': isRiverpod,
    'isHooks': isHooks,
    'isNormal': isNormal,
  };
  // } catch (e) {
  //   logger.err('Error: $e');
  // }
}
