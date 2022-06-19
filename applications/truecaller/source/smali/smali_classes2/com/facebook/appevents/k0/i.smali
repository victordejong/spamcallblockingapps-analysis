.class public final Lcom/facebook/appevents/k0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/appevents/iap/InAppPurchaseAutoLogger;",
        "",
        "()V",
        "BILLING_CLIENT_PURCHASE_NAME",
        "",
        "logPurchase",
        "",
        "startIapLogging",
        "context",
        "Landroid/content/Context;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/k0/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/k0/i;

    invoke-direct {v0}, Lcom/facebook/appevents/k0/i;-><init>()V

    sput-object v0, Lcom/facebook/appevents/k0/i;->a:Lcom/facebook/appevents/k0/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/k0/i;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.android.billingclient.api.Purchase"

    .line 1
    invoke-static {v1}, Lcom/facebook/appevents/k0/o;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object v1, Lcom/facebook/appevents/k0/j;->s:Lcom/facebook/appevents/k0/j$b;

    .line 3
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "context"

    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/facebook/appevents/k0/j;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-static {}, Lcom/facebook/appevents/k0/j;->b()Lcom/facebook/appevents/k0/j;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 6
    :cond_2
    :try_start_3
    invoke-virtual {v1, p0}, Lcom/facebook/appevents/k0/j$b;->a(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/facebook/appevents/k0/j;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-static {}, Lcom/facebook/appevents/k0/j;->b()Lcom/facebook/appevents/k0/j;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v1

    :goto_0
    if-nez p0, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/appevents/k0/j$b;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    sget-object v1, Lcom/facebook/appevents/k0/l;->a:Lcom/facebook/appevents/k0/l;

    invoke-static {}, Lcom/facebook/appevents/k0/l;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "inapp"

    .line 11
    sget-object v2, Lcom/facebook/appevents/k0/c;->a:Lcom/facebook/appevents/k0/c;

    .line 12
    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    :try_start_5
    const-string v3, "skuType"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "queryPurchaseHistoryRunnable"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v3, Lcom/facebook/appevents/k0/e;

    invoke-direct {v3, p0, v2}, Lcom/facebook/appevents/k0/e;-><init>(Lcom/facebook/appevents/k0/j;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1, v3}, Lcom/facebook/appevents/k0/j;->d(Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 14
    :try_start_6
    invoke-static {v1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v1, "inapp"

    .line 15
    sget-object v2, Lcom/facebook/appevents/k0/d;->a:Lcom/facebook/appevents/k0/d;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/appevents/k0/j;->c(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_6
    :goto_1
    return-void

    :catchall_1
    move-exception p0

    .line 16
    monitor-exit v1

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    .line 17
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/k0/l;->a:Lcom/facebook/appevents/k0/l;

    .line 2
    sget-object v0, Lcom/facebook/appevents/k0/j;->s:Lcom/facebook/appevents/k0/j$b;

    invoke-virtual {v0}, Lcom/facebook/appevents/k0/j$b;->b()Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/facebook/appevents/k0/j$b;->c()Ljava/util/Map;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Lcom/facebook/appevents/k0/l;->e(Ljava/util/Map;Ljava/util/Map;)V

    .line 5
    invoke-virtual {v0}, Lcom/facebook/appevents/k0/j$b;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
