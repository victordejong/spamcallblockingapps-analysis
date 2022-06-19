.class public abstract Landroidx/work/CoroutineWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# instance fields
.field private final k:Lkotlinx/coroutines/p;

.field private final l:Landroidx/work/impl/utils/n/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/n/c<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lkotlinx/coroutines/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/e1;->b(Lkotlinx/coroutines/b1;ILjava/lang/Object;)Lkotlinx/coroutines/p;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->k:Lkotlinx/coroutines/p;

    .line 3
    invoke-static {}, Landroidx/work/impl/utils/n/c;->t()Landroidx/work/impl/utils/n/c;

    move-result-object p1

    const-string p2, "SettableFuture.create()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->l:Landroidx/work/impl/utils/n/c;

    .line 4
    new-instance p2, Landroidx/work/CoroutineWorker$a;

    invoke-direct {p2, p0}, Landroidx/work/CoroutineWorker$a;-><init>(Landroidx/work/CoroutineWorker;)V

    .line 5
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->g()Landroidx/work/impl/utils/o/a;

    move-result-object v0

    const-string v1, "taskExecutor"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Landroidx/work/impl/utils/o/a;->c()Landroidx/work/impl/utils/g;

    move-result-object v0

    .line 6
    invoke-virtual {p1, p2, v0}, Landroidx/work/impl/utils/n/a;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    invoke-static {}, Lkotlinx/coroutines/m0;->a()Lkotlinx/coroutines/x;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/CoroutineWorker;->m:Lkotlinx/coroutines/x;

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/work/ListenableWorker;->l()V

    .line 2
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->l:Landroidx/work/impl/utils/n/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/n/a;->cancel(Z)Z

    return-void
.end method

.method public final n()Lcom/google/common/util/concurrent/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/c<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/work/CoroutineWorker;->q()Lkotlinx/coroutines/x;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/CoroutineWorker;->k:Lkotlinx/coroutines/p;

    invoke-virtual {v0, v1}, Lkotlin/u/a;->plus(Lkotlin/u/g;)Lkotlin/u/g;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d0;->a(Lkotlin/u/g;)Lkotlinx/coroutines/c0;

    move-result-object v1

    .line 2
    new-instance v4, Landroidx/work/CoroutineWorker$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/work/CoroutineWorker$b;-><init>(Landroidx/work/CoroutineWorker;Lkotlin/u/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/d;->b(Lkotlinx/coroutines/c0;Lkotlin/u/g;Lkotlinx/coroutines/f0;Lkotlin/w/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/b1;

    .line 3
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->l:Landroidx/work/impl/utils/n/c;

    return-object v0
.end method

.method public abstract p(Lkotlin/u/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/u/d<",
            "-",
            "Landroidx/work/ListenableWorker$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public q()Lkotlinx/coroutines/x;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->m:Lkotlinx/coroutines/x;

    return-object v0
.end method

.method public final r()Landroidx/work/impl/utils/n/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/work/impl/utils/n/c<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->l:Landroidx/work/impl/utils/n/c;

    return-object v0
.end method

.method public final s()Lkotlinx/coroutines/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->k:Lkotlinx/coroutines/p;

    return-object v0
.end method
