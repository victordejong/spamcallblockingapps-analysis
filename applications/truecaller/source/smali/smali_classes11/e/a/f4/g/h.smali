.class public final Le/a/f4/g/h;
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
    c = "com.truecaller.network.search.BulkImIdSearcherImpl$search$1"
    f = "BulkImIdSearcherImpl.kt"
    l = {
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/f4/g/g;


# direct methods
.method public constructor <init>(Le/a/f4/g/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f4/g/h;->g:Le/a/f4/g/g;

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

    new-instance p1, Le/a/f4/g/h;

    iget-object v0, p0, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    invoke-direct {p1, v0, p2}, Le/a/f4/g/h;-><init>(Le/a/f4/g/g;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f4/g/h;

    iget-object v0, p0, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    invoke-direct {p1, v0, p2}, Le/a/f4/g/h;-><init>(Le/a/f4/g/g;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f4/g/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/f4/g/h;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/f4/g/h;->e:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

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
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p1

    .line 4
    iget-object v1, p0, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    .line 5
    iget-object v1, v1, Le/a/f4/g/g;->a:Ljava/util/Set;

    .line 6
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    .line 8
    iget-object v1, v1, Le/a/f4/g/g;->a:Ljava/util/Set;

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 10
    iget-object v1, p0, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    .line 11
    iget-object v1, v1, Le/a/f4/g/g;->b:Ljava/util/Set;

    .line 12
    iget-object v3, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v1, v3}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 13
    sget-object v1, Lq3/a/t0;->d:Lq3/a/g0;

    .line 14
    new-instance v3, Le/a/f4/g/h$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Le/a/f4/g/h$a;-><init>(Le/a/f4/g/h;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object p1, p0, Le/a/f4/g/h;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/f4/g/h;->f:I

    invoke-static {v1, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 15
    :goto_0
    iget-object p1, p0, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    .line 16
    iget-object p1, p1, Le/a/f4/g/g;->b:Ljava/util/Set;

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 18
    iget-object p1, p0, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    .line 19
    iget-object p1, p1, Le/a/f4/g/g;->c:Ljava/util/Set;

    .line 20
    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 21
    iget-object p1, p0, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    .line 22
    iget-object p1, p1, Le/a/f4/g/g;->a:Ljava/util/Set;

    .line 23
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/f4/g/h;->g:Le/a/f4/g/g;

    .line 24
    invoke-virtual {p1}, Le/a/f4/g/g;->b()V

    .line 25
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
