.class public final Le/a/c/w/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/w/t;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/insights/insightsui/SenderFilterEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/c/w/u;

.field public final synthetic c:Le/a/c/w/o0/k/b;

.field public final synthetic d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/c/w/u;Le/a/c/w/o0/k/b;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/t$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/c/w/t$a;->b:Le/a/c/w/u;

    iput-object p3, p0, Le/a/c/w/t$a;->c:Le/a/c/w/o0/k/b;

    iput-object p4, p0, Le/a/c/w/t$a;->d:Ljava/util/Set;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/c/w/t$a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/w/t$a$a;

    iget v3, v2, Le/a/c/w/t$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/w/t$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/w/t$a$a;

    invoke-direct {v2, v0, v1}, Le/a/c/w/t$a$a;-><init>(Le/a/c/w/t$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/w/t$a$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/w/t$a$a;->e:I

    const/4 v5, 0x2

    const/16 v6, 0xa

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/c/w/t$a$a;->k:Ljava/lang/Object;

    iget-object v5, v2, Le/a/c/w/t$a$a;->j:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v7, v2, Le/a/c/w/t$a$a;->i:Ljava/lang/Object;

    check-cast v7, Ljava/util/Collection;

    iget-object v9, v2, Le/a/c/w/t$a$a;->h:Ljava/lang/Object;

    check-cast v9, Lq3/a/x2/g;

    iget-object v10, v2, Le/a/c/w/t$a$a;->f:Ljava/lang/Object;

    check-cast v10, Le/a/c/w/t$a;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v10

    goto/16 :goto_d

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/w/t$a;->a:Lq3/a/x2/g;

    .line 5
    move-object/from16 v4, p1

    check-cast v4, Ljava/util/List;

    .line 6
    iget-object v5, v0, Le/a/c/w/t$a;->b:Le/a/c/w/u;

    .line 7
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 10
    check-cast v11, Lcom/truecaller/insights/insightsui/SenderFilterEntity;

    .line 11
    invoke-virtual {v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_5

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    move v12, v7

    :goto_3
    if-eqz v12, :cond_7

    move-object v12, v8

    goto :goto_4

    .line 12
    :cond_7
    new-instance v12, Ls1/k;

    invoke-virtual {v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderId()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v5, Le/a/c/w/u;->c:Le/a/c/b/e;

    invoke-interface {v14}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v13, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    if-eqz v12, :cond_4

    .line 13
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_8
    invoke-static {v9, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Le/q/f/a/d/a;->Y1(I)I

    move-result v5

    const/16 v10, 0x10

    if-ge v5, v10, :cond_9

    move v5, v10

    .line 15
    :cond_9
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 16
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 17
    check-cast v9, Ls1/k;

    .line 18
    iget-object v11, v9, Ls1/k;->a:Ljava/lang/Object;

    .line 19
    iget-object v9, v9, Ls1/k;->b:Ljava/lang/Object;

    .line 20
    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 21
    :cond_a
    iget-object v5, v0, Le/a/c/w/t$a;->b:Le/a/c/w/u;

    .line 22
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 25
    check-cast v11, Lcom/truecaller/insights/insightsui/SenderFilterEntity;

    .line 26
    invoke-virtual {v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v5, Le/a/c/w/u;->c:Le/a/c/b/e;

    invoke-interface {v13}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 27
    iget-object v13, v5, Le/a/c/w/u;->d:Le/a/b0/m/d/a;

    invoke-virtual {v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Le/a/b0/m/d/a;->b(Ljava/lang/String;)Lcom/truecaller/common/payments/senderinfo/SenderInfo;

    move-result-object v13

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Lcom/truecaller/common/payments/senderinfo/SenderInfo;->getName()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_b
    move-object v13, v8

    .line 28
    :goto_7
    invoke-virtual {v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_c

    goto :goto_8

    :cond_c
    const/4 v14, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    move v14, v7

    :goto_9
    if-eqz v14, :cond_10

    new-instance v14, Lcom/truecaller/insights/insightsui/SenderFilterEntity;

    .line 29
    invoke-virtual {v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getRawSenderId()Ljava/lang/String;

    move-result-object v11

    .line 30
    invoke-virtual {v10, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_e

    move-object v13, v15

    :cond_e
    if-eqz v13, :cond_f

    goto :goto_a

    :cond_f
    move-object v13, v12

    .line 31
    :goto_a
    invoke-direct {v14, v12, v11, v13}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 32
    :cond_10
    new-instance v14, Lcom/truecaller/insights/insightsui/SenderFilterEntity;

    invoke-virtual {v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getRawSenderId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v14, v12, v13, v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :goto_b
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 34
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v15, v0

    move-object/from16 v16, v4

    move-object v4, v1

    move v1, v7

    move-object/from16 v7, v16

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v9, v14

    check-cast v9, Lcom/truecaller/insights/insightsui/SenderFilterEntity;

    .line 36
    iget-object v10, v15, Le/a/c/w/t$a;->b:Le/a/c/w/u;

    invoke-virtual {v9}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderId()Ljava/lang/String;

    move-result-object v11

    iget-object v9, v15, Le/a/c/w/t$a;->c:Le/a/c/w/o0/k/b;

    .line 37
    iget-object v12, v9, Le/a/c/w/o0/k/b;->c:Ljava/util/List;

    .line 38
    iget-object v13, v9, Le/a/c/w/o0/k/b;->a:Ljava/util/List;

    .line 39
    iget-object v9, v9, Le/a/c/w/o0/k/b;->b:Ljava/util/List;

    .line 40
    iput-object v15, v2, Le/a/c/w/t$a$a;->f:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/w/t$a$a;->h:Ljava/lang/Object;

    iput-object v7, v2, Le/a/c/w/t$a$a;->i:Ljava/lang/Object;

    iput-object v5, v2, Le/a/c/w/t$a$a;->j:Ljava/lang/Object;

    iput-object v14, v2, Le/a/c/w/t$a$a;->k:Ljava/lang/Object;

    iput v1, v2, Le/a/c/w/t$a$a;->e:I

    move-object v1, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v1

    move-object v1, v14

    move-object v14, v2

    invoke-virtual/range {v9 .. v14}, Le/a/c/w/u;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_12

    return-object v3

    :cond_12
    move-object/from16 v16, v4

    move-object v4, v1

    move-object v1, v9

    move-object/from16 v9, v16

    :goto_d
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_13
    const/4 v1, 0x1

    move-object v4, v9

    goto :goto_c

    .line 43
    :cond_14
    check-cast v7, Ljava/util/List;

    .line 44
    new-instance v1, Le/a/c/w/t$a$b;

    invoke-direct {v1, v15}, Le/a/c/w/t$a$b;-><init>(Le/a/c/w/t$a;)V

    invoke-static {v7, v1}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 45
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 47
    move-object v9, v7

    check-cast v9, Lcom/truecaller/insights/insightsui/SenderFilterEntity;

    .line 48
    invoke-virtual {v9}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    goto :goto_f

    :cond_15
    const-string v9, ""

    .line 49
    :goto_f
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_16

    .line 50
    invoke-static {v5, v9}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    :cond_16
    check-cast v10, Ljava/util/List;

    .line 51
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 52
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 55
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 57
    check-cast v11, Lcom/truecaller/insights/insightsui/SenderFilterEntity;

    .line 58
    invoke-virtual {v11}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_18
    invoke-static {v10}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    .line 59
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Iterable;

    .line 60
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v10, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 62
    check-cast v12, Lcom/truecaller/insights/insightsui/SenderFilterEntity;

    .line 63
    invoke-virtual {v12}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getRawSenderId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 64
    :cond_19
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 65
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1a
    :goto_13
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    .line 66
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_1b

    const/4 v13, 0x1

    goto :goto_14

    :cond_1b
    const/4 v13, 0x0

    .line 67
    :goto_14
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 68
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_1c
    invoke-static {v10}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v10

    .line 69
    new-instance v11, Le/a/c/q/h;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v11, v7, v9, v10}, Le/a/c/q/h;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v1, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 70
    :cond_1d
    iput-object v8, v2, Le/a/c/w/t$a$a;->f:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/w/t$a$a;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/w/t$a$a;->i:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/w/t$a$a;->j:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/w/t$a$a;->k:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v2, Le/a/c/w/t$a$a;->e:I

    invoke-interface {v4, v1, v2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_1e

    return-object v3

    :cond_1e
    :goto_15
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
