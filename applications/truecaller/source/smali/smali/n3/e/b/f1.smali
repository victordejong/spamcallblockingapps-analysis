.class public final Ln3/e/b/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/f1$g;,
        Ln3/e/b/f1$f;,
        Ln3/e/b/f1$h;,
        Ln3/e/b/f1$e;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/Size;

.field public final b:Z

.field public final c:Ln3/e/b/j1/b0;

.field public final d:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ln3/e/b/j1/k0;

.field public i:Ln3/e/b/f1$g;

.field public j:Ln3/e/b/f1$h;

.field public k:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/util/Size;Ln3/e/b/j1/b0;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/b/f1;->a:Landroid/util/Size;

    .line 3
    iput-object p2, p0, Ln3/e/b/f1;->c:Ln3/e/b/j1/b0;

    .line 4
    iput-boolean p3, p0, Ln3/e/b/f1;->b:Z

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SurfaceRequest[size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", id: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Ln3/e/b/z;

    invoke-direct {v0, p2, p1}, Ln3/e/b/z;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 10
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/h/a/b;

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Ln3/e/b/f1;->g:Ln3/h/a/b;

    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 14
    new-instance v2, Ln3/e/b/a0;

    invoke-direct {v2, v1, p1}, Ln3/e/b/a0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iput-object v2, p0, Ln3/e/b/f1;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    new-instance v3, Ln3/e/b/f1$a;

    invoke-direct {v3, p0, p2, v0}, Ln3/e/b/f1$a;-><init>(Ln3/e/b/f1;Ln3/h/a/b;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 16
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 17
    new-instance v0, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {v0, v2, v3}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    invoke-interface {v2, v0, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/h/a/b;

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 21
    new-instance p3, Ln3/e/b/y;

    invoke-direct {p3, v0, p1}, Ln3/e/b/y;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    iput-object p3, p0, Ln3/e/b/f1;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/h/a/b;

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Ln3/e/b/f1;->e:Ln3/h/a/b;

    .line 25
    new-instance v0, Ln3/e/b/f1$b;

    invoke-direct {v0, p0}, Ln3/e/b/f1$b;-><init>(Ln3/e/b/f1;)V

    iput-object v0, p0, Ln3/e/b/f1;->h:Ln3/e/b/j1/k0;

    .line 26
    invoke-virtual {v0}, Ln3/e/b/j1/k0;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 27
    new-instance v1, Ln3/e/b/f1$c;

    invoke-direct {v1, p0, v0, p2, p1}, Ln3/e/b/f1$c;-><init>(Ln3/e/b/f1;Lcom/google/common/util/concurrent/ListenableFuture;Ln3/h/a/b;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 29
    new-instance p2, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {p2, p3, v1}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    invoke-interface {p3, p2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 30
    new-instance p1, Ln3/e/b/x;

    invoke-direct {p1, p0}, Ln3/e/b/x;-><init>(Ln3/e/b/f1;)V

    .line 31
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;Ljava/util/concurrent/Executor;Ln3/k/h/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Ljava/util/concurrent/Executor;",
            "Ln3/k/h/b<",
            "Ln3/e/b/f1$f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/f1;->e:Ln3/h/a/b;

    invoke-virtual {v0, p1}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ln3/e/b/f1;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/e/b/f1;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Ln3/e/b/f1;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 5
    new-instance v0, Ln3/e/b/t;

    invoke-direct {v0, p3, p1}, Ln3/e/b/t;-><init>(Ln3/k/h/b;Landroid/view/Surface;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    new-instance v0, Ln3/e/b/u;

    invoke-direct {v0, p3, p1}, Ln3/e/b/u;-><init>(Ln3/k/h/b;Landroid/view/Surface;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/e/b/f1;->f:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Ln3/e/b/f1$d;

    invoke-direct {v1, p0, p3, p1}, Ln3/e/b/f1$d;-><init>(Ln3/e/b/f1;Ln3/k/h/b;Landroid/view/Surface;)V

    .line 8
    new-instance p1, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {p1, v0, v1}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/b/f1;->e:Ln3/h/a/b;

    new-instance v1, Ln3/e/b/j1/k0$b;

    const-string v2, "Surface request will not complete."

    invoke-direct {v1, v2}, Ln3/e/b/j1/k0$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
