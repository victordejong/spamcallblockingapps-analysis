.class public final Le/a/x/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/x/l;


# instance fields
.field public final a:Landroid/app/AlarmManager;

.field public final b:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Lcom/truecaller/ghost_call/GhostCallState;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Lcom/truecaller/ghost_call/GhostCallState;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/app/PendingIntent;

.field public final e:Le/a/u3/g;

.field public final f:Le/a/l/p2/d2/b;

.field public final g:Le/a/x/w;

.field public final h:Landroid/content/Context;

.field public final i:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/l/p2/d2/b;Le/a/x/w;Landroid/content/Context;Le/a/p5/a0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumFeatureManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x/m;->e:Le/a/u3/g;

    iput-object p2, p0, Le/a/x/m;->f:Le/a/l/p2/d2/b;

    iput-object p3, p0, Le/a/x/m;->g:Le/a/x/w;

    iput-object p4, p0, Le/a/x/m;->h:Landroid/content/Context;

    iput-object p5, p0, Le/a/x/m;->i:Le/a/p5/a0;

    const-string p1, "alarm"

    .line 2
    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Le/a/x/m;->a:Landroid/app/AlarmManager;

    .line 3
    sget-object p1, Lcom/truecaller/ghost_call/GhostCallState;->ENDED:Lcom/truecaller/ghost_call/GhostCallState;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/x/m;->b:Lq3/a/x2/a1;

    .line 4
    iput-object p1, p0, Le/a/x/m;->c:Lq3/a/x2/i1;

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/truecaller/ghost_call/GhostCallBroadcastReceiver;

    invoke-direct {p1, p4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p2, 0x3e9

    const/high16 p3, 0xc000000

    .line 6
    invoke-static {p4, p2, p1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Le/a/x/m;->d:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/x/m;->g:Le/a/x/w;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Le/a/x/w;->S2(J)V

    .line 2
    iget-object v0, p0, Le/a/x/m;->a:Landroid/app/AlarmManager;

    iget-object v1, p0, Le/a/x/m;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public B(Le/a/x/i;)V
    .locals 4

    const-string v0, "ghostCallConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/x/m;->g:Le/a/x/w;

    .line 2
    iget-object v1, p1, Le/a/x/i;->a:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Le/a/x/w;->setPhoneNumber(Ljava/lang/String;)V

    .line 4
    iget-object v1, p1, Le/a/x/i;->b:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1}, Le/a/x/w;->setProfileName(Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Le/a/x/i;->c:Ljava/lang/String;

    .line 7
    invoke-interface {v0, v1}, Le/a/x/w;->Y(Ljava/lang/String;)V

    .line 8
    iget-object v1, p1, Le/a/x/i;->d:Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Le/a/x/w;->h0(I)V

    .line 10
    iget-wide v1, p1, Le/a/x/i;->e:J

    .line 11
    invoke-interface {v0, v1, v2}, Le/a/x/w;->S2(J)V

    .line 12
    iget-object v0, p0, Le/a/x/m;->g:Le/a/x/w;

    invoke-interface {v0}, Le/a/x/w;->D1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Le/a/x/m;->g:Le/a/x/w;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/x/w;->I(Z)V

    .line 14
    :cond_0
    iget-object v0, p1, Le/a/x/i;->d:Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 15
    sget-object v1, Lcom/truecaller/ghost_call/ScheduleDuration;->IMMEDIATE:Lcom/truecaller/ghost_call/ScheduleDuration;

    if-ne v0, v1, :cond_1

    .line 16
    invoke-virtual {p0}, Le/a/x/m;->C()V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Le/a/x/m;->i:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->f()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 18
    :cond_2
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 19
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    iget-object v2, p1, Le/a/x/i;->d:Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 21
    invoke-virtual {v2}, Lcom/truecaller/ghost_call/ScheduleDuration;->getDelay()J

    move-result-wide v2

    .line 22
    iget-object p1, p1, Le/a/x/i;->d:Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 23
    invoke-virtual {p1}, Lcom/truecaller/ghost_call/ScheduleDuration;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lw3/b/a/b;->C(J)Lw3/b/a/b;

    move-result-object p1

    .line 24
    iget-object v0, p0, Le/a/x/m;->a:Landroid/app/AlarmManager;

    const-string v1, "launchTime"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-wide v1, p1, Lw3/b/a/e0/e;->a:J

    .line 26
    iget-object p1, p0, Le/a/x/m;->d:Landroid/app/PendingIntent;

    .line 27
    new-instance v3, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {v3, v1, v2, p1}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    invoke-virtual {v0, v3, p1}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public C()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/x/m;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/x/m;->b:Lq3/a/x2/a1;

    sget-object v1, Lcom/truecaller/ghost_call/GhostCallState;->RINGING:Lcom/truecaller/ghost_call/GhostCallState;

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/truecaller/ghost_call/GhostCallService;->b()Z

    move-result v0

    const-string v1, "createServiceIntent(cont\u2026(ACTION_GHOST_START_CALL)"

    const-string v2, "com.truecaller.ACTION_START_CALL"

    const-string v3, "context"

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/x/m;->h:Landroid/content/Context;

    .line 5
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/truecaller/ghost_call/GhostCallService;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/x/m;->h:Landroid/content/Context;

    .line 9
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/truecaller/ghost_call/GhostCallService;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/x/m;->e:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->K:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/x/m;->f:Le/a/l/p2/d2/b;

    sget-object v1, Lcom/truecaller/premium/data/feature/PremiumFeature;->GHOST_CALL:Lcom/truecaller/premium/data/feature/PremiumFeature;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/l/p2/d2/b;->a(Lcom/truecaller/premium/data/feature/PremiumFeature;Z)Z

    move-result v0

    return v0
.end method

.method public v()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/x/m;->b:Lq3/a/x2/a1;

    sget-object v1, Lcom/truecaller/ghost_call/GhostCallState;->ENDED:Lcom/truecaller/ghost_call/GhostCallState;

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/x/m;->h:Landroid/content/Context;

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/truecaller/ghost_call/GhostCallService;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.truecaller.ACTION_END_CALL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "createServiceIntent(cont\u2026on(ACTION_GHOST_END_CALL)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public w()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Lcom/truecaller/ghost_call/GhostCallState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/x/m;->c:Lq3/a/x2/i1;

    return-object v0
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/x/m;->b:Lq3/a/x2/a1;

    sget-object v1, Lcom/truecaller/ghost_call/GhostCallState;->ENDED:Lcom/truecaller/ghost_call/GhostCallState;

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/x/m;->i:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->f()Z

    move-result v0

    return v0
.end method

.method public z()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/x/m;->b:Lq3/a/x2/a1;

    sget-object v1, Lcom/truecaller/ghost_call/GhostCallState;->ONGOING:Lcom/truecaller/ghost_call/GhostCallState;

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Le/a/x/m;->h:Landroid/content/Context;

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/truecaller/ghost_call/GhostCallService;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.truecaller.ACTION_ON_CALL_PICKED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "createServiceIntent(cont\u2026ION_GHOST_ON_CALL_PICKED)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
