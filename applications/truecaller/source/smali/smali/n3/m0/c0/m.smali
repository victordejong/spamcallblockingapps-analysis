.class public Ln3/m0/c0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic b:Ln3/m0/c0/t/w/c;

.field public final synthetic c:Ln3/m0/c0/o;


# direct methods
.method public constructor <init>(Ln3/m0/c0/o;Lcom/google/common/util/concurrent/ListenableFuture;Ln3/m0/c0/t/w/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/m;->c:Ln3/m0/c0/o;

    iput-object p2, p0, Ln3/m0/c0/m;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Ln3/m0/c0/m;->b:Ln3/m0/c0/t/w/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/m0/c0/m;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 2
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/o;->t:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ln3/m0/c0/m;->c:Ln3/m0/c0/o;

    iget-object v4, v4, Ln3/m0/c0/o;->e:Ln3/m0/c0/s/p;

    iget-object v4, v4, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object v0, p0, Ln3/m0/c0/m;->c:Ln3/m0/c0/o;

    iget-object v1, v0, Ln3/m0/c0/o;->f:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, v0, Ln3/m0/c0/o;->r:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    iget-object v0, p0, Ln3/m0/c0/m;->b:Ln3/m0/c0/t/w/c;

    iget-object v1, p0, Ln3/m0/c0/m;->c:Ln3/m0/c0/o;

    iget-object v1, v1, Ln3/m0/c0/o;->r:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1}, Ln3/m0/c0/t/w/c;->k(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Ln3/m0/c0/m;->b:Ln3/m0/c0/t/w/c;

    invoke-virtual {v1, v0}, Ln3/m0/c0/t/w/c;->j(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
