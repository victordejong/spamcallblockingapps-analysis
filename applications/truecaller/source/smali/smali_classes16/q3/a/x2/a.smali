.class public abstract Lq3/a/x2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq3/a/x2/f<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001f\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tJ\u001f\u0010\n\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/AbstractFlow;",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lkotlinx/coroutines/flow/CancellableFlow;",
        "()V",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectSafely",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/g<",
            "-TT;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Lq3/a/x2/a$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lq3/a/x2/a$a;

    iget v2, v1, Lq3/a/x2/a$a;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lq3/a/x2/a$a;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Lq3/a/x2/a$a;

    invoke-direct {v1, p0, p2}, Lq3/a/x2/a$a;-><init>(Lq3/a/x2/a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Lq3/a/x2/a$a;->e:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Lq3/a/x2/a$a;->g:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Lq3/a/x2/a$a;->d:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/o1/x;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lq3/a/x2/o1/x;

    .line 5
    iget-object v3, v1, Ls1/w/k/a/c;->c:Ls1/w/f;

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p2, p1, v3}, Lq3/a/x2/o1/x;-><init>(Lq3/a/x2/g;Ls1/w/f;)V

    .line 7
    :try_start_1
    iput-object p2, v1, Lq3/a/x2/a$a;->d:Ljava/lang/Object;

    iput v4, v1, Lq3/a/x2/a$a;->g:I

    move-object p1, p0

    check-cast p1, Lq3/a/x2/d1;

    .line 8
    iget-object p1, p1, Lq3/a/x2/d1;->a:Ls1/z/b/p;

    invoke-interface {p1, p2, v1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object p1, p2

    .line 9
    :goto_2
    invoke-virtual {p1}, Lq3/a/x2/o1/x;->u()V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_3
    invoke-virtual {p1}, Lq3/a/x2/o1/x;->u()V

    throw p2
.end method
