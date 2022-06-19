.class public final Lcom/truecaller/messaging/transport/im/ImSubscriptionService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010\u000eJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000b\u001a\u00020\n2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000eR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/truecaller/messaging/transport/im/ImSubscriptionService;",
        "Landroid/app/Service;",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "Ls1/s;",
        "onRebind",
        "(Landroid/content/Intent;)V",
        "",
        "onUnbind",
        "(Landroid/content/Intent;)Z",
        "onCreate",
        "()V",
        "onDestroy",
        "a",
        "Landroid/os/Handler;",
        "b",
        "Landroid/os/Handler;",
        "handler",
        "Ljava/lang/Runnable;",
        "c",
        "Ljava/lang/Runnable;",
        "stopRunnable",
        "Landroid/os/Binder;",
        "Landroid/os/Binder;",
        "binder",
        "Le/a/a/k/a/g0;",
        "d",
        "Le/a/a/k/a/g0;",
        "getSubscriptionManager$truecaller_googlePlayRelease",
        "()Le/a/a/k/a/g0;",
        "setSubscriptionManager$truecaller_googlePlayRelease",
        "(Le/a/a/k/a/g0;)V",
        "subscriptionManager",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Binder;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/Runnable;

.field public d:Le/a/a/k/a/g0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/transport/im/ImSubscriptionService$a;-><init>()V

    iput-object v0, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->a:Landroid/os/Binder;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->b:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService$b;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/transport/im/ImSubscriptionService$b;-><init>(Lcom/truecaller/messaging/transport/im/ImSubscriptionService;)V

    iput-object v0, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->c:Ljava/lang/Runnable;

    .line 5
    sget-object v0, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {v0}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/k2;->a(Lcom/truecaller/messaging/transport/im/ImSubscriptionService;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->a()V

    .line 2
    iget-object p1, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->a:Landroid/os/Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->d:Le/a/a/k/a/g0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/k/a/g0;->onCreate()V

    return-void

    :cond_0
    const-string v0, "subscriptionManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->d:Le/a/a/k/a/g0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/k/a/g0;->onDestroy()V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "subscriptionManager"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->a()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method
