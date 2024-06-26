import 'controller/home_search_filled_controller.dart';
import 'package:bustrackingapp/core/app_export.dart';
import 'package:bustrackingapp/widgets/custom_elevated_button.dart';
import 'package:bustrackingapp/widgets/custom_icon_button.dart';
import 'package:bustrackingapp/widgets/custom_search_view.dart';
import 'package:bustrackingapp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomeSearchFilledScreen extends GetWidget<HomeSearchFilledController> {
  const HomeSearchFilledScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgHomesearchfilled),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: CustomSearchView(
                                  margin:
                                      getMargin(left: 16, top: 24, right: 16),
                                  controller: controller.searchController,
                                  hintText: "lbl_where_to".tr,
                                  hintStyle:
                                      CustomTextStyles.bodyLargeErrorContainer,
                                  alignment: Alignment.center,
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 17,
                                          right: 14,
                                          bottom: 17),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgIcSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(54)),
                                  suffix: Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(15)),
                                      child: IconButton(
                                          onPressed: () {
                                            controller.searchController.clear();
                                          },
                                          icon: Icon(Icons.clear,
                                              color: Colors.grey.shade600))))),
                          Spacer(),
                          Padding(
                              padding: getPadding(left: 33),
                              child: Row(children: [
                                CustomIconButton(
                                    height: getSize(34),
                                    width: getSize(34),
                                    margin: getMargin(top: 132, bottom: 83),
                                    padding: getPadding(all: 9),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgTrophy)),
                                Container(
                                    height: getVerticalSize(249),
                                    width: getHorizontalSize(201),
                                    margin: getMargin(left: 24),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocationGray900249x200,
                                              height: getVerticalSize(249),
                                              width: getHorizontalSize(200),
                                              alignment: Alignment.center),
                                          CustomIconButton(
                                              height: getSize(34),
                                              width: getSize(34),
                                              margin: getMargin(top: 12),
                                              padding: getPadding(all: 9),
                                              alignment: Alignment.topRight,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgTrophy))
                                        ]))
                              ])),
                          Container(
                              height: getVerticalSize(356),
                              width: double.maxFinite,
                              margin: getMargin(top: 37),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomIconButton(
                                        height: getSize(54),
                                        width: getSize(54),
                                        margin:
                                            getMargin(right: 16, bottom: 111),
                                        padding: getPadding(all: 15),
                                        decoration:
                                            IconButtonStyleHelper.fillPrimary,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgGroup38172)),
                                    CustomIconButton(
                                        height: getSize(34),
                                        width: getSize(34),
                                        margin: getMargin(left: 116, top: 108),
                                        padding: getPadding(all: 9),
                                        alignment: Alignment.topLeft,
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgTrophy)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            padding: getPadding(
                                                left: 16,
                                                top: 34,
                                                right: 16,
                                                bottom: 34),
                                            decoration: AppDecoration
                                                .outlineBlack
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL24),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 2),
                                                      child: Text(
                                                          "msg_where_would_you"
                                                              .tr,
                                                          style: theme.textTheme
                                                              .headlineSmall)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 36),
                                                      child: Row(children: [
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    102),
                                                            width:
                                                                getHorizontalSize(
                                                                    24),
                                                            margin: getMargin(
                                                                top: 15,
                                                                bottom: 15),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgLocationGray900,
                                                                      height:
                                                                          getSize(
                                                                              24),
                                                                      width:
                                                                          getSize(
                                                                              24),
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter),
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgIcgps,
                                                                      height:
                                                                          getSize(
                                                                              24),
                                                                      width:
                                                                          getSize(
                                                                              24),
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              right:
                                                                                  10),
                                                                          child: SizedBox(
                                                                              height: getVerticalSize(59),
                                                                              child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: appTheme.gray900))))
                                                                ])),
                                                        Expanded(
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            12),
                                                                child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomTextFormField(
                                                                          controller: controller
                                                                              .inputdefaultController,
                                                                          hintText: "lbl_washington_ave"
                                                                              .tr,
                                                                          hintStyle: theme
                                                                              .textTheme
                                                                              .bodyLarge!),
                                                                      CustomTextFormField(
                                                                          controller: controller
                                                                              .inputdefaultController1,
                                                                          margin: getMargin(
                                                                              top:
                                                                                  24),
                                                                          hintText: "lbl_manchester"
                                                                              .tr,
                                                                          hintStyle: theme
                                                                              .textTheme
                                                                              .bodyLarge!,
                                                                          textInputAction:
                                                                              TextInputAction.done)
                                                                    ])))
                                                      ])),
                                                  CustomElevatedButton(
                                                      text: "lbl_find_bus".tr,
                                                      margin:
                                                          getMargin(top: 34),
                                                      onTap: () {
                                                        onTapFindbus();
                                                      })
                                                ])))
                                  ]))
                        ])))));
  }

  /// Navigates to the recommendedRoutesScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the recommendedRoutesScreen.
  onTapFindbus() {
    Get.toNamed(
      AppRoutes.recommendedRoutesScreen,
    );
  }
}
