.class public final Le/a/f/a/b/w/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/incallui/service/CallState;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.ongoing.backgroundCall.BackgroundCallPresenter$listenToCallStateChanges$1"
    f = "BackgroundCallPresenter.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/f/a/b/w/e;


# direct methods
.method public constructor <init>(Le/a/f/a/b/w/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/w/d;->f:Le/a/f/a/b/w/e;

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

    new-instance p1, Le/a/f/a/b/w/d;

    iget-object v0, p0, Le/a/f/a/b/w/d;->f:Le/a/f/a/b/w/e;

    invoke-direct {p1, v0, p2}, Le/a/f/a/b/w/d;-><init>(Le/a/f/a/b/w/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/a/b/w/d;

    iget-object v0, p0, Le/a/f/a/b/w/d;->f:Le/a/f/a/b/w/e;

    invoke-direct {p1, v0, p2}, Le/a/f/a/b/w/d;-><init>(Le/a/f/a/b/w/e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/a/b/w/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/f/a/b/w/d;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

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

    const-wide/16 v5, 0x1f4

    .line 4
    iput v4, v0, Le/a/f/a/b/w/d;->e:I

    invoke-static {v5, v6, v0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    return-object v2

    .line 5
    :cond_2
    :goto_0
    iget-object v2, v0, Le/a/f/a/b/w/d;->f:Le/a/f/a/b/w/e;

    .line 6
    iget-object v2, v2, Le/a/f/a/b/w/e;->d:Le/a/f/y/c;

    .line 7
    invoke-interface {v2}, Le/a/f/y/c;->f()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 8
    iget-object v2, v0, Le/a/f/a/b/w/d;->f:Le/a/f/a/b/w/e;

    .line 9
    iget-object v2, v2, Le/a/f/a/b/w/e;->d:Le/a/f/y/c;

    .line 10
    invoke-interface {v2}, Le/a/f/y/c;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 11
    iget-object v5, v0, Le/a/f/a/b/w/d;->f:Le/a/f/a/b/w/e;

    .line 12
    iget-object v5, v5, Le/a/f/a/b/w/e;->e:Le/a/f/w/c;

    .line 13
    invoke-interface {v5, v2}, Le/a/f/w/c;->b(Ljava/lang/String;)Le/a/f/a/g;

    move-result-object v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 14
    :goto_1
    iget-object v6, v0, Le/a/f/a/b/w/d;->f:Le/a/f/a/b/w/e;

    .line 15
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 16
    new-instance v15, Le/a/f/z/k0;

    .line 17
    iget-object v8, v5, Le/a/f/a/g;->c:Ljava/lang/String;

    .line 18
    iget-object v9, v5, Le/a/f/a/g;->e:Ljava/lang/String;

    const/4 v10, 0x0

    .line 19
    iget-object v7, v5, Le/a/f/a/g;->a:Ljava/lang/String;

    .line 20
    invoke-static {v7}, Le/a/m0/a1$k;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 21
    iget-boolean v7, v5, Le/a/f/a/g;->k:Z

    if-nez v7, :cond_5

    .line 22
    iget-object v7, v5, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_2
    move v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 23
    invoke-static {v5}, Le/a/m0/a1$k;->E0(Le/a/f/a/g;)Z

    move-result v4

    .line 24
    invoke-static {v5}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v16

    .line 25
    iget-boolean v7, v5, Le/a/f/a/g;->t:Z

    const/16 v18, 0x0

    .line 26
    iget-boolean v3, v5, Le/a/f/a/g;->u:Z

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3464

    move/from16 v17, v7

    move-object v7, v15

    move-object/from16 v23, v15

    move v15, v4

    move/from16 v19, v3

    .line 27
    invoke-direct/range {v7 .. v22}, Le/a/f/z/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;ZZZI)V

    .line 28
    iget-object v3, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/b/w/c;

    if-eqz v3, :cond_6

    move-object/from16 v4, v23

    invoke-interface {v3, v4}, Le/a/f/a/b/w/c;->Ny(Le/a/f/z/k0;)V

    move-object v3, v1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    goto/16 :goto_5

    .line 29
    :cond_7
    iget-object v3, v6, Le/a/f/a/b/w/e;->d:Le/a/f/y/c;

    invoke-interface {v3}, Le/a/f/y/c;->I()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 30
    iget-object v3, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/b/w/c;

    if-eqz v3, :cond_b

    new-instance v4, Le/a/f/z/k0;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3fff

    move-object v7, v4

    invoke-direct/range {v7 .. v22}, Le/a/f/z/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;ZZZI)V

    invoke-interface {v3, v4}, Le/a/f/a/b/w/c;->Ny(Le/a/f/z/k0;)V

    goto :goto_5

    .line 31
    :cond_8
    iget-object v3, v6, Le/a/f/a/b/w/e;->d:Le/a/f/y/c;

    invoke-interface {v3}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 32
    iget-object v3, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/b/w/c;

    if-eqz v3, :cond_9

    new-instance v4, Le/a/f/z/k0;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3ffd

    move-object v7, v4

    invoke-direct/range {v7 .. v22}, Le/a/f/z/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;ZZZI)V

    invoke-interface {v3, v4}, Le/a/f/a/b/w/c;->Ny(Le/a/f/z/k0;)V

    move-object v3, v1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_a

    goto :goto_5

    .line 33
    :cond_a
    iget-object v3, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/b/w/c;

    if-eqz v3, :cond_b

    new-instance v4, Le/a/f/z/k0;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3fff

    move-object v7, v4

    invoke-direct/range {v7 .. v22}, Le/a/f/z/k0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;ZZZI)V

    invoke-interface {v3, v4}, Le/a/f/a/b/w/c;->Ny(Le/a/f/z/k0;)V

    .line 34
    :cond_b
    :goto_5
    iget-object v3, v6, Le/a/f/a/b/w/e;->d:Le/a/f/y/c;

    invoke-interface {v3}, Le/a/f/y/c;->I()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v2, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/b/w/c;

    if-eqz v2, :cond_10

    sget v3, Lcom/truecaller/incallui/R$string;->incallui_conference_call:I

    invoke-interface {v2, v3}, Le/a/f/a/b/w/c;->i3(I)V

    goto :goto_7

    :cond_c
    if-eqz v5, :cond_d

    .line 35
    iget-object v2, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/b/w/c;

    if-eqz v2, :cond_10

    .line 36
    iget-object v3, v5, Le/a/f/a/g;->a:Ljava/lang/String;

    .line 37
    invoke-interface {v2, v3}, Le/a/f/a/b/w/c;->setProfileName(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    if-eqz v2, :cond_f

    .line 38
    iget-object v3, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/f/a/b/w/c;

    if-eqz v3, :cond_e

    invoke-interface {v3, v2}, Le/a/f/a/b/w/c;->setProfileName(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_f

    goto :goto_7

    .line 39
    :cond_f
    iget-object v2, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/b/w/c;

    if-eqz v2, :cond_10

    sget v3, Lcom/truecaller/incallui/R$string;->incallui_unknown_caller:I

    invoke-interface {v2, v3}, Le/a/f/a/b/w/c;->i3(I)V

    .line 40
    :cond_10
    :goto_7
    iget-object v2, v6, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/b/w/c;

    if-eqz v2, :cond_12

    invoke-interface {v2}, Le/a/f/a/b/w/c;->bA()V

    goto :goto_8

    .line 41
    :cond_11
    iget-object v2, v0, Le/a/f/a/b/w/d;->f:Le/a/f/a/b/w/e;

    .line 42
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f/a/b/w/c;

    if-eqz v2, :cond_12

    .line 43
    invoke-interface {v2}, Le/a/f/a/b/w/c;->R()V

    :cond_12
    :goto_8
    return-object v1
.end method
