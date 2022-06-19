.class public final Le/a/f/j;
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
        "-",
        "Le/a/f/z/l;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.InCallUICallerInfoProviderImpl$searchCallerAsFlow$2"
    f = "InCallUICallerInfoProviderImpl.kt"
    l = {
        0x47,
        0x50,
        0x52,
        0x55,
        0x58
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:I

.field public j:I

.field public final synthetic k:Le/a/f/g;

.field public final synthetic l:Ljava/lang/String;

.field public final synthetic m:Lcom/truecaller/incallui/utils/InCallUISearchDirection;


# direct methods
.method public constructor <init>(Le/a/f/g;Ljava/lang/String;Lcom/truecaller/incallui/utils/InCallUISearchDirection;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/j;->k:Le/a/f/g;

    iput-object p2, p0, Le/a/f/j;->l:Ljava/lang/String;

    iput-object p3, p0, Le/a/f/j;->m:Lcom/truecaller/incallui/utils/InCallUISearchDirection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    new-instance v0, Le/a/f/j;

    iget-object v1, p0, Le/a/f/j;->k:Le/a/f/g;

    iget-object v2, p0, Le/a/f/j;->l:Ljava/lang/String;

    iget-object v3, p0, Le/a/f/j;->m:Lcom/truecaller/incallui/utils/InCallUISearchDirection;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/f/j;-><init>(Le/a/f/g;Ljava/lang/String;Lcom/truecaller/incallui/utils/InCallUISearchDirection;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/j;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/j;

    iget-object v1, p0, Le/a/f/j;->k:Le/a/f/g;

    iget-object v2, p0, Le/a/f/j;->l:Ljava/lang/String;

    iget-object v3, p0, Le/a/f/j;->m:Lcom/truecaller/incallui/utils/InCallUISearchDirection;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/f/j;-><init>(Le/a/f/g;Ljava/lang/String;Lcom/truecaller/incallui/utils/InCallUISearchDirection;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/j;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v0, p0

    sget-object v1, Ls1/s;->a:Ls1/s;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v0, Le/a/f/j;->j:I

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v10, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_2
    iget v3, v0, Le/a/f/j;->i:I

    iget-object v6, v0, Le/a/f/j;->e:Ljava/lang/Object;

    check-cast v6, Lq3/a/x2/g;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v8, v3

    move-object/from16 v3, p1

    goto/16 :goto_18

    :cond_3
    iget v3, v0, Le/a/f/j;->i:I

    iget-object v8, v0, Le/a/f/j;->h:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/incallui/utils/BlockAction;

    iget-object v11, v0, Le/a/f/j;->g:Ljava/lang/Object;

    check-cast v11, Lcom/truecaller/blocking/FilterMatch;

    iget-object v12, v0, Le/a/f/j;->f:Ljava/lang/Object;

    check-cast v12, Lcom/truecaller/data/entity/Number;

    iget-object v13, v0, Le/a/f/j;->e:Ljava/lang/Object;

    check-cast v13, Lq3/a/x2/g;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v4, v7

    goto/16 :goto_16

    :cond_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v3, v0, Le/a/f/j;->e:Ljava/lang/Object;

    move-object v13, v3

    check-cast v13, Lq3/a/x2/g;

    .line 4
    iget-object v3, v0, Le/a/f/j;->k:Le/a/f/g;

    .line 5
    iget-object v3, v3, Le/a/f/g;->h:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/k3/l/f;

    new-array v11, v10, [Ljava/lang/String;

    iget-object v12, v0, Le/a/f/j;->l:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-interface {v3, v11}, Le/a/k3/l/f;->a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v3

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance v3, Lcom/truecaller/data/entity/Number;

    iget-object v11, v0, Le/a/f/j;->l:Ljava/lang/String;

    .line 7
    invoke-direct {v3, v11, v9}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v12, v3

    .line 8
    iget-object v3, v0, Le/a/f/j;->k:Le/a/f/g;

    iget-object v11, v0, Le/a/f/j;->l:Ljava/lang/String;

    invoke-static {v3, v11}, Le/a/f/g;->b(Le/a/f/g;Ljava/lang/String;)Lcom/truecaller/blocking/FilterMatch;

    move-result-object v11

    .line 9
    iget-object v3, v0, Le/a/f/j;->k:Le/a/f/g;

    invoke-static {v3, v11}, Le/a/f/g;->a(Le/a/f/g;Lcom/truecaller/blocking/FilterMatch;)Lcom/truecaller/incallui/utils/BlockAction;

    move-result-object v3

    .line 10
    invoke-virtual {v12}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-nez v14, :cond_7

    goto :goto_2

    :cond_7
    move v14, v8

    goto :goto_3

    :cond_8
    :goto_2
    move v14, v10

    :goto_3
    if-eqz v14, :cond_a

    .line 11
    iput v10, v0, Le/a/f/j;->j:I

    invoke-interface {v13, v9, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_9

    return-object v2

    :cond_9
    :goto_4
    return-object v1

    .line 12
    :cond_a
    iget-object v14, v0, Le/a/f/j;->k:Le/a/f/g;

    .line 13
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v12}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 15
    invoke-static {v15}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v16, v8

    goto :goto_6

    :cond_c
    :goto_5
    move/from16 v16, v10

    :goto_6
    if-eqz v16, :cond_d

    goto :goto_9

    :cond_d
    const-string v16, ""

    .line 16
    invoke-virtual {v12}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_e

    move-object/from16 v4, v17

    goto :goto_7

    :cond_e
    move-object v4, v15

    :goto_7
    const-string v5, "number.numberForDisplay ?: normalizedNumber"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v5, Ls1/z/c/c0;

    invoke-direct {v5}, Ls1/z/c/c0;-><init>()V

    iput-object v9, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 18
    iget-object v6, v11, Lcom/truecaller/blocking/FilterMatch;->c:Lcom/truecaller/blocking/ActionSource;

    .line 19
    sget-object v7, Lcom/truecaller/blocking/ActionSource;->TOP_SPAMMER:Lcom/truecaller/blocking/ActionSource;

    if-ne v6, v7, :cond_10

    .line 20
    iget-object v6, v11, Lcom/truecaller/blocking/FilterMatch;->d:Ljava/lang/String;

    if-eqz v6, :cond_f

    move-object/from16 v16, v6

    .line 21
    :cond_f
    iget-object v6, v11, Lcom/truecaller/blocking/FilterMatch;->h:Ljava/util/List;

    .line 22
    iput-object v6, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 23
    iget v6, v11, Lcom/truecaller/blocking/FilterMatch;->f:I

    move/from16 v26, v6

    move v7, v10

    move-object/from16 v6, v16

    move/from16 v16, v8

    goto :goto_8

    .line 24
    :cond_10
    iget-object v6, v11, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 25
    sget-object v7, Lcom/truecaller/blocking/FilterAction;->ALLOW_WHITELISTED:Lcom/truecaller/blocking/FilterAction;

    if-ne v6, v7, :cond_11

    move v7, v8

    move/from16 v26, v7

    move-object/from16 v6, v16

    move/from16 v16, v10

    goto :goto_8

    :cond_11
    move v7, v8

    move/from16 v26, v7

    move-object/from16 v6, v16

    move/from16 v16, v26

    .line 26
    :goto_8
    new-instance v8, Le/a/f/h;

    invoke-direct {v8, v14, v5, v9}, Le/a/f/h;-><init>(Le/a/f/g;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {v9, v8, v10, v9}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v27, v5

    check-cast v27, Lcom/truecaller/data/entity/SpamCategoryModel;

    if-nez v7, :cond_13

    if-eqz v16, :cond_12

    goto :goto_a

    :cond_12
    :goto_9
    move-object v7, v9

    goto/16 :goto_15

    .line 27
    :cond_13
    :goto_a
    iget-object v5, v14, Le/a/f/g;->j:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/k3/j/b;

    invoke-virtual {v5, v15}, Le/a/k3/j/b;->h(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object v5

    if-eqz v5, :cond_14

    goto :goto_b

    .line 28
    :cond_14
    new-instance v5, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v5}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 29
    iget-object v8, v5, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v8, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-object v6, v8, Lcom/truecaller/data/dto/ContactDto$Contact;->name:Ljava/lang/String;

    .line 30
    invoke-virtual {v5, v12}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    .line 31
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/truecaller/data/entity/Contact;->Z0(Ljava/lang/Integer;)V

    xor-int/lit8 v6, v16, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_15

    .line 32
    iget-object v6, v5, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v6, Lcom/truecaller/data/dto/ContactDto$Contact;

    const-string v8, "TOP_SPAMMER"

    iput-object v8, v6, Lcom/truecaller/data/dto/ContactDto$Contact;->spamType:Ljava/lang/String;

    :cond_15
    :goto_b
    const-string v6, "aggregatedContactDao.get\u2026          }\n            }"

    .line 33
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    goto :goto_c

    :cond_16
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v6

    :goto_c
    move-object v15, v6

    const-string v6, "contact.displayName ?: contact.displayNameOrNumber"

    invoke-static {v15, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_17

    goto :goto_d

    :cond_17
    const/4 v8, 0x0

    goto :goto_e

    :cond_18
    :goto_d
    move v8, v10

    :goto_e
    if-nez v8, :cond_19

    goto :goto_f

    :cond_19
    move-object v6, v9

    :goto_f
    const/4 v8, 0x0

    .line 36
    invoke-static {v5, v8}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_1a

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_10

    :cond_1a
    move-object/from16 v17, v9

    :goto_10
    const/16 v18, 0x0

    .line 37
    invoke-virtual {v12}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v8

    const-string v9, "number.normalizedNumber"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v9

    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Lcom/truecaller/data/entity/Address;->getDisplayableAddress()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v21, v9

    goto :goto_11

    :cond_1b
    const/16 v21, 0x0

    .line 39
    :goto_11
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->C()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    if-eqz v7, :cond_1c

    if-nez v16, :cond_1c

    move/from16 v25, v10

    goto :goto_12

    :cond_1c
    const/16 v25, 0x0

    .line 40
    :goto_12
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v30

    .line 41
    iget-object v7, v14, Le/a/f/g;->k:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/z2/a;

    invoke-interface {v7, v5}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v31

    .line 42
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v32

    .line 43
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->j0()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v33

    .line 44
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v34

    .line 45
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v35

    .line 46
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result v29

    const/16 v36, 0x0

    .line 47
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->B0()Z

    move-result v7

    if-nez v7, :cond_1e

    invoke-virtual {v5}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v39, 0x0

    goto :goto_14

    :cond_1e
    :goto_13
    move/from16 v39, v10

    .line 48
    :goto_14
    new-instance v7, Le/a/f/z/l;

    move-object v14, v7

    move-object/from16 v16, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v4

    move-object/from16 v28, v3

    move-object/from16 v37, v5

    move-object/from16 v38, v11

    invoke-direct/range {v14 .. v39}, Le/a/f/z/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/b0/p/c;ZILcom/truecaller/data/entity/SpamCategoryModel;Lcom/truecaller/incallui/utils/BlockAction;ZZZZZZZLjava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;Z)V

    :goto_15
    if-eqz v7, :cond_20

    .line 49
    iput-object v13, v0, Le/a/f/j;->e:Ljava/lang/Object;

    iput-object v12, v0, Le/a/f/j;->f:Ljava/lang/Object;

    iput-object v11, v0, Le/a/f/j;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/f/j;->h:Ljava/lang/Object;

    iput v10, v0, Le/a/f/j;->i:I

    const/4 v4, 0x2

    iput v4, v0, Le/a/f/j;->j:I

    invoke-interface {v13, v7, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_1f

    return-object v2

    :cond_1f
    move-object v8, v3

    move v3, v10

    :goto_16
    move-object/from16 v19, v8

    move-object/from16 v20, v11

    move-object v6, v13

    move v8, v3

    goto :goto_17

    :cond_20
    const/4 v4, 0x2

    move-object/from16 v19, v3

    move-object/from16 v20, v11

    move-object v6, v13

    const/4 v8, 0x0

    .line 50
    :goto_17
    iget-object v3, v0, Le/a/f/j;->k:Le/a/f/g;

    iget-object v5, v0, Le/a/f/j;->m:Lcom/truecaller/incallui/utils/InCallUISearchDirection;

    iput-object v6, v0, Le/a/f/j;->e:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v0, Le/a/f/j;->f:Ljava/lang/Object;

    iput-object v7, v0, Le/a/f/j;->g:Ljava/lang/Object;

    iput-object v7, v0, Le/a/f/j;->h:Ljava/lang/Object;

    iput v8, v0, Le/a/f/j;->i:I

    const/4 v7, 0x3

    iput v7, v0, Le/a/f/j;->j:I

    .line 51
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v7, Lq3/a/o;

    invoke-static/range {p0 .. p0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v9

    invoke-direct {v7, v9, v10}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 53
    invoke-virtual {v7}, Lq3/a/o;->z()V

    .line 54
    iget-object v9, v3, Le/a/f/g;->c:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/d0/j0;

    .line 56
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    if-eqz v11, :cond_21

    move v4, v10

    .line 57
    :cond_21
    iget-object v11, v3, Le/a/f/g;->d:Ljavax/inject/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/f4/g/r;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    const-string v14, "UUID.randomUUID()"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "incallui"

    invoke-interface {v11, v13, v14}, Le/a/f4/g/r;->b(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object v11

    .line 58
    invoke-interface {v9, v12, v10, v4, v11}, Le/a/d0/j0;->a(Lcom/truecaller/data/entity/Number;ZILe/a/f4/g/p;)Le/a/r2/x;

    move-result-object v4

    .line 59
    new-instance v9, Le/a/f/l;

    move-object v14, v9

    move-object v15, v7

    move-object/from16 v16, v3

    move-object/from16 v17, v12

    move-object/from16 v18, v5

    invoke-direct/range {v14 .. v20}, Le/a/f/l;-><init>(Lq3/a/n;Le/a/f/g;Lcom/truecaller/data/entity/Number;Lcom/truecaller/incallui/utils/InCallUISearchDirection;Lcom/truecaller/incallui/utils/BlockAction;Lcom/truecaller/blocking/FilterMatch;)V

    invoke-virtual {v4, v9}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    .line 60
    invoke-virtual {v7}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_22

    const-string v4, "frame"

    .line 61
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_22
    if-ne v3, v2, :cond_23

    return-object v2

    .line 62
    :cond_23
    :goto_18
    check-cast v3, Le/a/f/z/l;

    if-eqz v8, :cond_24

    if-eqz v3, :cond_25

    const/4 v4, 0x0

    .line 63
    iput-object v4, v0, Le/a/f/j;->e:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v0, Le/a/f/j;->j:I

    invoke-interface {v6, v3, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_25

    return-object v2

    :cond_24
    const/4 v4, 0x0

    .line 64
    iput-object v4, v0, Le/a/f/j;->e:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v0, Le/a/f/j;->j:I

    invoke-interface {v6, v3, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_25

    return-object v2

    :cond_25
    :goto_19
    return-object v1
.end method
