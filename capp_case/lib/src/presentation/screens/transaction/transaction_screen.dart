import 'package:app_core/app_core.dart';
import 'package:capp_case/src/core/constants/type_transaction.dart';
import 'package:capp_case/src/core/utils/util.dart';
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
    _dateTextController.text = createdAt;
    _dateController.text = createdAt;
    _titleController.text = '';
    _amountController.text = '';
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
        iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.white),
        titleTextStyle: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
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
          const Text(
            '12 APRIL 2024',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _titleAndSubtitle(
                  title: 'TOTAL EXPANSE',
                  subtitle: 'Rp400.000.000',
                ),
              ),
              Expanded(
                child: _titleAndSubtitle(
                  title: 'TOTAL INCOME',
                  subtitle: 'Rp400.000.000',
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _titleAndSubtitle(
            title: 'MY CURRENT AMOUNT',
            subtitle: 'Rp400.000.000',
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

  Widget _transactionCardWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Expanse',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Bayar Internet'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Friday, 12 Mei 2024',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              Text(
                'Rp200.000',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _expanseWidget() {
    return Column(
      children: [
        _titleAndMore(title: 'Expanse'),
        Builder(
          builder: (context) {
            const transactions = [1, 2, 3];
            return _transactionsWidget(
              transactions: [],
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
        return _transactionCardWidget();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
      itemCount: 3,
    );
  }

  Widget _incomeWidget() {
    return Column(
      children: [
        _titleAndMore(title: 'Income'),
        Builder(
          builder: (context) {
            return _transactionsWidget(
              transactions: [],
            );
          },
        ),
      ],
    );
  }
}
