.class public final synthetic Ln3/e/a/e/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/b1;

.field public final synthetic b:Ln3/e/a/e/r1;

.field public final synthetic c:Ln3/e/b/j1/k0;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/b1;Ln3/e/a/e/r1;Ln3/e/b/j1/k0;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/s;->a:Ln3/e/a/e/b1;

    iput-object p2, p0, Ln3/e/a/e/s;->b:Ln3/e/a/e/r1;

    iput-object p3, p0, Ln3/e/a/e/s;->c:Ln3/e/b/j1/k0;

    iput-object p4, p0, Ln3/e/a/e/s;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln3/e/a/e/s;->a:Ln3/e/a/e/b1;

    iget-object v1, p0, Ln3/e/a/e/s;->b:Ln3/e/a/e/r1;

    iget-object v2, p0, Ln3/e/a/e/s;->c:Ln3/e/b/j1/k0;

    iget-object v3, p0, Ln3/e/a/e/s;->d:Ljava/lang/Runnable;

    .line 1
    iget-object v4, v0, Ln3/e/a/e/b1;->s:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v1, v4}, Ln3/e/a/e/b1;->u(Ln3/e/a/e/r1;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3
    invoke-virtual {v2}, Ln3/e/b/j1/k0;->a()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v0, v1, v4

    .line 4
    invoke-virtual {v2}, Ln3/e/b/j1/k0;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ln3/e/b/j1/t1/c/g;->g(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 6
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 7
    check-cast v0, Ln3/e/b/j1/t1/c/i;

    .line 8
    iget-object v0, v0, Ln3/e/b/j1/t1/c/i;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v3, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
