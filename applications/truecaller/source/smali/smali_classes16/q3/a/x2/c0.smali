.class public final Lq3/a/x2/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/f<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public final synthetic a:Lq3/a/x2/f;

.field public final synthetic b:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Ls1/z/b/p;)V
    .locals 0

    iput-object p1, p0, Lq3/a/x2/c0;->a:Lq3/a/x2/f;

    iput-object p2, p0, Lq3/a/x2/c0;->b:Ls1/z/b/p;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, Lq3/a/x2/c0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lq3/a/x2/c0$a;

    iget v1, v0, Lq3/a/x2/c0$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq3/a/x2/c0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq3/a/x2/c0$a;

    invoke-direct {v0, p0, p2}, Lq3/a/x2/c0$a;-><init>(Lq3/a/x2/c0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lq3/a/x2/c0$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lq3/a/x2/c0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lq3/a/x2/c0$a;->g:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/d0;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq3/a/x2/o1/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

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
    iget-object p2, p0, Lq3/a/x2/c0;->a:Lq3/a/x2/f;

    .line 5
    new-instance v2, Lq3/a/x2/d0;

    iget-object v4, p0, Lq3/a/x2/c0;->b:Ls1/z/b/p;

    invoke-direct {v2, v4, p1}, Lq3/a/x2/d0;-><init>(Ls1/z/b/p;Lq3/a/x2/g;)V

    .line 6
    :try_start_1
    iput-object v2, v0, Lq3/a/x2/c0$a;->g:Ljava/lang/Object;

    iput v3, v0, Lq3/a/x2/c0$a;->e:I

    invoke-interface {p2, v2, v0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lq3/a/x2/o1/a; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_3

    return-object v1

    :catch_1
    move-exception p2

    move-object p1, v2

    .line 7
    :goto_1
    iget-object v0, p2, Lq3/a/x2/o1/a;->a:Lq3/a/x2/g;

    if-ne v0, p1, :cond_4

    .line 8
    :cond_3
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 9
    :cond_4
    throw p2
.end method
