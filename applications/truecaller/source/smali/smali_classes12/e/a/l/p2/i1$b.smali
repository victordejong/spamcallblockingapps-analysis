.class public final Le/a/l/p2/i1$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/i1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/l/p2/i1$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.PremiumThemeFetcher$fetchTheme$2"
    f = "PremiumThemeFetcher.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/p2/i1;

.field public final synthetic g:Ljava/lang/Boolean;

.field public final synthetic h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/i1$b;->f:Le/a/l/p2/i1;

    iput-object p2, p0, Le/a/l/p2/i1$b;->g:Ljava/lang/Boolean;

    iput-object p3, p0, Le/a/l/p2/i1$b;->h:Ljava/lang/Boolean;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/i1$b;

    iget-object v0, p0, Le/a/l/p2/i1$b;->f:Le/a/l/p2/i1;

    iget-object v1, p0, Le/a/l/p2/i1$b;->g:Ljava/lang/Boolean;

    iget-object v2, p0, Le/a/l/p2/i1$b;->h:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/l/p2/i1$b;-><init>(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/i1$b;

    iget-object v0, p0, Le/a/l/p2/i1$b;->f:Le/a/l/p2/i1;

    iget-object v1, p0, Le/a/l/p2/i1$b;->g:Ljava/lang/Boolean;

    iget-object v2, p0, Le/a/l/p2/i1$b;->h:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/l/p2/i1$b;-><init>(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/i1$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/i1$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

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

    .line 4
    iget-object v2, v0, Le/a/l/p2/i1$b;->f:Le/a/l/p2/i1;

    .line 5
    iget-object v2, v2, Le/a/l/p2/i1;->b:Le/a/l/p2/o0;

    .line 6
    iput v3, v0, Le/a/l/p2/i1$b;->e:I

    invoke-interface {v2, v0}, Le/a/l/p2/o0;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast v2, Le/a/l/p2/o0$a;

    .line 8
    sget-object v1, Le/a/l/p2/o0$a$c;->a:Le/a/l/p2/o0$a$c;

    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Le/a/l/p2/i1$a$c;->a:Le/a/l/p2/i1$a$c;

    goto/16 :goto_1a

    .line 9
    :cond_3
    sget-object v1, Le/a/l/p2/o0$a$a;->a:Le/a/l/p2/o0$a$a;

    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Le/a/l/p2/i1$a$a;->a:Le/a/l/p2/i1$a$a;

    goto/16 :goto_1a

    .line 10
    :cond_4
    instance-of v1, v2, Le/a/l/p2/o0$a$b;

    if-eqz v1, :cond_27

    new-instance v1, Le/a/l/p2/i1$a$b;

    iget-object v4, v0, Le/a/l/p2/i1$b;->f:Le/a/l/p2/i1;

    iget-object v5, v0, Le/a/l/p2/i1$b;->g:Ljava/lang/Boolean;

    iget-object v6, v0, Le/a/l/p2/i1$b;->h:Ljava/lang/Boolean;

    check-cast v2, Le/a/l/p2/o0$a$b;

    .line 11
    iget-object v2, v2, Le/a/l/p2/o0$a$b;->a:Ljava/util/List;

    .line 12
    new-instance v7, Le/a/l/p2/p;

    iget-object v8, v4, Le/a/l/p2/i1;->h:Le/a/l/a/l0;

    invoke-direct {v7, v8}, Le/a/l/p2/p;-><init>(Le/a/l/a/l0;)V

    const-string v8, "products"

    .line 13
    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v8, v7, Le/a/l/p2/p;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/l/p2/p$a;

    .line 15
    invoke-virtual {v7, v2, v9}, Le/a/l/p2/p;->a(Ljava/util/List;Le/a/l/p2/p$a;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Le/a/l/p2/p;->c:Ljava/lang/String;

    if-eqz v9, :cond_5

    .line 16
    :cond_6
    iget-object v8, v7, Le/a/l/p2/p;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/l/p2/p$a;

    .line 17
    invoke-virtual {v7, v2, v9}, Le/a/l/p2/p;->a(Ljava/util/List;Le/a/l/p2/p$a;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Le/a/l/p2/p;->d:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 18
    :cond_8
    iget-object v2, v4, Le/a/l/p2/i1;->g:Le/a/l/c2;

    .line 19
    iget-object v8, v7, Le/a/l/p2/p;->c:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    goto :goto_1

    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    :cond_a
    :goto_1
    move v8, v3

    :goto_2
    if-eqz v8, :cond_e

    .line 21
    iget-object v8, v7, Le/a/l/p2/p;->d:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 22
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_b

    goto :goto_3

    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    :cond_c
    :goto_3
    move v8, v3

    :goto_4
    if-nez v8, :cond_d

    goto :goto_5

    :cond_d
    const/4 v8, 0x0

    goto :goto_6

    :cond_e
    :goto_5
    move v8, v3

    :goto_6
    invoke-interface {v2, v8}, Le/a/l/c2;->X0(Z)V

    const-string v2, "context.getString(R.stri\u2026remiumSubtitleNonPremium)"

    const v8, 0x7f120401

    if-eqz v5, :cond_1c

    .line 23
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 24
    new-instance v18, Le/a/l/p2/j1;

    .line 25
    new-instance v12, Le/a/l/p2/h0;

    if-eqz v5, :cond_f

    const v11, 0x7f120512

    goto :goto_7

    :cond_f
    const v11, 0x7f120511

    :goto_7
    if-eqz v5, :cond_10

    .line 26
    iget-object v13, v4, Le/a/l/p2/i1;->e:Le/a/l/p2/e0;

    invoke-virtual {v13}, Le/a/l/p2/e0;->a()Le/a/l/p2/d0;

    move-result-object v13

    .line 27
    iget-object v13, v13, Le/a/l/p2/d0;->a:Ljava/lang/String;

    goto :goto_8

    .line 28
    :cond_10
    iget-object v13, v4, Le/a/l/p2/i1;->a:Landroid/content/Context;

    invoke-virtual {v13, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :goto_8
    invoke-direct {v12, v11, v13}, Le/a/l/p2/h0;-><init>(ILjava/lang/String;)V

    if-eqz v5, :cond_11

    const v11, 0x7f120479

    goto :goto_9

    :cond_11
    const v11, 0x7f120478

    :goto_9
    move v13, v11

    .line 30
    iget-object v11, v4, Le/a/l/p2/i1;->a:Landroid/content/Context;

    const v14, 0x7f120513

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v11, "context.getString(R.string.PremiumToolbarTitle)"

    invoke-static {v14, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v11, v4, Le/a/l/p2/i1;->d:Le/a/l/a/g;

    invoke-virtual {v11}, Le/a/l/a/g;->b()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    move v15, v3

    goto :goto_a

    :cond_12
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_13

    goto :goto_b

    :cond_13
    const/4 v11, 0x0

    :goto_b
    if-eqz v11, :cond_14

    move-object v15, v11

    goto :goto_e

    :cond_14
    if-nez v5, :cond_17

    .line 32
    iget-object v5, v7, Le/a/l/p2/p;->c:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 33
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_15

    goto :goto_c

    :cond_15
    const/4 v5, 0x0

    goto :goto_d

    :cond_16
    :goto_c
    move v5, v3

    :goto_d
    if-nez v5, :cond_17

    .line 34
    iget-object v5, v7, Le/a/l/p2/p;->c:Ljava/lang/String;

    move-object v15, v5

    goto :goto_e

    :cond_17
    const/4 v15, 0x0

    :goto_e
    const v16, 0x7f080136

    .line 35
    iget-object v5, v4, Le/a/l/p2/i1;->c:Le/a/l/f;

    .line 36
    iget-object v11, v5, Le/a/l/f;->k:Ljava/util/LinkedHashSet;

    .line 37
    invoke-static {v11}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    .line 38
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    check-cast v8, Le/a/l/p2/g0;

    .line 40
    iget-object v3, v5, Le/a/l/f;->j:Ljava/util/Map;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/z/b/a;

    if-eqz v3, :cond_18

    invoke-interface {v3}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_19

    move v3, v8

    goto :goto_10

    :cond_18
    const/4 v8, 0x1

    :cond_19
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_1a

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    move v3, v8

    const v8, 0x7f120401

    goto :goto_f

    :cond_1b
    move v8, v3

    move-object/from16 v11, v18

    move-object/from16 v17, v9

    .line 41
    invoke-direct/range {v11 .. v17}, Le/a/l/p2/j1;-><init>(Le/a/l/p2/h0;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    move-object/from16 v3, v18

    goto :goto_11

    :cond_1c
    move v8, v3

    const/4 v3, 0x0

    :goto_11
    if-eqz v6, :cond_26

    .line 42
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 43
    new-instance v6, Le/a/l/p2/j1;

    .line 44
    new-instance v10, Le/a/l/p2/h0;

    if-eqz v5, :cond_1d

    const v9, 0x7f1204bb

    goto :goto_12

    :cond_1d
    const v9, 0x7f1204ba

    :goto_12
    if-eqz v5, :cond_1e

    .line 45
    iget-object v2, v4, Le/a/l/p2/i1;->e:Le/a/l/p2/e0;

    invoke-virtual {v2}, Le/a/l/p2/e0;->a()Le/a/l/p2/d0;

    move-result-object v2

    .line 46
    iget-object v2, v2, Le/a/l/p2/d0;->a:Ljava/lang/String;

    goto :goto_13

    .line 47
    :cond_1e
    iget-object v11, v4, Le/a/l/p2/i1;->a:Landroid/content/Context;

    const v12, 0x7f120401

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v11

    .line 48
    :goto_13
    invoke-direct {v10, v9, v2}, Le/a/l/p2/h0;-><init>(ILjava/lang/String;)V

    if-eqz v5, :cond_1f

    const v2, 0x7f1204af

    goto :goto_14

    :cond_1f
    const v2, 0x7f1204ae

    :goto_14
    move v11, v2

    .line 49
    iget-object v2, v4, Le/a/l/p2/i1;->a:Landroid/content/Context;

    const v9, 0x7f1204bc

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v2, "context.getString(R.stri\u2026.PremiumGoldToolbarTitle)"

    invoke-static {v12, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v2, v4, Le/a/l/p2/i1;->d:Le/a/l/a/g;

    invoke-virtual {v2}, Le/a/l/a/g;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20

    goto :goto_16

    :cond_20
    if-nez v5, :cond_23

    .line 51
    iget-object v2, v7, Le/a/l/p2/p;->d:Ljava/lang/String;

    if-eqz v2, :cond_22

    .line 52
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_21

    goto :goto_15

    :cond_21
    const/4 v8, 0x0

    :cond_22
    :goto_15
    if-nez v8, :cond_23

    .line 53
    iget-object v2, v7, Le/a/l/p2/p;->d:Ljava/lang/String;

    :goto_16
    move-object v13, v2

    goto :goto_17

    :cond_23
    const/4 v13, 0x0

    :goto_17
    const v14, 0x7f080129

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v5, Le/a/l/p2/g0;

    const v7, 0x7f1204b2

    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    .line 57
    iget-object v4, v4, Le/a/l/p2/i1;->f:Le/a/l/p2/o;

    invoke-virtual {v4}, Le/a/l/p2/o;->a()Le/a/l/p2/n;

    move-result-object v22

    const v17, 0x7f1204b4

    const v18, 0x7f080721

    const v19, 0x7f1204b7

    const v21, 0x7f08071e

    const-string v16, "goldCallerId"

    move-object v15, v5

    .line 58
    invoke-direct/range {v15 .. v22}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v4, Le/a/l/p2/g0;

    const v5, 0x7f1204b1

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const v25, 0x7f1204b0

    const v26, 0x7f0806b6

    const v27, 0x7f1204b6

    const v29, 0x7f0806b3

    const/16 v30, 0x0

    const/16 v31, 0x40

    const-string v24, "goldAllPremium"

    move-object/from16 v23, v4

    .line 61
    invoke-direct/range {v23 .. v31}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v4, Le/a/l/p2/g0;

    const v5, 0x7f1204b3

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const v17, 0x7f1204b5

    const v18, 0x7f0807ac

    const v19, 0x7f1204b8

    const v21, 0x7f0807a9

    const/16 v22, 0x0

    const/16 v23, 0x40

    const-string v16, "goldSupport"

    move-object v15, v4

    .line 64
    invoke-direct/range {v15 .. v23}, Le/a/l/p2/g0;-><init>(Ljava/lang/String;IIILjava/util/List;ILe/a/l/p2/n;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v4, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/AbstractIndexedListIterator;

    .line 66
    instance-of v4, v2, Lcom/google/common/collect/ImmutableCollection;

    if-eqz v4, :cond_24

    .line 67
    check-cast v2, Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_18

    .line 69
    :cond_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->construct([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :cond_25
    :goto_18
    move-object v15, v2

    const-string v2, "ImmutableList.copyOf(features)"

    .line 70
    invoke-static {v15, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v6

    .line 71
    invoke-direct/range {v9 .. v15}, Le/a/l/p2/j1;-><init>(Le/a/l/p2/h0;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    move-object v10, v6

    goto :goto_19

    :cond_26
    const/4 v10, 0x0

    .line 72
    :goto_19
    new-instance v2, Le/a/l/p2/h1;

    invoke-direct {v2, v3, v10}, Le/a/l/p2/h1;-><init>(Le/a/l/p2/j1;Le/a/l/p2/j1;)V

    .line 73
    invoke-direct {v1, v2}, Le/a/l/p2/i1$a$b;-><init>(Le/a/l/p2/h1;)V

    :goto_1a
    return-object v1

    :cond_27
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method
