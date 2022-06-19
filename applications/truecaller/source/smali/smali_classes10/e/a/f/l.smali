.class public final Le/a/f/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Lcom/truecaller/data/entity/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/f/g;

.field public final synthetic c:Lcom/truecaller/data/entity/Number;

.field public final synthetic d:Lcom/truecaller/incallui/utils/BlockAction;

.field public final synthetic e:Lcom/truecaller/blocking/FilterMatch;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/f/g;Lcom/truecaller/data/entity/Number;Lcom/truecaller/incallui/utils/InCallUISearchDirection;Lcom/truecaller/incallui/utils/BlockAction;Lcom/truecaller/blocking/FilterMatch;)V
    .locals 0

    iput-object p1, p0, Le/a/f/l;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/f/l;->b:Le/a/f/g;

    iput-object p3, p0, Le/a/f/l;->c:Lcom/truecaller/data/entity/Number;

    iput-object p5, p0, Le/a/f/l;->d:Lcom/truecaller/incallui/utils/BlockAction;

    iput-object p6, p0, Le/a/f/l;->e:Lcom/truecaller/blocking/FilterMatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 34

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v15, p1

    check-cast v15, Lcom/truecaller/data/entity/Contact;

    const/4 v1, 0x0

    if-nez v15, :cond_0

    .line 2
    iget-object v2, v0, Le/a/f/l;->a:Lq3/a/n;

    invoke-interface {v2, v1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 3
    :cond_0
    new-instance v2, Le/a/f/k;

    invoke-direct {v2, v0, v15, v1}, Le/a/f/k;-><init>(Le/a/f/l;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/truecaller/data/entity/SpamCategoryModel;

    .line 4
    iget-object v13, v0, Le/a/f/l;->a:Lq3/a/n;

    iget-object v2, v0, Le/a/f/l;->b:Le/a/f/g;

    iget-object v4, v0, Le/a/f/l;->c:Lcom/truecaller/data/entity/Number;

    iget-object v12, v0, Le/a/f/l;->d:Lcom/truecaller/incallui/utils/BlockAction;

    iget-object v11, v0, Le/a/f/l;->e:Lcom/truecaller/blocking/FilterMatch;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Le/a/o5/t;->e(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v5

    .line 7
    iget-object v6, v2, Le/a/f/g;->f:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/g5/p;

    invoke-interface {v6, v15}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object v16

    .line 8
    iget v6, v15, Lcom/truecaller/data/entity/Contact;->r:I

    .line 9
    iget-object v7, v15, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 10
    invoke-static {v6, v7}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v6

    .line 11
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/data/entity/Number;

    const-string v1, "number"

    .line 12
    invoke-static {v9, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v17, v10

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v17, v3

    :goto_2
    if-eqz v17, :cond_3

    move v1, v3

    goto/16 :goto_7

    .line 14
    :cond_3
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v11, :cond_4

    .line 15
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->m()I

    move-result v1

    invoke-virtual {v2, v11, v1}, Le/a/f/g;->c(Lcom/truecaller/blocking/FilterMatch;I)Le/a/f/g$a;

    move-result-object v1

    move-object v8, v1

    goto :goto_6

    .line 16
    :cond_4
    iget-object v3, v2, Le/a/f/g;->e:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h0/j;

    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v1, v10}, Le/a/h0/j;->j(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v1

    const-string v3, "matches"

    .line 17
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/truecaller/data/entity/Number;->m()I

    move-result v3

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v10

    move v9, v8

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Lcom/truecaller/blocking/FilterMatch;

    .line 19
    invoke-virtual {v2, v10, v3}, Le/a/f/g;->c(Lcom/truecaller/blocking/FilterMatch;I)Le/a/f/g$a;

    move-result-object v0

    move-object/from16 v18, v1

    .line 20
    iget-boolean v1, v0, Le/a/f/g$a;->b:Z

    if-eqz v1, :cond_5

    .line 21
    new-instance v0, Le/a/f/g$a;

    const/4 v1, 0x1

    invoke-direct {v0, v8, v1, v9}, Le/a/f/g$a;-><init>(IZZ)V

    goto :goto_5

    .line 22
    :cond_5
    iget-boolean v0, v0, Le/a/f/g$a;->c:Z

    if-eqz v0, :cond_7

    .line 23
    iget v0, v10, Lcom/truecaller/blocking/FilterMatch;->f:I

    if-le v0, v3, :cond_6

    move v8, v0

    goto :goto_4

    :cond_6
    move v8, v3

    :goto_4
    const/4 v9, 0x1

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    const/4 v10, 0x0

    goto :goto_3

    :cond_8
    if-lez v8, :cond_9

    .line 24
    new-instance v0, Le/a/f/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1, v9}, Le/a/f/g$a;-><init>(IZZ)V

    :goto_5
    move-object v8, v0

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_a

    .line 25
    iget-boolean v0, v8, Le/a/f/g$a;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_8

    :cond_a
    const/4 v1, 0x1

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    move v3, v1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_c
    move v1, v3

    :goto_8
    if-eqz v8, :cond_d

    .line 26
    iget-boolean v0, v8, Le/a/f/g$a;->b:Z

    goto :goto_9

    :cond_d
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_e

    goto :goto_b

    .line 27
    :cond_e
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_f
    if-eqz v8, :cond_10

    .line 28
    iget-boolean v0, v8, Le/a/f/g$a;->c:Z

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_11

    if-eqz v8, :cond_11

    .line 29
    iget v0, v8, Le/a/f/g$a;->a:I

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v0, 0x0

    .line 31
    :goto_c
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    goto :goto_d

    :cond_12
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v3

    :goto_d
    const-string v7, "contact.displayName ?: contact.displayNameOrNumber"

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_e

    :cond_13
    const/4 v8, 0x0

    goto :goto_f

    :cond_14
    :goto_e
    move v8, v1

    :goto_f
    if-nez v8, :cond_15

    goto :goto_10

    :cond_15
    const/4 v7, 0x0

    :goto_10
    const/4 v8, 0x0

    .line 33
    invoke-static {v15, v8}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    :cond_16
    const/4 v9, 0x0

    .line 34
    :goto_11
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v10

    const-string v1, "number.normalizedNumber"

    invoke-static {v10, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_17

    .line 35
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    goto :goto_12

    :cond_17
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v1

    :goto_12
    if-eqz v1, :cond_18

    goto :goto_13

    :cond_18
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    :goto_13
    move-object v4, v1

    const-string v1, "callerNumber?.numberForD\u2026: number.normalizedNumber"

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->r()Lcom/truecaller/data/entity/Address;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Address;->getDisplayableAddress()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_14

    :cond_19
    const/16 v18, 0x0

    .line 37
    :goto_14
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->C()Ljava/lang/String;

    move-result-object v19

    if-eqz v5, :cond_1a

    .line 38
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Number;->c()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_15

    :cond_1a
    const/16 v20, 0x0

    :goto_15
    if-eqz v0, :cond_1b

    const/16 v21, 0x1

    goto :goto_16

    :cond_1b
    move/from16 v21, v8

    :goto_16
    if-eqz v0, :cond_1c

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_17

    :cond_1c
    move v0, v8

    .line 40
    :goto_17
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v22

    .line 41
    iget-object v1, v2, Le/a/f/g;->k:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/z2/a;

    invoke-interface {v1, v15}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v23

    .line 42
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v24

    .line 43
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->j0()Z

    move-result v25

    .line 44
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v26

    .line 45
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v27

    .line 46
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result v28

    const/16 v29, 0x0

    .line 47
    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->B0()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual {v15}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_18

    :cond_1d
    move/from16 v30, v8

    goto :goto_19

    :cond_1e
    :goto_18
    const/16 v30, 0x1

    .line 48
    :goto_19
    new-instance v8, Le/a/f/z/l;

    move-object v1, v8

    move-object v2, v3

    move-object v3, v7

    move-object v7, v4

    move-object v4, v9

    move v5, v6

    move-object v6, v10

    move-object v10, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v31, v10

    move-object/from16 v10, v20

    move-object/from16 v32, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v12

    move/from16 v12, v21

    move-object/from16 v33, v13

    move v13, v0

    move-object v0, v15

    move-object/from16 v15, v16

    move/from16 v16, v28

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v19, v24

    move/from16 v20, v25

    move/from16 v21, v26

    move/from16 v22, v27

    move-object/from16 v23, v29

    move-object/from16 v24, v0

    move-object/from16 v25, v32

    move/from16 v26, v30

    invoke-direct/range {v1 .. v26}, Le/a/f/z/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/b0/p/c;ZILcom/truecaller/data/entity/SpamCategoryModel;Lcom/truecaller/incallui/utils/BlockAction;ZZZZZZZLjava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;Z)V

    move-object/from16 v1, v31

    move-object/from16 v0, v33

    .line 49
    invoke-interface {v0, v1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :goto_1a
    return-void
.end method
