.class public final Lq3/a/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0008\u0010\u000b\u001a\u00020\u000cH\u0000\u001a8\u0010\r\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0014H\u0080\u0008\u00a2\u0006\u0002\u0010\u0015\u001a4\u0010\u0016\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e2\u0006\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0014H\u0080\u0008\u00a2\u0006\u0002\u0010\u0018\u001a\u0014\u0010\u0019\u001a\u00020\u0008*\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0008H\u0007\u001a\u0013\u0010\u001b\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001c*\u00020\u001dH\u0080\u0010\u001a(\u0010\u001e\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001c*\u0006\u0012\u0002\u0008\u00030\u00102\u0006\u0010\u0017\u001a\u00020\u00082\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0012H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u00088@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006 "
    }
    d2 = {
        "COROUTINES_SCHEDULER_PROPERTY_NAME",
        "",
        "DEBUG_THREAD_NAME_SEPARATOR",
        "useCoroutinesScheduler",
        "",
        "getUseCoroutinesScheduler",
        "()Z",
        "coroutineName",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineName",
        "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;",
        "createDefaultDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "withContinuationContext",
        "T",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "countOrElement",
        "",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "withCoroutineContext",
        "context",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "newCoroutineContext",
        "Lkotlinx/coroutines/CoroutineScope;",
        "undispatchedCompletion",
        "Lkotlinx/coroutines/UndispatchedCoroutine;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "updateUndispatchedCompletion",
        "oldValue",
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
.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlinx.coroutines.scheduler"

    .line 1
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->C3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0xddf

    if-eq v1, v2, :cond_0

    const v2, 0x1ad6f

    if-ne v1, v2, :cond_2

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System property \'kotlinx.coroutines.scheduler\' has unrecognized value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 4
    :goto_1
    sput-boolean v0, Lq3/a/e0;->a:Z

    return-void
.end method

.method public static final a(Lq3/a/i0;Ls1/w/f;)Ls1/w/f;
    .locals 1

    .line 1
    invoke-interface {p0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object p0

    invoke-interface {p0, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p0

    .line 2
    sget-object p1, Lq3/a/t0;->a:Lq3/a/t0;

    .line 3
    sget-object p1, Lq3/a/t0;->b:Lq3/a/g0;

    if-eq p0, p1, :cond_0

    .line 4
    sget-object v0, Ls1/w/e$a;->a:Ls1/w/e$a;

    invoke-interface {p0, v0}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final b(Ls1/w/d;Ls1/w/f;Ljava/lang/Object;)Lq3/a/s2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;",
            "Ls1/w/f;",
            "Ljava/lang/Object;",
            ")",
            "Lq3/a/s2<",
            "*>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ls1/w/k/a/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lq3/a/t2;->a:Lq3/a/t2;

    invoke-interface {p1, v0}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 3
    :cond_2
    check-cast p0, Ls1/w/k/a/d;

    .line 4
    :cond_3
    instance-of v0, p0, Lq3/a/q0;

    if-eqz v0, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    invoke-interface {p0}, Ls1/w/k/a/d;->p()Ls1/w/k/a/d;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_1

    .line 6
    :cond_5
    instance-of v0, p0, Lq3/a/s2;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Lq3/a/s2;

    :goto_1
    if-nez v1, :cond_6

    goto :goto_2

    .line 7
    :cond_6
    iput-object p1, v1, Lq3/a/s2;->d:Ls1/w/f;

    .line 8
    iput-object p2, v1, Lq3/a/s2;->e:Ljava/lang/Object;

    :goto_2
    return-object v1
.end method
