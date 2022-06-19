.class public Ln3/e/b/j1/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/j1/x0$b;

.field public final synthetic b:Ln3/e/b/j1/x0$a;


# direct methods
.method public constructor <init>(Ln3/e/b/j1/x0$a;Ln3/e/b/j1/x0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/j1/w0;->b:Ln3/e/b/j1/x0$a;

    iput-object p2, p0, Ln3/e/b/j1/w0;->a:Ln3/e/b/j1/x0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget-object v0, Landroidx/camera/view/PreviewView$e;->a:Landroidx/camera/view/PreviewView$e;

    iget-object v1, p0, Ln3/e/b/j1/w0;->b:Ln3/e/b/j1/x0$a;

    iget-object v1, v1, Ln3/e/b/j1/x0$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Ln3/e/b/j1/w0;->a:Ln3/e/b/j1/x0$b;

    invoke-virtual {v1}, Ln3/e/b/j1/x0$b;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Ln3/e/b/j1/w0;->b:Ln3/e/b/j1/x0$a;

    iget-object v1, v1, Ln3/e/b/j1/x0$a;->b:Ln3/e/b/j1/c1$a;

    iget-object v4, p0, Ln3/e/b/j1/w0;->a:Ln3/e/b/j1/x0$b;

    .line 4
    invoke-virtual {v4}, Ln3/e/b/j1/x0$b;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5
    iget-object v4, v4, Ln3/e/b/j1/x0$b;->a:Ljava/lang/Object;

    .line 6
    check-cast v1, Ln3/e/d/t;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    check-cast v4, Ln3/e/b/j1/b0$a;

    .line 9
    sget-object v5, Ln3/e/b/j1/b0$a;->e:Ln3/e/b/j1/b0$a;

    if-eq v4, v5, :cond_3

    sget-object v5, Ln3/e/b/j1/b0$a;->f:Ln3/e/b/j1/b0$a;

    if-eq v4, v5, :cond_3

    sget-object v5, Ln3/e/b/j1/b0$a;->g:Ln3/e/b/j1/b0$a;

    if-eq v4, v5, :cond_3

    sget-object v5, Ln3/e/b/j1/b0$a;->h:Ln3/e/b/j1/b0$a;

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    sget-object v2, Ln3/e/b/j1/b0$a;->c:Ln3/e/b/j1/b0$a;

    if-eq v4, v2, :cond_2

    sget-object v2, Ln3/e/b/j1/b0$a;->d:Ln3/e/b/j1/b0$a;

    if-eq v4, v2, :cond_2

    sget-object v2, Ln3/e/b/j1/b0$a;->b:Ln3/e/b/j1/b0$a;

    if-ne v4, v2, :cond_7

    .line 11
    :cond_2
    iget-boolean v2, v1, Ln3/e/d/t;->f:Z

    if-nez v2, :cond_7

    .line 12
    iget-object v2, v1, Ln3/e/d/t;->a:Ln3/e/b/j1/z;

    .line 13
    invoke-virtual {v1, v0}, Ln3/e/d/t;->a(Landroidx/camera/view/PreviewView$e;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v3, Ln3/e/d/b;

    invoke-direct {v3, v1, v2, v0}, Ln3/e/d/b;-><init>(Ln3/e/d/t;Ln3/e/b/l0;Ljava/util/List;)V

    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 16
    invoke-static {v3}, Ln3/e/b/j1/t1/c/e;->a(Lcom/google/common/util/concurrent/ListenableFuture;)Ln3/e/b/j1/t1/c/e;

    move-result-object v3

    new-instance v4, Ln3/e/d/c;

    invoke-direct {v4, v1}, Ln3/e/d/c;-><init>(Ln3/e/d/t;)V

    .line 17
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 18
    invoke-virtual {v3, v4, v5}, Ln3/e/b/j1/t1/c/e;->c(Ln3/e/b/j1/t1/c/b;Ljava/util/concurrent/Executor;)Ln3/e/b/j1/t1/c/e;

    move-result-object v3

    new-instance v4, Ln3/e/d/a;

    invoke-direct {v4, v1}, Ln3/e/d/a;-><init>(Ln3/e/d/t;)V

    .line 19
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 20
    new-instance v6, Ln3/e/b/j1/t1/c/f;

    invoke-direct {v6, v4}, Ln3/e/b/j1/t1/c/f;-><init>(Ln3/c/a/c/a;)V

    .line 21
    new-instance v4, Ln3/e/b/j1/t1/c/c;

    invoke-direct {v4, v6, v3}, Ln3/e/b/j1/t1/c/c;-><init>(Ln3/e/b/j1/t1/c/b;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 22
    iget-object v3, v3, Ln3/e/b/j1/t1/c/e;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v3, v4, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 23
    iput-object v4, v1, Ln3/e/d/t;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 24
    new-instance v3, Ln3/e/d/r;

    invoke-direct {v3, v1, v0, v2}, Ln3/e/d/r;-><init>(Ln3/e/d/t;Ljava/util/List;Ln3/e/b/l0;)V

    .line 25
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 26
    new-instance v2, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {v2, v4, v3}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    .line 27
    iget-object v3, v4, Ln3/e/b/j1/t1/c/e;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v3, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, v1, Ln3/e/d/t;->f:Z

    goto :goto_1

    .line 29
    :cond_3
    :goto_0
    invoke-virtual {v1, v0}, Ln3/e/d/t;->a(Landroidx/camera/view/PreviewView$e;)V

    .line 30
    iget-boolean v0, v1, Ln3/e/d/t;->f:Z

    if-eqz v0, :cond_7

    .line 31
    iput-boolean v3, v1, Ln3/e/d/t;->f:Z

    .line 32
    iget-object v0, v1, Ln3/e/d/t;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_7

    .line 33
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 34
    iput-object v2, v1, Ln3/e/d/t;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    .line 35
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result contains an error. Does not contain a value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_5
    iget-object v1, p0, Ln3/e/b/j1/w0;->a:Ln3/e/b/j1/x0$b;

    .line 37
    iget-object v1, v1, Ln3/e/b/j1/x0$b;->b:Ljava/lang/Throwable;

    .line 38
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Ln3/e/b/j1/w0;->b:Ln3/e/b/j1/x0$a;

    iget-object v1, v1, Ln3/e/b/j1/x0$a;->b:Ln3/e/b/j1/c1$a;

    iget-object v4, p0, Ln3/e/b/j1/w0;->a:Ln3/e/b/j1/x0$b;

    .line 40
    iget-object v4, v4, Ln3/e/b/j1/x0$b;->b:Ljava/lang/Throwable;

    .line 41
    check-cast v1, Ln3/e/d/t;

    .line 42
    iget-object v4, v1, Ln3/e/d/t;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v4, :cond_6

    .line 43
    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 44
    iput-object v2, v1, Ln3/e/d/t;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 45
    :cond_6
    invoke-virtual {v1, v0}, Ln3/e/d/t;->a(Landroidx/camera/view/PreviewView$e;)V

    :cond_7
    :goto_1
    return-void
.end method
