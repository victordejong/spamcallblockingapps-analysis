.class public final Lq3/a/x2/e0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-TR;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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
    c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1"
    f = "Limit.kt"
    l = {
        0x9a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Ls1/z/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/q<",
            "Lq3/a/x2/g<",
            "-TR;>;TT;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Ls1/z/b/q;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/f<",
            "+TT;>;",
            "Ls1/z/b/q<",
            "-",
            "Lq3/a/x2/g<",
            "-TR;>;-TT;-",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/e0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/x2/e0;->g:Lq3/a/x2/f;

    iput-object p2, p0, Lq3/a/x2/e0;->h:Ls1/z/b/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Lq3/a/x2/e0;

    iget-object v1, p0, Lq3/a/x2/e0;->g:Lq3/a/x2/f;

    iget-object v2, p0, Lq3/a/x2/e0;->h:Ls1/z/b/q;

    invoke-direct {v0, v1, v2, p2}, Lq3/a/x2/e0;-><init>(Lq3/a/x2/f;Ls1/z/b/q;Ls1/w/d;)V

    iput-object p1, v0, Lq3/a/x2/e0;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lq3/a/x2/g;

    check-cast p2, Ls1/w/d;

    .line 1
    new-instance v0, Lq3/a/x2/e0;

    iget-object v1, p0, Lq3/a/x2/e0;->g:Lq3/a/x2/f;

    iget-object v2, p0, Lq3/a/x2/e0;->h:Ls1/z/b/q;

    invoke-direct {v0, v1, v2, p2}, Lq3/a/x2/e0;-><init>(Lq3/a/x2/f;Ls1/z/b/q;Ls1/w/d;)V

    iput-object p1, v0, Lq3/a/x2/e0;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Lq3/a/x2/e0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lq3/a/x2/e0;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lq3/a/x2/e0;->f:Ljava/lang/Object;

    check-cast v0, Lq3/a/x2/e0$a;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq3/a/x2/o1/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lq3/a/x2/e0;->f:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    .line 4
    iget-object v1, p0, Lq3/a/x2/e0;->g:Lq3/a/x2/f;

    iget-object v3, p0, Lq3/a/x2/e0;->h:Ls1/z/b/q;

    .line 5
    new-instance v4, Lq3/a/x2/e0$a;

    invoke-direct {v4, v3, p1}, Lq3/a/x2/e0$a;-><init>(Ls1/z/b/q;Lq3/a/x2/g;)V

    .line 6
    :try_start_1
    iput-object v4, p0, Lq3/a/x2/e0;->f:Ljava/lang/Object;

    iput v2, p0, Lq3/a/x2/e0;->e:I

    invoke-interface {v1, v4, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lq3/a/x2/o1/a; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v0, :cond_2

    return-object v0

    :catch_1
    move-exception p1

    move-object v0, v4

    .line 7
    :goto_0
    iget-object v1, p1, Lq3/a/x2/o1/a;->a:Lq3/a/x2/g;

    if-ne v1, v0, :cond_3

    .line 8
    :cond_2
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 9
    :cond_3
    throw p1
.end method
