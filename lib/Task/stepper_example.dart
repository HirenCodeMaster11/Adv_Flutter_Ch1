import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int currentStep = 0;
  continueStep()
  {
    if(currentStep<2)
    {
      setState(() {
        currentStep = currentStep+1;
      });
    }
  }
  cancelStep()
  {
    if(currentStep>0)
    {
      setState(() {
        currentStep = currentStep - 1;
      });
    }
  }

  onStepTapped(int value)
  {
    setState(() {
      currentStep = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Flutter Stepper Demo',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stepper(
              currentStep: currentStep,
              onStepContinue: continueStep,
              onStepCancel: cancelStep,
              onStepTapped: onStepTapped,
              physics: ClampingScrollPhysics(),
              controlsBuilder: (context, details) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap : details.onStepContinue,
                        child: Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Text('CONTINUE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),),
                        ),
                      ),
                      GestureDetector(
                        onTap : details.onStepCancel,
                        child: Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Text('CANCEL',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 17),),
                        ),
                      )
                    ],
                  ),
                );
              },
              steps: [
                Step(
                  isActive: currentStep >= 0,
                  state: currentStep >= 0 ?StepState.complete : StepState.disabled,
                  title: Text('Account'),
                  stepStyle: StepStyle(color: Colors.blue),
                  content: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                Step(
                  isActive: currentStep >= 1,
                  state: currentStep >= 1 ?StepState.complete : StepState.disabled,
                  title: Text('Address'),
                  stepStyle: StepStyle(color: Colors.blue),
                  content: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
                Step(
                  isActive: currentStep >= 2,
                  state: currentStep >= 2 ?StepState.complete : StepState.disabled,
                  title: Text('Mobile Number'),
                  stepStyle: StepStyle(color: Colors.blue),
                  content: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(border: OutlineInputBorder()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
