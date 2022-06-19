.class public final Lcom/razorpay/a_$P$;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/razorpay/a_$P$;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/razorpay/a_$P$;->a:Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lcom/razorpay/G__G_;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/razorpay/G__G_;-><init>(B)V

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v2, p0, Lcom/razorpay/a_$P$;->b:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    new-instance v1, Lcom/razorpay/R$$r_;

    .line 6
    invoke-virtual {v0}, Lcom/razorpay/G__G_;->a()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/razorpay/R$$r_;-><init>(Landroid/os/IBinder;)V

    .line 7
    invoke-virtual {v1}, Lcom/razorpay/R$$r_;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/razorpay/a_$P$;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 10
    :goto_1
    iget-object v2, p0, Lcom/razorpay/a_$P$;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 11
    throw v1

    :cond_0
    const-string v0, "permission disabled"

    return-object v0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/razorpay/a_$P$;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/razorpay/a_$P$;->a:Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;

    invoke-interface {v0, p1}, Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method
