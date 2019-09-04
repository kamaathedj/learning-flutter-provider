import 'package:flutter/material.dart';
import 'package:playground/src/stores/counter_store.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    final counter=Provider.of<CounterStore>(context);
  
    return Scaffold(
      appBar: AppBar(
        
        title: Text('counter page'),
      ),
      body: Center(
       
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.count}',
              style: Theme.of(context).textTheme.display1,
            ),
            Consumer<CounterStore>(
              builder: (context, counterstore,_) {
                return FlatButton(
                  child: Text('decrement'),
                  onPressed: (){counterstore.decrementInStore();},

                );
              }
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){counter.incrementInStore();},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
