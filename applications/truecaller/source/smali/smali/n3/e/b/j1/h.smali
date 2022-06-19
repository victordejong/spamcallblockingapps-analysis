.class public final synthetic Ln3/e/b/j1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic c:Ln3/h/a/b;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/ListenableFuture;Ln3/h/a/b;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/j1/h;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ln3/e/b/j1/h;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Ln3/e/b/j1/h;->c:Ln3/h/a/b;

    iput-wide p4, p0, Ln3/e/b/j1/h;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ln3/e/b/j1/h;->a:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ln3/e/b/j1/h;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v2, p0, Ln3/e/b/j1/h;->c:Ln3/h/a/b;

    iget-wide v3, p0, Ln3/e/b/j1/h;->d:J

    .line 1
    new-instance v5, Ln3/e/b/j1/f;

    invoke-direct {v5, v1, v2, v3, v4}, Ln3/e/b/j1/f;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ln3/h/a/b;J)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
