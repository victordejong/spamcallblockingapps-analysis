.class public final synthetic Ln3/e/b/j1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/j1/c0;

.field public final synthetic b:Ln3/e/b/j1/b0;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/j1/c0;Ln3/e/b/j1/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/j1/b;->a:Ln3/e/b/j1/c0;

    iput-object p2, p0, Ln3/e/b/j1/b;->b:Ln3/e/b/j1/b0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ln3/e/b/j1/b;->a:Ln3/e/b/j1/c0;

    iget-object v1, p0, Ln3/e/b/j1/b;->b:Ln3/e/b/j1/b0;

    .line 1
    iget-object v2, v0, Ln3/e/b/j1/c0;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v3, v0, Ln3/e/b/j1/c0;->c:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, v0, Ln3/e/b/j1/c0;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Ln3/e/b/j1/c0;->e:Ln3/h/a/b;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v0, Ln3/e/b/j1/c0;->e:Ln3/h/a/b;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    .line 7
    iput-object v3, v0, Ln3/e/b/j1/c0;->e:Ln3/h/a/b;

    .line 8
    iput-object v3, v0, Ln3/e/b/j1/c0;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 9
    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
