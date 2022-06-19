.class public Lcom/razorpay/CheckoutBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private integratedPlugin:Ljava/lang/String;

.field public interactor:Lcom/razorpay/CheckoutInteractor;

.field private isRegistered:Z

.field private webViewType:I


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutInteractor;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/razorpay/CheckoutBridge;->isRegistered:Z

    .line 3
    iput-object p1, p0, Lcom/razorpay/CheckoutBridge;->interactor:Lcom/razorpay/CheckoutInteractor;

    .line 4
    iput p2, p0, Lcom/razorpay/CheckoutBridge;->webViewType:I

    return-void
.end method

.method public static synthetic access$002(Lcom/razorpay/CheckoutBridge;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/razorpay/CheckoutBridge;->isRegistered:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/CheckoutBridge;->integratedPlugin:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final callNativeIntent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/U$_z$;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/U$_z$;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final callNativeIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    new-instance v0, Lcom/razorpay/I$_n_;

    invoke-direct {v0, p0, p1, p2}, Lcom/razorpay/I$_n_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final getSdkPlugins()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/H$_a_;

    invoke-direct {v0, p0}, Lcom/razorpay/H$_a_;-><init>(Lcom/razorpay/CheckoutBridge;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafe(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    .line 2
    iget-object v0, p0, Lcom/razorpay/CheckoutBridge;->integratedPlugin:Ljava/lang/String;

    return-object v0
.end method

.method public invokePopup(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutBridge;->interactor:Lcom/razorpay/CheckoutInteractor;

    invoke-interface {v0, p1}, Lcom/razorpay/CheckoutInteractor;->invokePopup(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/razorpay/Y_$B$;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/Y_$B$;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final isUserRegistered(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/r_$Z$;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/r_$Z$;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafe(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    .line 2
    iget-boolean p1, p0, Lcom/razorpay/CheckoutBridge;->isRegistered:Z

    return p1
.end method

.method public final isUserRegisteredOnUPI(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/I$_e_;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/I$_e_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafe(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    .line 2
    iget-boolean p1, p0, Lcom/razorpay/CheckoutBridge;->isRegistered:Z

    return p1
.end method

.method public isWebViewSafe(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutBridge;->interactor:Lcom/razorpay/CheckoutInteractor;

    iget v1, p0, Lcom/razorpay/CheckoutBridge;->webViewType:I

    invoke-interface {v0, v1, p1}, Lcom/razorpay/CheckoutInteractor;->isWebViewSafe(ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutBridge;->interactor:Lcom/razorpay/CheckoutInteractor;

    iget v1, p0, Lcom/razorpay/CheckoutBridge;->webViewType:I

    invoke-interface {v0, v1, p1}, Lcom/razorpay/CheckoutInteractor;->isWebViewSafeOnUI(ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public onCheckoutBackPress()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutBridge;->interactor:Lcom/razorpay/CheckoutInteractor;

    invoke-interface {v0}, Lcom/razorpay/CheckoutInteractor;->onCheckoutBackPress()V

    .line 2
    new-instance v0, Lcom/razorpay/Q__v$;

    invoke-direct {v0, p0}, Lcom/razorpay/Q__v$;-><init>(Lcom/razorpay/CheckoutBridge;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final onCheckoutRendered()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/C__D$;

    invoke-direct {v0, p0}, Lcom/razorpay/C__D$;-><init>(Lcom/razorpay/CheckoutBridge;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafe(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final oncomplete(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/h__y_;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/h__y_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final ondismiss()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/B_$q$;

    invoke-direct {v0, p0}, Lcom/razorpay/B_$q$;-><init>(Lcom/razorpay/CheckoutBridge;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final ondismiss(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 2
    new-instance v0, Lcom/razorpay/J$$A_;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/J$$A_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final onerror(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/Q$$U_;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/Q$$U_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final onfault(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/O__Y_;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/O__Y_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final onload()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/l__d$;

    invoke-direct {v0, p0}, Lcom/razorpay/l__d$;-><init>(Lcom/razorpay/CheckoutBridge;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final onsubmit(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/J$_0_;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/J$_0_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final relay(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/b_$A$;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/b_$A$;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final requestExtraAnalyticsData()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/T__j$;

    invoke-direct {v0, p0}, Lcom/razorpay/T__j$;-><init>(Lcom/razorpay/CheckoutBridge;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final setAppToken(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/razorpay/CheckoutBridge;->interactor:Lcom/razorpay/CheckoutInteractor;

    invoke-interface {v0, p1}, Lcom/razorpay/CheckoutInteractor;->setAppToken(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/razorpay/t_$J_;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/t_$J_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final setDeviceToken(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/y$_O_;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/y$_O_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final setDimensions(II)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/K$$z$;

    invoke-direct {v0, p0, p1, p2}, Lcom/razorpay/K$$z$;-><init>(Lcom/razorpay/CheckoutBridge;II)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final setMerchantOptions(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/S$_U_;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/S$_U_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final setPaymentID(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/N$$J$;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/N$$J$;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/B$$J$;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/razorpay/B$$J$;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method

.method public final toast(Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/razorpay/L$$C_;

    invoke-direct {v0, p0, p1, p2}, Lcom/razorpay/L$$C_;-><init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/razorpay/CheckoutBridge;->isWebViewSafeOnUI(Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method
