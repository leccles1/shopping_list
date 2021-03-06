# Shopping List

A smart shopping list.

## Why?

Myself and my partner use shared apple notes to keep track of our shopping list. Broken down into a long checklist of categories and products.

As we make decisions on what to buy we untick them on the list. There is no ordering in place and it's lead to some very long lists. All out of order requiring a lot of scrolling to check we've got everything!


## The idea

A shopping list/any type of list app that enables simple ordering of items in the list along with some additional features like products shooting to the top of the list to build a shopping list over time.

Also shared lists, sharing lists between users, tracking changes made from all over time. 

# The stack

Serverless! For this project using an entirely serverless backend hosted on AWS is the aim. Over the course of the project it will expose me to serverless architecture and also opens the possibility of releasing the app to the public without much required on my side in terms of hosting, server management.

Flutter the IOS and android versions of the app will be created with Flutter

- AWS API Gateway
- AWS Amplify
- AWS Lambda


# The plan

## User Accounts
On initial download, users will create accounts. The user account will be used to track basic information about the user.

- Users can create lists
- Users can format the text in their list
- Users can invite others to collaborate on their lists
- Users are notified to changes in the list (Stretch)
- Users can view updates live (Or close to) in the lists

## List Editing
 - Editor based on the following [article](https://levelup.gitconnected.com/flutter-medium-like-text-editor-b41157f50f0e)
 - Group items in the list (categories)

## List management [Based on this UI](https://www.youtube.com/watch?v=DXQPBA0T3Rk&ab_channel=MarcusNg)

 - List collection dashboard.
 - List type (Shopping / other)



## Running the code in development

```
flutter packages pub run build_runner watch
```
The above command triggers the generation and watches your files for changes.

```
flutter packages pub run build_runner build
```
The above command triggers the generation once