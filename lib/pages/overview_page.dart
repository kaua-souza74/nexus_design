import 'package:flutter/material.dart';
import '../widgets/dashboard_widgets.dart';

const _maytechOrange = Color(0xFFF47716);
const _maytechMuted = Color(0xFF858585);

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});
  static const orange = _maytechOrange;
  static const muted = _maytechMuted;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFFF1F1F1),
        body: SafeArea(
            child: CustomScrollView(slivers: [
          SliverPadding(
              padding: const EdgeInsets.fromLTRB(18, 12, 18, 26),
              sliver: SliverList.list(children: [
                Row(children: [
                  Container(
                      width: 42,
                      height: 42,
                      decoration: const BoxDecoration(
                          color: orange, shape: BoxShape.circle),
                      child: const Icon(Icons.change_circle_outlined,
                          color: Colors.white)),
                  const SizedBox(width: 9),
                  const Text('MAYTECH',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  const Spacer(),
                  const _RoundIcon(Icons.notifications_none, dot: true),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFFD9C2AB),
                      child: Icon(Icons.person, color: Colors.white))
                ]),
                const SizedBox(height: 21),
                const Text('Hello Simanjorang',
                    style: TextStyle(
                        fontSize: 27,
                        letterSpacing: -0.8,
                        fontWeight: FontWeight.w500)),
                const SizedBox(height: 3),
                const Text('See how things are performing right now',
                    style: TextStyle(fontSize: 13, color: muted)),
                const SizedBox(height: 17),
                const Row(children: [
                  Expanded(
                      child: _SummaryCard(
                          title: 'Total Revenue',
                          value: r'$42,124',
                          change: '↓ +20%',
                          icon: Icons.groups_2_outlined,
                          child: MiniTrendChart(color: orange, values: [
                            0.42,
                            0.55,
                            0.49,
                            0.64,
                            0.57,
                            0.72,
                            0.65,
                            0.83,
                            0.74,
                            0.79
                          ]))),
                  SizedBox(width: 10),
                  Expanded(
                      child: _SummaryCard(
                          title: 'Total Customers',
                          value: '15,880',
                          change: '↑ +16%',
                          icon: Icons.people_outline,
                          child: _TinyPills()))
                ]),
                const SizedBox(height: 18),
                Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xFFFFA000), Color(0xFFFF5B15)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(21)),
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Top Subscriptions',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 13),
                          Row(children: [
                            Expanded(
                                child:
                                    _SubscriptionBox('Maytech Ops', '5,142')),
                            SizedBox(width: 10),
                            Expanded(
                                child: _SubscriptionBox('Maytech Pay', '3,827'))
                          ]),
                          SizedBox(height: 10),
                          Row(children: [
                            Expanded(
                                child:
                                    _SubscriptionBox('Maytech Edu', '2,012')),
                            SizedBox(width: 10),
                            Expanded(
                                child:
                                    _SubscriptionBox('Maytech Stock', '1,520'))
                          ])
                        ])),
                const SizedBox(height: 17),
                Card(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 15, 16, 13),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(children: [
                                Expanded(
                                    child: Text('Revenue by Product',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600))),
                                Icon(Icons.more_horiz)
                              ]),
                              const SizedBox(height: 18),
                              const _RevenueBars(),
                              const SizedBox(height: 8),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    'Ops',
                                    'Pay',
                                    'Edu',
                                    'Stock',
                                    'Others'
                                  ]
                                      .map((e) => Text(e,
                                          style: const TextStyle(
                                              color: muted, fontSize: 10)))
                                      .toList())
                            ]))),
                const SizedBox(height: 17),
                const Card(
                    child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Expanded(
                                    child: Text('Lead Status',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600))),
                                Icon(Icons.more_horiz)
                              ]),
                              SizedBox(height: 10),
                              SizedBox(height: 180, child: _LeadBubbles()),
                              SizedBox(height: 5),
                              Wrap(
                                  spacing: 12,
                                  runSpacing: 7,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    _Legend(orange, 'New'),
                                    _Legend(Color(0xFFFF8D45), 'Working'),
                                    _Legend(Color(0xFFFFAA68), 'Converted'),
                                    _Legend(Color(0xFFFFC69B), 'Nurture')
                                  ])
                            ]))),
                const SizedBox(height: 17),
                Card(
                    child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(children: [
                                Expanded(
                                    child: Text('Campaign Influence on Leads',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600))),
                                Icon(Icons.more_horiz)
                              ]),
                              const SizedBox(height: 8),
                              const Wrap(spacing: 12, children: [
                                Text('Week',
                                    style:
                                        TextStyle(color: muted, fontSize: 11)),
                                Text('Month',
                                    style:
                                        TextStyle(color: muted, fontSize: 11)),
                                Chip(
                                    label: Text('Year',
                                        style: TextStyle(fontSize: 10)),
                                    visualDensity: VisualDensity.compact)
                              ]),
                              const SizedBox(height: 3),
                              const Text('4,278',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w700)),
                              const Text('leads acquired from webinars',
                                  style: TextStyle(color: muted, fontSize: 11)),
                              const SizedBox(height: 8),
                              const SizedBox(
                                  height: 112, child: _CampaignChart()),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    'Jan',
                                    'Feb',
                                    'Mar',
                                    'Apr',
                                    'May',
                                    'Jun',
                                    'Jul',
                                    'Aug'
                                  ]
                                      .map((e) => Text(e,
                                          style: const TextStyle(
                                              color: muted, fontSize: 9)))
                                      .toList()),
                              const SizedBox(height: 9),
                              const Wrap(spacing: 10, runSpacing: 5, children: [
                                _Legend(Color(0xFFD8C9B9), 'Training'),
                                _Legend(Color(0xFFFFCDA9), 'Webinar'),
                                _Legend(Color(0xFFFFE1CB), 'Workshop'),
                                _Legend(Color(0xFFFFF3E8), 'Seminar')
                              ])
                            ]))),
                const SizedBox(height: 17),
                Card(
                    child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(children: [
                                Expanded(
                                    child: Text('Customer Satisfaction',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600))),
                                Icon(Icons.more_horiz)
                              ]),
                              const SizedBox(height: 11),
                              Row(children: [
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 7),
                                    decoration: BoxDecoration(
                                        color: orange,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: const Text('☆  4.53',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700))),
                                const SizedBox(width: 8),
                                OutlinedButton.icon(
                                    onPressed: () {},
                                    icon: const Icon(Icons.auto_awesome,
                                        size: 14),
                                    label: const Text('AI Analyze'),
                                    style: OutlinedButton.styleFrom(
                                        foregroundColor: Colors.black,
                                        visualDensity: VisualDensity.compact))
                              ]),
                              const SizedBox(height: 12),
                              const _RatingRow('Ops', 4.82),
                              const _RatingRow('Pay', 4.63),
                              const _RatingRow('Edu', 4.58),
                              const _RatingRow('Stock', 4.41),
                              const _RatingRow('Others', 4.22)
                            ]))),
                const SizedBox(height: 17),
                const Card(
                    child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Expanded(
                                    child: Text('Recent Sales',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600))),
                                Icon(Icons.chevron_right)
                              ]),
                              SizedBox(height: 8),
                              Text('2,418  +12% from last month',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(height: 9),
                              _SaleRow('Carter Press', 'Edu', r'$500',
                                  selected: true),
                              _SaleRow('Corey Carder', 'Edu', r'$500'),
                              _SaleRow('Jordyn Press', 'Pay', r'$250'),
                              _SaleRow('Angel Baptista', 'Stock', r'$1,000')
                            ]))),
                const SizedBox(height: 10),
              ])),
        ])),
      );
}

class _RoundIcon extends StatelessWidget {
  const _RoundIcon(this.icon, {this.dot = false});
  final IconData icon;
  final bool dot;
  @override
  Widget build(BuildContext context) => Stack(children: [
        CircleAvatar(
            backgroundColor: Colors.white,
            radius: 19,
            child: Icon(icon, size: 20, color: Colors.black87)),
        if (dot)
          const Positioned(
              right: 2,
              top: 2,
              child: CircleAvatar(radius: 3, backgroundColor: Colors.red))
      ]);
}

class _SummaryCard extends StatelessWidget {
  const _SummaryCard(
      {required this.title,
      required this.value,
      required this.change,
      required this.icon,
      required this.child});
  final String title, value, change;
  final IconData icon;
  final Widget child;
  @override
  Widget build(BuildContext context) => Card(
      child: Padding(
          padding: const EdgeInsets.all(12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Icon(icon, size: 14),
              const SizedBox(width: 4),
              Expanded(
                  child: Text(title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w500)))
            ]),
            const SizedBox(height: 10),
            Text(value,
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.w800)),
            Text(change,
                style: const TextStyle(fontSize: 10, color: Color(0xFFE16B45))),
            const SizedBox(height: 4),
            SizedBox(height: 36, child: child)
          ])));
}

class _TinyPills extends StatelessWidget {
  const _TinyPills();
  @override
  Widget build(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          6,
          (i) => Container(
              width: 12,
              height: 25 + (i % 3) * 4,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFF4E9),
                  borderRadius: BorderRadius.circular(7)))));
}

class _SubscriptionBox extends StatelessWidget {
  const _SubscriptionBox(this.name, this.value);
  final String name, value;
  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),
      decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.37),
          borderRadius: BorderRadius.circular(13)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white, fontSize: 11)),
        const SizedBox(height: 4),
        Text(value,
            style: const TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600))
      ]));
}

class _RevenueBars extends StatelessWidget {
  const _RevenueBars();

  @override
  Widget build(BuildContext context) {
    const heights = [105.0, 84.0, 70.0, 58.0, 90.0];
    return SizedBox(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          5,
          (i) => Container(
            width: 39,
            height: heights[i],
            decoration: BoxDecoration(
              color: i == 2 ? _maytechOrange : const Color(0xFFFFF8F0),
              borderRadius: BorderRadius.circular(22),
            ),
            alignment: Alignment.topCenter,
            child: i == 2
                ? Container(
                    margin: const EdgeInsets.only(top: 8),
                    width: 18,
                    height: 18,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}

class _LeadBubbles extends StatelessWidget {
  const _LeadBubbles();

  @override
  Widget build(BuildContext context) => const Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 55,
            top: 17,
            child: _Bubble('40%', 136, _maytechOrange, Colors.white),
          ),
          Positioned(
            right: 44,
            bottom: 8,
            child: _Bubble('28%', 112, Color(0xFFFF9147), Colors.white),
          ),
          Positioned(
            left: 75,
            bottom: 9,
            child: _Bubble(
              '20%',
              90,
              Color(0xFFFFAA68),
              Color(0xFF4A3427),
            ),
          ),
          Positioned(
            left: 32,
            top: 68,
            child: _Bubble(
              '12%',
              54,
              Color(0xFFFFC69B),
              Color(0xFF4A3427),
            ),
          ),
        ],
      );
}

class _Bubble extends StatelessWidget {
  const _Bubble(this.label, this.size, this.color, this.textColor);
  final String label;
  final double size;
  final Color color, textColor;
  @override
  Widget build(BuildContext context) => Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      alignment: Alignment.center,
      child: Text(label,
          style: TextStyle(color: textColor, fontSize: size > 100 ? 26 : 19)));
}

class _Legend extends StatelessWidget {
  const _Legend(this.color, this.label);
  final Color color;
  final String label;
  @override
  Widget build(BuildContext context) =>
      Row(mainAxisSize: MainAxisSize.min, children: [
        CircleAvatar(radius: 4, backgroundColor: color),
        const SizedBox(width: 4),
        Text(label, style: const TextStyle(fontSize: 10, color: _maytechMuted))
      ]);
}

class _RatingRow extends StatelessWidget {
  const _RatingRow(this.label, this.rating);
  final String label;
  final double rating;
  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(children: [
        SizedBox(
            width: 38,
            child: Text(label,
                style: const TextStyle(color: _maytechMuted, fontSize: 12))),
        Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                    value: rating / 5,
                    minHeight: 9,
                    color: const Color(0xFFFFA35B),
                    backgroundColor: const Color(0xFFE6E6E6)))),
        const SizedBox(width: 9),
        Text(rating.toStringAsFixed(2),
            style: const TextStyle(fontSize: 12, color: _maytechMuted))
      ]));
}

class _CampaignChart extends StatelessWidget {
  const _CampaignChart();
  @override
  Widget build(BuildContext context) =>
      CustomPaint(painter: _CampaignPainter(), child: const SizedBox.expand());
}

class _CampaignPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < 5; i++) {
      final y = size.height * i / 4;
      var x = 0.0;
      while (x < size.width) {
        canvas.drawLine(
            Offset(x, y),
            Offset(x + 5, y),
            Paint()
              ..color = const Color(0xFFB9B9B9)
              ..strokeWidth = 1);
        x += 10;
      }
    }
    const series = [
      [0.52, 0.65, 0.58, 0.72, 0.51, 0.61, 0.74, 0.70],
      [0.36, 0.43, 0.48, 0.49, 0.71, 0.68, 0.80, 0.73],
      [0.43, 0.54, 0.42, 0.36, 0.49, 0.42, 0.57, 0.39],
      [0.30, 0.46, 0.39, 0.51, 0.40, 0.54, 0.63, 0.46]
    ];
    const colors = [
      Color(0xFFD8C9B9),
      _maytechOrange,
      Color(0xFFE7E1DA),
      Color(0xFFFFD5BA)
    ];
    for (var s = 0; s < series.length; s++) {
      final points = List.generate(
          series[s].length,
          (i) => Offset(size.width * i / (series[s].length - 1),
              size.height * (1 - series[s][i])));
      final path = Path()..moveTo(points.first.dx, points.first.dy);
      for (var i = 1; i < points.length; i++) {
        path.lineTo(points[i].dx, points[i].dy);
      }
      canvas.drawPath(
          path,
          Paint()
            ..color = colors[s]
            ..style = PaintingStyle.stroke
            ..strokeWidth = s == 1 ? 2.5 : 1.5
            ..strokeCap = StrokeCap.round);
      for (final point in points) {
        canvas.drawCircle(point, 2, Paint()..color = colors[s]);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _CampaignPainter oldDelegate) => false;
}

class _SaleRow extends StatelessWidget {
  const _SaleRow(this.name, this.product, this.price, {this.selected = false});
  final String name, product, price;
  final bool selected;
  @override
  Widget build(BuildContext context) => Container(
      margin: const EdgeInsets.only(top: 6),
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 9),
      decoration: BoxDecoration(
          color: selected ? _maytechOrange : const Color(0xFFFAF5EF),
          borderRadius: BorderRadius.circular(25)),
      child: Row(children: [
        CircleAvatar(
            radius: 11,
            backgroundColor:
                selected ? Colors.white70 : const Color(0xFFE2D4C9),
            child: const Icon(Icons.person, size: 13, color: Colors.black54)),
        const SizedBox(width: 8),
        Expanded(
            child: Text(name,
                style: TextStyle(
                    color: selected ? Colors.white : _maytechMuted,
                    fontSize: 12))),
        Text(product,
            style: TextStyle(
                color: selected ? Colors.white : _maytechMuted, fontSize: 12)),
        const SizedBox(width: 17),
        Text(price,
            style: TextStyle(
                color: selected ? Colors.white : _maytechMuted, fontSize: 12))
      ]));
}
