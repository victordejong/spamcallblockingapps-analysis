.class public final Lcom/razorpay/Z$_A_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/razorpay/PluginCheckoutBridge;


# direct methods
.method public constructor <init>(Lcom/razorpay/PluginCheckoutBridge;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/Z$_A_;->b:Lcom/razorpay/PluginCheckoutBridge;

    iput-object p2, p0, Lcom/razorpay/Z$_A_;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final secure()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/Z$_A_;->b:Lcom/razorpay/PluginCheckoutBridge;

    invoke-static {v0}, Lcom/razorpay/PluginCheckoutBridge;->access$000(Lcom/razorpay/PluginCheckoutBridge;)Lcom/razorpay/PluginCheckoutInteractor;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/Z$_A_;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/razorpay/PluginCheckoutInteractor;->processPayment(Ljava/lang/String;)V

    return-void
.end method

.method public final unSecure()V
    .locals 0

    return-void
.end method
