import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:syncfusion_flutter_core/core.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class MapCard extends StatefulWidget {
  @override
  _MapCardState createState() => _MapCardState();
}

class _MapCardState extends State<MapCard> {
  List<_Model> data;

  @override
  void initState() {
    data = const <_Model>[
      _Model('New South Wales', Color.fromRGBO(255, 215, 0, 1.0),
          '       New\nSouth Wales'),
      _Model('Queensland', Color.fromRGBO(72, 209, 204, 1.0), 'Queensland'),
      _Model('Northern Territory', Color.fromRGBO(255, 78, 66, 1.0),
          'Northern\nTerritory'),
      _Model('Victoria', Color.fromRGBO(171, 56, 224, 0.75), 'Victoria'),
      _Model('South Australia', Color.fromRGBO(126, 247, 74, 0.75),
          'South Australia'),
      _Model('Western Australia', Color.fromRGBO(79, 60, 201, 0.7),
          'Western Australia'),
      _Model('Tasmania', Color.fromRGBO(99, 164, 230, 1), 'Tasmania'),
      _Model('Australian Capital Territory', Colors.teal, 'ACT')
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 520,
        width: 520,
        child: Center(
          child: SfMaps(
            title: const MapTitle(text: 'Australia map'),
            layers: <MapShapeLayer>[
              MapShapeLayer(
                delegate: MapShapeLayerDelegate(
                  shapeFile: 'assets/australia.json',
                  shapeDataField: 'STATE_NAME',
                  dataCount: data.length,
                  primaryValueMapper: (int index) => data[index].state,
                  dataLabelMapper: (int index) => data[index].stateCode,
                  shapeColorValueMapper: (int index) => data[index].color,
                  shapeTooltipTextMapper: (int index) => data[index].stateCode,
                ),
                showDataLabels: true,
                showLegend: true,
                enableShapeTooltip: true,
                tooltipSettings: MapTooltipSettings(
                    color: Colors.grey[700],
                    strokeColor: Colors.white,
                    strokeWidth: 2),
                strokeColor: Colors.white,
                strokeWidth: 0.5,
                dataLabelSettings: MapDataLabelSettings(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize:
                            Theme.of(context).textTheme.caption.fontSize)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Model {
  const _Model(this.state, this.color, this.stateCode);

  final String state;
  final Color color;
  final String stateCode;
}
