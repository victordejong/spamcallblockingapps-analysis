.class public final Le/a/c/i/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/g/a;


# instance fields
.field public final a:Le/a/c/p/b;

.field public final b:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Le/a/c/p/b;Le/a/c/w/o0/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "infoCardRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/g/b;->a:Le/a/c/p/b;

    iput-object p2, p0, Le/a/c/i/g/b;->b:Le/a/c/w/o0/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/c/i/g/c;ZLs1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/i/g/c;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Le/a/c/p/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Le/a/c/i/g/b$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/c/i/g/b$a;

    iget v4, v3, Le/a/c/i/g/b$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/i/g/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/i/g/b$a;

    invoke-direct {v3, v0, v2}, Le/a/c/i/g/b$a;-><init>(Le/a/c/i/g/b;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/c/i/g/b$a;->d:Ljava/lang/Object;

    sget-object v10, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v3, Le/a/c/i/g/b$a;->e:I

    const-string v11, "null cannot be cast to non-null type com.truecaller.insights.repository.filters.SmartSmsFeatureCheckExtras.SenderFilterCheck"

    const/4 v5, 0x2

    const/4 v12, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v4, :cond_6

    if-eq v4, v14, :cond_5

    if-eq v4, v5, :cond_4

    if-eq v4, v12, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v7, :cond_1

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-boolean v1, v3, Le/a/c/i/g/b$a;->n:Z

    iget-object v4, v3, Le/a/c/i/g/b$a;->l:Ljava/lang/Object;

    iget-object v5, v3, Le/a/c/i/g/b$a;->k:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v3, Le/a/c/i/g/b$a;->j:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v3, Le/a/c/i/g/b$a;->i:Ljava/lang/Object;

    check-cast v7, Le/a/c/w/o0/e;

    iget-object v8, v3, Le/a/c/i/g/b$a;->h:Ljava/lang/Object;

    check-cast v8, Le/a/c/i/g/c;

    iget-object v9, v3, Le/a/c/i/g/b$a;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/g/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-boolean v1, v3, Le/a/c/i/g/b$a;->n:Z

    iget-object v4, v3, Le/a/c/i/g/b$a;->m:Ljava/lang/Object;

    check-cast v4, Le/a/c/r/j/l;

    iget-object v5, v3, Le/a/c/i/g/b$a;->l:Ljava/lang/Object;

    iget-object v6, v3, Le/a/c/i/g/b$a;->k:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v3, Le/a/c/i/g/b$a;->j:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    iget-object v8, v3, Le/a/c/i/g/b$a;->i:Ljava/lang/Object;

    check-cast v8, Le/a/c/w/o0/e;

    iget-object v9, v3, Le/a/c/i/g/b$a;->h:Ljava/lang/Object;

    check-cast v9, Le/a/c/i/g/c;

    iget-object v13, v3, Le/a/c/i/g/b$a;->g:Ljava/lang/Object;

    check-cast v13, Le/a/c/i/g/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget-boolean v1, v3, Le/a/c/i/g/b$a;->n:Z

    iget-object v4, v3, Le/a/c/i/g/b$a;->h:Ljava/lang/Object;

    check-cast v4, Le/a/c/i/g/c;

    iget-object v5, v3, Le/a/c/i/g/b$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/i/g/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_5
    iget-boolean v1, v3, Le/a/c/i/g/b$a;->n:Z

    iget-object v4, v3, Le/a/c/i/g/b$a;->i:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, v3, Le/a/c/i/g/b$a;->h:Ljava/lang/Object;

    check-cast v6, Le/a/c/i/g/c;

    iget-object v7, v3, Le/a/c/i/g/b$a;->g:Ljava/lang/Object;

    check-cast v7, Le/a/c/i/g/b;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v7

    move-object/from16 v16, v2

    move v2, v1

    move-object v1, v6

    move-object v6, v4

    move-object/from16 v4, v16

    goto :goto_1

    :cond_6
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object v2, Le/a/c/c0/q;->b:Le/a/c/c0/q;

    .line 5
    iget-object v4, v1, Le/a/c/i/g/c;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v4}, Le/a/c/c0/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v4, v0, Le/a/c/i/g/b;->b:Le/a/c/w/o0/g;

    iput-object v0, v3, Le/a/c/i/g/b$a;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/g/b$a;->h:Ljava/lang/Object;

    iput-object v2, v3, Le/a/c/i/g/b$a;->i:Ljava/lang/Object;

    move/from16 v6, p2

    iput-boolean v6, v3, Le/a/c/i/g/b$a;->n:Z

    iput v14, v3, Le/a/c/i/g/b$a;->e:I

    invoke-interface {v4, v2, v3}, Le/a/c/w/o0/g;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_7

    return-object v10

    :cond_7
    move-object v15, v0

    move/from16 v16, v6

    move-object v6, v2

    move/from16 v2, v16

    :goto_1
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    return-object v13

    .line 8
    :cond_8
    iget-object v4, v15, Le/a/c/i/g/b;->b:Le/a/c/w/o0/g;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    iput-object v15, v3, Le/a/c/i/g/b$a;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/g/b$a;->h:Ljava/lang/Object;

    iput-object v13, v3, Le/a/c/i/g/b$a;->i:Ljava/lang/Object;

    iput-boolean v2, v3, Le/a/c/i/g/b$a;->n:Z

    iput v5, v3, Le/a/c/i/g/b$a;->e:I

    move-object v5, v6

    move-object v6, v7

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Le/a/c/p/a;->A0(Le/a/c/w/o0/g;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_9

    return-object v10

    :cond_9
    move-object v5, v15

    move-object/from16 v16, v4

    move-object v4, v1

    move v1, v2

    move-object/from16 v2, v16

    .line 9
    :goto_2
    check-cast v2, Le/a/c/w/o0/e;

    .line 10
    iget-object v6, v2, Le/a/c/w/o0/e;->c:Le/a/c/w/o0/f;

    .line 11
    invoke-static {v6, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Le/a/c/w/o0/f$a;

    .line 12
    iget-object v6, v6, Le/a/c/w/o0/f$a;->b:Ljava/util/List;

    if-eqz v6, :cond_18

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Le/a/c/r/j/l;

    .line 15
    iget-object v13, v5, Le/a/c/i/g/b;->b:Le/a/c/w/o0/g;

    invoke-virtual {v9}, Le/a/c/r/j/l;->b()Ljava/lang/String;

    move-result-object v15

    .line 16
    iget-object v0, v4, Le/a/c/i/g/c;->b:Ljava/lang/String;

    .line 17
    iput-object v5, v3, Le/a/c/i/g/b$a;->g:Ljava/lang/Object;

    iput-object v4, v3, Le/a/c/i/g/b$a;->h:Ljava/lang/Object;

    iput-object v2, v3, Le/a/c/i/g/b$a;->i:Ljava/lang/Object;

    iput-object v7, v3, Le/a/c/i/g/b$a;->j:Ljava/lang/Object;

    iput-object v6, v3, Le/a/c/i/g/b$a;->k:Ljava/lang/Object;

    iput-object v8, v3, Le/a/c/i/g/b$a;->l:Ljava/lang/Object;

    iput-object v9, v3, Le/a/c/i/g/b$a;->m:Ljava/lang/Object;

    iput-boolean v1, v3, Le/a/c/i/g/b$a;->n:Z

    iput v12, v3, Le/a/c/i/g/b$a;->e:I

    invoke-interface {v13, v15, v0, v3}, Le/a/c/w/o0/g;->c(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_a

    return-object v10

    :cond_a
    move-object v13, v5

    move-object v5, v8

    move-object v8, v2

    move-object v2, v0

    move-object/from16 v16, v9

    move-object v9, v4

    move-object/from16 v4, v16

    :goto_4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v13, Le/a/c/i/g/b;->b:Le/a/c/w/o0/g;

    invoke-virtual {v4}, Le/a/c/r/j/l;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v13, v3, Le/a/c/i/g/b$a;->g:Ljava/lang/Object;

    iput-object v9, v3, Le/a/c/i/g/b$a;->h:Ljava/lang/Object;

    iput-object v8, v3, Le/a/c/i/g/b$a;->i:Ljava/lang/Object;

    iput-object v7, v3, Le/a/c/i/g/b$a;->j:Ljava/lang/Object;

    iput-object v6, v3, Le/a/c/i/g/b$a;->k:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/i/g/b$a;->l:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v3, Le/a/c/i/g/b$a;->m:Ljava/lang/Object;

    iput-boolean v1, v3, Le/a/c/i/g/b$a;->n:Z

    const/4 v4, 0x4

    iput v4, v3, Le/a/c/i/g/b$a;->e:I

    invoke-interface {v0, v2, v3}, Le/a/c/w/o0/g;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_b

    return-object v10

    :cond_b
    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v13

    :goto_5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v2, v7

    move v0, v14

    move-object v7, v6

    move-object v6, v5

    move-object v5, v9

    goto :goto_6

    :cond_c
    move-object v13, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    :cond_d
    const/4 v0, 0x0

    move-object v4, v5

    move-object v2, v8

    move-object v8, v9

    move-object v5, v13

    move/from16 v16, v14

    move v14, v0

    move/from16 v0, v16

    .line 18
    :goto_6
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 19
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_e
    move v14, v0

    move-object v4, v8

    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 20
    :cond_f
    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_17

    .line 21
    iget-object v0, v5, Le/a/c/i/g/b;->a:Le/a/c/p/b;

    .line 22
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v7, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "OTP"

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 24
    check-cast v7, Le/a/c/r/j/l;

    .line 25
    invoke-virtual {v7}, Le/a/c/r/j/l;->b()Ljava/lang/String;

    move-result-object v7

    const-string v9, "grammar"

    .line 26
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_9

    :sswitch_0
    const-string v8, "GRM_BILL"

    .line 28
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "Bill"

    goto :goto_8

    :sswitch_1
    const-string v8, "GRM_BANK"

    .line 29
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "Bank"

    goto :goto_8

    :sswitch_2
    const-string v9, "GRM_OTP"

    .line 30
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_8

    :sswitch_3
    const-string v8, "GRM_NOTIF"

    .line 31
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "Notif"

    goto :goto_8

    :sswitch_4
    const-string v8, "GRM_EVENT"

    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "Event"

    goto :goto_8

    :sswitch_5
    const-string v8, "GRM_DELIVERY"

    .line 33
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "Delivery"

    goto :goto_8

    :sswitch_6
    const-string v8, "GRM_TRAVEL"

    .line 34
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "Travel"

    goto :goto_8

    :sswitch_7
    const-string v8, "GRM_OFFERS"

    .line 35
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "Offers"

    .line 36
    :goto_8
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 37
    :cond_10
    :goto_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot get grammar for: "

    invoke-static {v1, v7}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    if-eqz v1, :cond_12

    goto :goto_b

    .line 38
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 40
    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_13

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    move-object v5, v1

    .line 41
    :goto_b
    iget-object v1, v2, Le/a/c/w/o0/e;->b:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    .line 42
    sget-object v6, Lcom/truecaller/insights/repository/filters/FeatureStatus;->ANY:Lcom/truecaller/insights/repository/filters/FeatureStatus;

    if-ne v1, v6, :cond_15

    .line 43
    iget-object v1, v2, Le/a/c/w/o0/e;->c:Le/a/c/w/o0/f;

    .line 44
    invoke-static {v1, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/c/w/o0/f$a;

    .line 45
    iget-object v1, v1, Le/a/c/w/o0/f$a;->a:Lcom/truecaller/insights/repository/filters/InfoCardType;

    .line 46
    sget-object v2, Lcom/truecaller/insights/repository/filters/InfoCardType;->SEMICARD:Lcom/truecaller/insights/repository/filters/InfoCardType;

    if-ne v1, v2, :cond_15

    const/4 v1, 0x0

    goto :goto_c

    :cond_15
    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 47
    :goto_c
    iput-object v1, v3, Le/a/c/i/g/b$a;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/g/b$a;->h:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/g/b$a;->i:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/g/b$a;->j:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/g/b$a;->k:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/g/b$a;->l:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/i/g/b$a;->m:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, v3, Le/a/c/i/g/b$a;->e:I

    .line 48
    invoke-interface {v0, v5, v4, v14, v3}, Le/a/c/p/b;->a(Ljava/util/List;Le/a/c/i/g/c;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_16

    return-object v10

    :cond_16
    :goto_d
    return-object v2

    :cond_17
    const/4 v13, 0x0

    :cond_18
    return-object v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x56c1704c -> :sswitch_7
        -0x4d9222c9 -> :sswitch_6
        -0x4d429d2f -> :sswitch_5
        -0xb942743 -> :sswitch_4
        -0xb184aad -> :sswitch_3
        0x3c31460e -> :sswitch_2
        0x49f14b99 -> :sswitch_1
        0x49f16964 -> :sswitch_0
    .end sparse-switch
.end method
