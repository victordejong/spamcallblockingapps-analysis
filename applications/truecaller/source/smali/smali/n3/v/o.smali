.class public final Ln3/v/o;
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
        "-TT;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1"
    f = "FlowLiveData.kt"
    l = {
        0x5b,
        0x5f,
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Lq3/a/x2/g;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:I

.field public final synthetic l:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/v/o;->l:Landroidx/lifecycle/LiveData;

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/o;

    iget-object v1, p0, Ln3/v/o;->l:Landroidx/lifecycle/LiveData;

    invoke-direct {v0, v1, p2}, Ln3/v/o;-><init>(Landroidx/lifecycle/LiveData;Ls1/w/d;)V

    check-cast p1, Lq3/a/x2/g;

    iput-object p1, v0, Ln3/v/o;->e:Lq3/a/x2/g;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/o;

    iget-object v1, p0, Ln3/v/o;->l:Landroidx/lifecycle/LiveData;

    invoke-direct {v0, v1, p2}, Ln3/v/o;-><init>(Landroidx/lifecycle/LiveData;Ls1/w/d;)V

    check-cast p1, Lq3/a/x2/g;

    iput-object p1, v0, Ln3/v/o;->e:Lq3/a/x2/g;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/v/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Ln3/v/o;->k:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Ln3/v/o;->j:Ljava/lang/Object;

    check-cast v2, Lq3/a/w2/l;

    iget-object v6, p0, Ln3/v/o;->h:Ljava/lang/Object;

    check-cast v6, Ln3/v/l0;

    iget-object v7, p0, Ln3/v/o;->g:Ljava/lang/Object;

    check-cast v7, Lq3/a/w2/j;

    iget-object v8, p0, Ln3/v/o;->f:Ljava/lang/Object;

    check-cast v8, Lq3/a/x2/g;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Ln3/v/o;->i:Ljava/lang/Object;

    check-cast v2, Lq3/a/w2/l;

    iget-object v6, p0, Ln3/v/o;->h:Ljava/lang/Object;

    check-cast v6, Ln3/v/l0;

    iget-object v7, p0, Ln3/v/o;->g:Ljava/lang/Object;

    check-cast v7, Lq3/a/w2/j;

    iget-object v8, p0, Ln3/v/o;->f:Ljava/lang/Object;

    check-cast v8, Lq3/a/x2/g;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v0

    move-object v0, p0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    move-object v7, v6

    move-object v6, v0

    move-object v0, p0

    goto/16 :goto_5

    :cond_2
    iget-object v2, p0, Ln3/v/o;->h:Ljava/lang/Object;

    check-cast v2, Ln3/v/l0;

    iget-object v6, p0, Ln3/v/o;->g:Ljava/lang/Object;

    check-cast v6, Lq3/a/w2/j;

    iget-object v7, p0, Ln3/v/o;->f:Ljava/lang/Object;

    check-cast v7, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v7, v6

    move-object v6, v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Ln3/v/o;->e:Lq3/a/x2/g;

    const/4 v2, -0x1

    const/4 v7, 0x6

    .line 4
    invoke-static {v2, v5, v5, v7}, Ls1/a/a/a/v0/f/d;->f(ILq3/a/w2/i;Ls1/z/b/l;I)Lq3/a/w2/j;

    move-result-object v2

    .line 5
    new-instance v7, Ln3/v/o$c;

    invoke-direct {v7, v2}, Ln3/v/o$c;-><init>(Lq3/a/w2/j;)V

    .line 6
    sget-object v8, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v8, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 7
    invoke-virtual {v8}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v8

    new-instance v9, Ln3/v/o$a;

    invoke-direct {v9, p0, v7, v5}, Ln3/v/o$a;-><init>(Ln3/v/o;Ln3/v/l0;Ls1/w/d;)V

    iput-object p1, p0, Ln3/v/o;->f:Ljava/lang/Object;

    iput-object v2, p0, Ln3/v/o;->g:Ljava/lang/Object;

    iput-object v7, p0, Ln3/v/o;->h:Ljava/lang/Object;

    iput v6, p0, Ln3/v/o;->k:I

    invoke-static {v8, v9, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v8, p1

    move-object v6, v7

    move-object v7, v2

    .line 8
    :goto_0
    :try_start_2
    invoke-interface {v7}, Lq3/a/w2/z;->iterator()Lq3/a/w2/l;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_1
    move-object p1, p0

    :goto_2
    :try_start_3
    iput-object v8, p1, Ln3/v/o;->f:Ljava/lang/Object;

    iput-object v7, p1, Ln3/v/o;->g:Ljava/lang/Object;

    iput-object v6, p1, Ln3/v/o;->h:Ljava/lang/Object;

    iput-object v2, p1, Ln3/v/o;->i:Ljava/lang/Object;

    iput v3, p1, Ln3/v/o;->k:I

    invoke-interface {v2, p1}, Lq3/a/w2/l;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v9, v1, :cond_5

    return-object v1

    :cond_5
    move-object v12, v0

    move-object v0, p1

    move-object p1, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v12

    .line 9
    :goto_3
    :try_start_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v2}, Lq3/a/w2/l;->next()Ljava/lang/Object;

    move-result-object p1

    .line 10
    iput-object v9, v0, Ln3/v/o;->f:Ljava/lang/Object;

    iput-object v8, v0, Ln3/v/o;->g:Ljava/lang/Object;

    iput-object v7, v0, Ln3/v/o;->h:Ljava/lang/Object;

    iput-object p1, v0, Ln3/v/o;->i:Ljava/lang/Object;

    iput-object v2, v0, Ln3/v/o;->j:Ljava/lang/Object;

    iput v4, v0, Ln3/v/o;->k:I

    invoke-interface {v9, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, v0

    move-object v0, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_2

    .line 11
    :cond_7
    sget-object p1, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object p1, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 12
    invoke-virtual {p1}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object p1

    const/4 v8, 0x0

    new-instance v9, Ln3/v/o$b;

    invoke-direct {v9, v0, v7, v5}, Ln3/v/o$b;-><init>(Ln3/v/o;Ln3/v/l0;Ls1/w/d;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v7, p1

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object v1, p1

    move-object p1, p0

    :goto_4
    move-object v7, v6

    move-object v6, v0

    move-object v0, p1

    move-object p1, v1

    .line 14
    :goto_5
    sget-object v1, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v1, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 15
    invoke-virtual {v1}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object v1

    const/4 v8, 0x0

    new-instance v9, Ln3/v/o$b;

    invoke-direct {v9, v0, v7, v5}, Ln3/v/o$b;-><init>(Ln3/v/o;Ln3/v/l0;Ls1/w/d;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v7, v1

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    throw p1
.end method
