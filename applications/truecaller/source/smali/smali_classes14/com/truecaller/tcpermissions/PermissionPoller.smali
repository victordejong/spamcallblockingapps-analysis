.class public Lcom/truecaller/tcpermissions/PermissionPoller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/tcpermissions/PermissionPoller$Permission;
    }
.end annotation


# static fields
.field public static final h:J


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/content/Intent;

.field public d:I

.field public e:Lcom/truecaller/tcpermissions/PermissionPoller$Permission;

.field public f:Le/a/p5/a0;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/truecaller/tcpermissions/PermissionPoller;->h:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    .line 4
    iput-object p3, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->c:Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/b0/g/a;

    .line 6
    invoke-virtual {p1}, Le/a/b0/g/a;->V()Le/a/p5/o0;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Le/a/p5/o0;->c()Le/a/p5/a0;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->f:Le/a/p5/a0;

    const/high16 p1, 0x24000000

    .line 8
    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/tcpermissions/PermissionPoller$Permission;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->d:I

    .line 3
    iput-object p1, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->e:Lcom/truecaller/tcpermissions/PermissionPoller$Permission;

    .line 4
    iget-object p1, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->d:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->d:I

    int-to-long v0, v0

    .line 2
    sget-wide v4, Lcom/truecaller/tcpermissions/PermissionPoller;->h:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->e:Lcom/truecaller/tcpermissions/PermissionPoller$Permission;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->f:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->f()Z

    move-result v0

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 8
    iget-object v1, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    goto :goto_1

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->f:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->b()Z

    move-result v0

    goto :goto_1

    .line 11
    :cond_6
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->f:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->k()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_8

    .line 12
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 15
    :cond_8
    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method
