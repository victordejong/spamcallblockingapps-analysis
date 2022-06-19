.class public final Le/a/w4/s/f0;
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
    c = "com.truecaller.search.global.GlobalSearchPresenterImpl$fetchArchivedData$1"
    f = "GlobalSearchPresenterImpl.kt"
    l = {
        0x1e0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/w4/s/g0;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/w4/s/g0;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/w4/s/f0;->f:Le/a/w4/s/g0;

    iput-object p2, p0, Le/a/w4/s/f0;->g:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/w4/s/f0;

    iget-object v0, p0, Le/a/w4/s/f0;->f:Le/a/w4/s/g0;

    iget-object v1, p0, Le/a/w4/s/f0;->g:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/w4/s/f0;-><init>(Le/a/w4/s/g0;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/w4/s/f0;

    iget-object v0, p0, Le/a/w4/s/f0;->f:Le/a/w4/s/g0;

    iget-object v1, p0, Le/a/w4/s/f0;->g:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Le/a/w4/s/f0;-><init>(Le/a/w4/s/g0;Ljava/util/List;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/w4/s/f0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/w4/s/f0;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/w4/s/f0;->f:Le/a/w4/s/g0;

    .line 5
    iget-object p1, p1, Le/a/w4/s/g0;->k0:Le/a/a/c/y6;

    .line 6
    iget-object v2, p0, Le/a/w4/s/f0;->g:Ljava/util/List;

    iput v3, p0, Le/a/w4/s/f0;->e:I

    .line 7
    iget-object v3, p1, Le/a/a/c/y6;->c:Ls1/w/f;

    new-instance v4, Le/a/a/c/w6;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v2, v5}, Le/a/a/c/w6;-><init>(Le/a/a/c/y6;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/w4/s/f0;->f:Le/a/w4/s/g0;

    .line 9
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w4/s/h0;

    if-eqz p1, :cond_4

    .line 10
    invoke-interface {p1}, Le/a/w4/s/h0;->l2()V

    :cond_4
    return-object v0
.end method
