.class public final Le/a/f/a/p;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/f/w/f;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.InCallUIPresenter$listenToCallersInfoChannel$1"
    f = "InCallUIPresenter.kt"
    l = {
        0x92,
        0x94,
        0x97
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/f/a/n;


# direct methods
.method public constructor <init>(Le/a/f/a/n;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/p;->i:Le/a/f/a/n;

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

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/p;

    iget-object v1, p0, Le/a/f/a/p;->i:Le/a/f/a/n;

    invoke-direct {v0, v1, p2}, Le/a/f/a/p;-><init>(Le/a/f/a/n;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/p;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/p;

    iget-object v1, p0, Le/a/f/a/p;->i:Le/a/f/a/n;

    invoke-direct {v0, v1, p2}, Le/a/f/a/p;-><init>(Le/a/f/a/n;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/p;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/f/a/p;->h:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v2, v0, Le/a/f/a/p;->e:Ljava/lang/Object;

    check-cast v2, Le/a/f/w/f;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v3, v0, Le/a/f/a/p;->g:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/n;

    iget-object v5, v0, Le/a/f/a/p;->f:Ljava/lang/Object;

    check-cast v5, Le/a/f/a/g;

    iget-object v8, v0, Le/a/f/a/p;->e:Ljava/lang/Object;

    check-cast v8, Le/a/f/w/f;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v5

    move-object/from16 v5, p1

    goto/16 :goto_1

    :cond_2
    iget-object v3, v0, Le/a/f/a/p;->f:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/g;

    iget-object v8, v0, Le/a/f/a/p;->e:Ljava/lang/Object;

    check-cast v8, Le/a/f/w/f;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v3, v0, Le/a/f/a/p;->e:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Le/a/f/w/f;

    .line 4
    instance-of v3, v8, Le/a/f/w/f$b;

    if-eqz v3, :cond_e

    .line 5
    move-object v3, v8

    check-cast v3, Le/a/f/w/f$b;

    .line 6
    iget-object v3, v3, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 7
    iget-object v15, v0, Le/a/f/a/p;->i:Le/a/f/a/n;

    iput-object v8, v0, Le/a/f/a/p;->e:Ljava/lang/Object;

    iput-object v3, v0, Le/a/f/a/p;->f:Ljava/lang/Object;

    iput v6, v0, Le/a/f/a/p;->h:I

    .line 8
    invoke-virtual {v15}, Le/a/f/a/n;->Lj()V

    .line 9
    iget-object v9, v15, Le/a/f/a/n;->t:Le/a/k/h;

    invoke-interface {v9}, Le/a/k/h;->A()Le/a/k/c/c2;

    move-result-object v9

    .line 10
    iget-object v10, v3, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    .line 11
    iget-object v11, v3, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 12
    invoke-interface {v9, v10, v11}, Le/a/k/c/c2;->a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Le/a/k/a/k/l;

    move-result-object v9

    instance-of v10, v9, Le/a/k/a/k/l$c;

    if-nez v10, :cond_4

    move-object v9, v7

    :cond_4
    check-cast v9, Le/a/k/a/k/l$c;

    if-nez v9, :cond_5

    .line 13
    iget-object v10, v15, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v10, Le/a/f/a/m;

    if-eqz v10, :cond_5

    invoke-interface {v10}, Le/a/f/a/m;->r1()V

    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 14
    new-instance v12, Le/a/f/a/r;

    invoke-direct {v12, v15, v9, v3, v7}, Le/a/f/a/r;-><init>(Le/a/f/a/n;Le/a/k/a/k/l$c;Le/a/f/a/g;Ls1/w/d;)V

    const/4 v13, 0x3

    const/4 v14, 0x0

    move-object v9, v15

    invoke-static/range {v9 .. v14}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v9

    iput-object v9, v15, Le/a/f/a/n;->f:Lq3/a/p1;

    if-ne v1, v2, :cond_6

    return-object v2

    .line 15
    :cond_6
    :goto_0
    iget-object v9, v0, Le/a/f/a/p;->i:Le/a/f/a/n;

    .line 16
    iget-object v10, v9, Le/a/f/a/n;->q:Le/a/f/z/b;

    .line 17
    iget-object v11, v9, Le/a/f/a/n;->j:Le/a/f/y/c;

    .line 18
    invoke-interface {v11}, Le/a/f/y/c;->c()Z

    move-result v11

    iput-object v8, v0, Le/a/f/a/p;->e:Ljava/lang/Object;

    iput-object v3, v0, Le/a/f/a/p;->f:Ljava/lang/Object;

    iput-object v9, v0, Le/a/f/a/p;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/f/a/p;->h:I

    check-cast v10, Le/a/f/z/c;

    invoke-virtual {v10, v3, v11, v0}, Le/a/f/z/c;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_7

    return-object v2

    :cond_7
    move-object/from16 v16, v9

    move-object v9, v3

    move-object/from16 v3, v16

    :goto_1
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 19
    iget-object v9, v9, Le/a/f/a/g;->c:Ljava/lang/String;

    if-eqz v9, :cond_8

    if-eqz v5, :cond_8

    .line 20
    iget-object v3, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/m;

    if-eqz v3, :cond_9

    invoke-interface {v3, v9}, Le/a/f/a/m;->P9(Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_8
    iget-object v3, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/m;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Le/a/f/a/m;->y0()V

    .line 22
    :cond_9
    :goto_2
    iget-object v3, v0, Le/a/f/a/p;->i:Le/a/f/a/n;

    move-object v5, v8

    check-cast v5, Le/a/f/w/f$b;

    .line 23
    iget-object v5, v5, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 24
    iput-object v8, v0, Le/a/f/a/p;->e:Ljava/lang/Object;

    iput-object v7, v0, Le/a/f/a/p;->f:Ljava/lang/Object;

    iput-object v7, v0, Le/a/f/a/p;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/f/a/p;->h:I

    invoke-virtual {v3, v5, v0}, Le/a/f/a/n;->Kj(Le/a/f/a/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_a

    return-object v2

    :cond_a
    move-object v2, v8

    .line 25
    :goto_3
    iget-object v3, v0, Le/a/f/a/p;->i:Le/a/f/a/n;

    check-cast v2, Le/a/f/w/f$b;

    .line 26
    iget-object v2, v2, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 27
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-boolean v4, v2, Le/a/f/a/g;->p:Z

    if-nez v4, :cond_d

    .line 29
    invoke-static {v2}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 30
    invoke-static {v2}, Le/a/m0/a1$k;->E0(Le/a/f/a/g;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 31
    iget-boolean v4, v2, Le/a/f/a/g;->o:Z

    if-eqz v4, :cond_b

    goto :goto_4

    .line 32
    :cond_b
    iget-object v4, v3, Le/a/f/a/n;->e:Lq3/a/p1;

    if-eqz v4, :cond_c

    invoke-static {v4, v7, v6, v7}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_c
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 33
    new-instance v11, Le/a/f/a/q;

    invoke-direct {v11, v3, v2, v7}, Le/a/f/a/q;-><init>(Le/a/f/a/n;Le/a/f/a/g;Ls1/w/d;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v3

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v2

    iput-object v2, v3, Le/a/f/a/n;->e:Lq3/a/p1;

    goto :goto_5

    .line 34
    :cond_d
    :goto_4
    iget-object v2, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/m;

    if-eqz v2, :cond_10

    invoke-interface {v2}, Le/a/f/a/m;->C0()V

    goto :goto_5

    .line 35
    :cond_e
    iget-object v2, v0, Le/a/f/a/p;->i:Le/a/f/a/n;

    .line 36
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/m;

    if-eqz v2, :cond_f

    .line 37
    invoke-interface {v2}, Le/a/f/a/m;->y0()V

    .line 38
    :cond_f
    iget-object v2, v0, Le/a/f/a/p;->i:Le/a/f/a/n;

    .line 39
    invoke-virtual {v2}, Le/a/f/a/n;->Jj()V

    :cond_10
    :goto_5
    return-object v1
.end method
