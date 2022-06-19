.class public final synthetic Ln3/e/b/j1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:J

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/j1/g;->a:Ljava/util/List;

    iput-object p2, p0, Ln3/e/b/j1/g;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Ln3/e/b/j1/g;->c:Ljava/util/concurrent/Executor;

    iput-wide p4, p0, Ln3/e/b/j1/g;->d:J

    iput-boolean p6, p0, Ln3/e/b/j1/g;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Ln3/e/b/j1/g;->a:Ljava/util/List;

    iget-object v1, p0, Ln3/e/b/j1/g;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v8, p0, Ln3/e/b/j1/g;->c:Ljava/util/concurrent/Executor;

    iget-wide v9, p0, Ln3/e/b/j1/g;->d:J

    iget-boolean v11, p0, Ln3/e/b/j1/g;->e:Z

    .line 1
    invoke-static {v0}, Ln3/e/b/j1/t1/c/g;->g(Ljava/util/Collection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2
    new-instance v12, Ln3/e/b/j1/h;

    move-object v2, v12

    move-object v3, v8

    move-object v4, v0

    move-object v5, p1

    move-wide v6, v9

    invoke-direct/range {v2 .. v7}, Ln3/e/b/j1/h;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/ListenableFuture;Ln3/h/a/b;J)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v12, v9, v10, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 3
    new-instance v2, Ln3/e/b/j1/e;

    invoke-direct {v2, v0}, Ln3/e/b/j1/e;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 4
    iget-object v3, p1, Ln3/h/a/b;->c:Ln3/h/a/f;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3, v2, v8}, Ln3/h/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 6
    :cond_0
    new-instance v2, Ln3/e/b/j1/l0;

    invoke-direct {v2, v11, p1, v1}, Ln3/e/b/j1/l0;-><init>(ZLn3/h/a/b;Ljava/util/concurrent/ScheduledFuture;)V

    .line 7
    new-instance p1, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {p1, v0, v2}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    check-cast v0, Ln3/e/b/j1/t1/c/i;

    invoke-virtual {v0, p1, v8}, Ln3/e/b/j1/t1/c/i;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const-string p1, "surfaceList"

    return-object p1
.end method
