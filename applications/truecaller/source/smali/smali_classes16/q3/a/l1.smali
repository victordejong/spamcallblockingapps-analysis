.class public final Lq3/a/l1;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2"
    f = "Interruptible.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/z/b/a;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "+TT;>;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/l1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/l1;->f:Ls1/z/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq3/a/l1;

    iget-object v1, p0, Lq3/a/l1;->f:Ls1/z/b/a;

    invoke-direct {v0, v1, p2}, Lq3/a/l1;-><init>(Ls1/z/b/a;Ls1/w/d;)V

    iput-object p1, v0, Lq3/a/l1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lq3/a/i0;

    check-cast p2, Ls1/w/d;

    .line 1
    iget-object v0, p0, Lq3/a/l1;->f:Ls1/z/b/a;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    :cond_0
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object p1

    .line 6
    :try_start_0
    new-instance p2, Lq3/a/n2;

    .line 7
    sget v1, Lq3/a/p1;->e0:I

    sget-object v1, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {p1, v1}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v1

    check-cast v1, Lq3/a/p1;

    if-eqz v1, :cond_1

    .line 8
    invoke-direct {p2, v1}, Lq3/a/n2;-><init>(Lq3/a/p1;)V

    .line 9
    invoke-virtual {p2}, Lq3/a/n2;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-virtual {p2}, Lq3/a/n2;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lq3/a/n2;->a()V

    throw p1

    :cond_1
    const-string p2, "Current context doesn\'t contain Job in it: "

    .line 12
    invoke-static {p2, p1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Blocking call was interrupted due to parent cancellation"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lq3/a/l1;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 2
    invoke-interface {p1}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object p1

    iget-object v0, p0, Lq3/a/l1;->f:Ls1/z/b/a;

    .line 3
    :try_start_0
    new-instance v1, Lq3/a/n2;

    .line 4
    sget v2, Lq3/a/p1;->e0:I

    sget-object v2, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {p1, v2}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v2

    check-cast v2, Lq3/a/p1;

    if-eqz v2, :cond_0

    .line 5
    invoke-direct {v1, v2}, Lq3/a/n2;-><init>(Lq3/a/p1;)V

    .line 6
    invoke-virtual {v1}, Lq3/a/n2;->c()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v1}, Lq3/a/n2;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lq3/a/n2;->a()V

    throw p1

    :cond_0
    const-string v0, "Current context doesn\'t contain Job in it: "

    .line 9
    invoke-static {v0, p1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Blocking call was interrupted due to parent cancellation"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method
