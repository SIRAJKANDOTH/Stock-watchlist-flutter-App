import 'package:mystockapp/models/categorymodel.dart';
List<CategoryModel> getCategories() {
  List<CategoryModel> catogories = [];
  CategoryModel categoryinstance= new CategoryModel();

  //instance 1
  categoryinstance.categoryName='Business';
  categoryinstance.imageUrl='https://images.unsplash.com/photo-1444653614773-995cb1ef9efa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=755&q=80';
  catogories.add(categoryinstance);
  //instance 2
   categoryinstance= new CategoryModel();
  categoryinstance.categoryName='Technology';
  categoryinstance.imageUrl='https://images.unsplash.com/photo-1518770660439-4636190af475?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80';
  catogories.add(categoryinstance);
  //instance 3
   categoryinstance= new CategoryModel();
  categoryinstance.categoryName='Sports';
  categoryinstance.imageUrl='https://www.automobilemag.com/uploads/sites/11/2018/12/50-Years-of-IMSA-16.jpg';
  catogories.add(categoryinstance);
  //instance 3
  categoryinstance= new CategoryModel();
  categoryinstance.categoryName='Entertainment';
  categoryinstance.imageUrl='https://images.unsplash.com/photo-1543328874-afb1164619bb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=793&q=80';
  catogories.add(categoryinstance);
  //instance 5
  categoryinstance= new CategoryModel();
  categoryinstance.categoryName='Stock market';
  categoryinstance.imageUrl='https://images.unsplash.com/photo-1611974789855-9c2a0a7236a3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80';
  catogories.add(categoryinstance);
  print(catogories[2].categoryName);
  print(catogories.length);
return catogories;

}


