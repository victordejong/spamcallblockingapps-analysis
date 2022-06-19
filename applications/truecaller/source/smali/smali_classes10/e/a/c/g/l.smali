.class public final Le/a/c/g/l;
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
    c = "com.truecaller.insights.categorizer.InsightsCategorizerImpl$reCalculateProbabilities$2"
    f = "InsightsCategorizer.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Le/a/c/g/j;


# direct methods
.method public constructor <init>(Le/a/c/g/j;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/j;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/l;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/c/g/l;->g:Le/a/c/g/j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance v0, Le/a/c/g/l;

    iget-object v1, p0, Le/a/c/g/l;->g:Le/a/c/g/j;

    invoke-direct {v0, v1, p2}, Le/a/c/g/l;-><init>(Le/a/c/g/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/g/l;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lq3/a/i0;

    check-cast p2, Ls1/w/d;

    .line 1
    new-instance v0, Le/a/c/g/l;

    iget-object v1, p0, Le/a/c/g/l;->g:Le/a/c/g/j;

    invoke-direct {v0, v1, p2}, Le/a/c/g/l;-><init>(Le/a/c/g/j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/g/l;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/g/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/l;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Le/a/c/g/l;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Le/a/c/g/l;->f:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    const/4 v4, 0x2

    new-array v10, v4, [Lq3/a/n0;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 4
    new-instance v7, Le/a/c/g/l$a;

    iget-object v4, v0, Le/a/c/g/l;->g:Le/a/c/g/j;

    const/4 v14, 0x0

    invoke-direct {v7, v4, v14}, Le/a/c/g/l$a;-><init>(Le/a/c/g/j;Ls1/w/d;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v2

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v4

    aput-object v4, v10, v11

    .line 5
    new-instance v7, Le/a/c/g/l$b;

    iget-object v4, v0, Le/a/c/g/l;->g:Le/a/c/g/j;

    invoke-direct {v7, v4, v14}, Le/a/c/g/l$b;-><init>(Le/a/c/g/j;Ls1/w/d;)V

    move-object v4, v2

    move-object v5, v12

    move-object v6, v13

    move v8, v15

    move-object/from16 v9, v16

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v2

    aput-object v2, v10, v3

    .line 6
    invoke-static {v10}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq3/a/n0;

    .line 8
    iput-object v2, v0, Le/a/c/g/l;->f:Ljava/lang/Object;

    iput v3, v0, Le/a/c/g/l;->e:I

    invoke-interface {v4, v0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_2

    return-object v1

    .line 9
    :cond_3
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
