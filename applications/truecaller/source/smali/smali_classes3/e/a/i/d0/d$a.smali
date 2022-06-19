.class public final Le/a/i/d0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/c0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/d0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/i/d0/c0/d<",
        "Ls1/s;",
        "Le/a/i/d0/j<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/i/c/d/l;

.field public final synthetic c:Le/a/i/d0/d;


# direct methods
.method public constructor <init>(Le/a/i/d0/d;Landroid/content/Context;Le/a/i/c/d/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/i/c/d/l;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unitConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/d0/d$a;->c:Le/a/i/d0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/i/d0/d$a;->a:Landroid/content/Context;

    iput-object p3, p0, Le/a/i/d0/d$a;->b:Le/a/i/c/d/l;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/d0/c0/d;)Le/a/i/d0/c0/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/d0/c0/d<",
            "Ls1/s;",
            "Le/a/i/d0/j<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Le/a/i/d0/c0/d<",
            "Ls1/s;",
            "Le/a/i/d0/j<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/m/d/y/n;->v(Le/a/i/d0/c0/d;Le/a/i/d0/c0/d;)Le/a/i/d0/c0/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/s;

    invoke-virtual {p0, p2}, Le/a/i/d0/d$a;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/s;

    check-cast p2, Le/a/i/d0/j;

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/s;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Le/a/i/d0/c;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/i/d0/c;

    iget v3, v2, Le/a/i/d0/c;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/i/d0/c;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/i/d0/c;

    invoke-direct {v2, v0, v1}, Le/a/i/d0/c;-><init>(Le/a/i/d0/d$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/i/d0/c;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/i/d0/c;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Le/a/i/d0/c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/d0/d$a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/i/d0/d$a;->c:Le/a/i/d0/d;

    iget-object v14, v0, Le/a/i/d0/d$a;->a:Landroid/content/Context;

    iget-object v15, v0, Le/a/i/d0/d$a;->b:Le/a/i/c/d/l;

    .line 5
    iget-object v4, v1, Le/a/i/d0/d;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_12

    .line 6
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/truecaller/ads/mediation/model/Partner;

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Le/a/i/d0/a0/l;

    .line 10
    iget-object v4, v15, Le/a/i/c/d/l;->e:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 11
    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Le/a/i/d0/d;->h(Lcom/truecaller/ads/mediation/model/Partner;Ljava/lang/String;)Lcom/truecaller/ads/mediation/model/Placement;

    move-result-object v17

    if-eqz v17, :cond_10

    .line 12
    invoke-virtual/range {v17 .. v17}, Lcom/truecaller/ads/mediation/model/Placement;->getSlot()Ljava/util/List;

    move-result-object v4

    .line 13
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 15
    check-cast v4, Lcom/truecaller/ads/mediation/model/Slot;

    .line 16
    invoke-virtual {v4}, Lcom/truecaller/ads/mediation/model/Slot;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "native"

    invoke-static {v6, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    instance-of v6, v11, Le/a/i/d0/a0/q;

    if-eqz v6, :cond_8

    .line 17
    iget-object v6, v15, Le/a/i/c/d/l;->c:Ljava/util/List;

    .line 18
    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_5

    .line 19
    :cond_5
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 20
    invoke-virtual {v4}, Lcom/truecaller/ads/mediation/model/Slot;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_8

    .line 21
    move-object v6, v11

    check-cast v6, Le/a/i/d0/a0/q;

    invoke-virtual {v12}, Lcom/truecaller/ads/mediation/model/Partner;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v12}, Lcom/truecaller/ads/mediation/model/Partner;->getName()Ljava/lang/String;

    move-result-object v20

    .line 22
    invoke-virtual {v1}, Le/a/i/d0/d;->i()Lq3/a/i0;

    move-result-object v21

    new-instance v24, Le/a/i/d0/e;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v4, v24

    move-object v5, v1

    move-object/from16 v7, v17

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v27, v10

    move-object/from16 v10, v19

    move-object/from16 p1, v13

    move-object v13, v11

    move-object/from16 v11, v20

    move-object/from16 v19, v12

    move-object/from16 v12, v25

    invoke-direct/range {v4 .. v12}, Le/a/i/d0/e;-><init>(Le/a/i/d0/d;Le/a/i/d0/a0/q;Lcom/truecaller/ads/mediation/model/Placement;Landroid/content/Context;Le/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    const/16 v25, 0x3

    const/16 v26, 0x0

    invoke-static/range {v21 .. v26}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v4

    move-object/from16 v28, v13

    move-object/from16 v26, v14

    move-object/from16 v14, p1

    goto/16 :goto_9

    :cond_8
    move-object/from16 v27, v10

    move-object/from16 v19, v12

    move-object/from16 p1, v13

    move-object v13, v11

    .line 23
    invoke-virtual {v4}, Lcom/truecaller/ads/mediation/model/Slot;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "banner"

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    instance-of v5, v13, Le/a/i/d0/a0/o;

    if-eqz v5, :cond_d

    .line 24
    iget-object v5, v15, Le/a/i/c/d/l;->c:Ljava/util/List;

    .line 25
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_7

    .line 26
    :cond_9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 27
    invoke-virtual {v4}, Lcom/truecaller/ads/mediation/model/Slot;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_d

    .line 28
    move-object v6, v13

    check-cast v6, Le/a/i/d0/a0/o;

    invoke-virtual/range {v19 .. v19}, Lcom/truecaller/ads/mediation/model/Partner;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/truecaller/ads/mediation/model/Slot;->getSize()Ljava/util/List;

    move-result-object v10

    .line 29
    iget-object v4, v15, Le/a/i/c/d/l;->c:Ljava/util/List;

    const-string v5, "$this$supportedSlotSize"

    .line 30
    invoke-static {v10, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adType"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "html_300x250"

    .line 31
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 32
    sget-object v4, Le/a/i/d0/f0/a;->b:Le/a/i/d0/f0/a;

    invoke-static {v10, v4}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 33
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/truecaller/ads/mediation/model/Partner;->getName()Ljava/lang/String;

    move-result-object v12

    .line 34
    invoke-virtual {v1}, Le/a/i/d0/d;->i()Lq3/a/i0;

    move-result-object v20

    new-instance v23, Le/a/i/d0/f;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v4, v23

    move-object v5, v1

    move-object/from16 v7, v17

    move-object v8, v15

    move-object v11, v14

    move-object/from16 v28, v13

    move-object/from16 v26, v14

    move-object/from16 v14, p1

    move-object/from16 v13, v24

    invoke-direct/range {v4 .. v13}, Le/a/i/d0/f;-><init>(Le/a/i/d0/d;Le/a/i/d0/a0/o;Lcom/truecaller/ads/mediation/model/Placement;Le/a/i/c/d/l;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)V

    const/16 v24, 0x3

    const/16 v25, 0x0

    invoke-static/range {v20 .. v25}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v4

    goto :goto_9

    :cond_d
    move-object/from16 v28, v13

    move-object/from16 v26, v14

    move-object/from16 v14, p1

    const/4 v4, 0x0

    :goto_9
    move-object/from16 v5, v27

    if-eqz v4, :cond_e

    .line 35
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v4, 0x1

    move-object v10, v5

    move-object v13, v14

    move-object/from16 v12, v19

    move-object/from16 v14, v26

    move-object/from16 v11, v28

    move v5, v4

    goto/16 :goto_4

    :cond_f
    move-object v5, v10

    move-object/from16 v26, v14

    move-object v14, v13

    goto :goto_a

    :cond_10
    move-object/from16 v26, v14

    move-object v14, v13

    .line 36
    invoke-virtual {v1}, Le/a/i/d0/d;->f()Ljava/util/List;

    move-result-object v10

    .line 37
    :goto_a
    invoke-static {v14, v10}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    const/4 v5, 0x1

    move-object v13, v14

    move-object/from16 v14, v26

    goto/16 :goto_2

    :cond_11
    move-object v14, v13

    goto :goto_b

    .line 38
    :cond_12
    invoke-virtual {v1}, Le/a/i/d0/d;->f()Ljava/util/List;

    move-result-object v13

    .line 39
    :goto_b
    iput-object v0, v2, Le/a/i/d0/c;->g:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v2, Le/a/i/d0/c;->e:I

    invoke-static {v13, v2}, Ls1/a/a/a/v0/f/d;->I(Ljava/util/Collection;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_13

    return-object v3

    :cond_13
    move-object v2, v0

    .line 40
    :goto_c
    check-cast v1, Ljava/util/List;

    .line 41
    sget-object v3, Le/a/i/h0/m;->a:Ls1/z/b/l;

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PartnerSDK bidList= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Le/a/i/d0/k;

    if-eqz v5, :cond_14

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 45
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 47
    check-cast v4, Le/a/i/d0/k;

    .line 48
    iget-object v5, v2, Le/a/i/d0/d$a;->c:Le/a/i/d0/d;

    .line 49
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v5, Le/a/i/d0/h;

    .line 51
    iget-object v6, v4, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 52
    check-cast v6, Le/a/i/d0/h0/a;

    .line 53
    iget-wide v6, v6, Le/a/i/d0/h0/a;->d:D

    .line 54
    invoke-direct {v5, v6, v7, v4}, Le/a/i/d0/h;-><init>(DLe/a/i/d0/k;)V

    .line 55
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 56
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v1, 0x0

    goto :goto_10

    .line 58
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_18

    :goto_f
    move-object v1, v3

    goto :goto_10

    .line 60
    :cond_18
    move-object v4, v3

    check-cast v4, Le/a/i/d0/h;

    .line 61
    iget-wide v4, v4, Le/a/i/d0/h;->a:D

    .line 62
    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v4, v5}, Ljava/lang/Double;-><init>(D)V

    .line 63
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 64
    move-object v5, v4

    check-cast v5, Le/a/i/d0/h;

    .line 65
    iget-wide v7, v5, Le/a/i/d0/h;->a:D

    .line 66
    new-instance v5, Ljava/lang/Double;

    invoke-direct {v5, v7, v8}, Ljava/lang/Double;-><init>(D)V

    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/Double;->compareTo(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_1a

    move-object v3, v4

    move-object v6, v5

    .line 68
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_f

    .line 69
    :goto_10
    check-cast v1, Le/a/i/d0/h;

    if-eqz v1, :cond_1d

    .line 70
    iget-wide v3, v1, Le/a/i/d0/h;->a:D

    .line 71
    iget-object v1, v1, Le/a/i/d0/h;->b:Le/a/i/d0/k;

    .line 72
    iget-object v1, v1, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 73
    move-object v5, v1

    check-cast v5, Le/a/i/d0/h0/a;

    .line 74
    instance-of v6, v5, Le/a/i/d0/h0/c;

    const/4 v7, 0x2

    if-eqz v6, :cond_1b

    new-instance v2, Le/a/i/d0/k;

    check-cast v1, Le/a/i/d0/h0/c;

    invoke-virtual {v1}, Le/a/i/d0/h0/c;->c()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5, v7}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_11

    :cond_1b
    const/4 v6, 0x0

    .line 75
    instance-of v5, v5, Le/a/i/d0/h0/b;

    if-eqz v5, :cond_1c

    new-instance v5, Le/a/i/d0/k;

    check-cast v1, Le/a/i/d0/h0/b;

    iget-object v2, v2, Le/a/i/d0/d$a;->c:Le/a/i/d0/d;

    invoke-virtual {v1, v2}, Le/a/i/d0/h0/b;->c(Le/a/i/d0/d;)Le/a/i/c/a/e;

    move-result-object v1

    invoke-direct {v5, v1, v6, v7}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    move-object v2, v5

    goto :goto_11

    .line 76
    :cond_1c
    new-instance v2, Le/a/i/d0/i;

    sget-object v1, Le/a/i/d0/r;->d:Le/a/i/d0/r;

    invoke-direct {v2, v1}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    .line 77
    :goto_11
    sget-object v1, Le/a/i/h0/m;->a:Ls1/z/b/l;

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PartnerSDK bidWinner= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with price= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 79
    :cond_1d
    new-instance v2, Le/a/i/d0/i;

    sget-object v1, Le/a/i/d0/p;->d:Le/a/i/d0/p;

    invoke-direct {v2, v1}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    .line 80
    sget-object v1, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v3, "PartnerSDK "

    .line 81
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 82
    iget-object v4, v2, Le/a/i/d0/i;->a:Le/a/i/c/b/a;

    .line 83
    iget-object v4, v4, Le/a/i/c/b/a;->b:Ljava/lang/String;

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_12
    return-object v2
.end method
