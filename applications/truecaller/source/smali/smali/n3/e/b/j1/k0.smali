.class public abstract Ln3/e/b/j1/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/j1/k0$a;,
        Ln3/e/b/j1/k0$b;
    }
.end annotation


# static fields
.field public static final f:Z

.field public static final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public c:Z

.field public d:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DeferrableSurface"

    .line 1
    invoke-static {v0}, Ln3/e/b/y0;->c(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Ln3/e/b/j1/k0;->f:Z

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ln3/e/b/j1/k0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ln3/e/b/j1/k0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/b/j1/k0;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ln3/e/b/j1/k0;->b:I

    .line 4
    iput-boolean v0, p0, Ln3/e/b/j1/k0;->c:Z

    .line 5
    new-instance v0, Ln3/e/b/j1/d;

    invoke-direct {v0, p0}, Ln3/e/b/j1/d;-><init>(Ln3/e/b/j1/k0;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Ln3/e/b/j1/k0;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v1, "DeferrableSurface"

    .line 6
    invoke-static {v1}, Ln3/e/b/y0;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    sget-object v1, Ln3/e/b/j1/k0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    sget-object v2, Ln3/e/b/j1/k0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string v3, "Surface created"

    .line 9
    invoke-virtual {p0, v3, v1, v2}, Ln3/e/b/j1/k0;->f(Ljava/lang/String;II)V

    .line 10
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ln3/e/b/j1/c;

    invoke-direct {v2, p0, v1}, Ln3/e/b/j1/c;-><init>(Ln3/e/b/j1/k0;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 13
    invoke-interface {v0, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/k0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/b/j1/k0;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Ln3/e/b/j1/k0;->c:Z

    .line 4
    iget v1, p0, Ln3/e/b/j1/k0;->b:I

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Ln3/e/b/j1/k0;->d:Ln3/h/a/b;

    .line 6
    iput-object v2, p0, Ln3/e/b/j1/k0;->d:Ln3/h/a/b;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "DeferrableSurface"

    .line 7
    invoke-static {v3}, Ln3/e/b/y0;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DeferrableSurface"

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "surface closed,  useCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ln3/e/b/j1/k0;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " closed=true "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v3, v4, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 10
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1, v2}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/k0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Ln3/e/b/j1/k0;->b:I

    if-eqz v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 3
    iput v1, p0, Ln3/e/b/j1/k0;->b:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-boolean v1, p0, Ln3/e/b/j1/k0;->c:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Ln3/e/b/j1/k0;->d:Ln3/h/a/b;

    .line 6
    iput-object v2, p0, Ln3/e/b/j1/k0;->d:Ln3/h/a/b;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "DeferrableSurface"

    .line 7
    invoke-static {v3}, Ln3/e/b/y0;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DeferrableSurface"

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use count-1,  useCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Ln3/e/b/j1/k0;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " closed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Ln3/e/b/j1/k0;->c:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v3, v4, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iget v3, p0, Ln3/e/b/j1/k0;->b:I

    if-nez v3, :cond_1

    const-string v3, "Surface no longer in use"

    .line 11
    sget-object v4, Ln3/e/b/j1/k0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    sget-object v5, Ln3/e/b/j1/k0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    .line 13
    invoke-virtual {p0, v3, v4, v5}, Ln3/e/b/j1/k0;->f(Ljava/lang/String;II)V

    .line 14
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v1, v2}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    :cond_2
    return-void

    .line 16
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Decrementing use count occurs more times than incrementing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final c()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/k0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/b/j1/k0;->c:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ln3/e/b/j1/k0$a;

    const-string v2, "DeferrableSurface already closed."

    invoke-direct {v1, v2, p0}, Ln3/e/b/j1/k0$a;-><init>(Ljava/lang/String;Ln3/e/b/j1/k0;)V

    .line 4
    new-instance v2, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v2, v1}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    .line 5
    monitor-exit v0

    return-object v2

    .line 6
    :cond_0
    invoke-virtual {p0}, Ln3/e/b/j1/k0;->g()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/k0;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Ln3/e/b/j1/t1/c/g;->d(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/b/j1/k0$a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/k0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Ln3/e/b/j1/k0;->b:I

    if-nez v1, :cond_1

    iget-boolean v2, p0, Ln3/e/b/j1/k0;->c:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ln3/e/b/j1/k0$a;

    const-string v2, "Cannot begin use on a closed surface."

    invoke-direct {v1, v2, p0}, Ln3/e/b/j1/k0$a;-><init>(Ljava/lang/String;Ln3/e/b/j1/k0;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 4
    iput v1, p0, Ln3/e/b/j1/k0;->b:I

    const-string v1, "DeferrableSurface"

    .line 5
    invoke-static {v1}, Ln3/e/b/y0;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    iget v1, p0, Ln3/e/b/j1/k0;->b:I

    if-ne v1, v2, :cond_2

    const-string v1, "New surface in use"

    .line 7
    sget-object v2, Ln3/e/b/j1/k0;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sget-object v3, Ln3/e/b/j1/k0;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 9
    invoke-virtual {p0, v1, v2, v3}, Ln3/e/b/j1/k0;->f(Ljava/lang/String;II)V

    :cond_2
    const-string v1, "DeferrableSurface"

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use count+1, useCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ln3/e/b/j1/k0;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    invoke-static {v1, v2, v3}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(Ljava/lang/String;II)V
    .locals 3

    .line 1
    sget-boolean v0, Ln3/e/b/j1/k0;->f:Z

    const/4 v1, 0x0

    const-string v2, "DeferrableSurface"

    if-nez v0, :cond_0

    invoke-static {v2}, Ln3/e/b/y0;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DeferrableSurface usage statistics may be inaccurate since debug logging was not enabled at static initialization time. App restart may be required to enable accurate usage statistics."

    .line 2
    invoke-static {v2, v0, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[total_surfaces="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", used_surfaces="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v2, p1, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract g()Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end method
