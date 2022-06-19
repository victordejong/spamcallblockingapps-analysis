.class public Le/a/r2/i;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r2/i$a;,
        Le/a/r2/i$c;,
        Le/a/r2/i$b;,
        Le/a/r2/i$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:J

.field public d:Landroid/os/HandlerThread;

.field public e:Landroid/os/Binder;

.field public f:Le/a/r2/i$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/r2/i;->f:Le/a/r2/i$a;

    .line 3
    iput-object p1, p0, Le/a/r2/i;->a:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Le/a/r2/i;->b:Z

    .line 5
    iput-wide p2, p0, Le/a/r2/i;->c:J

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.truecaller.androidactors.ActorService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/r2/i;->f:Le/a/r2/i$a;

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Le/a/r2/h;

    invoke-direct {p1, p0}, Le/a/r2/h;-><init>(Le/a/r2/i;)V

    .line 4
    new-instance v0, Le/a/r2/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/r2/s;-><init>(Landroid/app/Service;Ljava/util/concurrent/Callable;Le/a/r2/r;)V

    move-object p1, v0

    .line 5
    :cond_1
    iput-object p1, p0, Le/a/r2/i;->f:Le/a/r2/i$a;

    .line 6
    invoke-interface {p1}, Le/a/r2/i$a;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/r2/i;->e:Landroid/os/Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Le/a/r2/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le/a/r2/i;->d:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    iget-boolean v0, p0, Le/a/r2/i;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "power"

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Le/a/r2/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 8
    new-instance v0, Le/a/r2/i$d;

    new-instance v7, Le/a/r2/i$c;

    iget-object v1, p0, Le/a/r2/i;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-wide v4, p0, Le/a/r2/i;->c:J

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Le/a/r2/i$c;-><init>(Le/a/r2/i;Landroid/os/Looper;JLandroid/os/PowerManager$WakeLock;)V

    invoke-direct {v0, p0, v7}, Le/a/r2/i$d;-><init>(Le/a/r2/i;Le/a/r2/c;)V

    .line 9
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Le/a/r2/i;->e:Landroid/os/Binder;

    const-string v2, "ServiceMessageSender"

    .line 10
    invoke-virtual {v1, v0, v2}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/a/r2/i;->e:Landroid/os/Binder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/r2/i;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 5
    iget-object v0, p0, Le/a/r2/i;->f:Le/a/r2/i$a;

    if-eqz v0, :cond_1

    .line 6
    check-cast v0, Le/a/r2/s;

    .line 7
    iget-object v1, v0, Le/a/r2/s;->c:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobServiceEngine;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method
