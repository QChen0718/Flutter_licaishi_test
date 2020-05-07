import 'package:flutter/cupertino.dart';

class APPNavigator{
  static pushNamed(BuildContext context,String routeId,{params,popCallback}){
    Navigator.pushNamed(context, routeId,arguments: params).then((data){
      if(popCallback != null){
        popCallback(data);
      }
    });
  }

  static pushReplacement(BuildContext context,String routeId,{params}){
    Navigator.pushReplacementNamed(context, routeId,arguments: params);
  }

  static pushNamedAndRemoveUntil(BuildContext context, String routeId,{params}){
    Navigator.of(context).pushNamedAndRemoveUntil(routeId, (Route<dynamic>route)=>false,arguments: params);
  }
  static pushNamedAndRemoveUntilName(BuildContext context, String newRouteId, String oldRouteId,{params}){
//    RouteArguments routeArgument = new RouteArguments();
//    routeArgument.params = params;
    Navigator.of(context).pushNamedAndRemoveUntil(newRouteId,ModalRoute.withName('/oldRouteId'), arguments: params);
  }

  static popUtil(BuildContext context, String routeId ){
    Navigator.popUntil(context, ModalRoute.withName(routeId));
  }

}