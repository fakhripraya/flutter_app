import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/constants/type_transaction.dart';
import 'package:capp_case/src/core/utils/util.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_bloc.dart';
import 'package:capp_case/src/presentation/screens/home/bloc/home_event.dart';
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_bloc.dart';
import 'package:capp_case/src/presentation/screens/transaction/bloc/transaction_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  late final _bloc = context.read<TransactionBloc>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _dateTextController = TextEditingController();

  void _initial() {
    _bloc.add(const TransactionStarted());

    _titleController.addListener(() {
      _bloc.add(TransactionSetTitle(title: _titleController.text));
    });

    _dateController.addListener(() {
      _bloc.add(TransactionSetDate(date: _dateController.text));
    });

    _amountController.addListener(() {
      _bloc.add(TransactionSetAmount(amount: _amountController.text));
    });

    final createdAt = DateTime.now().toIso8601String();
    _setDate(createdAt);
  }

  void _setDate(String createdAt) {
    _dateController.text = createdAt;
    _dateTextController.text = createdAt.dateFormat();
  }

  void _reset() {
    final createdAt = DateTime.now().toIso8601String();
    _dateTextController.text = createdAt.dateFormat();
    _dateController.text = createdAt;
    _titleController.text = '';
    _amountController.text = '';
    context.read<HomeBloc>().add(const HomeStarted());
  }

  void _setTransaction(TransactionModel trx) {
    _titleController.text = trx.title;
    _amountController.text = trx.amount.toString();
    _dateController.text = trx.createAt;
    _dateTextController.text = trx.createAt.dateFormat();
  }

  @override
  void initState() {
    _initial();
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    _dateController.dispose();
    _dateTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Builder(
          builder: (ctx) {
            final title = ctx.watch<TransactionBloc>().state.report.title;
            return Text(title);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          _cardWidget(),
          const SizedBox(height: 16),
          _expanseAndIncomeWidget(),
          const SizedBox(height: 24),
          _expanseWidget(),
          const SizedBox(height: 24),
          _incomeWidget(),
        ],
      ),
    );
  }

  Widget _cardWidget() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Builder(
            builder: (ctx) {
              final report = ctx.watch<TransactionBloc>().state.report;

              return Text(
                report.title.toCapital(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Builder(
                  builder: (ctx) {
                    final price =
                        ctx.watch<TransactionBloc>().state.expenses.calculate();

                    return _titleAndSubtitle(
                      title: 'TOTAL EXPANSE',
                      subtitle: price.idr(),
                    );
                  },
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (ctx) {
                    final price =
                        ctx.watch<TransactionBloc>().state.incomes.calculate();

                    return _titleAndSubtitle(
                      title: 'TOTAL INCOME',
                      subtitle: price.idr(),
                    );
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Builder(
            builder: (ctx) {
              final priceIncome =
                  ctx.watch<TransactionBloc>().state.incomes.calculate();

              final priceExpense =
                  ctx.watch<TransactionBloc>().state.expenses.calculate();

              final price = priceIncome - priceExpense;

              return _titleAndSubtitle(
                title: 'MY CURRENT AMOUNT',
                subtitle: price.idr(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _titleAndSubtitle({
    required String title,
    required String subtitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(subtitle),
      ],
    );
  }

  Widget _expanseAndIncomeWidget() {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                _bloc.add(
                  const TransactionSetType(type: TypeTransaction.expense),
                );
                _createTransactionForm();
              },
              child: Container(
                padding: const EdgeInsets.all(24),
                color: Colors.black,
                child: const Text(
                  'Add Expense',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                _bloc.add(
                  const TransactionSetType(type: TypeTransaction.income),
                );
                _createTransactionForm();
              },
              child: Container(
                padding: const EdgeInsets.all(24),
                child: const Text(
                  'Add Income',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textField({
    required String title,
    required String hint,
    void Function()? onPressed,
    bool isDisable = false,
    TextEditingController? controller,
    TextInputType inputType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title),
        const SizedBox(height: 4),
        TextField(
          controller: controller,
          keyboardType: inputType,
          readOnly: isDisable,
          onTap: onPressed,
          decoration: InputDecoration(
            hintText: hint,
          ),
        ),
      ],
    );
  }

  void _createTransactionForm() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) {
        return ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (ctx) {
                    final type =
                        ctx.watch<TransactionBloc>().state.type.toCapital();

                    return Text(
                      'Create $type',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    );
                  },
                ),
                MaterialButton(
                  shape: const CircleBorder(),
                  minWidth: 0,
                  padding: EdgeInsets.zero,
                  color: Colors.black,
                  onPressed: context.pop,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _textField(
              title: 'Why is this report issued?',
              hint: 'Write...',
              controller: _titleController,
            ),
            const SizedBox(height: 16),
            _textField(
              title: 'Date',
              hint: '',
              controller: _dateTextController,
              onPressed: _datePicker,
              isDisable: true,
            ),
            const SizedBox(height: 16),
            _textField(
              controller: _amountController,
              title: 'How much do you want to enter?',
              hint: 'Enter amount',
              inputType: TextInputType.number,
            ),
            const SizedBox(height: 4),
            Builder(
              builder: (ctx) {
                final amount = ctx.watch<TransactionBloc>().state.amount;
                return Text(amount.idr());
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                _bloc.add(TransactionCreate(callback: _reset));
              },
              child: const Text('CREATE'),
            ),
          ],
        );
      },
    );
  }

  void _updateTransactionForm(TransactionModel trx) {
    _setTransaction(trx);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) {
        return ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (ctx) {
                    final type =
                        ctx.watch<TransactionBloc>().state.type.toCapital();

                    return Text(
                      'Update $type',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    );
                  },
                ),
                MaterialButton(
                  shape: const CircleBorder(),
                  minWidth: 0,
                  padding: EdgeInsets.zero,
                  color: Colors.black,
                  onPressed: context.pop,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _textField(
              title: 'Why is this report issued?',
              hint: 'Write...',
              controller: _titleController,
            ),
            const SizedBox(height: 16),
            _textField(
              title: 'Date',
              hint: '',
              controller: _dateTextController,
              onPressed: _datePicker,
              isDisable: true,
            ),
            const SizedBox(height: 16),
            _textField(
              controller: _amountController,
              title: 'How much do you want to enter?',
              hint: 'Enter amount',
              inputType: TextInputType.number,
            ),
            const SizedBox(height: 4),
            Builder(
              builder: (ctx) {
                final amount = ctx.watch<TransactionBloc>().state.amount;
                return Text(amount.idr());
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                _bloc.add(TransactionUpdateOneTransaction(callback: _reset));
              },
              child: const Text('Update'),
            ),
          ],
        );
      },
    );
  }

  void _datePicker() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(24),
          child: Builder(
            builder: (ctx) {
              final createdAt = ctx.watch<TransactionBloc>().state.createdAt;
              final date = DateTime.parse(createdAt);
              return SfDateRangePicker(
                initialDisplayDate: date,
                initialSelectedDate: date,
                selectionMode: DateRangePickerSelectionMode.single,
                onSelectionChanged: (args) {
                  final value = args.value;
                  if (value is DateTime) {
                    _setDate(value.toIso8601String());
                    context.pop();
                  }
                },
                backgroundColor: Colors.transparent,
                headerStyle: const DateRangePickerHeaderStyle(
                  backgroundColor: Colors.transparent,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              );
            },
          ),
        );
      },
      clipBehavior: Clip.hardEdge,
    );
  }

  Widget _titleAndMore({
    required String title,
    void Function()? onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              'More',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _transactionCardWidget(TransactionModel trx) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                trx.type.toCapital(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(trx.title),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                trx.createAt.dateFormat(),
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                trx.amount.idr(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              context.read<TransactionBloc>().add(
                  TransactionRemoveOneTransaction(
                      callback: _reset, transaction: trx));
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }

  Widget _expanseWidget() {
    return Column(
      children: [
        _titleAndMore(title: 'Expanse'),
        Builder(
          builder: (ctx) {
            final expenses = ctx.watch<TransactionBloc>().state.expenses;
            return _transactionsWidget(
              transactions: expenses,
            );
          },
        ),
      ],
    );
  }

  Widget _transactionsWidget({
    required List<TransactionModel> transactions,
  }) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return _transactionCardWidget(transaction);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
      itemCount: transactions.length,
    );
  }

  Widget _incomeWidget() {
    return Column(
      children: [
        _titleAndMore(title: 'Income'),
        Builder(
          builder: (ctx) {
            final incomes = ctx.watch<TransactionBloc>().state.incomes;
            return _transactionsWidget(
              transactions: incomes,
            );
          },
        ),
      ],
    );
  }
}
