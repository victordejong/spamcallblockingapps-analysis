.class public final Lq3/a/x2/s;
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

.field public final synthetic b:Ls1/z/b/q;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Ls1/z/b/q;)V
    .locals 0

    iput-object p1, p0, Lq3/a/x2/s;->a:Lq3/a/x2/f;

    iput-object p2, p0, Lq3/a/x2/s;->b:Ls1/z/b/q;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p2, Lq3/a/x2/s$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lq3/a/x2/s$a;

    iget v1, v0, Lq3/a/x2/s$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq3/a/x2/s$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq3/a/x2/s$a;

    invoke-direct {v0, p0, p2}, Lq3/a/x2/s$a;-><init>(Lq3/a/x2/s;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lq3/a/x2/s$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lq3/a/x2/s$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lq3/a/x2/s$a;->g:Ljava/lang/Object;

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
    iget-object p1, v0, Lq3/a/x2/s$a;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    iget-object p1, v0, Lq3/a/x2/s$a;->h:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    iget-object v2, v0, Lq3/a/x2/s$a;->g:Ljava/lang/Object;

    check-cast v2, Lq3/a/x2/s;

    :try_start_1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p2, p0, Lq3/a/x2/s;->a:Lq3/a/x2/f;

    iput-object p0, v0, Lq3/a/x2/s$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Lq3/a/x2/s$a;->h:Ljava/lang/Object;

    iput v5, v0, Lq3/a/x2/s$a;->e:I

    invoke-interface {p2, p1, v0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p2, v0, Ls1/w/k/a/c;->c:Ls1/w/f;

    invoke-static {p2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 6
    new-instance v4, Lq3/a/x2/o1/x;

    invoke-direct {v4, p1, p2}, Lq3/a/x2/o1/x;-><init>(Lq3/a/x2/g;Ls1/w/f;)V

    .line 7
    :try_start_3
    iget-object p1, v2, Lq3/a/x2/s;->b:Ls1/z/b/q;

    iput-object v4, v0, Lq3/a/x2/s$a;->g:Ljava/lang/Object;

    iput-object v6, v0, Lq3/a/x2/s$a;->h:Ljava/lang/Object;

    iput v3, v0, Lq3/a/x2/s$a;->e:I

    invoke-interface {p1, v4, v6, v0}, Ls1/z/b/q;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, v4

    .line 8
    :goto_2
    invoke-virtual {p1}, Lq3/a/x2/o1/x;->u()V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_2
    move-exception p2

    move-object p1, v4

    .line 10
    :goto_3
    invoke-virtual {p1}, Lq3/a/x2/o1/x;->u()V

    throw p2

    :catchall_3
    move-exception p1

    move-object v2, p0

    .line 11
    :goto_4
    new-instance p2, Lq3/a/x2/n1;

    invoke-direct {p2, p1}, Lq3/a/x2/n1;-><init>(Ljava/lang/Throwable;)V

    iget-object v2, v2, Lq3/a/x2/s;->b:Ls1/z/b/q;

    iput-object p1, v0, Lq3/a/x2/s$a;->g:Ljava/lang/Object;

    iput-object v6, v0, Lq3/a/x2/s$a;->h:Ljava/lang/Object;

    iput v4, v0, Lq3/a/x2/s$a;->e:I

    invoke-static {p2, v2, p1, v0}, Ls1/a/a/a/v0/f/d;->p(Lq3/a/x2/g;Ls1/z/b/q;Ljava/lang/Throwable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    .line 12
    :cond_7
    :goto_5
    throw p1
.end method
