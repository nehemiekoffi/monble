import 'package:monble/core/persistance/repository/base/repository.dart';
import 'package:monble/core/persistance/schema/schema.dart';

typedef TransactionRepository = CrudRepository<Transaction>;

typedef TransactionCategoryRepository = CrudRepository<TransactionCategory>;

typedef ProjectRepository = CrudRepository<Project>;

typedef IncomeSourceRepository = CrudRepository<IncomeSource>;
