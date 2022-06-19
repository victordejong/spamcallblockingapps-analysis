.class public Lcom/razorpay/PrimaryWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field public presenter:Lcom/razorpay/CheckoutPresenter;


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/razorpay/PrimaryWebViewClient;->presenter:Lcom/razorpay/CheckoutPresenter;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/PrimaryWebViewClient;->presenter:Lcom/razorpay/CheckoutPresenter;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/razorpay/CheckoutPresenter;->onPageFinished(ILandroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object p3, p0, Lcom/razorpay/PrimaryWebViewClient;->presenter:Lcom/razorpay/CheckoutPresenter;

    const/4 v0, 0x1

    invoke-interface {p3, v0, p1, p2}, Lcom/razorpay/CheckoutPresenter;->onPageStarted(ILandroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/razorpay/PrimaryWebViewClient;->presenter:Lcom/razorpay/CheckoutPresenter;

    const/4 p2, 0x2

    invoke-interface {p1, p2, p3}, Lcom/razorpay/CheckoutPresenter;->destroyActivity(ILjava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
