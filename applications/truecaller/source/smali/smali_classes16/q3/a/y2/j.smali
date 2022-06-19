.class public final Lq3/a/y2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a;\u0010\u0006\u001a\u00020\u0007*\u0006\u0012\u0002\u0008\u00030\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00072\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0082\u0008\u001aU\u0010\u0011\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u0012*\u0008\u0012\u0004\u0012\u0002H\u00120\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u00152%\u0008\u0002\u0010\u0016\u001a\u001f\u0012\u0013\u0012\u00110\u0018\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001b\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0017H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a\u0012\u0010\u001d\u001a\u00020\u0007*\u0008\u0012\u0004\u0012\u00020\u00100\u0008H\u0000\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "REUSABLE_CLAIMED",
        "Lkotlinx/coroutines/internal/Symbol;",
        "getREUSABLE_CLAIMED$annotations",
        "()V",
        "UNDEFINED",
        "getUNDEFINED$annotations",
        "executeUnconfined",
        "",
        "Lkotlinx/coroutines/internal/DispatchedContinuation;",
        "contState",
        "",
        "mode",
        "",
        "doYield",
        "block",
        "Lkotlin/Function0;",
        "",
        "resumeCancellableWith",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "result",
        "Lkotlin/Result;",
        "onCancellation",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "yieldUndispatched",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lq3/a/y2/x;

.field public static final b:Lq3/a/y2/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq3/a/y2/x;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lq3/a/y2/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/a/y2/j;->a:Lq3/a/y2/x;

    .line 2
    new-instance v0, Lq3/a/y2/x;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lq3/a/y2/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/a/y2/j;->b:Lq3/a/y2/x;

    return-void
.end method

.method public static final a(Ls1/w/d;Ljava/lang/Object;Ls1/z/b/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/w/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lq3/a/y2/i;

    if-eqz v0, :cond_9

    check-cast p0, Lq3/a/y2/i;

    .line 2
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->N3(Ljava/lang/Object;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lq3/a/y2/i;->d:Lq3/a/g0;

    invoke-virtual {p0}, Lq3/a/y2/i;->getContext()Ls1/w/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq3/a/g0;->J0(Ls1/w/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iput-object p2, p0, Lq3/a/y2/i;->f:Ljava/lang/Object;

    .line 5
    iput v1, p0, Lq3/a/r0;->c:I

    .line 6
    iget-object p1, p0, Lq3/a/y2/i;->d:Lq3/a/g0;

    invoke-virtual {p0}, Lq3/a/y2/i;->getContext()Ls1/w/f;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lq3/a/g0;->F0(Ls1/w/f;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 7
    :cond_0
    sget-object v0, Lq3/a/m2;->a:Lq3/a/m2;

    invoke-static {}, Lq3/a/m2;->a()Lq3/a/z0;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lq3/a/z0;->W0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iput-object p2, p0, Lq3/a/y2/i;->f:Ljava/lang/Object;

    .line 10
    iput v1, p0, Lq3/a/r0;->c:I

    .line 11
    invoke-virtual {v0, p0}, Lq3/a/z0;->Q0(Lq3/a/r0;)V

    goto/16 :goto_4

    .line 12
    :cond_1
    invoke-virtual {v0, v1}, Lq3/a/z0;->U0(Z)V

    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lq3/a/y2/i;->getContext()Ls1/w/f;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v4, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    :try_start_1
    invoke-interface {v3, v4}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v3

    check-cast v3, Lq3/a/p1;

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v3}, Lq3/a/p1;->b()Z

    move-result v4

    if-nez v4, :cond_3

    .line 15
    invoke-interface {v3}, Lq3/a/p1;->p0()Ljava/util/concurrent/CancellationException;

    move-result-object v3

    .line 16
    instance-of v4, p2, Lq3/a/b0;

    if-eqz v4, :cond_2

    .line 17
    check-cast p2, Lq3/a/b0;

    iget-object p2, p2, Lq3/a/b0;->b:Ls1/z/b/l;

    invoke-interface {p2, v3}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    invoke-static {v3}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ls1/w/d;->c(Ljava/lang/Object;)V

    move p2, v1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_8

    .line 19
    iget-object p2, p0, Lq3/a/y2/i;->e:Ls1/w/d;

    iget-object v3, p0, Lq3/a/y2/i;->g:Ljava/lang/Object;

    .line 20
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v4

    .line 21
    invoke-static {v4, v3}, Lq3/a/y2/z;->c(Ls1/w/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    sget-object v5, Lq3/a/y2/z;->a:Lq3/a/y2/x;

    if-eq v3, v5, :cond_4

    .line 23
    invoke-static {p2, v4, v3}, Lq3/a/e0;->b(Ls1/w/d;Ls1/w/f;Ljava/lang/Object;)Lq3/a/s2;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_4
    move-object p2, v2

    .line 24
    :goto_1
    :try_start_2
    iget-object v5, p0, Lq3/a/y2/i;->e:Ls1/w/d;

    invoke-interface {v5, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_5

    .line 25
    :try_start_3
    invoke-virtual {p2}, Lq3/a/s2;->w0()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 26
    :cond_5
    invoke-static {v4, v3}, Lq3/a/y2/z;->a(Ls1/w/f;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_6

    .line 27
    invoke-virtual {p2}, Lq3/a/s2;->w0()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 28
    :cond_6
    invoke-static {v4, v3}, Lq3/a/y2/z;->a(Ls1/w/f;Ljava/lang/Object;)V

    :cond_7
    throw p1

    .line 29
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lq3/a/z0;->l1()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_8

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 30
    :try_start_4
    invoke-virtual {p0, p1, v2}, Lq3/a/r0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 31
    :goto_3
    invoke-virtual {v0, v1}, Lq3/a/z0;->K0(Z)V

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {v0, v1}, Lq3/a/z0;->K0(Z)V

    throw p0

    .line 32
    :cond_9
    invoke-interface {p0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public static synthetic b(Ls1/w/d;Ljava/lang/Object;Ls1/z/b/l;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-static {p0, p1, p2}, Lq3/a/y2/j;->a(Ls1/w/d;Ljava/lang/Object;Ls1/z/b/l;)V

    return-void
.end method
