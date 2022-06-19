.class public Ln3/e/a/e/b1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/a/e/b1;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/t1/c/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/e/a/e/b1;


# direct methods
.method public constructor <init>(Ln3/e/a/e/b1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/a/e/b1$b;->a:Ln3/e/a/e/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/e/a/e/b1$b;->a:Ln3/e/a/e/b1;

    const-string v2, "Unable to configure camera due to "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1, v1}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Ln3/e/a/e/b1$b;->a:Ln3/e/a/e/b1;

    const-string v0, "Unable to configure camera cancelled"

    .line 6
    invoke-virtual {p1, v0, v1}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, Ln3/e/b/j1/k0$a;

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Ln3/e/a/e/b1$b;->a:Ln3/e/a/e/b1;

    check-cast p1, Ln3/e/b/j1/k0$a;

    .line 9
    iget-object p1, p1, Ln3/e/b/j1/k0$a;->a:Ln3/e/b/j1/k0;

    .line 10
    iget-object v0, v0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    invoke-virtual {v0}, Ln3/e/b/j1/p1;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/j1/j1;

    .line 11
    invoke-virtual {v2}, Ln3/e/b/j1/j1;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    if-eqz v1, :cond_5

    .line 12
    iget-object p1, p0, Ln3/e/a/e/b1$b;->a:Ln3/e/a/e/b1;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->O0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 15
    iget-object v2, v1, Ln3/e/b/j1/j1;->e:Ljava/util/List;

    .line 16
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    .line 17
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/j1/j1$c;

    .line 18
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    const-string v4, "Posting surface closed"

    invoke-virtual {p1, v4, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    new-instance p1, Ln3/e/a/e/m;

    invoke-direct {p1, v2, v1}, Ln3/e/a/e/m;-><init>(Ln3/e/b/j1/j1$c;Ln3/e/b/j1/j1;)V

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 20
    :cond_4
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_6

    const-string p1, "Unable to configure camera "

    .line 21
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Ln3/e/a/e/b1$b;->a:Ln3/e/a/e/b1;

    iget-object v0, v0, Ln3/e/a/e/b1;->h:Ln3/e/a/e/c1;

    .line 22
    iget-object v0, v0, Ln3/e/a/e/c1;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timeout!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2CameraImpl"

    .line 24
    invoke-static {v0, p1, v1}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void

    .line 25
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    return-void
.end method
