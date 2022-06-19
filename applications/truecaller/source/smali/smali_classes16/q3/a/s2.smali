.class public final Lq3/a/s2;
.super Lq3/a/y2/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/y2/u<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\nH\u0014J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0018\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/UndispatchedCoroutine;",
        "T",
        "Lkotlinx/coroutines/internal/ScopeCoroutine;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "uCont",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V",
        "savedContext",
        "savedOldValue",
        "",
        "afterResume",
        "",
        "state",
        "clearThreadContext",
        "",
        "saveThreadContext",
        "oldValue",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public d:Ls1/w/f;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/t2;->a:Lq3/a/t2;

    invoke-interface {p1, v0}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lq3/a/y2/u;-><init>(Ls1/w/f;Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public s0(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lq3/a/s2;->d:Ls1/w/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lq3/a/s2;->e:Ljava/lang/Object;

    invoke-static {v0, v2}, Lq3/a/y2/z;->a(Ls1/w/f;Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lq3/a/s2;->d:Ls1/w/f;

    .line 4
    iput-object v1, p0, Lq3/a/s2;->e:Ljava/lang/Object;

    .line 5
    :goto_0
    iget-object v0, p0, Lq3/a/y2/u;->c:Ls1/w/d;

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->O2(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lq3/a/y2/u;->c:Ls1/w/d;

    .line 7
    invoke-interface {v0}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v2

    .line 8
    invoke-static {v2, v1}, Lq3/a/y2/z;->c(Ls1/w/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    sget-object v4, Lq3/a/y2/z;->a:Lq3/a/y2/x;

    if-eq v3, v4, :cond_1

    .line 10
    invoke-static {v0, v2, v3}, Lq3/a/e0;->b(Ls1/w/d;Ls1/w/f;Ljava/lang/Object;)Lq3/a/s2;

    move-result-object v1

    .line 11
    :cond_1
    :try_start_0
    iget-object v0, p0, Lq3/a/y2/u;->c:Ls1/w/d;

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Lq3/a/s2;->w0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    :cond_2
    invoke-static {v2, v3}, Lq3/a/y2/z;->a(Ls1/w/f;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Lq3/a/s2;->w0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    :cond_4
    invoke-static {v2, v3}, Lq3/a/y2/z;->a(Ls1/w/f;Ljava/lang/Object;)V

    :cond_5
    throw p1
.end method

.method public final w0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/a/s2;->d:Ls1/w/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lq3/a/s2;->d:Ls1/w/f;

    .line 3
    iput-object v0, p0, Lq3/a/s2;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
