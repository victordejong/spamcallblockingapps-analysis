.class public interface abstract Lcom/razorpay/CheckoutInteractor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract callNativeIntent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract checkSmsPermission()V
.end method

.method public abstract getSdkPlugins()Ljava/lang/String;
.end method

.method public abstract invokePopup(Ljava/lang/String;)V
.end method

.method public abstract isUserRegistered(Ljava/lang/String;)Z
.end method

.method public abstract isUserRegisteredOnUPI(Ljava/lang/String;)Z
.end method

.method public abstract isWebViewSafe(ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V
.end method

.method public abstract isWebViewSafeOnUI(ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V
.end method

.method public abstract onCheckoutBackPress()V
.end method

.method public abstract onCheckoutRendered()V
.end method

.method public abstract onComplete(Ljava/lang/String;)V
.end method

.method public abstract onDismiss()V
.end method

.method public abstract onDismiss(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onFault(Ljava/lang/String;)V
.end method

.method public abstract onLoad()V
.end method

.method public abstract onSubmit(Ljava/lang/String;)V
.end method

.method public abstract relay(Ljava/lang/String;)V
.end method

.method public abstract requestExtraAnalyticsData()V
.end method

.method public abstract requestOtpPermission()V
.end method

.method public abstract sendDataToWebView(ILjava/lang/String;)V
.end method

.method public abstract setAppToken(Ljava/lang/String;)V
.end method

.method public abstract setDeviceToken(Ljava/lang/String;)V
.end method

.method public abstract setDimensions(II)V
.end method

.method public abstract setMerchantOptions(Ljava/lang/String;)V
.end method

.method public abstract setPaymentID(Ljava/lang/String;)V
.end method

.method public abstract showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract toast(Ljava/lang/String;I)V
.end method
