import 'package:flutter/material.dart';

class FinancePage extends StatelessWidget {
  const FinancePage({super.key});
  static const orange = Color(0xFFE94C0C);
  static const peach = Color(0xFFFFB17A);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color(0xFFEF4C08),
      body: SafeArea(
          child: CustomScrollView(slivers: [
        SliverPadding(
            padding: const EdgeInsets.fromLTRB(17, 10, 17, 20),
            sliver: SliverList.list(children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(14, 13, 14, 15),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xFF86170D),
                            Color(0xFFCF2109),
                            Color(0xFFF16615)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(28)),
                  child: Column(children: [
                    Row(children: [
                      const CircleAvatar(
                          radius: 19,
                          backgroundColor: Color(0xFFDCB89C),
                          child: Icon(Icons.person, color: Colors.white)),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_none,
                              color: Colors.white)),
                      const Icon(Icons.wifi, color: Colors.white, size: 18),
                      const SizedBox(width: 7),
                      const Icon(Icons.battery_full,
                          color: Colors.white, size: 18)
                    ]),
                    const SizedBox(height: 11),
                    const Text('Balance',
                        style: TextStyle(color: Colors.white70, fontSize: 15)),
                    const SizedBox(height: 4),
                    const FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(r'$12,680.42',
                            style: TextStyle(
                                color: Color(0xFFFFD0A7),
                                fontSize: 48,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -1.5))),
                    const SizedBox(height: 8),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 8),
                        decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(22)),
                        child: const Text('↗  2.46% this month',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12))),
                    const SizedBox(height: 22),
                    Container(
                        height: 93,
                        padding: const EdgeInsets.all(17),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              peach.withValues(alpha: 0.64),
                              const Color(0xFFFFD0A0).withValues(alpha: 0.8)
                            ]),
                            borderRadius: BorderRadius.circular(19)),
                        child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(children: [
                                Text('••••  9286',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13)),
                                SizedBox(width: 18),
                                Text('08 / 32',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13)),
                                Spacer(),
                                Text('VISA',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800,
                                        fontStyle: FontStyle.italic))
                              ])
                            ])),
                  ])),
              const SizedBox(height: 12),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(28)),
                  child: Row(children: [
                    const Expanded(
                        child: _ActionButton(Icons.north_east, 'Deposit')),
                    Container(
                        width: 54,
                        height: 48,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF1F1F1), shape: BoxShape.circle),
                        child: const Icon(Icons.compare_arrows)),
                    const Expanded(
                        child: _ActionButton(Icons.south_east, 'Withdraw'))
                  ])),
              const SizedBox(height: 13),
              Container(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          const Expanded(
                              child: Text('Recent Transactions',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700))),
                          TextButton(
                              onPressed: () {},
                              child: const Text('View All',
                                  style: TextStyle(color: Colors.grey)))
                        ]),
                        const _Transaction(
                            Icons.cloud_outlined,
                            Color(0xFFDF263B),
                            'Adobe Creative Cloud',
                            'Today, 09:42',
                            r'-$59.99'),
                        const _Transaction(Icons.circle, Color(0xFF5B64C6),
                            'Stripe Payout', 'Today, 08:15', r'$187.50'),
                        const _Transaction(
                            Icons.work_outline,
                            Color(0xFF9B9B9B),
                            'Office Supplies',
                            'Jun 28, 10:22',
                            r'$24.00'),
                        const _Transaction(
                            Icons.shopping_bag_outlined,
                            Color(0xFF9B9B9B),
                            'Online Store',
                            'Jun 27, 17:50',
                            r'$37.50')
                      ])),
              const SizedBox(height: 13),
              Container(
                  padding: const EdgeInsets.fromLTRB(16, 18, 16, 15),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xFFB6200C),
                            Color(0xFFED4E0D),
                            Color(0xFFF57317)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 11, vertical: 8),
                              decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.22),
                                  borderRadius: BorderRadius.circular(24)),
                              child: const Text('↗ 2.46% this month',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11))),
                          const Spacer(),
                          const Icon(Icons.calendar_today_outlined,
                              color: Colors.white, size: 20)
                        ]),
                        const SizedBox(height: 13),
                        const Text(r'$1,842.56',
                            style: TextStyle(
                                color: Color(0xFFFFE0C8),
                                fontSize: 42,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -1.3)),
                        const SizedBox(height: 12),
                        const SizedBox(height: 156, child: _FinanceLine()),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun']
                                .map((e) => Text(e,
                                    style: const TextStyle(
                                        color: Colors.white70, fontSize: 11)))
                                .toList())
                      ])),
              const SizedBox(height: 13),
              Container(
                  padding: const EdgeInsets.fromLTRB(14, 18, 14, 15),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Color(0xFFEC510A), Color(0xFFF47812)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Column(children: [
                    _SpendingRow([
                      _SpendBubble(Icons.shopping_cart_outlined, 'Groceries',
                          '32,8%', 128),
                      _SpendBubble(Icons.coffee_outlined,
                          'Cafes and\nRestaurants', '14,8%', 111)
                    ]),
                    SizedBox(height: 10),
                    _SpendingRow([
                      _SpendBubble(Icons.checkroom_outlined,
                          'Clothes and\nShoes', '16,1%', 112),
                      _SpendBubble(Icons.favorite_border, 'Health', '8,4%', 92),
                      _SpendBubble(Icons.fitness_center, 'Sport', '11,3%', 87)
                    ])
                  ])),
              const SizedBox(height: 10),
            ])),
      ])));
}

class _ActionButton extends StatelessWidget {
  const _ActionButton(this.icon, this.label);
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) => TextButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: Colors.black),
      label: Text(label,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 12)),
      style: TextButton.styleFrom(visualDensity: VisualDensity.compact));
}

class _Transaction extends StatelessWidget {
  const _Transaction(this.icon, this.color, this.name, this.time, this.amount);
  final IconData icon;
  final Color color;
  final String name, time, amount;
  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(children: [
        CircleAvatar(
            radius: 18,
            backgroundColor: const Color(0xFFF4F4F4),
            child: Icon(icon, color: color, size: 19)),
        const SizedBox(width: 10),
        Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(name,
              style:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
          const SizedBox(height: 3),
          Text(time, style: const TextStyle(color: Colors.grey, fontSize: 10))
        ])),
        Text(amount,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700))
      ]));
}

class _FinanceLine extends StatelessWidget {
  const _FinanceLine();
  @override
  Widget build(BuildContext context) => Stack(children: [
        CustomPaint(painter: _FinancePainter(), child: const SizedBox.expand()),
        Positioned(
            top: 2,
            right: 5,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 9),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(r'$648.24',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700)),
                      Text('for March 2026',
                          style: TextStyle(color: Colors.grey, fontSize: 10))
                    ])))
      ]);
}

class _FinancePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint()
      ..color = Colors.white.withValues(alpha: 0.34)
      ..strokeWidth = 1;
    for (var i = 0; i < 3; i++) {
      final y = size.height * (0.32 + i * 0.31);
      canvas.drawLine(Offset(0, y), Offset(size.width, y), p);
    }
    const values = [
      0.43,
      0.4,
      0.4,
      0.52,
      0.56,
      0.42,
      0.45,
      0.36,
      0.55,
      0.7,
      0.69,
      0.83,
      0.62,
      0.55,
      0.67,
      0.64,
      0.5,
      0.62,
      0.54,
      0.42,
      0.59,
      0.57,
      0.7,
      0.76,
      0.83,
      0.93
    ];
    final points = List.generate(
        values.length,
        (i) => Offset(size.width * i / (values.length - 1),
            size.height * (1 - values[i])));
    final path = Path()..moveTo(points.first.dx, points.first.dy);
    for (var i = 1; i < points.length; i++) {
      final mid = (points[i - 1].dx + points[i].dx) / 2;
      path.cubicTo(
          mid, points[i - 1].dy, mid, points[i].dy, points[i].dx, points[i].dy);
    }
    canvas.drawPath(
        path,
        Paint()
          ..color = Colors.white
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..strokeCap = StrokeCap.round);
    canvas.drawCircle(points[18], 5, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant _FinancePainter oldDelegate) => false;
}

class _SpendingRow extends StatelessWidget {
  const _SpendingRow(this.items);
  final List<Widget> items;
  @override
  Widget build(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: items.map((e) => Flexible(child: e)).toList());
}

class _SpendBubble extends StatelessWidget {
  const _SpendBubble(this.icon, this.label, this.value, this.size);
  final IconData icon;
  final String label, value;
  final double size;
  @override
  Widget build(BuildContext context) => Container(
      width: size,
      height: size,
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withValues(alpha: 0.18),
          border: Border.all(
              color: Colors.white.withValues(alpha: 0.65), width: 1.2)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(icon, color: Colors.white, size: 18),
        const SizedBox(height: 5),
        Text(label,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.white, fontSize: 9, height: 1.05)),
        const SizedBox(height: 3),
        Text(value,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700))
      ]));
}
