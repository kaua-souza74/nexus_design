import 'package:flutter/material.dart';
import '../widgets/dashboard_widgets.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({super.key});
  static const forest = Color(0xFF243D18);
  static const lime = Color(0xFFAEC83F);
  static const purple = Color(0xFF8065C6);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color(0xFFF1F1F3),
      body: SafeArea(
          child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
            child: Container(
                padding: const EdgeInsets.fromLTRB(19, 13, 19, 19),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFF182A0E),
                      Color(0xFF526C22),
                      Color(0xFF263D16)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(4))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(children: [
                        Spacer(),
                        _HeaderIcon(Icons.settings_outlined),
                        SizedBox(width: 8),
                        _HeaderIcon(Icons.menu_book_outlined),
                        SizedBox(width: 8),
                        _HeaderIcon(Icons.notifications_none),
                        SizedBox(width: 8),
                        CircleAvatar(
                            radius: 17, child: Icon(Icons.person, size: 18))
                      ]),
                      const SizedBox(height: 18),
                      const Text('Monday, April 18, 2026',
                          style:
                              TextStyle(color: Colors.white70, fontSize: 12)),
                      const SizedBox(height: 10),
                      const Text('Good Morning',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.w400)),
                      const Text('Velodrome',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: 13),
                      const Row(children: [
                        _StatusPill(Icons.blur_circular, 'Stable  1,21%'),
                        SizedBox(width: 7),
                        _StatusPill(
                            Icons.radio_button_checked, 'Growing  5,30%')
                      ]),
                      const SizedBox(height: 18),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: [
                            'Overview',
                            'Analytics',
                            'Customers',
                            'Billing',
                            'Reports',
                            'Settings'
                          ]
                                  .map((e) => Padding(
                                      padding: const EdgeInsets.only(right: 19),
                                      child: Text(e,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: e == 'Overview'
                                                  ? FontWeight.w700
                                                  : FontWeight.w400))))
                                  .toList())),
                    ]))),
        SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 25),
            sliver: SliverList.list(children: [
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    const _FilterButton(
                        '2025 Season', Icons.keyboard_arrow_down),
                    const SizedBox(width: 7),
                    const _FilterButton('All', Icons.keyboard_arrow_down),
                    const SizedBox(width: 7),
                    OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.search, size: 16),
                        label: const Text('Search'),
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            side: BorderSide.none,
                            shape: const StadiumBorder()))
                  ])),
              const SizedBox(height: 14),
              const _AnalyticsCard(
                  title: 'Monthly Recurring Revenue',
                  icon: Icons.local_fire_department,
                  average: 'Avg 0,07%',
                  value: r'$87.410',
                  badge: '0,13%',
                  description: 'Earnings increase +10% than last month',
                  color: lime,
                  chart: _RevenueGauge(),
                  footer: Row(children: [
                    _FootMetric('New Revenue', r'$12,430'),
                    SizedBox(width: 18),
                    _FootMetric('Expansion', r'$4,210'),
                    SizedBox(width: 18),
                    _FootMetric('Churn', '23%')
                  ])),
              const SizedBox(height: 12),
              const _AnalyticsCard(
                  title: 'Net Revenue Growth',
                  icon: Icons.workspace_premium_outlined,
                  average: 'Avg 1.01%',
                  value: r'$3.150',
                  badge: '↓ 0,21%',
                  description: 'Earnings increase +2,19% than last month',
                  color: purple,
                  chart: _GrowthChart()),
              const SizedBox(height: 12),
              const _ActiveUsersCard(),
              const SizedBox(height: 15),
              Card(
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              const Expanded(
                                  child: Text('Product Overview',
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600))),
                              TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.filter_list, size: 15),
                                  label: const Text('Filter')),
                              FilledButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.download, size: 15),
                                  label: const Text('Export CSV'),
                                  style: FilledButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      visualDensity: VisualDensity.compact))
                            ]),
                            const SizedBox(height: 8),
                            const _OrderTile(
                                'Roche Watch A18',
                                'W82026CC',
                                'Waiting for payment',
                                r'$19.99',
                                'April 8, 2026',
                                'TikTok Shop',
                                r'$1.80',
                                r'$8.50')
                          ]))),
            ])),
      ])));
}

class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon(this.icon);
  final IconData icon;
  @override
  Widget build(BuildContext context) => CircleAvatar(
      radius: 17,
      backgroundColor: Colors.white24,
      child: Icon(icon, size: 17, color: Colors.white));
}

class _StatusPill extends StatelessWidget {
  const _StatusPill(this.icon, this.text);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: Row(children: [
        Icon(icon, size: 12, color: Colors.white),
        const SizedBox(width: 5),
        Text(text, style: const TextStyle(color: Colors.white, fontSize: 10))
      ]));
}

class _FilterButton extends StatelessWidget {
  const _FilterButton(this.text, this.icon);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) => OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon, size: 16),
      label: Text(text),
      style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0xFFE7E8E4),
          foregroundColor: Colors.black,
          side: BorderSide.none,
          shape: const StadiumBorder()));
}

class _AnalyticsCard extends StatelessWidget {
  const _AnalyticsCard(
      {required this.title,
      required this.icon,
      required this.average,
      required this.value,
      required this.badge,
      required this.description,
      required this.color,
      required this.chart,
      this.footer});
  final String title, average, value, badge, description;
  final IconData icon;
  final Color color;
  final Widget chart;
  final Widget? footer;
  @override
  Widget build(BuildContext context) => Card(
      child: Padding(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Icon(icon, size: 15),
              const SizedBox(width: 8),
              Expanded(
                  child: Text(title,
                      style:
                          const TextStyle(color: Colors.grey, fontSize: 11))),
              Text(average,
                  style: const TextStyle(color: Colors.grey, fontSize: 10))
            ]),
            const SizedBox(height: 18),
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(value,
                  style: const TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -1.5)),
              const SizedBox(width: 8),
              _Pill(badge, tint: const Color(0xFFE7EAEB))
            ]),
            const SizedBox(height: 5),
            Text(description,
                style: const TextStyle(color: Colors.grey, fontSize: 11)),
            const SizedBox(height: 13),
            SizedBox(height: 120, child: chart),
            if (footer != null) ...[const SizedBox(height: 13), footer!]
          ])));
}

class _Pill extends StatelessWidget {
  const _Pill(this.text, {this.tint = const Color(0xFFE8ECEC)});
  final String text;
  final Color tint;
  @override
  Widget build(BuildContext context) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration:
          BoxDecoration(color: tint, borderRadius: BorderRadius.circular(14)),
      child: Text(text,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600)));
}

class _ActiveUsersCard extends StatelessWidget {
  const _ActiveUsersCard();

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(children: [
                Icon(Icons.accessibility_new, size: 17),
                SizedBox(width: 8),
                Expanded(
                    child: Text('Active Users',
                        style: TextStyle(color: Colors.grey, fontSize: 12))),
                Text('Avg 2.01%',
                    style: TextStyle(color: Colors.grey, fontSize: 11)),
              ]),
              const SizedBox(height: 14),
              const Text('Avg User',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text('97%',
                      style: TextStyle(
                          fontSize: 39,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -1)),
                  const SizedBox(width: 8),
                  const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: _Pill('4,02%')),
                  const Spacer(),
                  SizedBox(
                    width: 112,
                    height: 55,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: List.generate(
                        9,
                        (i) => Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            height: 14.0 + ((i * 17) % 40),
                            decoration: BoxDecoration(
                              color: i > 4
                                  ? AnalyticsPage.lime
                                  : const Color(0xFFE6EAEB),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Text('New User 814% ↑',
                  style: TextStyle(color: Colors.grey, fontSize: 11)),
              const SizedBox(height: 13),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color(0xFFF4F6F7),
                    borderRadius: BorderRadius.circular(15)),
                child: const Column(children: [
                  Row(children: [
                    Expanded(child: _DetailLabel('Golden Hour', '2:00 PM')),
                    Expanded(child: _DetailLabel('Quality', 'Excellent')),
                    Expanded(child: _DetailLabel('Churned', '13%')),
                  ]),
                  Divider(height: 18),
                  Text('See user details more clearly. View user insights',
                      style: TextStyle(color: Colors.grey, fontSize: 10)),
                ]),
              ),
            ],
          ),
        ),
      );
}

class _RevenueGauge extends StatelessWidget {
  const _RevenueGauge();
  @override
  Widget build(BuildContext context) => Column(children: [
        Row(children: [
          for (var i = 0; i < 9; i++)
            Expanded(
                child: Container(
                    height: 19,
                    margin: const EdgeInsets.only(right: 2),
                    color:
                        i < 5 ? AnalyticsPage.lime : const Color(0xFFE6E9E9))),
        ]),
        const SizedBox(height: 6),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: ['0', '1000', '2,000', '3,000', '4,000']
                .map((e) => Text(e,
                    style: const TextStyle(fontSize: 8, color: Colors.grey)))
                .toList()),
        const SizedBox(height: 18),
        const Row(children: [
          _FootMetric('New Revenue', r'$12,430'),
          Spacer(),
          _FootMetric('Expansion', r'$4,210'),
          Spacer(),
          _FootMetric('Churn', '23%')
        ])
      ]);
}

class _GrowthChart extends StatelessWidget {
  const _GrowthChart();
  @override
  Widget build(BuildContext context) => Column(children: [
        const Expanded(
            child: MiniTrendChart(
                color: AnalyticsPage.purple,
                values: [0.08, 0.22, 0.31, 0.38, 0.41, 0.66, 0.69, 0.7, 0.86])),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Text('Aug 1',
              style: TextStyle(color: Colors.grey, fontSize: 10)),
          Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: const Color(0xFFF3F0F8),
                  borderRadius: BorderRadius.circular(18)),
              child: const Text(r'$123.150   4,02%',
                  style: TextStyle(fontSize: 10))),
          const Text('Aug 31',
              style: TextStyle(color: Colors.grey, fontSize: 10))
        ])
      ]);
}

class _FootMetric extends StatelessWidget {
  const _FootMetric(this.label, this.value);
  final String label, value;
  @override
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 9)),
        Text(value,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12))
      ]);
}

class _DetailLabel extends StatelessWidget {
  const _DetailLabel(this.title, this.value);
  final String title, value;
  @override
  Widget build(BuildContext context) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(title, style: const TextStyle(color: Colors.grey, fontSize: 10)),
        const SizedBox(height: 3),
        Text(value,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 12))
      ]);
}

class _OrderTile extends StatelessWidget {
  const _OrderTile(this.product, this.order, this.status, this.price, this.date,
      this.platform, this.tax, this.discount);
  final String product, order, status, price, date, platform, tax, discount;
  @override
  Widget build(BuildContext context) => Container(
      margin: const EdgeInsets.only(top: 7),
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
          color: const Color(0xFFF6F7F8),
          borderRadius: BorderRadius.circular(12)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Expanded(
              child: Text(product,
                  style: const TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 12))),
          Text(price,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 12))
        ]),
        const SizedBox(height: 4),
        Text('$order  •  $status',
            style: const TextStyle(color: Colors.grey, fontSize: 10)),
        Text('$date  •  $platform',
            style: const TextStyle(color: Colors.grey, fontSize: 10)),
        Text('Tax $tax  •  Discount $discount',
            style: const TextStyle(color: Colors.grey, fontSize: 10))
      ]));
}
