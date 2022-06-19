.class public Lcom/truecaller/callerid/CallerIdService;
.super Ln3/v/e0;
.source "SourceFile"

# interfaces
.implements Le/a/d0/y;
.implements Le/a/d0/a/y$b;


# instance fields
.field public b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/d0/c0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/f/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lcom/truecaller/callerid/CallerIdPerformanceTracker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Lcom/truecaller/settings/CallingSettings;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/g/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/h4/n;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/p5/u;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Le/a/s2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Le/a/d0/a/y;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/v/e0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/truecaller/callerid/CallerIdService;->k:Z

    .line 3
    iput-boolean v0, p0, Lcom/truecaller/callerid/CallerIdService;->l:Z

    return-void
.end method

.method public static j()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2
    invoke-static {v0}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public static m(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/callerid/CallerIdService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x20

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "[CallerIdService] Starting service"

    .line 4
    invoke-static {p1}, Lcom/truecaller/callerid/CallerIdService;->l(Ljava/lang/String;)V

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt p1, v1, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    instance-of p1, p0, Landroid/app/ForegroundServiceStartNotAllowedException;

    if-eqz p1, :cond_0

    .line 8
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9
    :cond_0
    throw p0

    .line 10
    :cond_1
    invoke-static {}, Lcom/truecaller/callerid/CallerIdService;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 12
    :cond_2
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/settings/CallingSettings;)V
    .locals 0

    .line 1
    invoke-static {p0, p3, p1, p2}, Lcom/truecaller/aftercall/AfterCallPromotionActivity;->wa(Landroid/content/Context;Lcom/truecaller/settings/CallingSettings;Lcom/truecaller/aftercall/PromotionType;Lcom/truecaller/data/entity/HistoryEvent;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "[CallerIdService] Stopping service"

    .line 1
    invoke-static {v0}, Lcom/truecaller/callerid/CallerIdService;->l(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/truecaller/callerid/CallerIdService;->k:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public c(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/blocking/FilterMatch;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->f:Le/a/g/c;

    invoke-interface {v0}, Le/a/g/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->f:Le/a/g/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Le/a/g/c;->d(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/blocking/FilterMatch;Z)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->j:Le/a/d0/a/y;

    .line 2
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->b:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/c0;

    invoke-interface {v0}, Le/a/d0/c0;->e()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->i:Le/a/s2/a;

    invoke-interface {v0}, Le/a/s2/a;->release()V

    return-void
.end method

.method public e(Le/a/d0/v;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->j:Le/a/d0/a/y;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/truecaller/callerid/CallerIdService;->c:Le/a/f/b;

    invoke-interface {p2}, Le/a/f/b;->f()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/truecaller/callerid/CallerIdService;->d:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    sget-object v0, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDWINDOW_INIT:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-interface {p2, v0}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;

    move-result-object p2

    .line 3
    new-instance v0, Le/a/d0/a/a;

    iget-object v1, p0, Lcom/truecaller/callerid/CallerIdService;->e:Lcom/truecaller/settings/CallingSettings;

    invoke-direct {v0, p0, p0, v1}, Le/a/d0/a/a;-><init>(Landroid/content/Context;Le/a/d0/a/y$b;Lcom/truecaller/settings/CallingSettings;)V

    .line 4
    invoke-virtual {v0}, Le/a/d0/a/y;->h()V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Le/a/d0/a/y;->a()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Cannot add caller id window"

    .line 6
    invoke-static {v1, v2}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/truecaller/callerid/CallerIdService;->d:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    invoke-interface {v2, p2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->a(Le/a/p5/l0;)V

    if-eqz v1, :cond_0

    .line 8
    iput-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->j:Le/a/d0/a/y;

    .line 9
    iget-object p2, p0, Lcom/truecaller/callerid/CallerIdService;->b:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d0/c0;

    invoke-interface {p2, p1}, Le/a/d0/c0;->b(Le/a/d0/v;)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/truecaller/callerid/CallerIdService;->j:Le/a/d0/a/y;

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/truecaller/callerid/CallerIdService;->d:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    sget-object v0, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDWINDOW_UPDATE:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-interface {p2, v0}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;

    move-result-object p2

    .line 12
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->j:Le/a/d0/a/y;

    invoke-virtual {v0, p1}, Le/a/d0/a/y;->i(Le/a/d0/v;)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->d:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    invoke-interface {v0, p2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->a(Le/a/p5/l0;)V

    .line 14
    :cond_1
    iget-object p2, p0, Lcom/truecaller/callerid/CallerIdService;->b:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d0/c0;

    invoke-interface {p2, p1}, Le/a/d0/c0;->a(Le/a/d0/v;)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->j:Le/a/d0/a/y;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/a/d0/a/y;->f:Z

    .line 3
    iget-object v1, v0, Le/a/d0/a/y;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Le/a/d0/a/y;->b(FZZ)V

    :cond_0
    return-void
.end method

.method public g()Le/a/r2/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->j:Le/a/d0/a/y;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Le/a/d0/a/y;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    sget v0, Le/a/e/x0;->d:I

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.truecaller.EVENT_AFTER_CALL_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final i()Landroid/app/Notification;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->g:Le/a/h4/n;

    const-string v1, "caller_id"

    invoke-interface {v0, v1}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f0816fb

    .line 3
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f120164

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v1, 0x7f06068b

    .line 6
    invoke-static {p0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/v/e0;->a:Ln3/v/u0;

    .line 2
    sget-object v0, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    invoke-virtual {p1, v0}, Ln3/v/u0;->a(Ln3/v/u$a;)V

    .line 3
    invoke-static {}, Lcom/truecaller/callerid/CallerIdService;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "[CallerIdService] onBind: Stopping foreground"

    .line 4
    invoke-static {p1}, Lcom/truecaller/callerid/CallerIdService;->l(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/truecaller/callerid/CallerIdService;->l:Z

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopForeground(Z)V

    .line 7
    :cond_0
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/callerid/CallerIdService;->j:Le/a/d0/a/y;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Le/a/d0/a/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Le/a/d0/a/y;->i:I

    .line 5
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    iget-object v1, p1, Le/a/d0/a/y;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Le/a/o5/j0;->l(Landroid/content/res/Resources;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Le/a/d0/a/y;->j:I

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Ln3/v/e0;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v1

    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    const-class v2, Le/a/d0/y;

    invoke-interface {v1, v2, p0}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object v1

    .line 4
    invoke-interface {v0}, Le/a/j2;->I1()Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    move-result-object v0

    .line 5
    sget-object v2, Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;->CIDSERVICE_INJECT:Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;

    invoke-interface {v0, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->b(Lcom/truecaller/callerid/CallerIdPerformanceTracker$TraceType;)Le/a/p5/l0;

    move-result-object v2

    .line 6
    sget-object v3, Le/a/l2;->a:Le/a/l2$a;

    invoke-virtual {v3}, Le/a/l2$a;->a()Le/a/l2;

    move-result-object v3

    new-instance v4, Le/a/d0/g0;

    invoke-direct {v4, v1}, Le/a/d0/g0;-><init>(Le/a/r2/f;)V

    .line 7
    invoke-interface {v3, v4}, Le/a/l2;->e(Le/a/d0/g0;)Le/a/d0/z;

    move-result-object v1

    .line 8
    check-cast v1, Le/a/t1$h;

    .line 9
    iget-object v3, v1, Le/a/t1$h;->f:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    .line 10
    iput-object v3, p0, Lcom/truecaller/callerid/CallerIdService;->b:Le/a/r2/f;

    .line 11
    iget-object v3, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 12
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 13
    invoke-interface {v3}, Le/a/j2;->k7()Le/a/f/b;

    move-result-object v3

    const-string v4, "Cannot return null from a non-@Nullable component method"

    .line 14
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object v3, p0, Lcom/truecaller/callerid/CallerIdService;->c:Le/a/f/b;

    .line 16
    iget-object v3, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 17
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 18
    invoke-interface {v3}, Le/a/j2;->I1()Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    move-result-object v3

    .line 19
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iput-object v3, p0, Lcom/truecaller/callerid/CallerIdService;->d:Lcom/truecaller/callerid/CallerIdPerformanceTracker;

    .line 21
    iget-object v3, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 22
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 23
    invoke-interface {v3}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    .line 24
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    iget-object v3, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 26
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 27
    invoke-interface {v3}, Le/a/j2;->d6()Lcom/truecaller/settings/CallingSettings;

    move-result-object v3

    .line 28
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object v3, p0, Lcom/truecaller/callerid/CallerIdService;->e:Lcom/truecaller/settings/CallingSettings;

    .line 30
    iget-object v3, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 31
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 32
    invoke-interface {v3}, Le/a/j2;->h6()Le/a/g/c;

    move-result-object v3

    .line 33
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    iput-object v3, p0, Lcom/truecaller/callerid/CallerIdService;->f:Le/a/g/c;

    .line 35
    iget-object v3, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 36
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 37
    invoke-interface {v3}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object v3

    .line 38
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    iput-object v3, p0, Lcom/truecaller/callerid/CallerIdService;->g:Le/a/h4/n;

    .line 40
    iget-object v3, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 41
    iget-object v3, v3, Le/a/t1;->b:Le/a/j2;

    .line 42
    invoke-interface {v3}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v3

    .line 43
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    iput-object v3, p0, Lcom/truecaller/callerid/CallerIdService;->h:Le/a/p5/u;

    .line 45
    iget-object v1, v1, Le/a/t1$h;->b:Le/a/t1;

    .line 46
    iget-object v1, v1, Le/a/t1;->b:Le/a/j2;

    .line 47
    invoke-interface {v1}, Le/a/j2;->h()Le/a/s2/a;

    move-result-object v1

    .line 48
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    iput-object v1, p0, Lcom/truecaller/callerid/CallerIdService;->i:Le/a/s2/a;

    .line 50
    invoke-interface {v0, v2}, Lcom/truecaller/callerid/CallerIdPerformanceTracker;->a(Le/a/p5/l0;)V

    .line 51
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->h:Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->f()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Le/a/d0/n;

    invoke-direct {v1, p0}, Le/a/d0/n;-><init>(Lcom/truecaller/callerid/CallerIdService;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/v/e0;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/callerid/CallerIdService;->b:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d0/c0;

    invoke-interface {v0}, Le/a/d0/c0;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/v/e0;->onStartCommand(Landroid/content/Intent;II)I

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CallerIdService] onStartCommand called with intent : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " startId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    const-string p2, "CALL_STATE"

    const/4 p3, -0x1

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6
    invoke-static {}, Lcom/truecaller/callerid/CallerIdService;->j()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const p2, 0x7f0a0370

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/callerid/CallerIdService;->i()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallerIdService] onStartCommand: Started foreground with state: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/truecaller/callerid/CallerIdService;->l(Ljava/lang/String;)V

    .line 9
    iget-boolean p2, p0, Lcom/truecaller/callerid/CallerIdService;->l:Z

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    const-string p2, "[CallerIdService] onStartCommand: Stopped foreground. Service is bound."

    .line 11
    invoke-static {p2}, Lcom/truecaller/callerid/CallerIdService;->l(Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    if-eq v1, p3, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    new-array v3, p2, [Ljava/lang/String;

    .line 12
    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    const-string v2, "NUMBER"

    .line 13
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM_SLOT_INDEX"

    .line 14
    invoke-virtual {p1, v3, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string p3, "ACTION"

    .line 15
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string p3, "TIMESTAMP"

    const-wide/16 v5, -0x1

    .line 16
    invoke-virtual {p1, p3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string p3, "FILTER_MATCH"

    .line 17
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/blocking/FilterMatch;

    cmp-long p3, v7, v5

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v0, p2

    :goto_2
    new-array p2, p2, [Ljava/lang/String;

    .line 18
    invoke-static {v0, p2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/truecaller/callerid/CallerIdService;->b:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Le/a/d0/c0;

    move-wide v5, v7

    move-object v7, p1

    invoke-interface/range {v0 .. v7}, Le/a/d0/c0;->c(ILjava/lang/String;IIJLcom/truecaller/blocking/FilterMatch;)V

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/callerid/CallerIdService;->l:Z

    .line 2
    iget-boolean v0, p0, Lcom/truecaller/callerid/CallerIdService;->k:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/callerid/CallerIdService;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[CallerIdService] onUnbind: Starting foreground"

    .line 3
    invoke-static {v0}, Lcom/truecaller/callerid/CallerIdService;->l(Ljava/lang/String;)V

    const v0, 0x7f0a0370

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/callerid/CallerIdService;->i()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
