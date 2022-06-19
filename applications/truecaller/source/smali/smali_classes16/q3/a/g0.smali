.class public abstract Lq3/a/g0;
.super Ls1/w/a;
.source "SourceFile"

# interfaces
.implements Ls1/w/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/a/g0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u00172\u00020\u00012\u00020\u0002:\u0001\u0017B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\u0008\u001a\u00060\tj\u0002`\nH&J\u001c\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\u0008\u001a\u00060\tj\u0002`\nH\u0017J \u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\r\"\u0004\u0008\u0000\u0010\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\rJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0011\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0000H\u0087\u0002J\u0014\u0010\u0014\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\rH\u0017J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "Lkotlin/coroutines/ContinuationInterceptor;",
        "()V",
        "dispatch",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "dispatchYield",
        "interceptContinuation",
        "Lkotlin/coroutines/Continuation;",
        "T",
        "continuation",
        "isDispatchNeeded",
        "",
        "plus",
        "other",
        "releaseInterceptedContinuation",
        "toString",
        "",
        "Key",
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


# static fields
.field public static final a:Lq3/a/g0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq3/a/g0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/a/g0$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lq3/a/g0;->a:Lq3/a/g0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ls1/w/e$a;->a:Ls1/w/e$a;

    invoke-direct {p0, v0}, Ls1/w/a;-><init>(Ls1/w/f$b;)V

    return-void
.end method


# virtual methods
.method public abstract F0(Ls1/w/f;Ljava/lang/Runnable;)V
.end method

.method public G0(Ls1/w/f;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lq3/a/g0;->F0(Ls1/w/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method public J0(Ls1/w/f;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final S(Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ls1/w/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq3/a/y2/i;

    invoke-direct {v0, p0, p1}, Lq3/a/y2/i;-><init>(Lq3/a/g0;Ls1/w/d;)V

    return-object v0
.end method

.method public get(Ls1/w/f$b;)Ls1/w/f$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ls1/w/f$a;",
            ">(",
            "Ls1/w/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, p1, Ls1/w/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 3
    check-cast p1, Ls1/w/b;

    invoke-interface {p0}, Ls1/w/f$a;->getKey()Ls1/w/f$b;

    move-result-object v1

    .line 4
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1

    .line 5
    iget-object v0, p1, Ls1/w/b;->a:Ls1/w/f$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    const-string v0, "element"

    .line 6
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Ls1/w/b;->b:Ls1/z/b/l;

    invoke-interface {p1, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/w/f$a;

    .line 8
    instance-of v0, p1, Ls1/w/f$a;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p1

    goto :goto_2

    .line 9
    :cond_3
    sget-object v0, Ls1/w/e$a;->a:Ls1/w/e$a;

    if-ne v0, p1, :cond_4

    move-object v2, p0

    :cond_4
    :goto_2
    return-object v2
.end method

.method public l(Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lq3/a/y2/i;

    .line 2
    invoke-virtual {p1}, Lq3/a/y2/i;->m()V

    return-void
.end method

.method public minusKey(Ls1/w/f$b;)Ls1/w/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f$b<",
            "*>;)",
            "Ls1/w/f;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/w/h;->a:Ls1/w/h;

    const-string v1, "key"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v2, p1, Ls1/w/b;

    if-eqz v2, :cond_3

    .line 3
    check-cast p1, Ls1/w/b;

    invoke-interface {p0}, Ls1/w/f$a;->getKey()Ls1/w/f$b;

    move-result-object v2

    .line 4
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v2, p1, :cond_1

    .line 5
    iget-object v1, p1, Ls1/w/b;->a:Ls1/w/f$b;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const-string v1, "element"

    .line 6
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Ls1/w/b;->b:Ls1/z/b/l;

    invoke-interface {p1, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/w/f$a;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, p0

    goto :goto_2

    .line 8
    :cond_3
    sget-object v1, Ls1/w/e$a;->a:Ls1/w/e$a;

    if-ne v1, p1, :cond_2

    :goto_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->p1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
