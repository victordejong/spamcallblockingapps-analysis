.class public final Lcom/razorpay/G$_X_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/json/JSONObject;

.field private synthetic b:Lcom/razorpay/CheckoutPresenterImpl;


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutPresenterImpl;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/G$_X_;->b:Lcom/razorpay/CheckoutPresenterImpl;

    iput-object p2, p0, Lcom/razorpay/G$_X_;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/razorpay/G$_X_;->b:Lcom/razorpay/CheckoutPresenterImpl;

    iget-object v1, p0, Lcom/razorpay/G$_X_;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/razorpay/CheckoutPresenterImpl;->access$100(Lcom/razorpay/CheckoutPresenterImpl;Ljava/lang/String;)V

    return-void
.end method
