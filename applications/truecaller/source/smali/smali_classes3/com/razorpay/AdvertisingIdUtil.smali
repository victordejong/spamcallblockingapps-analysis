.class public Lcom/razorpay/AdvertisingIdUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getId(Landroid/content/Context;Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/razorpay/a_$P$;

    invoke-direct {v0, p0, p1}, Lcom/razorpay/a_$P$;-><init>(Landroid/content/Context;Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
