.class public final Lcom/hiya/client/callerid/ui/service/OnCallService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/service/OnCallService$b;,
        Lcom/hiya/client/callerid/ui/service/OnCallService$a;
    }
.end annotation


# static fields
.field public static final l:Lcom/hiya/client/callerid/ui/service/OnCallService$a;


# instance fields
.field public f:Lcom/hiya/client/callerid/ui/a0/i;

.field public g:Lcom/hiya/client/callerid/ui/a0/m;

.field public h:Li/c/b0/c/a;

.field private final i:Lcom/hiya/client/callerid/ui/service/OnCallService$b;

.field private j:Landroid/os/Handler;

.field private final k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/client/callerid/ui/service/OnCallService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/service/OnCallService$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/client/callerid/ui/service/OnCallService;->l:Lcom/hiya/client/callerid/ui/service/OnCallService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/hiya/client/callerid/ui/service/OnCallService$b;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/service/OnCallService$b;-><init>(Lcom/hiya/client/callerid/ui/service/OnCallService;)V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->i:Lcom/hiya/client/callerid/ui/service/OnCallService$b;

    .line 3
    new-instance v0, Lcom/hiya/client/callerid/ui/service/OnCallService$c;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/service/OnCallService$c;-><init>(Lcom/hiya/client/callerid/ui/service/OnCallService;)V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->k:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/ui/service/OnCallService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/service/OnCallService;->f()V

    return-void
.end method

.method private final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/hiya/client/callerid/ui/service/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cancelling timeout"

    invoke-static {v0, v2, v1}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->j:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private final c()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/service/OnCallService;->b()V

    .line 2
    invoke-static {}, Lcom/hiya/client/callerid/ui/service/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Scheduling timeout for service"

    invoke-static {v0, v2, v1}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iput-object v0, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->j:Landroid/os/Handler;

    return-void
.end method

.method private final d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "default_notification"

    const-string v2, "Default Channel"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/hiya/client/callerid/ui/e0/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationManager;

    .line 3
    invoke-static {}, Lcom/hiya/client/callerid/ui/e0/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroidx/core/app/j$e;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/j$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    sget v1, Lcom/hiya/client/callerid/ui/o;->h:I

    invoke-virtual {v0, v1}, Landroidx/core/app/j$e;->z(I)Landroidx/core/app/j$e;

    .line 6
    invoke-virtual {v0}, Landroidx/core/app/j$e;->b()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private final e()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/ui/e0/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    :cond_0
    return-void
.end method

.method private final f()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/ui/service/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Stopping service"

    invoke-static {v0, v2, v1}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->g:Lcom/hiya/client/callerid/ui/a0/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/m;->r()V

    .line 3
    sget-object v0, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    invoke-virtual {v0}, Lg/g/a/e/e/b;->l()V

    .line 4
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/service/OnCallService;->e()V

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    const-string v0, "overlayManager"

    .line 6
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->i:Lcom/hiya/client/callerid/ui/service/OnCallService$b;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    sget-object v0, Lcom/hiya/client/callerid/ui/z/b;->a:Lcom/hiya/client/callerid/ui/z/b$a;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/z/b$a;->a(Landroid/content/Context;)Lcom/hiya/client/callerid/ui/z/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hiya/client/callerid/ui/z/b;->d(Lcom/hiya/client/callerid/ui/service/OnCallService;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string p2, "call_service_number"

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/service/OnCallService;->d()V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->f:Lcom/hiya/client/callerid/ui/a0/i;

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string p3, "intent.getStringExtra(CALL_SERVICE_NUMBER)!!"

    invoke-static {p2, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "phone_state"

    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 6
    :goto_1
    invoke-virtual {v0, p2, p1}, Lcom/hiya/client/callerid/ui/a0/i;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/service/OnCallService;->b()V

    goto :goto_2

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/service/OnCallService;->c()V

    :goto_2
    return v1

    .line 9
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p3

    :cond_5
    const-string p1, "onCallStateManager"

    .line 10
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p3
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/service/OnCallService;->e()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/service/OnCallService;->h:Li/c/b0/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Service;->stopService(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "compositeDisposable"

    .line 4
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
