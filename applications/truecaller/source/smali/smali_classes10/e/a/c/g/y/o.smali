.class public final Le/a/c/g/y/o;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.truecaller.insights.categorizer.datasource.MultiClassMetadataRepositoryImpl$1"
    f = "MultiClassMetadataRepository.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/g/y/p;


# direct methods
.method public constructor <init>(Le/a/c/g/y/p;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/y/p;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/y/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/c/g/y/o;->f:Le/a/c/g/y/p;

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

    new-instance p1, Le/a/c/g/y/o;

    iget-object v0, p0, Le/a/c/g/y/o;->f:Le/a/c/g/y/p;

    invoke-direct {p1, v0, p2}, Le/a/c/g/y/o;-><init>(Le/a/c/g/y/p;Ls1/w/d;)V

    return-object p1
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lq3/a/i0;

    check-cast p2, Ls1/w/d;

    .line 1
    new-instance p1, Le/a/c/g/y/o;

    iget-object v0, p0, Le/a/c/g/y/o;->f:Le/a/c/g/y/p;

    invoke-direct {p1, v0, p2}, Le/a/c/g/y/o;-><init>(Le/a/c/g/y/p;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/g/y/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/g/y/o;->e:I

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

    .line 4
    iget-object p1, p0, Le/a/c/g/y/o;->f:Le/a/c/g/y/p;

    .line 5
    iget-object p1, p1, Le/a/c/g/y/p;->a:Le/a/c/g/y/a;

    .line 6
    iput v2, p0, Le/a/c/g/y/o;->e:I

    .line 7
    iget-object p1, p1, Le/a/c/g/y/a;->a:Le/a/c/g/y/q;

    check-cast p1, Le/a/c/g/y/r;

    invoke-virtual {p1, p0}, Le/a/c/g/y/r;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    check-cast p1, Le/a/c/g/a0/f;

    .line 9
    invoke-interface {p1}, Le/a/c/g/a0/f;->getProbabilities()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Le/a/c/g/y/o;->f:Le/a/c/g/y/p;

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0xa

    const-string v4, "<this>"

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/g/a0/l;

    .line 11
    iget-object v5, v1, Le/a/c/g/y/p;->d:Le/a/c/g/d0/d;

    .line 12
    invoke-interface {v2}, Le/a/c/g/a0/l;->getWord()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Le/a/c/g/a0/l;->getProbabilities()Ljava/util/List;

    move-result-object v2

    .line 13
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 16
    check-cast v3, Le/a/c/g/a0/c;

    .line 17
    new-instance v7, Le/a/c/g/a0/g;

    invoke-interface {v3}, Le/a/c/g/a0/c;->getClassIdentifier()I

    move-result v8

    invoke-interface {v3}, Le/a/c/g/a0/c;->getProbs()Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v3}, Le/a/c/g/a0/c;->getTf()Ljava/lang/Double;

    move-result-object v3

    invoke-direct {v7, v8, v9, v3}, Le/a/c/g/a0/g;-><init>(ILjava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {v5, v6, v4}, Le/a/c/g/d0/d;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object v0, p0, Le/a/c/g/y/o;->f:Le/a/c/g/y/p;

    invoke-interface {p1}, Le/a/c/g/a0/f;->getClassMetas()Ljava/util/List;

    move-result-object v1

    .line 20
    iput-object v1, v0, Le/a/c/g/y/p;->e:Ljava/util/List;

    .line 21
    iget-object v0, p0, Le/a/c/g/y/o;->f:Le/a/c/g/y/p;

    .line 22
    iget-object v0, v0, Le/a/c/g/y/p;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 23
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 26
    check-cast v2, Le/a/c/g/a0/d;

    .line 27
    new-instance v10, Le/a/c/g/a0/h;

    .line 28
    invoke-interface {v2}, Le/a/c/g/a0/d;->getClassProb()Ljava/lang/Double;

    move-result-object v4

    .line 29
    invoke-interface {v2}, Le/a/c/g/a0/d;->getTotalMessageCount()I

    move-result v5

    .line 30
    invoke-interface {v2}, Le/a/c/g/a0/d;->getWordsInClass()Ljava/lang/Double;

    move-result-object v6

    .line 31
    invoke-interface {v2}, Le/a/c/g/a0/d;->getTfIdfSum()Ljava/lang/Double;

    move-result-object v7

    .line 32
    invoke-interface {v2}, Le/a/c/g/a0/d;->getClassId()I

    move-result v8

    .line 33
    invoke-interface {v2}, Le/a/c/g/a0/d;->getClassName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    .line 34
    invoke-direct/range {v3 .. v9}, Le/a/c/g/a0/h;-><init>(Ljava/lang/Double;ILjava/lang/Double;Ljava/lang/Double;ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 35
    :cond_5
    iget-object v0, p0, Le/a/c/g/y/o;->f:Le/a/c/g/y/p;

    invoke-interface {p1}, Le/a/c/g/a0/f;->getBarrierValue()D

    move-result-wide v1

    .line 36
    iput-wide v1, v0, Le/a/c/g/y/p;->g:D

    .line 37
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_6
    const-string p1, "classifierMeta"

    .line 38
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
