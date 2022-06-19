.class public final Lcom/razorpay/z$_w$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;

.field private synthetic c:Lcom/razorpay/CheckoutPresenterImpl;


# direct methods
.method public constructor <init>(Lcom/razorpay/CheckoutPresenterImpl;ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/razorpay/z$_w$;->c:Lcom/razorpay/CheckoutPresenterImpl;

    iput p2, p0, Lcom/razorpay/z$_w$;->a:I

    iput-object p3, p0, Lcom/razorpay/z$_w$;->b:Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/razorpay/z$_w$;->c:Lcom/razorpay/CheckoutPresenterImpl;

    iget v1, p0, Lcom/razorpay/z$_w$;->a:I

    iget-object v2, p0, Lcom/razorpay/z$_w$;->b:Lcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;

    invoke-static {v0, v1, v2}, Lcom/razorpay/CheckoutPresenterImpl;->access$700(Lcom/razorpay/CheckoutPresenterImpl;ILcom/razorpay/CheckoutBridge$WebViewSafeCheckCallback;)V

    return-void
.end method
