.class public final Le/a/i/d0/c0/c;
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
        "Ljava/util/List<",
        "+TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.mediation.cache.DataSource$executeInParallel$2"
    f = "DataSource.kt"
    l = {
        0x46
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Ljava/util/List;Ls1/z/b/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/c0/c;->g:Ljava/util/List;

    iput-object p2, p0, Le/a/i/d0/c0/c;->h:Ls1/z/b/p;

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

    new-instance v0, Le/a/i/d0/c0/c;

    iget-object v1, p0, Le/a/i/d0/c0/c;->g:Ljava/util/List;

    iget-object v2, p0, Le/a/i/d0/c0/c;->h:Ls1/z/b/p;

    invoke-direct {v0, v1, v2, p2}, Le/a/i/d0/c0/c;-><init>(Ljava/util/List;Ls1/z/b/p;Ls1/w/d;)V

    iput-object p1, v0, Le/a/i/d0/c0/c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/i/d0/c0/c;

    iget-object v1, p0, Le/a/i/d0/c0/c;->g:Ljava/util/List;

    iget-object v2, p0, Le/a/i/d0/c0/c;->h:Ls1/z/b/p;

    invoke-direct {v0, v1, v2, p2}, Le/a/i/d0/c0/c;-><init>(Ljava/util/List;Ls1/z/b/p;Ls1/w/d;)V

    iput-object p1, v0, Le/a/i/d0/c0/c;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/i/d0/c0/c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/d0/c0/c;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/i/d0/c0/c;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    iget-object v1, p0, Le/a/i/d0/c0/c;->g:Ljava/util/List;

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Le/a/i/d0/c0/d;

    .line 8
    sget-object v4, Lq3/a/t0;->d:Lq3/a/g0;

    const/4 v5, 0x0

    .line 9
    new-instance v6, Le/a/i/d0/c0/c$a;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7, p0, p1}, Le/a/i/d0/c0/c$a;-><init>(Le/a/i/d0/c0/d;Ls1/w/d;Le/a/i/d0/c0/c;Lq3/a/i0;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iput v2, p0, Le/a/i/d0/c0/c;->f:I

    .line 11
    invoke-static {v9, p0}, Ls1/a/a/a/v0/f/d;->I(Ljava/util/Collection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object p1
.end method
