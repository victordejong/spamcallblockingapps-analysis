.class public final Lcom/razorpay/I$_n_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/razorpay/CheckoutBridge;


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/I$_n_;->c:Lcom/razorpay/CheckoutBridge;

    iput-object p2, p0, Lcom/razorpay/I$_n_;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/razorpay/I$_n_;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final secure()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/razorpay/I$_n_;->c:Lcom/razorpay/CheckoutBridge;

    iget-object v0, v0, Lcom/razorpay/CheckoutBridge;->interactor:Lcom/razorpay/CheckoutInteractor;

    iget-object v1, p0, Lcom/razorpay/I$_n_;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/razorpay/I$_n_;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/razorpay/CheckoutInteractor;->callNativeIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final unSecure()V
    .locals 0

    return-void
.end method
