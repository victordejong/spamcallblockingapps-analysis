.class public final Ln3/e/a/e/b1$f;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/b1$f$a;,
        Ln3/e/a/e/b1$f$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Ln3/e/a/e/b1$f$b;

.field public d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Ln3/e/a/e/b1$f$a;

.field public final synthetic f:Ln3/e/a/e/b1;


# direct methods
.method public constructor <init>(Ln3/e/a/e/b1;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 2
    new-instance p1, Ln3/e/a/e/b1$f$a;

    invoke-direct {p1, p0}, Ln3/e/a/e/b1$f$a;-><init>(Ln3/e/a/e/b1$f;)V

    iput-object p1, p0, Ln3/e/a/e/b1$f;->e:Ln3/e/a/e/b1$f$a;

    .line 3
    iput-object p2, p0, Ln3/e/a/e/b1$f;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Ln3/e/a/e/b1$f;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1$f;->d:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    const-string v3, "Cancelling scheduled re-open: "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ln3/e/a/e/b1$f;->c:Ln3/e/a/e/b1$f$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v3, v4}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Ln3/e/a/e/b1$f;->c:Ln3/e/a/e/b1$f$b;

    .line 5
    iput-boolean v1, v0, Ln3/e/a/e/b1$f$b;->b:Z

    .line 6
    iput-object v4, p0, Ln3/e/a/e/b1$f;->c:Ln3/e/a/e/b1$f$b;

    .line 7
    iget-object v0, p0, Ln3/e/a/e/b1$f;->d:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 8
    iput-object v4, p0, Ln3/e/a/e/b1$f;->d:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public b()V
    .locals 11

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1$f;->c:Ln3/e/a/e/b1$f$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Ln3/e/a/e/b1$f;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 4
    :goto_1
    invoke-static {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 5
    iget-object v0, p0, Ln3/e/a/e/b1$f;->e:Ln3/e/a/e/b1$f$a;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 8
    iget-wide v6, v0, Ln3/e/a/e/b1$f$a;->a:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    .line 9
    iput-wide v4, v0, Ln3/e/a/e/b1$f$a;->a:J

    goto :goto_3

    :cond_2
    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eqz v4, :cond_4

    .line 10
    iput-wide v8, v0, Ln3/e/a/e/b1$f$a;->a:J

    move v1, v2

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 11
    new-instance v0, Ln3/e/a/e/b1$f$b;

    iget-object v1, p0, Ln3/e/a/e/b1$f;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Ln3/e/a/e/b1$f$b;-><init>(Ln3/e/a/e/b1$f;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Ln3/e/a/e/b1$f;->c:Ln3/e/a/e/b1$f$b;

    .line 12
    iget-object v0, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    const-string v1, "Attempting camera re-open in 700ms: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ln3/e/a/e/b1$f;->c:Ln3/e/a/e/b1$f$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    iget-object v0, p0, Ln3/e/a/e/b1$f;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Ln3/e/a/e/b1$f;->c:Ln3/e/a/e/b1$f$b;

    const-wide/16 v2, 0x2bc

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ln3/e/a/e/b1$f;->d:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_4

    :cond_5
    const-string v0, "Camera2CameraImpl"

    const-string v1, "Camera reopening attempted for 10000ms without success."

    .line 15
    invoke-static {v0, v1, v3}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iget-object v0, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    sget-object v1, Ln3/e/a/e/b1$e;->a:Ln3/e/a/e/b1$e;

    invoke-virtual {v0, v1}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    :goto_4
    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    const-string v1, "CameraDevice.onClosed()"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object v0, v0, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected onClose callback on camera device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 4
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object p1, p1, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Camera closed while in state: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object v1, v1, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget v0, p1, Ln3/e/a/e/b1;->j:I

    if-eqz v0, :cond_3

    const-string v0, "Camera closed due to error: "

    .line 7
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget v1, v1, Ln3/e/a/e/b1;->j:I

    invoke-static {v1}, Ln3/e/a/e/b1;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0, v2}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {p0}, Ln3/e/a/e/b1$f;->b()V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p1, v1}, Ln3/e/a/e/b1;->s(Z)V

    goto :goto_2

    .line 11
    :cond_4
    :goto_1
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    invoke-virtual {p1}, Ln3/e/a/e/b1;->r()Z

    move-result p1

    .line 12
    invoke-static {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 13
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    invoke-virtual {p1}, Ln3/e/a/e/b1;->p()V

    :goto_2
    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    const/4 v1, 0x0

    const-string v2, "CameraDevice.onDisconnected()"

    .line 2
    invoke-virtual {v0, v2, v1}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Ln3/e/a/e/b1$f;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iput-object p1, v0, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    .line 2
    iput p2, v0, Ln3/e/a/e/b1;->j:I

    .line 3
    iget-object v0, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Camera2CameraImpl"

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v8, 0x5

    if-eq v0, v8, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "onError() should not be possible from state: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object v0, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {p2}, Ln3/e/a/e/b1;->q(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object p1, p1, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v7

    const-string p1, "CameraDevice.onError(): %s failed with %s while in %s state. Will finish closing camera."

    .line 6
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v4, p1, v2}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    invoke-virtual {p1, v6}, Ln3/e/a/e/b1;->m(Z)V

    goto/16 :goto_4

    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-static {p2}, Ln3/e/a/e/b1;->q(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    iget-object v5, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object v5, v5, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    const-string v5, "CameraDevice.onError(): %s failed with %s while in %s state. Will attempt recovering from error."

    .line 10
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v4, v0, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    sget-object v0, Ln3/e/a/e/b1$e;->f:Ln3/e/a/e/b1$e;

    iget-object v5, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object v5, v5, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v8, Ln3/e/a/e/b1$e;->c:Ln3/e/a/e/b1$e;

    if-eq v5, v8, :cond_4

    iget-object v5, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object v5, v5, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v8, Ln3/e/a/e/b1$e;->d:Ln3/e/a/e/b1$e;

    if-eq v5, v8, :cond_4

    iget-object v5, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object v5, v5, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    if-ne v5, v0, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v3

    :goto_2
    const-string v8, "Attempt to handle open error from non open state: "

    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object v9, v9, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    if-eq p2, v3, :cond_5

    if-eq p2, v7, :cond_5

    if-eq p2, v1, :cond_5

    const-string v0, "Error observed on open (or opening) camera device "

    .line 13
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {p2}, Ln3/e/a/e/b1;->q(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " closing camera."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v4, p1, v2}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    sget-object p2, Ln3/e/a/e/b1$e;->e:Ln3/e/a/e/b1$e;

    invoke-virtual {p1, p2}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    .line 18
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    invoke-virtual {p1, v6}, Ln3/e/a/e/b1;->m(Z)V

    goto :goto_4

    :cond_5
    new-array v1, v7, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {p2}, Ln3/e/a/e/b1;->q(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "Attempt to reopen camera[%s] after error[%s]"

    .line 20
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {v4, p1, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget p1, p1, Ln3/e/a/e/b1;->j:I

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v6

    :goto_3
    const-string p1, "Can only reopen camera device after error if the camera device is actually in an error state."

    invoke-static {v3, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 23
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    invoke-virtual {p1, v0}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    .line 24
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    invoke-virtual {p1, v6}, Ln3/e/a/e/b1;->m(Z)V

    :goto_4
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    const-string v1, "CameraDevice.onOpened()"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iput-object p1, v0, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    iget-object v1, v0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 7
    iget-object v0, v0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    .line 8
    iget-object v0, v0, Ln3/e/a/e/z0;->h:Ln3/e/a/e/x1;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v1, v0, Ln3/e/a/e/x1;->p:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 11
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v1, v0, Ln3/e/a/e/x1;->q:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 12
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object p1, v0, Ln3/e/a/e/x1;->r:[Landroid/hardware/camera2/params/MeteringRectangle;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Camera2CameraImpl"

    const-string v1, "fail to create capture request."

    .line 13
    invoke-static {v0, v1, p1}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    const/4 v0, 0x0

    iput v0, p1, Ln3/e/a/e/b1;->j:I

    .line 15
    iget-object p1, p1, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onOpened() should not be possible from state: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object v1, v1, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_1
    :goto_1
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    invoke-virtual {p1}, Ln3/e/a/e/b1;->r()Z

    move-result p1

    .line 18
    invoke-static {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 19
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iget-object p1, p1, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 20
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    iput-object v2, p1, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    goto :goto_2

    .line 21
    :cond_2
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    sget-object v0, Ln3/e/a/e/b1$e;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {p1, v0}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    .line 22
    iget-object p1, p0, Ln3/e/a/e/b1$f;->f:Ln3/e/a/e/b1;

    invoke-virtual {p1}, Ln3/e/a/e/b1;->t()V

    :goto_2
    return-void
.end method
