.class public final Ln3/z/i1;
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
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$2"
    f = "PageFetcherSnapshot.kt"
    l = {
        0x253,
        0xda
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Ln3/z/g1;


# direct methods
.method public constructor <init>(Ln3/z/g1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/i1;->i:Ln3/z/g1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/i1;

    iget-object v0, p0, Ln3/z/i1;->i:Ln3/z/g1;

    invoke-direct {p1, v0, p2}, Ln3/z/i1;-><init>(Ln3/z/g1;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/i1;

    iget-object v0, p0, Ln3/z/i1;->i:Ln3/z/g1;

    invoke-direct {p1, v0, p2}, Ln3/z/i1;-><init>(Ln3/z/g1;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/i1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/i1;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Ln3/z/i1;->g:Ljava/lang/Object;

    check-cast v1, Ln3/z/g1;

    iget-object v3, p0, Ln3/z/i1;->f:Ljava/lang/Object;

    check-cast v3, Lq3/a/b3/c;

    iget-object v5, p0, Ln3/z/i1;->e:Ljava/lang/Object;

    check-cast v5, Ln3/z/k1$a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Ln3/z/i1;->i:Ln3/z/g1;

    .line 5
    iget-object v5, v1, Ln3/z/g1;->e:Ln3/z/k1$a;

    .line 6
    iget-object p1, v5, Ln3/z/k1$a;->a:Lq3/a/b3/c;

    .line 7
    iput-object v5, p0, Ln3/z/i1;->e:Ljava/lang/Object;

    iput-object p1, p0, Ln3/z/i1;->f:Ljava/lang/Object;

    iput-object v1, p0, Ln3/z/i1;->g:Ljava/lang/Object;

    iput v3, p0, Ln3/z/i1;->h:I

    invoke-interface {p1, v4, p0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, p1

    .line 8
    :goto_0
    :try_start_0
    iget-object p1, v5, Ln3/z/k1$a;->b:Ln3/z/k1;

    .line 9
    iget-object v5, p1, Ln3/z/k1;->h:Lq3/a/w2/j;

    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->l0(Lq3/a/w2/z;)Lq3/a/x2/f;

    move-result-object v5

    .line 10
    new-instance v6, Ln3/z/m1;

    invoke-direct {v6, p1, v4}, Ln3/z/m1;-><init>(Ln3/z/k1;Ls1/w/d;)V

    .line 11
    new-instance p1, Lq3/a/x2/t;

    invoke-direct {p1, v6, v5}, Lq3/a/x2/t;-><init>(Ls1/z/b/p;Lq3/a/x2/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v3, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    .line 13
    sget-object v3, Ln3/z/t0;->b:Ln3/z/t0;

    iput-object v4, p0, Ln3/z/i1;->e:Ljava/lang/Object;

    iput-object v4, p0, Ln3/z/i1;->f:Ljava/lang/Object;

    iput-object v4, p0, Ln3/z/i1;->g:Ljava/lang/Object;

    iput v2, p0, Ln3/z/i1;->h:I

    invoke-virtual {v1, p1, v3, p0}, Ln3/z/g1;->b(Lq3/a/x2/f;Ln3/z/t0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 14
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-interface {v3, v4}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p1
.end method
