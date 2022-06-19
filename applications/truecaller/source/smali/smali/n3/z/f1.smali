.class public final Ln3/z/f1;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/z/y2<",
        "Ln3/z/c1<",
        "TValue;>;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageFetcher$injectRemoteEvents$1"
    f = "PageFetcher.kt"
    l = {
        0xfd
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ln3/z/g1;

.field public final synthetic h:Ln3/z/q2;


# direct methods
.method public constructor <init>(Ln3/z/g1;Ln3/z/q2;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/f1;->g:Ln3/z/g1;

    iput-object p2, p0, Ln3/z/f1;->h:Ln3/z/q2;

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/f1;

    iget-object v1, p0, Ln3/z/f1;->g:Ln3/z/g1;

    iget-object v2, p0, Ln3/z/f1;->h:Ln3/z/q2;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/f1;-><init>(Ln3/z/g1;Ln3/z/q2;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/f1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/f1;

    iget-object v1, p0, Ln3/z/f1;->g:Ln3/z/g1;

    iget-object v2, p0, Ln3/z/f1;->h:Ln3/z/q2;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/f1;-><init>(Ln3/z/g1;Ln3/z/q2;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/f1;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/f1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/f1;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

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

    iget-object p1, p0, Ln3/z/f1;->e:Ljava/lang/Object;

    check-cast p1, Ln3/z/y2;

    .line 4
    new-instance v1, Ln3/z/x0;

    invoke-direct {v1}, Ln3/z/x0;-><init>()V

    .line 5
    new-instance v3, Ln3/z/f1$a;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Ln3/z/f1$a;-><init>(Ln3/z/y2;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    new-instance v7, Ln3/z/f1$b;

    invoke-direct {v7, p0, v1, v3, v4}, Ln3/z/f1$b;-><init>(Ln3/z/f1;Ln3/z/x0;Ln3/z/f1$a;Ls1/w/d;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 7
    iget-object v3, p0, Ln3/z/f1;->g:Ln3/z/g1;

    .line 8
    iget-object v3, v3, Ln3/z/g1;->g:Lq3/a/x2/f;

    .line 9
    new-instance v4, Ln3/z/f1$c;

    invoke-direct {v4, p0, p1, v1}, Ln3/z/f1$c;-><init>(Ln3/z/f1;Ln3/z/y2;Ln3/z/x0;)V

    iput v2, p0, Ln3/z/f1;->f:I

    invoke-interface {v3, v4, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
