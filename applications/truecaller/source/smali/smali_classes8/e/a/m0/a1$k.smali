.class public final Le/a/m0/a1$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# direct methods
.method public static synthetic A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$f;->j()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Le/a/m0/a1$k;->z(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final A0(Le/a/c/h/m/c;)Z
    .locals 1

    const-string v0, "$this$isIM"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Le/a/c/h/m/c;->f:I

    .line 2
    sget-object v0, Lcom/truecaller/insights/commons/model/Transport;->IM:Lcom/truecaller/insights/commons/model/Transport;

    invoke-virtual {v0}, Lcom/truecaller/insights/commons/model/Transport;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final A1(Ljava/lang/String;)Lu3/j0;
    .locals 2

    .line 1
    sget-object v0, Lu3/j0;->a:Lu3/j0$a;

    sget-object v1, Lu3/d0;->h:Lu3/c0;

    invoke-virtual {v0, v1, p0}, Lu3/j0$a;->c(Lu3/c0;Ljava/lang/String;)Lu3/j0;

    move-result-object p0

    return-object p0
.end method

.method public static final B(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$getAvatarLetter"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v0, "(this as java.lang.String).toCharArray()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Le/q/f/a/d/a;->t0([C)Ljava/lang/Character;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    .line 4
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public static final B0(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "Uri.parse(path)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "content"

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final B1(Ljava/util/List;Lcom/truecaller/insights/source/ModelType;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/core/senderinfo/BlockedCategoryList;",
            ">;",
            "Lcom/truecaller/insights/source/ModelType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "$this$toSenderCategoryMap"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/insights/core/senderinfo/BlockedCategoryList;

    .line 3
    invoke-virtual {v1}, Lcom/truecaller/insights/core/senderinfo/BlockedCategoryList;->getCategory()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/truecaller/insights/core/senderinfo/BlockedCategoryList;->getSenderList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/truecaller/insights/core/senderinfo/BlockedCategoryList;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    new-array v6, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/insights/core/senderinfo/BlockedCategoryList;->getCategory()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ls1/s;->a:Ls1/s;

    .line 11
    :goto_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_4
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 13
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_6

    if-ne v4, v2, :cond_5

    const-string v4, "ALL_UPDATES"

    goto :goto_4

    .line 18
    :cond_5
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :cond_6
    const-string v4, "ALL_PARSER"

    .line 19
    :goto_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const-string v6, "ALL"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v4}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_5

    .line 20
    :cond_7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 21
    :goto_5
    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    return-object p0
.end method

.method public static final C(Lcom/truecaller/insights/models/InsightsDomain$Bill;)D
    .locals 2

    const-string v0, "$this$getBillAmount"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueAmt()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    int-to-double v0, p0

    :goto_0
    return-wide v0
.end method

.method public static final C0(Lcom/truecaller/insights/commons/model/InsightsFilterType;)Z
    .locals 1

    const-string v0, "$this$isNotBlackListed"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/insights/commons/model/InsightsFilterType;->FILTER_BLACKLISTED:Lcom/truecaller/insights/commons/model/InsightsFilterType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final C1(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/core/senderinfo/SenderBlockList;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "$this$toSenderGrammarMap"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;

    .line 3
    invoke-virtual {v1}, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;->getGrammar()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;->getSenderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Ljava/lang/String;

    .line 8
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;->getGrammar()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/insights/core/senderinfo/SenderBlockList;->getGrammar()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ls1/s;->a:Ls1/s;

    .line 11
    :goto_2
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_4
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, "ALL"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v4}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    .line 18
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 19
    :goto_4
    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-object p0
.end method

.method public static final D(Le/a/c/r/b$b;)Le/a/c/r/j/m;
    .locals 4

    const-string v0, "$this$getBillIcon"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x552751c9

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CreditCard"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Le/a/c/r/j/m;

    sget v0, Lcom/truecaller/insights/R$drawable;->ic_tcx_card_insights:I

    invoke-direct {p0, v0, v3, v3, v2}, Le/a/c/r/j/m;-><init>(IIII)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance p0, Le/a/c/r/j/m;

    sget v0, Lcom/truecaller/insights/R$drawable;->ic_bill_infocard:I

    invoke-direct {p0, v0, v3, v3, v2}, Le/a/c/r/j/m;-><init>(IIII)V

    :goto_1
    return-object p0
.end method

.method public static final D0(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static final D1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain$f;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;Z)",
            "Lcom/truecaller/insights/models/InsightsDomain$f;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "$this$toTravelDomainSchema"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actions"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Travel"

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Lcom/truecaller/insights/models/InsightsDomain$f;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object v14

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object v15

    .line 15
    sget-object v3, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Le/a/c/p/a;->V1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/b;

    move-result-object v16

    .line 16
    sget-object v2, Lcom/truecaller/insights/utils/DateFormat;->H_mm:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Le/a/c/p/a;->X1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/r;

    move-result-object v17

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object v18

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal4()Ljava/lang/String;

    move-result-object v19

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object v20

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v21

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v23

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object v24

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v25

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getConversationId()J

    move-result-wide v26

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/c/p/a;->M2(Lcom/truecaller/insights/models/smartcards/ActionStateEntity;)Le/a/c/r/j/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v30, v0

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result v28

    const/16 v31, 0x0

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->isIM()Z

    move-result v29

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getMessage()Ljava/lang/String;

    move-result-object v33

    const/high16 v34, 0x2000000

    move-object v3, v1

    move/from16 v32, p2

    .line 29
    invoke-direct/range {v3 .. v34}, Lcom/truecaller/insights/models/InsightsDomain$f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Lw3/b/a/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lw3/b/a/b;JIZLe/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;I)V

    return-object v1

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create TravelDomain from ["

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] pdo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final E(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getBillType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/m0/a1$k;->G0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PrepaidExpiry"

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Le/a/m0/a1$k;->F0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "PrepaidSuccess"

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0}, Le/a/m0/a1$k;->w0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "CreditCard"

    goto :goto_0

    :cond_2
    const-string p0, "Bill"

    :goto_0
    return-object p0
.end method

.method public static final E0(Le/a/f/a/g;)Z
    .locals 1

    const-string v0, "$this$isPremium"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$hasBadge"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget p0, p0, Le/a/f/a/g;->d:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic E1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain$f;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 1
    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 2
    :cond_1
    invoke-static {p0, p1, p2}, Le/a/m0/a1$k;->D1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain$f;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Le/a/o/b/o;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final F0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z
    .locals 6

    const-string v0, "$this$isPrepaidBillPayment"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepaid_bill"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0}, Le/a/m0/a1$k;->C(Lcom/truecaller/insights/models/InsightsDomain$Bill;)D

    move-result-wide v2

    int-to-double v4, v1

    cmpl-double p0, v2, v4

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final F1(Le/a/c/r/b$g;Landroid/content/Context;Ljava/lang/String;Le/a/b0/m/a/a;ZZLe/a/c/i/l/f/f;)Le/a/c/r/k/f;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    const-string v6, "$this$toUpdateNotification"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "messageText"

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "addressProfile"

    invoke-static {v3, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "smartNotificationsHelper"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v13, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 2
    iget-object v8, v0, Le/a/c/r/b$g;->c:Ljava/lang/String;

    .line 3
    iget-object v9, v0, Le/a/c/r/b$g;->b:Ljava/lang/String;

    .line 4
    iget-boolean v10, v0, Le/a/c/r/b$g;->d:Z

    const/4 v11, 0x1

    move-object v7, v13

    move/from16 v12, p5

    .line 5
    invoke-direct/range {v7 .. v12}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const-string v6, "context.getString(R.string.MarkAsRead)"

    const-string v7, "(this as java.lang.String).toUpperCase(locale)"

    const-string v8, "Locale.ENGLISH"

    if-eqz v4, :cond_0

    .line 6
    new-instance v9, Le/a/c/r/k/e;

    .line 7
    sget v10, Lcom/truecaller/insights/R$string;->MarkAsRead:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v5, v1, v13}, Le/a/c/i/l/f/f;->h(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 9
    invoke-direct {v9, v10, v11}, Le/a/c/r/k/e;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v9, Le/a/c/r/k/e;

    .line 11
    sget v10, Lcom/truecaller/insights/R$string;->ShowSMS:I

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "context.getString(R.string.ShowSMS)"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v5, v1, v13}, Le/a/c/i/l/f/f;->g(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 13
    invoke-direct {v9, v10, v11}, Le/a/c/r/k/e;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    :goto_0
    if-nez v4, :cond_1

    .line 14
    new-instance v10, Le/a/c/r/k/e;

    .line 15
    sget v11, Lcom/truecaller/insights/R$string;->MarkAsRead:I

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v5, v1}, Le/a/c/i/l/f/f;->j(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 17
    invoke-direct {v10, v6, v7}, Le/a/c/r/k/e;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    move-object v10, v6

    .line 18
    :goto_1
    new-instance v12, Le/a/c/r/k/f;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v8, "\n"

    const-string v11, " "

    .line 19
    invoke-static {v2, v8, v11, v6, v7}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    .line 20
    iget-object v7, v0, Le/a/c/r/b$g;->c:Ljava/lang/String;

    .line 21
    iget-object v0, v3, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 22
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 23
    iget-object v0, v3, Le/a/b0/m/a/a;->a:Ljava/lang/String;

    :cond_2
    move-object v8, v0

    .line 24
    iget-object v11, v3, Le/a/b0/m/a/a;->c:Landroid/net/Uri;

    .line 25
    sget v14, Lcom/truecaller/insights/R$drawable;->ic_updates_notification:I

    .line 26
    invoke-interface {v5, v1, v4, v13}, Le/a/c/i/l/f/f;->e(Landroid/content/Context;ZLcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;

    move-result-object v15

    .line 27
    invoke-interface {v5, v1, v13}, Le/a/c/i/l/f/f;->b(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, p2

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v11

    move v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v11, v13

    .line 28
    invoke-direct/range {v0 .. v11}, Le/a/c/r/k/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Le/a/c/r/k/e;Le/a/c/r/k/e;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)V

    return-object v12
.end method

.method public static final G(Le/a/c/r/b$f;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/r/b$f;",
            "Z)",
            "Ljava/util/List<",
            "Le/a/c/r/j/b0;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getContentTextColorMapping"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/r/b$f;->t:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Le/a/c/r/j/b0;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    add-int/2addr v0, p1

    .line 4
    iget-object p0, p0, Le/a/c/r/b$f;->w:Ljava/lang/Integer;

    .line 5
    invoke-direct {v1, v2, v0, p0}, Le/a/c/r/j/b0;-><init>(IILjava/lang/Integer;)V

    .line 6
    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 7
    :cond_1
    sget-object p0, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object p0
.end method

.method public static final G0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z
    .locals 1

    const-string v0, "$this$isPrepaidExp"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object p0

    const-string v0, "recharge_expiry"

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final G1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Le/a/c/w/o0/g;Lcom/truecaller/insights/models/smartcards/ActionStateEntity;Ls1/w/d;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "Le/a/c/w/o0/g;",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Le/a/c/f/d;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/c/f/d;

    iget v2, v1, Le/a/c/f/d;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/f/d;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/f/d;

    invoke-direct {v1, v0}, Le/a/c/f/d;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Le/a/c/f/d;->d:Ljava/lang/Object;

    sget-object v8, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v1, Le/a/c/f/d;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v12, :cond_3

    if-eq v2, v11, :cond_2

    if-ne v2, v10, :cond_1

    iget-object v1, v1, Le/a/c/f/d;->f:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v2, v1, Le/a/c/f/d;->g:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v1, v1, Le/a/c/f/d;->f:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v1, Le/a/c/f/d;->h:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    iget-object v3, v1, Le/a/c/f/d;->g:Ljava/lang/Object;

    check-cast v3, Le/a/c/w/o0/g;

    iget-object v4, v1, Le/a/c/f/d;->f:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v15, v2

    move-object v14, v3

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    .line 4
    iput-object v0, v1, Le/a/c/f/d;->f:Ljava/lang/Object;

    move-object/from16 v14, p1

    iput-object v14, v1, Le/a/c/f/d;->g:Ljava/lang/Object;

    move-object/from16 v15, p2

    iput-object v15, v1, Le/a/c/f/d;->h:Ljava/lang/Object;

    iput v12, v1, Le/a/c/f/d;->e:I

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object v5, v1

    invoke-static/range {v2 .. v7}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_5

    return-object v8

    :cond_5
    :goto_1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v3

    iput-object v15, v1, Le/a/c/f/d;->f:Ljava/lang/Object;

    iput-object v0, v1, Le/a/c/f/d;->g:Ljava/lang/Object;

    iput-object v13, v1, Le/a/c/f/d;->h:Ljava/lang/Object;

    iput v11, v1, Le/a/c/f/d;->e:I

    invoke-interface {v14, v2, v3, v1}, Le/a/c/w/o0/g;->k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_6

    return-object v8

    :cond_6
    move-object v2, v0

    move-object v0, v1

    move-object v1, v15

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v1, :cond_7

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getEntityId()J

    move-result-wide v3

    .line 7
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 8
    new-instance v3, Ls1/k;

    invoke-direct {v3, v5, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-static {v3}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v1

    goto :goto_3

    :cond_7
    sget-object v1, Ls1/u/t;->a:Ls1/u/t;

    .line 10
    :goto_3
    invoke-static {v2, v1, v0}, Le/a/m0/a1$k;->r1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain;

    move-result-object v13

    goto/16 :goto_6

    .line 11
    :cond_8
    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getUpdateCategory()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getUpdateCategory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    move v2, v12

    goto :goto_4

    :cond_9
    move v2, v9

    :goto_4
    if-eqz v2, :cond_e

    .line 13
    new-instance v2, Le/a/c/g/v;

    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getUpdateCategory()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Le/a/c/g/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Le/a/c/f/d;->f:Ljava/lang/Object;

    iput-object v13, v1, Le/a/c/f/d;->g:Ljava/lang/Object;

    iput-object v13, v1, Le/a/c/f/d;->h:Ljava/lang/Object;

    iput v10, v1, Le/a/c/f/d;->e:I

    invoke-interface {v14, v2, v1}, Le/a/c/w/o0/g;->d(Le/a/c/g/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_a

    return-object v8

    :cond_a
    move-object/from16 v30, v1

    move-object v1, v0

    move-object/from16 v0, v30

    :goto_5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v26, 0x0

    const-string v0, "$this$toUpdatesDomain"

    .line 14
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getUpdateCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    move v9, v12

    :cond_c
    if-eqz v9, :cond_d

    goto :goto_6

    .line 16
    :cond_d
    sget-object v0, Lcom/truecaller/insights/models/updates/UpdateCategory;->Companion:Lcom/truecaller/insights/models/updates/UpdateCategory$a;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getUpdateCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/truecaller/insights/models/updates/UpdateCategory$a;->a(Ljava/lang/String;)Lcom/truecaller/insights/models/updates/UpdateCategory;

    move-result-object v15

    .line 17
    new-instance v0, Lcom/truecaller/insights/models/InsightsDomain$g;

    .line 18
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getUpdateCategory()Ljava/lang/String;

    move-result-object v16

    .line 19
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getClassifiedBy()Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object v28

    .line 20
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v19

    .line 21
    new-instance v2, Lw3/b/a/b;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lw3/b/a/b;-><init>(J)V

    .line 22
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v17

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 23
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getConversationId()J

    move-result-wide v21

    .line 24
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->isIM()Z

    move-result v23

    .line 25
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getMessage()Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x180

    move-object v14, v0

    move-object/from16 v20, v2

    .line 26
    invoke-direct/range {v14 .. v29}, Lcom/truecaller/insights/models/InsightsDomain$g;-><init>(Lcom/truecaller/insights/models/updates/UpdateCategory;Ljava/lang/String;JLjava/lang/String;Lw3/b/a/b;JZLe/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;I)V

    move-object v13, v0

    :cond_e
    :goto_6
    return-object v13
.end method

.method public static H()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_participants"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final H0(Lcom/truecaller/insights/models/InsightsDomain$f;)Z
    .locals 7

    const-string v0, "$this$isUrlTypeProper"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_6

    .line 2
    invoke-static {}, Le/q/f/a/g/b;->values()[Le/q/f/a/g/b;

    move-result-object v0

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x2

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    .line 4
    aget-object v6, v0, v5

    .line 5
    iget-object v6, v6, Le/q/f/a/g/b;->a:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 6
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrlType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move p0, v1

    goto :goto_3

    :cond_5
    :goto_2
    move p0, v2

    :goto_3
    if-eqz p0, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    return v1
.end method

.method public static final H1(Le/a/c/g/d0/e$a;Ljava/lang/String;)Le/a/c/g/a0/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/d0/e$a<",
            "Le/a/c/g/a0/i;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Le/a/c/g/a0/m;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "word"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/g/z/a;

    invoke-direct {v0, p1, p0}, Le/a/c/g/z/a;-><init>(Ljava/lang/String;Le/a/c/g/d0/e$a;)V

    return-object v0
.end method

.method public static I()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "msg/msg_participants_with_contact_info"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final I0(Lcom/truecaller/insights/models/InsightsDomain$f;)Z
    .locals 3

    const-string v0, "$this$isUrlTypeWebCheckIn"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrlType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$f;->getUrlType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "webchckin"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public static I1(Le/a/c/c/d/p;Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/c/d/p;",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;",
            ">;",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/states/InsightState;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/c/d/o;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/c/d/o;

    iget v1, v0, Le/a/c/c/d/o;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/c/d/o;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/c/d/o;

    invoke-direct {v0, p0, p3}, Le/a/c/c/d/o;-><init>(Le/a/c/c/d/p;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/c/d/o;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/c/d/o;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/a/c/c/d/o;->h:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    iget-object p1, v0, Le/a/c/c/d/o;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/c/d/p;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/c/c/d/o;->i:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    iget-object p1, v0, Le/a/c/c/d/o;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p2, v0, Le/a/c/c/d/o;->g:Ljava/lang/Object;

    check-cast p2, Le/a/c/c/d/p;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_2

    :cond_3
    iget-object p0, v0, Le/a/c/c/d/o;->i:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Ljava/util/List;

    iget-object p0, v0, Le/a/c/c/d/o;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Le/a/c/c/d/o;->g:Ljava/lang/Object;

    check-cast p0, Le/a/c/c/d/p;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/c/c/d/o;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/c/d/o;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/c/d/o;->i:Ljava/lang/Object;

    iput v5, v0, Le/a/c/c/d/o;->e:I

    const-string p3, "INSIGHTS.CATEGORIZER"

    const-string v2, "INSIGHTS.CATEGORIZER.VERSION"

    .line 5
    filled-new-array {p3, v2}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    move-object v2, p0

    check-cast v2, Le/a/c/c/d/q;

    .line 6
    iget-object v6, v2, Le/a/c/c/d/q;->a:Ln3/c0/q;

    new-instance v7, Le/a/c/c/d/r;

    invoke-direct {v7, v2, p3}, Le/a/c/c/d/r;-><init>(Le/a/c/c/d/q;Ljava/util/List;)V

    invoke-static {v6, v5, v7, v0}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_1
    iput-object p0, v0, Le/a/c/c/d/o;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/c/d/o;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/c/d/o;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/c/c/d/o;->e:I

    invoke-interface {p0, v0}, Le/a/c/c/d/p;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v8

    .line 8
    :goto_2
    iput-object p1, v0, Le/a/c/c/d/o;->g:Ljava/lang/Object;

    iput-object p0, v0, Le/a/c/c/d/o;->h:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-object p3, v0, Le/a/c/c/d/o;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/c/c/d/o;->e:I

    invoke-interface {p1, p2, v0}, Le/a/c/c/d/p;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    .line 9
    :cond_7
    :goto_3
    invoke-interface {p1, p0}, Le/a/c/c/d/p;->g(Ljava/util/List;)V

    .line 10
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method

.method public static J()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "profile_view_events"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final J0(Lcom/truecaller/data/entity/Contact;)Z
    .locals 1

    const-string v0, "$this$isVerifiedBizOrPriority"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->E0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->w0()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic J1(Le/a/c/c/f/n;Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p2, p4, 0x2

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0, p1, p2, p3}, Le/a/c/c/f/n;->m(Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static K()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "screened_calls"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final K0(Le/a/f/a/g;)Z
    .locals 3

    const-string v0, "$this$isVerifiedBizOrPriority"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$isVerifiedBusinessByBadgePriority"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Le/a/m0/a1$k;->L0(Le/a/f/a/g;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Le/a/f/a/g;->t:Z

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Le/a/f/a/g;->k:Z

    if-nez v0, :cond_0

    .line 5
    iget-boolean v0, p0, Le/a/f/a/g;->u:Z

    if-nez v0, :cond_0

    .line 6
    invoke-static {p0}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-boolean v0, p0, Le/a/f/a/g;->r:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "$this$isPriorityUserByBadgePriority"

    .line 8
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-boolean v0, p0, Le/a/f/a/g;->r:Z

    if-eqz v0, :cond_2

    .line 10
    iget-boolean v0, p0, Le/a/f/a/g;->k:Z

    if-nez v0, :cond_2

    .line 11
    iget-boolean v0, p0, Le/a/f/a/g;->u:Z

    if-nez v0, :cond_2

    .line 12
    invoke-static {p0}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result p0

    if-nez p0, :cond_2

    move p0, v2

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public static K1(Landroid/content/Context;)Le/a/z3/e;
    .locals 0

    .line 1
    invoke-static {p0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object p0

    check-cast p0, Le/a/z3/e;

    return-object p0
.end method

.method public static L()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "t9_mapping"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final L0(Le/a/f/a/g;)Z
    .locals 1

    const-string v0, "$this$isVerifiedBusinessWithSpamCount"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/f/a/g;->t:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p0, p0, Le/a/f/a/g;->k:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static L1(Landroid/view/View;)Le/a/z3/e;
    .locals 0

    .line 1
    invoke-static {p0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object p0

    check-cast p0, Le/a/z3/e;

    return-object p0
.end method

.method public static M()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    const-string v1, "topspammers"

    .line 2
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final M0(Lcom/truecaller/data/entity/Contact;Ljava/util/List;)Lcom/truecaller/data/entity/Contact;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/SpamCategoryModel;",
            ">;)",
            "Lcom/truecaller/data/entity/Contact;"
        }
    .end annotation

    const-string v0, "$this$join"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categories"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    .line 3
    new-instance v1, Lcom/truecaller/data/entity/SpamData;

    if-eqz v0, :cond_1

    const-string v2, "it"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, p1}, Lcom/truecaller/data/entity/SpamData;-><init>(Lcom/truecaller/data/entity/SpamData;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-direct {v1, p1}, Lcom/truecaller/data/entity/SpamData;-><init>(Ljava/util/List;)V

    .line 4
    :goto_0
    iput-object v1, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    :goto_1
    return-object p0
.end method

.method public static M1(Landroidx/fragment/app/Fragment;)Le/a/z3/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/f/a/c;->c(Landroid/content/Context;)Le/f/a/o/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/f/a/o/l;->g(Landroidx/fragment/app/Fragment;)Le/f/a/i;

    move-result-object p0

    .line 2
    check-cast p0, Le/a/z3/e;

    return-object p0
.end method

.method public static N(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 p0, 0x20

    return p0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    return p0

    .line 4
    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    const/16 p0, 0x8

    return p0

    .line 5
    :cond_3
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/16 p0, 0x10

    return p0

    .line 6
    :cond_4
    instance-of p0, p0, Ljava/util/Set;

    if-eqz p0, :cond_5

    const/16 p0, 0x40

    return p0

    .line 7
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected data type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "$this$load"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v0

    check-cast v0, Le/a/z3/e;

    const-string v1, "GlideApp.with(context)"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p0, p1}, Le/a/m0/a1$k;->m(Le/f/a/i;Le/a/z3/i/a;Landroid/content/Context;)Le/f/a/h;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object p0

    const-string p1, "GlideApp.with(context)\n \u2026quest()\n        .submit()"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast p0, Le/f/a/r/f;

    :try_start_0
    invoke-virtual {p0}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 6
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    instance-of p1, p0, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    instance-of p1, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    instance-of p1, p0, Ljava/io/IOException;

    if-eqz p1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-eqz p1, :cond_4

    :goto_0
    const/4 p0, 0x0

    .line 11
    :goto_1
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    .line 12
    :cond_4
    throw p0
.end method

.method public static N1(Ln3/r/a/l;)Le/a/z3/e;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Le/f/a/c;->b(Landroid/content/Context;)Le/f/a/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le/f/a/c;->g:Le/f/a/o/l;

    .line 4
    invoke-virtual {v0, p0}, Le/f/a/o/l;->h(Ln3/r/a/l;)Le/f/a/i;

    move-result-object p0

    .line 5
    check-cast p0, Le/a/z3/e;

    return-object p0
.end method

.method public static final O(Le/a/c/r/b$c;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/c/r/b$c;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Delivery update"

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Le/a/m0/a1$k;->R(Le/a/c/r/b$c;)Le/a/c/r/j/c0;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 4
    iget-object p0, p0, Le/a/c/r/j/c0;->a:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 5
    invoke-static {p0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_2

    const-string v1, " \u2022 "

    .line 6
    invoke-static {v1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final O0(Le/f/a/i;Landroid/net/Uri;Ljava/lang/Integer;)Le/f/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/i;",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ")",
            "Le/f/a/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$loadAsAvatar"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/f/a/i;->p(Landroid/net/Uri;)Le/f/a/h;

    move-result-object p0

    invoke-static {p0, p1}, Le/a/m0/a1$k;->l(Le/f/a/r/a;Landroid/net/Uri;)Le/f/a/r/a;

    move-result-object p0

    const-string p1, "$this$applyAvatarTransformations"

    .line 2
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0}, Le/f/a/r/a;->f()Le/f/a/r/a;

    move-result-object p0

    const-string p1, "circleCrop()"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Le/f/a/n/m;

    const/4 v0, 0x0

    .line 4
    new-instance v1, Le/a/z3/h/a;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v1, p2}, Le/a/z3/h/a;-><init>(I)V

    aput-object v1, p1, v0

    const/4 p2, 0x1

    new-instance v0, Le/f/a/n/q/d/k;

    invoke-direct {v0}, Le/f/a/n/q/d/k;-><init>()V

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Le/f/a/r/a;->F([Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object p0

    const-string p1, "transform(FillAlphaTrans\u2026(colorInt), CircleCrop())"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-string p1, "load(uri).applyCacheSign\u2026rmations(backgroundColor)"

    .line 5
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Le/f/a/h;

    return-object p0
.end method

.method public static synthetic P(Le/a/c/j/e;Ljava/lang/String;Ljava/lang/Long;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Le/a/c/j/f;
    .locals 7

    and-int/lit8 p5, p7, 0x10

    const/4 v5, 0x0

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_0

    const-string p6, "Unknown"

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-interface/range {v0 .. v6}, Le/a/c/j/e;->b(Ljava/lang/String;Ljava/lang/Long;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/c/j/f;

    move-result-object p0

    return-object p0
.end method

.method public static final P0(Le/a/z3/i/a;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "$this$loadOrFallback"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v1

    check-cast v1, Le/a/z3/e;

    const-string v2, "GlideApp.with(context)"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v1, p0, p2}, Le/a/m0/a1$k;->m(Le/f/a/i;Le/a/z3/i/a;Landroid/content/Context;)Le/f/a/h;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object v1

    const-string v2, "GlideApp.with(context)\n \u2026quest()\n        .submit()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast v1, Le/f/a/r/f;

    :try_start_0
    invoke-virtual {v1}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    instance-of v2, v1, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    instance-of v2, v1, Ljava/util/concurrent/ExecutionException;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    instance-of v2, v1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_a

    :goto_0
    const/4 v1, 0x0

    .line 11
    :goto_1
    check-cast v1, Landroid/graphics/Bitmap;

    .line 12
    iget-object p0, p0, Le/a/z3/i/a;->d:Le/a/z3/i/g;

    const-string v2, "size"

    .line 13
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    goto/16 :goto_3

    .line 14
    :cond_4
    invoke-static {p2}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v1

    check-cast v1, Le/a/z3/e;

    .line 15
    invoke-virtual {v1}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object v1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Le/a/z3/d;->k0(Ljava/lang/Integer;)Le/a/z3/d;

    move-result-object v1

    .line 17
    sget-object v3, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    invoke-virtual {v1, v3}, Le/a/z3/d;->f0(Le/f/a/n/o/k;)Le/a/z3/d;

    move-result-object v1

    const-string v3, "GlideApp.with(context)\n \u2026y(DiskCacheStrategy.NONE)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$submit"

    .line 18
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v0, p0, Le/a/z3/i/f;

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Le/f/a/h;->X()Le/f/a/r/c;

    move-result-object p0

    const-string p2, "submit()"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_5
    instance-of v0, p0, Le/a/z3/i/e;

    if-eqz v0, :cond_6

    check-cast p0, Le/a/z3/i/e;

    .line 21
    iget v0, p0, Le/a/z3/i/e;->a:I

    .line 22
    invoke-static {p2, v0}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v0

    .line 23
    iget p0, p0, Le/a/z3/i/e;->b:I

    .line 24
    invoke-static {p2, p0}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Le/f/a/h;->Y(II)Le/f/a/r/c;

    move-result-object p0

    const-string p2, "with(size) { submit(cont\u2026ntext.dpToPx(heightDp)) }"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_6
    instance-of v0, p0, Le/a/z3/i/d;

    if-eqz v0, :cond_7

    check-cast p0, Le/a/z3/i/d;

    .line 26
    iget p2, p0, Le/a/z3/i/d;->a:I

    .line 27
    iget p0, p0, Le/a/z3/i/d;->b:I

    .line 28
    invoke-virtual {v1, p2, p0}, Le/f/a/h;->Y(II)Le/f/a/r/c;

    move-result-object p0

    const-string p2, "submit(size.widthPx, size.heightPx)"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :cond_7
    instance-of v0, p0, Le/a/z3/i/c;

    if-eqz v0, :cond_9

    check-cast p0, Le/a/z3/i/c;

    const/4 p0, 0x0

    invoke-static {p2, p0}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p2, p0}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Le/f/a/h;->Y(II)Le/f/a/r/c;

    move-result-object p0

    const-string p2, "submit(context.dpToPx(si\u2026xt.dpToPx(size.heightDp))"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    :goto_2
    check-cast p0, Le/f/a/r/f;

    invoke-virtual {p0}, Le/f/a/r/f;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    :goto_3
    return-object v1

    .line 31
    :cond_8
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    const-string p2, "Unable to load fallback drawable "

    invoke-static {p2, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_9
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    .line 33
    :cond_a
    throw v1
.end method

.method public static final Q(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;
    .locals 5

    .line 1
    new-instance v0, Le/a/c/r/k/e;

    .line 2
    sget v1, Lcom/truecaller/insights/R$string;->MarkAsRead:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.string.MarkAsRead)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Locale.ENGLISH"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    .line 3
    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "smartNotificationsHelper"

    invoke-static {p2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "metadata"

    invoke-static {p3, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p2, p0, p3}, Le/a/c/i/l/f/f;->h(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2, p0}, Le/a/c/i/l/f/f;->j(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-static {p0}, Ln3/k/a/q;->g(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 9
    invoke-direct {v0, v2, p1}, Le/a/c/r/k/e;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static final Q0(Landroid/app/Activity;Le/a/r3/g;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;ZLs1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Le/a/r3/g;",
            "Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/r3/d;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/r3/d;

    iget v1, v0, Le/a/r3/d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r3/d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r3/d;

    invoke-direct {v0, p4}, Le/a/r3/d;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/r3/d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r3/d;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Le/a/r3/d;->f:Ljava/lang/Object;

    check-cast p0, Ls1/z/c/y;

    :try_start_0
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1, p2}, Le/a/r3/g;->b(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Z

    move-result p4

    if-eqz p4, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    :try_start_1
    iget-object p4, v0, Ls1/w/k/a/c;->c:Ls1/w/f;

    invoke-static {p4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 6
    new-instance v2, Ls1/z/c/y;

    invoke-direct {v2}, Ls1/z/c/y;-><init>()V

    iput-boolean v3, v2, Ls1/z/c/y;->a:Z

    .line 7
    new-instance v5, Ln3/b/a/g$a;

    invoke-direct {v5, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v6, v5, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-boolean v3, v6, Landroidx/appcompat/app/AlertController$b;->m:Z

    .line 9
    sget v6, Lcom/truecaller/dynamicfeaturesupport/R$layout;->dynamic_feature_loader:I

    invoke-virtual {v5, v6}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    if-eqz p3, :cond_4

    .line 10
    sget p3, Lcom/truecaller/dynamicfeaturesupport/R$string;->StrCancel:I

    new-instance v6, Le/a/r3/e;

    invoke-direct {v6, p4}, Le/a/r3/e;-><init>(Ls1/w/f;)V

    invoke-virtual {v5, p3, v6}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 11
    :cond_4
    invoke-virtual {v5}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object v7

    .line 12
    sget p3, Lcom/truecaller/dynamicfeaturesupport/R$id;->progressBar:I

    invoke-virtual {v7, p3}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Landroid/widget/ProgressBar;

    .line 13
    invoke-interface {p1, p2}, Le/a/r3/g;->d(Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Lq3/a/x2/f;

    move-result-object p2

    .line 14
    new-instance p3, Le/a/r3/f;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Le/a/r3/f;-><init>(Ls1/w/d;)V

    .line 15
    new-instance v5, Lq3/a/x2/u0;

    invoke-direct {v5, p2, p3}, Lq3/a/x2/u0;-><init>(Lq3/a/x2/f;Ls1/z/b/p;)V

    const p2, 0x7fffffff

    const/4 p3, 0x2

    .line 16
    invoke-static {v5, p2, p4, p3, p4}, Ls1/a/a/a/v0/f/d;->L(Lq3/a/x2/f;ILq3/a/w2/i;ILjava/lang/Object;)Lq3/a/x2/f;

    move-result-object p2

    .line 17
    new-instance p3, Le/a/r3/c;

    move-object v5, p3

    move-object v8, v2

    move-object v9, p1

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Le/a/r3/c;-><init>(Landroid/widget/ProgressBar;Ln3/b/a/g;Ls1/z/c/y;Le/a/r3/g;Landroid/app/Activity;)V

    iput-object v2, v0, Le/a/r3/d;->f:Ljava/lang/Object;

    iput v4, v0, Le/a/r3/d;->e:I

    invoke-interface {p2, p3, v0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object p0, v2

    .line 18
    :goto_1
    iget-boolean p0, p0, Ls1/z/c/y;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move p0, v3

    :goto_2
    if-eqz p0, :cond_6

    :goto_3
    move v3, v4

    .line 19
    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final R(Le/a/c/r/b$c;)Le/a/c/r/j/c0;
    .locals 4

    const-string v0, "model"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/r/b$c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v2, Le/a/c/r/j/c0;

    .line 3
    sget v3, Lcom/truecaller/insights/R$color;->white:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    iget-object p0, p0, Le/a/c/r/b$c;->h:Le/a/c/r/j/m;

    if-eqz p0, :cond_0

    .line 5
    iget p0, p0, Le/a/c/r/j/m;->b:I

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    :cond_0
    invoke-direct {v2, v0, v3, v1}, Le/a/c/r/j/c0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v1, v2

    :cond_1
    return-object v1
.end method

.method public static final R0(Le/a/f/z/k0;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "$this$map"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Le/a/f/z/k0;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    .line 3
    iget-object v4, v0, Le/a/f/z/k0;->b:Ljava/lang/String;

    .line 4
    iget-object v5, v0, Le/a/f/z/k0;->c:Ljava/lang/String;

    .line 5
    iget-object v6, v0, Le/a/f/z/k0;->d:Ljava/lang/String;

    .line 6
    iget-boolean v7, v0, Le/a/f/z/k0;->e:Z

    .line 7
    iget-boolean v8, v0, Le/a/f/z/k0;->f:Z

    .line 8
    iget-boolean v9, v0, Le/a/f/z/k0;->g:Z

    .line 9
    iget-boolean v11, v0, Le/a/f/z/k0;->h:Z

    .line 10
    iget-boolean v12, v0, Le/a/f/z/k0;->i:Z

    .line 11
    iget-boolean v13, v0, Le/a/f/z/k0;->j:Z

    .line 12
    iget-boolean v14, v0, Le/a/f/z/k0;->l:Z

    .line 13
    iget-boolean v15, v0, Le/a/f/z/k0;->m:Z

    .line 14
    iget-boolean v10, v0, Le/a/f/z/k0;->n:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xe000

    .line 15
    new-instance v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v2, v0

    invoke-direct/range {v2 .. v19}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v0
.end method

.method public static final S(Landroid/content/Context;Le/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;
    .locals 4

    .line 1
    new-instance v0, Le/a/c/r/k/e;

    .line 2
    sget v1, Lcom/truecaller/insights/R$string;->PayBill:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.PayBill)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "Locale.ENGLISH"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1, p0, p2}, Le/a/c/i/l/f/f;->b(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 4
    invoke-direct {v0, v1, p0}, Le/a/c/r/k/e;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static final S0(Lcom/truecaller/incallui/callui/callergradient/GradientColors;Landroid/content/Context;)[I
    .locals 5

    const-string v0, "$this$mapGradientColorResources"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/incallui/callui/callergradient/GradientColors;->getColorsResource()[I

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 4
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {p1, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ls1/u/i;->R0(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method

.method public static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "location"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\ud83d\udcac"

    if-eqz v0, :cond_0

    const-string v1, "\ud83d\udccd"

    goto :goto_0

    :cond_0
    const-string v0, "image"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "\ud83d\uddbc\ufe0f"

    goto :goto_0

    :cond_1
    const-string v0, "text"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "accept"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v1, "\u2714"

    goto :goto_0

    :cond_3
    const-string v0, "ok"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "\ud83d\udc4d"

    goto :goto_0

    :cond_4
    const-string v0, "reject"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "\u274c"

    goto :goto_0

    :cond_5
    const-string v0, "call"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string v1, "\ud83d\udcde"

    :cond_6
    :goto_0
    return-object v1
.end method

.method public static final T0(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;)Lcom/truecaller/data/entity/CallContextMessage;
    .locals 10

    const-string v0, "$this$mapToCallContext"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/CallContextMessage;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x58

    move-object v1, v0

    .line 5
    invoke-direct/range {v1 .. v9}, Lcom/truecaller/data/entity/CallContextMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public static declared-synchronized U()Le/a/h0/x/a;
    .locals 3

    const-class v0, Le/a/m0/a1$k;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->FILTER:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/h0/x/a;

    invoke-static {v1, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h0/x/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic U0(Le/a/c/h/h;Landroid/content/Context;JJLjava/lang/String;IILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    .line 1
    invoke-interface/range {v1 .. v8}, Le/a/c/h/h;->a(Landroid/content/Context;JJLjava/lang/String;I)V

    return-void
.end method

.method public static final V(Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)Lcom/truecaller/data/entity/FeatureType;
    .locals 1

    const-string v0, "$this$getFeatureType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$MidCall;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/truecaller/data/entity/FeatureType;->MID_CALL:Lcom/truecaller/data/entity/FeatureType;

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;

    if-eqz v0, :cond_2

    .line 3
    check-cast p0, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;

    invoke-virtual {p0}, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall;->getType()Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;

    move-result-object p0

    sget-object v0, Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;->MissedCall:Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource$SecondCall$Type;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/truecaller/data/entity/FeatureType;->CALL_BACK:Lcom/truecaller/data/entity/FeatureType;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/truecaller/data/entity/FeatureType;->SECOND_CALL:Lcom/truecaller/data/entity/FeatureType;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p0, Lcom/truecaller/data/entity/FeatureType;->ON_DEMAND:Lcom/truecaller/data/entity/FeatureType;

    :goto_0
    return-object p0
.end method

.method public static final V0(Ljava/lang/Double;Ljava/lang/Double;)D
    .locals 3

    const-string v0, "Cannot add null value"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    add-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static W()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "wvm_incoming_with_raw_contact_data"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final W0(Le/a/l5/a/m3$b;Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Le/a/l5/a/m3$b;
    .locals 1

    const-string v0, "$this$putSpamVersionIfExist"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Le/a/m0/a1$k;->i0(Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/16 v0, 0x8

    aget-object p2, p2, v0

    invoke-virtual {p0, p2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Le/a/l5/a/m3$b;->i:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p0}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    const/4 p2, 0x1

    aput-boolean p2, p1, v0

    :cond_0
    return-object p0
.end method

.method public static final X(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getNormalizedNumbers"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p0

    const-string v0, "numbers"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/truecaller/data/entity/Number;

    const-string v2, "it"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static X0(Ljava/io/DataInputStream;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    const-string v0, "--several-chunks-of-the-string--"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const v2, 0x8000

    mul-int/2addr v2, p1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1
    if-ge v1, p1, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p1

    .line 10
    :cond_5
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 11
    :cond_6
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 12
    :cond_7
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 13
    :cond_8
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final Y(Le/a/c/r/b$d;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Le/a/c/r/b$d;->g:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    const-string v0, " \u2022 "

    .line 3
    invoke-static {v0, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public static synthetic Y0(Le/a/f/y/c;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Le/a/f/y/c;->u(Z)V

    return-void
.end method

.method public static final Z(Le/a/c/r/b$d;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/r/b$d;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Le/a/c/r/b$d;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object p0, p0, Le/a/c/r/b$d;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 8
    :cond_1
    iget-object p0, p0, Le/a/c/r/b$d;->f:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public static final Z0(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$string;->flash_unicode:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.flash_unicode)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 2
    invoke-static {p1, v0, v1, v1, v2}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/truecaller/flashsdk/R$drawable;->ic_flash:I

    .line 4
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 5
    invoke-static {v2, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "ContextCompat.getDrawabl\u2026lash)?.mutate() ?: return"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v3

    .line 8
    invoke-virtual {v2, v1, v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 10
    new-instance p0, Landroid/text/style/ImageSpan;

    invoke-direct {p0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x21

    .line 11
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public static final a(Le/a/o/o/k;Le/a/o/b/a/a/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/o/k;->c:Landroid/widget/TextView;

    .line 2
    iget v1, p1, Le/a/o/b/a/a/r;->d:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Le/a/o/o/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "root"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    sget v1, Lcom/truecaller/contextcall/R$id;->rect_shape:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 6
    iget v1, p1, Le/a/o/b/a/a/r;->e:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 8
    iget-object p0, p0, Le/a/o/o/k;->b:Landroid/widget/ImageView;

    .line 9
    iget p1, p1, Le/a/o/b/a/a/r;->f:I

    .line 10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static final a0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$getNumberType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    .line 2
    :goto_0
    sget p0, Lcom/truecaller/data/R$string;->StrOther:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p0, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resourceProvider.getString(R.string.StrOther)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    sget p0, Lcom/truecaller/data/R$string;->CallerIDCellphoneNumberTitle:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p0, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resourceProvider.getStri\u2026erIDCellphoneNumberTitle)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_2
    sget p0, Lcom/truecaller/data/R$string;->CallerIDLandlineNumberTitle:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, p0, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resourceProvider.getStri\u2026lerIDLandlineNumberTitle)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static final a1(Landroid/view/View;)Ln3/b/a/h;
    .locals 1

    const-string v0, "$this$requireActivity"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ln3/b/a/h;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ln3/b/a/h;

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    instance-of v0, p0, Ln3/b/a/h;

    if-eqz v0, :cond_0

    .line 7
    check-cast p0, Ln3/b/a/h;

    return-object p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Context does not come from an AppCompatActivity."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Le/a/c/g/d0/d;Ljava/lang/String;)Le/a/c/g/d0/e$a;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Le/a/c/g/d0/d;->d(Ljava/lang/String;)Le/a/c/g/d0/e$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Le/a/c/g/a0/i;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/a/c/g/a0/i;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Le/a/c/g/d0/d;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1}, Le/a/c/g/d0/d;->d(Ljava/lang/String;)Le/a/c/g/d0/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Newly inserted node cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final b0(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getPhoneNumber"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/w/f;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/o/b/p0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/o/b/p0;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p0, v0, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Le/a/f/y/x;)Lcom/truecaller/incallui/service/CallState;
    .locals 1

    .line 1
    iget-object p0, p0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 2
    invoke-virtual {p0}, Landroid/telecom/Call;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/truecaller/incallui/service/CallState;->STATE_CONNECTING:Lcom/truecaller/incallui/service/CallState;

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/truecaller/incallui/service/CallState;->STATE_SELECT_PHONE_ACCOUNT:Lcom/truecaller/incallui/service/CallState;

    goto :goto_0

    .line 5
    :cond_2
    sget-object p0, Lcom/truecaller/incallui/service/CallState;->STATE_ACTIVE:Lcom/truecaller/incallui/service/CallState;

    goto :goto_0

    .line 6
    :cond_3
    sget-object p0, Lcom/truecaller/incallui/service/CallState;->STATE_HOLDING:Lcom/truecaller/incallui/service/CallState;

    goto :goto_0

    .line 7
    :cond_4
    sget-object p0, Lcom/truecaller/incallui/service/CallState;->STATE_RINGING:Lcom/truecaller/incallui/service/CallState;

    goto :goto_0

    .line 8
    :cond_5
    sget-object p0, Lcom/truecaller/incallui/service/CallState;->STATE_DIALING:Lcom/truecaller/incallui/service/CallState;

    :goto_0
    return-object p0
.end method

.method public static final c0(Le/a/f/y/x;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getPhoneNumber"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 2
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c1(Ljava/io/DataOutputStream;ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    check-cast p2, Ljava/util/Set;

    .line 2
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0xffff

    .line 7
    div-int v0, p1, v0

    if-lez v0, :cond_4

    const-string v0, "--several-chunks-of-the-string--"

    .line 8
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const v0, 0x8000

    .line 9
    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-eqz v1, :cond_3

    if-lt v1, v0, :cond_2

    add-int v4, v3, v0

    add-int/lit16 v1, v1, -0x8000

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 13
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move v1, v2

    .line 14
    :goto_2
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    .line 18
    :cond_4
    invoke-virtual {p0, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4

    .line 19
    :cond_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_4

    .line 20
    :cond_6
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_4

    .line 21
    :cond_7
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_4

    .line 22
    :cond_8
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 23
    :cond_9
    :goto_4
    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public static final d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;I)V
    .locals 16

    const-string v0, "\n            INSERT INTO msg_entities(\n                _id,\n                message_id,\n                type,\n                entity_type, \n                "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    sget-object v7, La3;->c:La3;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1f

    move-object/from16 v1, p2

    move-object v2, v10

    move-object v3, v11

    invoke-static/range {v1 .. v8}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n            )\n            SELECT \n                _id,\n                message_id,\n                type,\n                "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p3

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \n                "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    sget-object v14, La3;->d:La3;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x1f

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n            FROM msg_entities_temp\n            WHERE "

    const-string v3, "\n        "

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v4, v3}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    .line 5
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static final d0(Le/a/c/r/j/a;Landroid/content/Context;Le/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 2
    instance-of v2, p0, Le/a/c/r/j/a$e;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Le/a/c/r/j/a$e;

    .line 3
    iget-object v2, v2, Le/a/c/r/j/a$e;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v3}, Le/a/c/p/a;->n3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p3, v2, p0}, Le/a/c/i/l/f/f;->a(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v2, p0, Le/a/c/r/j/a$b;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Le/a/c/r/j/a$b;

    .line 6
    iget-object v2, v2, Le/a/c/r/j/a$b;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0, v3}, Le/a/c/p/a;->n3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p1, p3, v2, p0}, Le/a/c/i/l/f/f;->i(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 8
    new-instance v0, Le/a/c/r/k/e;

    invoke-direct {v0, v1, p0}, Le/a/c/r/k/e;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    :cond_2
    return-object v0
.end method

.method public static final d1(Landroid/widget/EditText;)V
    .locals 3

    const-string v0, "$this$setFlashInputFilter"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    .line 1
    new-instance v1, Le/a/y/b/l;

    invoke-direct {v1}, Le/a/y/b/l;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static final e(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key "

    const-string v0, " is used multiple times"

    invoke-static {p2, p1, v0}, Le/d/c/a/a;->y2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e0(Landroid/content/Context;ZZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p0, p1, p3, p4}, Le/a/m0/a1$k;->h0(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Le/a/c/r/k/e;

    .line 3
    sget v0, Lcom/truecaller/insights/R$string;->WhatsThis:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.WhatsThis)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Locale.ENGLISH"

    const-string v3, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v1, v2, v0, v1, v3}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p3, p0, p1, p4}, Le/a/c/i/l/f/f;->d(Landroid/content/Context;ZLcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 5
    invoke-direct {p2, v0, p0}, Le/a/c/r/k/e;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public static final e1(Lcom/google/android/gms/maps/GoogleMap;DDZ)V
    .locals 2

    const-string v0, "$this$setupMap"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_9

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 3
    new-instance p1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 4
    iput-object v0, p1, Lcom/google/android/gms/maps/model/MarkerOptions;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 5
    sget p2, Lcom/truecaller/flashsdk/R$drawable;->ic_flash_map_pin:I

    .line 6
    :try_start_1
    new-instance p3, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 7
    sget-object p4, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->a:Lcom/google/android/gms/internal/maps/zze;

    const-string v1, "IBitmapDescriptorFactory is not initialized"

    invoke-static {p4, v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p4, p2}, Lcom/google/android/gms/internal/maps/zze;->zza(I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8

    .line 9
    iput-object p3, p1, Lcom/google/android/gms/maps/model/MarkerOptions;->d:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    const-string p2, "MarkerOptions()\n        \u2026awable.ic_flash_map_pin))"

    .line 10
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :try_start_2
    iget-object p2, p0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {p2, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->B(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/internal/maps/zzt;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 12
    new-instance p2, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {p2, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p5, :cond_1

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :try_start_3
    iget-object p1, p2, Lcom/google/android/gms/maps/model/Marker;->a:Lcom/google/android/gms/internal/maps/zzt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/maps/zzt;->showInfoWindow()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :cond_1
    :goto_1
    const/high16 p1, 0x41800000    # 16.0f

    .line 16
    :try_start_4
    iget-object p2, p0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {p2, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->n1(F)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_6

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/maps/GoogleMap;->a()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const-string p2, "uiSettings"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/UiSettings;->b(Z)V

    .line 19
    :try_start_5
    iget-object p3, p1, Lcom/google/android/gms/maps/UiSettings;->a:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {p3, p2}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->l1(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/UiSettings;->b(Z)V

    .line 21
    :try_start_6
    iget-object p3, p1, Lcom/google/android/gms/maps/UiSettings;->a:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {p3, p2}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->q1(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 22
    :try_start_7
    iget-object p3, p1, Lcom/google/android/gms/maps/UiSettings;->a:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {p3, p2}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->f1(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/UiSettings;->a(Z)V

    .line 24
    :try_start_8
    iget-object p1, p1, Lcom/google/android/gms/maps/UiSettings;->a:Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    invoke-interface {p1, p2}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;->s(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    .line 25
    :try_start_9
    new-instance p1, Lcom/google/android/gms/maps/CameraUpdate;

    invoke-static {}, Lcom/google/android/gms/maps/CameraUpdateFactory;->b()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->X0(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/maps/CameraUpdate;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/maps/GoogleMap;->b(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    :catch_1
    move-exception p0

    .line 27
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 28
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :catch_3
    move-exception p0

    .line 29
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :catch_4
    move-exception p0

    .line 30
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :catch_5
    move-exception p0

    .line 31
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :catch_6
    move-exception p0

    .line 32
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :catch_7
    move-exception p0

    .line 33
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :catch_8
    move-exception p0

    .line 34
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1

    :catch_9
    move-exception p0

    .line 35
    new-instance p1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public static final f(Lcom/truecaller/data/entity/CallContextMessage;)Lcom/truecaller/api/services/callerid/v1/model/CallContext;
    .locals 3

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->newBuilder()Lcom/truecaller/api/services/callerid/v1/model/CallContext$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/data/entity/CallContextMessage;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->access$200(Lcom/truecaller/api/services/callerid/v1/model/CallContext;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/truecaller/data/entity/CallContextMessage;->e:Lcom/truecaller/data/entity/MessageType;

    .line 6
    instance-of v2, v1, Lcom/truecaller/data/entity/MessageType$Preset;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/truecaller/data/entity/MessageType$Preset;

    .line 7
    iget p0, v1, Lcom/truecaller/data/entity/MessageType$Preset;->b:I

    .line 8
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 9
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v1, p0}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->access$800(Lcom/truecaller/api/services/callerid/v1/model/CallContext;I)V

    goto :goto_0

    .line 10
    :cond_0
    instance-of v1, v1, Lcom/truecaller/data/entity/MessageType$Custom;

    if-eqz v1, :cond_1

    .line 11
    iget-object p0, p0, Lcom/truecaller/data/entity/CallContextMessage;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    invoke-static {v1, p0}, Lcom/truecaller/api/services/callerid/v1/model/CallContext;->access$500(Lcom/truecaller/api/services/callerid/v1/model/CallContext;Ljava/lang/String;)V

    .line 14
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    const-string v0, "CallContext\n        .new\u2026       }\n        .build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/CallContext;

    return-object p0
.end method

.method public static final f0(Le/a/b0/m/a/a;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Le/a/b0/m/a/a;->a:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static final f1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$a;
    .locals 32

    const-string v0, "$this$toBankDomainSchema"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bank"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/truecaller/insights/models/InsightsDomain$a;

    move-object v2, v0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object v13

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object v14

    .line 15
    sget-object v15, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Le/a/c/p/a;->W1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/p;

    move-result-object v15

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object v16

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object v17

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object v18

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v19

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v20

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getConversationId()J

    move-result-wide v21

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v26

    const/16 v25, 0x0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result v23

    const/16 v28, 0x0

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->isIM()Z

    move-result v24

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getMessage()Ljava/lang/String;

    move-result-object v30

    const/high16 v31, 0xa00000

    move/from16 v29, p1

    .line 26
    invoke-direct/range {v2 .. v31}, Lcom/truecaller/insights/models/InsightsDomain$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;JIZLe/a/c/r/j/b;JLcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;I)V

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create BankDomain from ["

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] pdo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final g(Ljava/util/List;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_0

    .line 3
    check-cast v2, Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;

    .line 4
    new-instance v4, Le/a/o/n/a;

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;->getId()I

    move-result v5

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/api/services/callerid/v1/model/PredefinedMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v6, "predefinedMessage.message"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {v4, v5, v1, v2, p1}, Le/a/o/n/a;-><init>(IILjava/lang/String;Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonType;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static final g0(Landroid/content/Context;Le/a/b0/m/a/a;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "context.getString(R.stri\u2026etSender(addressProfile))"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget p2, Lcom/truecaller/insights/R$string;->NotificationSenderTextMessage:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Le/a/m0/a1$k;->f0(Le/a/b0/m/a/a;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    sget p2, Lcom/truecaller/insights/R$string;->NotificationSenderTextSMS:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Le/a/m0/a1$k;->f0(Le/a/b0/m/a/a;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static g1(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZI)Lcom/truecaller/insights/models/InsightsDomain$a;
    .locals 31

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move/from16 v28, v0

    goto :goto_0

    :cond_0
    move/from16 v28, p1

    :goto_0
    const-string v0, "$this$toBankDomainSchema"

    move-object/from16 v15, p0

    .line 1
    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bank"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/truecaller/insights/models/InsightsDomain$a;

    move-object v1, v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object v12

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object v13

    .line 16
    sget-object v14, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Le/a/c/p/a;->W1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/p;

    move-result-object v14

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object v15

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object v16

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object v17

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v18

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v19

    const-wide/16 v20, 0x0

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v25

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0x0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result v22

    const/16 v29, 0x0

    const/high16 v30, 0x2b40000

    .line 24
    invoke-direct/range {v1 .. v30}, Lcom/truecaller/insights/models/InsightsDomain$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;JIZLe/a/c/r/j/b;JLcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;I)V

    return-object v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create BankDomain from ["

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] pdo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final h(Ljava/lang/String;)Lcom/truecaller/api/services/callerid/v1/model/Phone;
    .locals 3

    .line 1
    invoke-static {p0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[^\\d]"

    const-string v2, ""

    .line 2
    invoke-static {v0, p0, v2}, Le/d/c/a/a;->A2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    move-object p0, v1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {p0}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/Phone;->newBuilder()Lcom/truecaller/api/services/callerid/v1/model/Phone$b;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/callerid/v1/model/Phone;

    invoke-static {v2, v0, v1}, Lcom/truecaller/api/services/callerid/v1/model/Phone;->access$1000(Lcom/truecaller/api/services/callerid/v1/model/Phone;J)V

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/truecaller/api/services/callerid/v1/model/Phone;

    :cond_2
    return-object v1
.end method

.method public static final h0(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;
    .locals 4

    .line 1
    new-instance v0, Le/a/c/r/k/e;

    .line 2
    sget v1, Lcom/truecaller/insights/R$string;->ShowSMS:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.ShowSMS)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "Locale.ENGLISH"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p2, p0, p1, p3}, Le/a/c/i/l/f/f;->e(Landroid/content/Context;ZLcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 4
    invoke-direct {v0, v1, p0}, Le/a/c/r/k/e;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static final h1(Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;)Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getDeeplink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getCategory()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getDeeplink()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-direct {v0, v1, v2, p0}, Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final i(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    :goto_0
    const-string v0, "$this$activity"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-nez v0, :cond_1

    move-object p0, v1

    :cond_1
    check-cast p0, Landroid/content/ContextWrapper;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static final i0(Lcom/truecaller/data/entity/Contact;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/SpamData;->getSpamVersion()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public static final i1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain$Bill;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;Z)",
            "Lcom/truecaller/insights/models/InsightsDomain$Bill;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "$this$toBillDomainSchema"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actions"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Bill"

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object v11

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object v12

    .line 11
    sget-object v1, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Le/a/c/p/a;->W1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/p;

    move-result-object v13

    .line 12
    sget-object v1, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Le/a/c/p/a;->V1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/b;

    move-result-object v14

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 14
    new-instance v1, Lw3/b/a/b;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lw3/b/a/b;-><init>(J)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v27

    const/16 v18, 0x0

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getConversationId()J

    move-result-wide v19

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    const-string v3, "pending"

    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {v2}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getState()I

    move-result v2

    move-object/from16 v16, v3

    const/4 v3, 0x2

    const-string v17, "success"

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    move-object/from16 v3, v16

    goto :goto_0

    :cond_0
    move-object/from16 v3, v17

    :goto_0
    move-object/from16 v17, v3

    goto :goto_1

    :cond_1
    move-object/from16 v16, v3

    move-object/from16 v17, v16

    .line 19
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    if-eqz v0, :cond_2

    invoke-static {v0}, Le/a/c/p/a;->M2(Lcom/truecaller/insights/models/smartcards/ActionStateEntity;)Le/a/c/r/j/b;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    move-object/from16 v26, v0

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result v21

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->isIM()Z

    move-result v22

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object v23

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object v24

    const/16 v29, 0x0

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getMessage()Ljava/lang/String;

    move-result-object v31

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object v25

    const v32, 0x804000

    const/16 v33, 0x0

    .line 26
    new-instance v0, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    move-object v3, v0

    move-object/from16 v16, v1

    move/from16 v30, p2

    invoke-direct/range {v3 .. v33}, Lcom/truecaller/insights/models/InsightsDomain$Bill;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/p;Lw3/b/a/b;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/r/j/b;JLcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;ILs1/z/c/f;)V

    return-object v0

    .line 27
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create BillDomain from ["

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] pdo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final j(Landroid/widget/EditText;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/EditText;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/CharSequence;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$addOnTextChangedListener"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTextChangedImpl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/y/b/p;

    invoke-direct {v0, p1}, Le/a/y/b/p;-><init>(Ls1/z/b/l;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static final j0(Le/a/c/r/b$b;Le/a/b0/m/a/a;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p1, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object p1, p1, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    const/16 v1, 0x20

    .line 4
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 5
    :goto_0
    iget-object v0, p0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7bcfca1e

    if-eq v1, v2, :cond_4

    const p0, -0x1f6ae2cc

    if-eq v1, p0, :cond_3

    const p0, 0x552751c9

    if-eq v1, p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "CreditCard"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 8
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    const-string p0, "Bill"

    invoke-static {p1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, "Credit Card Bill"

    goto :goto_2

    :cond_3
    const-string p0, "PrepaidSuccess"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Recharge successful"

    invoke-static {p1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    const-string v1, "PrepaidExpiry"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Le/a/c/r/b$b;->e:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    const-string v0, "Plan expiring on "

    invoke-static {p1, v0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 13
    iget-object p0, p0, Le/a/c/r/b$b;->e:Ljava/lang/String;

    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    const-string p0, "Plan expiring"

    .line 15
    invoke-static {p1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static synthetic j1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain$Bill;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 1
    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-static {p0, p1, p2}, Le/a/m0/a1$k;->i1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain$Bill;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Le/a/a4/m;Le/a/a4/m;)Le/a/a4/m;
    .locals 3

    const-string v0, "$this$and"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/a4/j;

    const/4 v1, 0x2

    new-array v1, v1, [Le/a/a4/m;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Le/a/a4/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final k0(Le/a/c/r/b$f;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/r/b$f;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " \u2022 "

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/c/r/b$f;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Le/a/c/r/b$f;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static final k1(Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;)Lcom/truecaller/data/entity/CallContextMessage;
    .locals 10

    const-string v0, "$this$toCallContextMessage"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/CallContextMessage;

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/contextcall/db/incomingcallcontext/IncomingCallContext;->getNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x58

    move-object v1, v0

    .line 5
    invoke-direct/range {v1 .. v9}, Lcom/truecaller/data/entity/CallContextMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;ZI)V

    return-object v0
.end method

.method public static final l(Le/f/a/r/a;Landroid/net/Uri;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Le/f/a/r/a<",
            "TT;>;>(TT;",
            "Landroid/net/Uri;",
            ")TT;"
        }
    .end annotation

    const-string v0, "$this$applyCacheSignature"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Le/a/z3/a;->b:Le/a/z3/a;

    const-string v0, "target"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Le/a/z3/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance v0, Le/f/a/s/d;

    invoke-direct {v0, p1}, Le/f/a/s/d;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Le/f/a/r/a;->z(Le/f/a/n/f;)Le/f/a/r/a;

    move-result-object p0

    const-string p1, "signature(signatureKey)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public static final l0(Le/a/c/r/b$f;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/r/b$f;->d:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "\u2022 "

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Le/a/c/r/b$f;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/a/c/r/b$f;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Le/a/c/r/b$f;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 10
    :cond_2
    iget-object v0, p0, Le/a/c/r/b$f;->t:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 12
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13
    iget-object v1, p0, Le/a/c/r/b$f;->t:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, ""

    .line 15
    :goto_3
    iget-object v1, p0, Le/a/c/r/b$f;->h:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "\u2022  "

    .line 16
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 17
    iget-object v2, p0, Le/a/c/r/b$f;->g:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p0, p0, Le/a/c/r/b$f;->h:Ljava/lang/String;

    const/16 v2, 0x20

    .line 20
    invoke-static {v1, p0, v2, v0}, Le/d/c/a/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public static final l1(Le/a/c/r/b$a;Landroid/content/Context;ZZZLe/a/b0/m/a/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;)Le/a/c/r/k/a;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const-string v6, "$this$toCustomSmartNotifWithActions"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "addressProfile"

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "smartNotificationsHelper"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "notificationBannerHelper"

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$this$toCustomSmartNotif"

    .line 1
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v7, Le/a/c/r/k/b;

    .line 3
    iget-object v11, v0, Le/a/c/r/b$a;->b:Ljava/lang/String;

    .line 4
    iget-object v8, v0, Le/a/c/r/b$a;->l:Ljava/lang/String;

    .line 5
    invoke-static {v8}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    const-string v8, " \u2022 "

    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 6
    iget-object v9, v0, Le/a/c/r/b$a;->l:Ljava/lang/String;

    .line 7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const-string v8, ""

    :goto_0
    move-object v12, v8

    .line 8
    iget v8, v0, Le/a/c/r/b$a;->j:I

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v10, v0, Le/a/c/r/b$a;->h:Ljava/lang/String;

    .line 11
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v10, v0, Le/a/c/r/b$a;->i:Ljava/lang/String;

    .line 13
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 14
    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "span"

    invoke-static {v9, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget v6, Lcom/truecaller/insights/R$attr;->tcx_textPrimary:I

    const/4 v10, 0x0

    if-ne v8, v6, :cond_1

    move-object v13, v9

    goto :goto_1

    .line 16
    :cond_1
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 17
    new-instance v14, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v1, v8}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v14, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v13, v14, v10, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    const-string v8, "\u2022  "

    .line 18
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Le/a/m0/a1$k;->f0(Le/a/b0/m/a/a;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  \u2022  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v9, v0, Le/a/c/r/b$a;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 21
    new-instance v15, Le/a/c/r/j/m;

    .line 22
    iget v8, v0, Le/a/c/r/b$a;->c:I

    const/4 v9, 0x6

    .line 23
    invoke-direct {v15, v8, v10, v10, v9}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    iget-object v9, v0, Le/a/c/r/b$a;->h:Ljava/lang/String;

    .line 26
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v9, v0, Le/a/c/r/b$a;->i:Ljava/lang/String;

    .line 28
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 29
    iget v8, v0, Le/a/c/r/b$a;->j:I

    const/4 v9, 0x0

    if-eq v8, v6, :cond_2

    .line 30
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_2

    :cond_2
    move-object/from16 v17, v9

    :goto_2
    const/16 v18, 0x0

    move/from16 v6, p3

    .line 31
    invoke-static {v1, v3, v6}, Le/a/m0/a1$k;->g0(Landroid/content/Context;Le/a/b0/m/a/a;Z)Ljava/lang/String;

    move-result-object v3

    .line 32
    new-instance v8, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 33
    iget-object v10, v0, Le/a/c/r/b$a;->a:Ljava/lang/String;

    .line 34
    iget-boolean v0, v0, Le/a/c/r/b$a;->o:Z

    const/16 v23, 0x0

    const/16 v25, 0x8

    const/16 v26, 0x0

    const-string v20, "Bank"

    move-object/from16 v19, v8

    move-object/from16 v21, v10

    move/from16 v22, v0

    move/from16 v24, p3

    .line 35
    invoke-direct/range {v19 .. v26}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILs1/z/c/f;)V

    const/16 v21, 0x0

    const-string v0, "Bank"

    .line 36
    invoke-virtual {v5, v0}, Le/a/c/i/l/e/a;->a(Ljava/lang/String;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x1480

    move-object v10, v7

    move-object/from16 v19, v3

    move-object/from16 v20, v8

    .line 37
    invoke-direct/range {v10 .. v24}, Le/a/c/r/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/Integer;Le/a/c/r/j/c0;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/util/List;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;I)V

    .line 38
    iget-object v0, v7, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 39
    invoke-static {v1, v2, v4, v0}, Le/a/m0/a1$k;->Q(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v0

    .line 40
    iget-object v3, v7, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    move/from16 v5, p4

    .line 41
    invoke-static {v1, v2, v5, v4, v3}, Le/a/m0/a1$k;->e0(Landroid/content/Context;ZZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v3

    .line 42
    iget-object v5, v7, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 43
    invoke-static {v1, v2, v4, v5}, Le/a/m0/a1$k;->h0(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v2

    .line 44
    iget-object v5, v7, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 45
    invoke-static {v1, v4, v5}, Le/a/m0/a1$k;->S(Landroid/content/Context;Le/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v5

    .line 46
    iget-object v6, v7, Le/a/c/r/k/b;->l:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    if-eqz v6, :cond_3

    .line 47
    invoke-static {v6}, Le/a/m0/a1$k;->h1(Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;)Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 48
    invoke-interface {v4, v1, v6}, Le/a/c/i/l/f/f;->c(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 49
    :cond_3
    new-instance v1, Le/a/c/r/k/c;

    move-object/from16 p0, v1

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move-object/from16 p3, v2

    move-object/from16 p4, v5

    move-object/from16 p5, v9

    invoke-direct/range {p0 .. p5}, Le/a/c/r/k/c;-><init>(Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Landroid/app/PendingIntent;)V

    .line 50
    new-instance v0, Le/a/c/r/k/a;

    invoke-direct {v0, v7, v1}, Le/a/c/r/k/a;-><init>(Le/a/c/r/k/b;Le/a/c/r/k/c;)V

    return-object v0
.end method

.method public static final m(Le/f/a/i;Le/a/z3/i/a;Landroid/content/Context;)Le/f/a/h;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/i;",
            "Le/a/z3/i/a;",
            "Landroid/content/Context;",
            ")",
            "Le/f/a/h<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$buildGlideRequest"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p0, Le/a/z3/e;

    .line 2
    invoke-virtual {p0}, Le/a/z3/e;->x()Le/a/z3/d;

    move-result-object p0

    .line 3
    iget-object v2, p1, Le/a/z3/i/a;->c:Landroid/net/Uri;

    .line 4
    invoke-virtual {p0, v2}, Le/a/z3/d;->S(Landroid/net/Uri;)Le/f/a/h;

    const-string v2, "asBitmap()\n        .load(imageRequest.uri)"

    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$this$applyBitmapOptions"

    .line 5
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Le/f/a/r/h;

    invoke-direct {v0}, Le/f/a/r/h;-><init>()V

    .line 7
    iget v2, p1, Le/a/z3/i/a;->b:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    iget-boolean v2, p1, Le/a/z3/i/a;->a:Z

    if-eqz v2, :cond_3

    .line 8
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget v5, p1, Le/a/z3/i/a;->b:I

    if-eq v5, v3, :cond_1

    new-instance v3, Le/a/z3/h/a;

    iget v5, p1, Le/a/z3/i/a;->b:I

    invoke-direct {v3, v5}, Le/a/z3/h/a;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-boolean v3, p1, Le/a/z3/i/a;->a:Z

    if-eqz v3, :cond_2

    new-instance v3, Le/f/a/n/q/d/k;

    invoke-direct {v3}, Le/f/a/n/q/d/k;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-array v3, v4, [Le/f/a/n/m;

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Le/f/a/n/m;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Le/f/a/n/m;

    .line 12
    invoke-virtual {v0, v2}, Le/f/a/r/a;->F([Le/f/a/n/m;)Le/f/a/r/a;

    .line 13
    :cond_3
    iget-object v2, p1, Le/a/z3/i/a;->c:Landroid/net/Uri;

    invoke-static {v0, v2}, Le/a/m0/a1$k;->l(Le/f/a/r/a;Landroid/net/Uri;)Le/f/a/r/a;

    .line 14
    invoke-virtual {p0, v0}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p0

    .line 15
    iget-object p1, p1, Le/a/z3/i/a;->d:Le/a/z3/i/g;

    const-string v0, "$this$override"

    .line 16
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "size"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v0, p1, Le/a/z3/i/f;

    if-eqz v0, :cond_4

    const/high16 p1, -0x80000000

    invoke-virtual {p0, p1, p1}, Le/f/a/r/a;->t(II)Le/f/a/r/a;

    move-result-object p0

    const-string p1, "override(Target.SIZE_ORI\u2026AL, Target.SIZE_ORIGINAL)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_4
    instance-of v0, p1, Le/a/z3/i/e;

    if-eqz v0, :cond_5

    check-cast p1, Le/a/z3/i/e;

    .line 19
    iget v0, p1, Le/a/z3/i/e;->a:I

    .line 20
    invoke-static {p2, v0}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v0

    .line 21
    iget p1, p1, Le/a/z3/i/e;->b:I

    .line 22
    invoke-static {p2, p1}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Le/f/a/r/a;->t(II)Le/f/a/r/a;

    move-result-object p0

    const-string p1, "override(context.dpToPx(\u2026context.dpToPx(heightDp))"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_5
    instance-of v0, p1, Le/a/z3/i/d;

    if-eqz v0, :cond_6

    check-cast p1, Le/a/z3/i/d;

    .line 24
    iget p2, p1, Le/a/z3/i/d;->a:I

    .line 25
    iget p1, p1, Le/a/z3/i/d;->b:I

    .line 26
    invoke-virtual {p0, p2, p1}, Le/f/a/r/a;->t(II)Le/f/a/r/a;

    move-result-object p0

    const-string p1, "override(size.widthPx, size.heightPx)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_6
    instance-of v0, p1, Le/a/z3/i/c;

    if-eqz v0, :cond_7

    check-cast p1, Le/a/z3/i/c;

    invoke-static {p2, v4}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p2, v4}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Le/f/a/r/a;->t(II)Le/f/a/r/a;

    move-result-object p0

    const-string p1, "override(context.dpToPx(\u2026xt.dpToPx(size.heightDp))"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-string p1, "apply(imageRequest.asReq\u2026ageRequest.size, context)"

    .line 28
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Le/f/a/h;

    return-object p0

    .line 29
    :cond_7
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static final m0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;Le/a/k3/h;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$getTypeStringForNumber"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberTypeLabelProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telType:Ljava/lang/String;

    sget v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->EMPTY_TEL_TYPE:I

    invoke-static {v0, v1}, Lw3/c/a/a/a/k/a;->h(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->p()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    goto :goto_0

    .line 3
    :cond_1
    sget v1, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->EMPTY_TEL_TYPE:I

    if-ne v0, v1, :cond_2

    invoke-static {p0, p1}, Le/a/m0/a1$k;->a0(Lcom/truecaller/data/entity/Number;Le/a/p5/c0;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 4
    sget p0, Lcom/truecaller/data/R$string;->CallerIDHomeNumberTitle:I

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resourceProvider.getStri\u2026.CallerIDHomeNumberTitle)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 5
    sget p0, Lcom/truecaller/data/R$string;->CallerIDCellphoneNumberTitle:I

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resourceProvider.getStri\u2026erIDCellphoneNumberTitle)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 6
    sget p0, Lcom/truecaller/data/R$string;->CallerIDWorkNumberTitle:I

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resourceProvider.getStri\u2026.CallerIDWorkNumberTitle)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_5
    iget-object p0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;

    iget-object p0, p0, Lcom/truecaller/data/dto/ContactDto$Contact$PhoneNumber;->telType:Ljava/lang/String;

    invoke-static {p0, v1}, Lw3/c/a/a/a/k/a;->h(Ljava/lang/String;I)I

    move-result p0

    .line 8
    invoke-interface {p2, p0}, Le/a/k3/h;->a(I)I

    move-result p0

    new-array p2, v3, [Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resourceProvider.getStri\u2026umberType(telTypeCompat))"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static final m1(Le/a/c/r/b$b;Landroid/content/Context;Ljava/lang/String;ZZZLe/a/b0/m/a/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;Le/a/c/b/j;Le/a/c/j/e;)Le/a/c/r/k/a;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/r/b$b;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZZ",
            "Le/a/b0/m/a/a;",
            "Le/a/c/i/l/f/f;",
            "Le/a/c/i/l/e/a;",
            "Le/a/c/b/j;",
            "Le/a/c/j/e<",
            "+",
            "Le/a/c/j/f;",
            ">;)",
            "Le/a/c/r/k/a;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    const-string v6, "$this$toCustomSmartNotifWithActions"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "addressProfile"

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "smartNotificationsHelper"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "notificationBannerHelper"

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "statusProvider"

    move-object/from16 v10, p9

    invoke-static {v10, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "deepLinkFactory"

    move-object/from16 v11, p10

    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$this$toCustomSmartNotif"

    .line 1
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v6, Le/a/c/r/k/b;

    .line 3
    invoke-static {v0, v3}, Le/a/m0/a1$k;->j0(Le/a/c/r/b$b;Le/a/b0/m/a/a;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v7, v0, Le/a/c/r/b$b;->i:Ljava/lang/String;

    :goto_0
    move-object v13, v7

    .line 5
    iget-object v7, v0, Le/a/c/r/b$b;->g:Ljava/lang/String;

    .line 6
    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, ""

    const/16 v9, 0x20

    if-eqz v7, :cond_1

    .line 7
    iget-object v7, v0, Le/a/c/r/b$b;->f:Ljava/lang/String;

    .line 8
    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v14, v8

    goto :goto_1

    :cond_1
    const-string v7, " \u2022 "

    .line 9
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 10
    iget-object v12, v0, Le/a/c/r/b$b;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    iget-object v9, v0, Le/a/c/r/b$b;->f:Ljava/lang/String;

    .line 13
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .line 14
    :goto_1
    iget-object v7, v0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    const-string v9, "PrepaidExpiry"

    .line 15
    invoke-static {v7, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v0, v3}, Le/a/m0/a1$k;->j0(Le/a/c/r/b$b;Le/a/b0/m/a/a;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    iget-object v7, v0, Le/a/c/r/b$b;->k:Ljava/lang/String;

    :goto_2
    move-object v15, v7

    .line 17
    iget-object v7, v0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 18
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    move-object/from16 v16, v8

    const v8, -0x7bcfca1e

    if-eq v12, v8, :cond_4

    const v8, -0x1f6ae2cc

    if-eq v12, v8, :cond_3

    goto :goto_4

    :cond_3
    const-string v8, "PrepaidSuccess"

    .line 19
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "\u2022 "

    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0, v3}, Le/a/m0/a1$k;->j0(Le/a/c/r/b$b;Le/a/b0/m/a/a;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u2022 Prepaid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "\u2022 Prepaid"

    :goto_3
    move-object/from16 v16, v7

    goto :goto_6

    :cond_5
    :goto_4
    const-string v7, "\u2022  "

    .line 21
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Le/a/m0/a1$k;->f0(Le/a/b0/m/a/a;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 22
    iget-object v8, v0, Le/a/c/r/b$b;->i:Ljava/lang/String;

    .line 23
    invoke-static {v8}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    const-string v8, " \u2022  "

    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 24
    iget-object v12, v0, Le/a/c/r/b$b;->i:Ljava/lang/String;

    .line 25
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    :cond_6
    move-object/from16 v8, v16

    .line 26
    :goto_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v7}, Ls1/f0/v;->h0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 27
    :goto_6
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->D(Le/a/c/r/b$b;)Le/a/c/r/j/m;

    move-result-object v17

    .line 28
    iget-object v7, v0, Le/a/c/r/b$b;->k:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v8, p4

    .line 29
    invoke-static {v1, v3, v8}, Le/a/m0/a1$k;->g0(Landroid/content/Context;Le/a/b0/m/a/a;Z)Ljava/lang/String;

    move-result-object v3

    .line 30
    new-instance v29, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    const-string v12, "Bill"

    .line 31
    invoke-static {v0, v12}, Le/a/m0/a1$k;->w(Le/a/c/r/b$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 32
    iget-object v8, v0, Le/a/c/r/b$b;->a:Ljava/lang/String;

    .line 33
    iget-boolean v10, v0, Le/a/c/r/b$b;->m:Z

    const/16 v25, 0x0

    const/16 v27, 0x8

    const/16 v28, 0x0

    move-object/from16 v21, v29

    move-object/from16 v23, v8

    move/from16 v24, v10

    move/from16 v26, p4

    .line 34
    invoke-direct/range {v21 .. v28}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILs1/z/c/f;)V

    const/16 v23, 0x0

    .line 35
    invoke-virtual {v5, v12}, Le/a/c/i/l/e/a;->a(Ljava/lang/String;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x1480

    move-object v5, v12

    move-object v12, v6

    move-object/from16 v18, v7

    move-object/from16 v21, v3

    move-object/from16 v22, v29

    .line 36
    invoke-direct/range {v12 .. v26}, Le/a/c/r/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/Integer;Le/a/c/r/j/c0;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/util/List;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;I)V

    .line 37
    invoke-interface/range {p9 .. p9}, Le/a/c/b/j;->d0()Z

    move-result v3

    const-string v7, "CreditCard"

    const/4 v8, 0x0

    if-nez v3, :cond_8

    .line 38
    iget-object v3, v0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 39
    invoke-static {v3, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_7

    .line 40
    :cond_7
    iget-object v0, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 41
    invoke-static {v1, v2, v4, v0}, Le/a/m0/a1$k;->Q(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_b

    .line 42
    :cond_8
    :goto_7
    iget-object v3, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 43
    iget-object v12, v0, Le/a/c/r/b$b;->a:Ljava/lang/String;

    const-wide/16 v13, 0x0

    .line 44
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 45
    iget-object v10, v0, Le/a/c/r/b$b;->d:Ljava/lang/String;

    .line 46
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 47
    iget-object v15, v0, Le/a/c/r/b$b;->f:Ljava/lang/String;

    .line 48
    iget-object v10, v0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, p10

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    move-object v14, v15

    move-object/from16 v15, p2

    .line 49
    invoke-interface/range {v10 .. v16}, Le/a/c/j/e;->b(Ljava/lang/String;Ljava/lang/Long;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/c/j/f;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 50
    iget-object v0, v0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    const-string v12, "(this as java.lang.String).toUpperCase(locale)"

    const-string v13, "Locale.ENGLISH"

    const v14, -0x7bcfca1e

    if-eq v11, v14, :cond_b

    const v9, 0x1f9827

    if-eq v11, v9, :cond_a

    const v5, 0x552751c9

    if-eq v11, v5, :cond_9

    goto :goto_a

    .line 52
    :cond_9
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_8

    :cond_a
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_8
    sget v0, Lcom/truecaller/insights/R$string;->PayBill:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "context.getString(R.string.PayBill)"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v13, v0, v5, v12}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 53
    :cond_b
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Lcom/truecaller/insights/R$string;->Recharge:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "context.getString(R.string.Recharge)"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v5, v13, v0, v5, v12}, Le/d/c/a/a;->p(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_9
    new-instance v5, Le/a/c/r/k/e;

    .line 55
    invoke-virtual {v10}, Le/a/c/j/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v1, v7, v3}, Le/a/c/i/l/f/f;->f(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 56
    invoke-direct {v5, v0, v3}, Le/a/c/r/k/e;-><init>(Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_b

    :cond_c
    :goto_a
    move-object v5, v8

    .line 57
    :goto_b
    iget-object v0, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    move/from16 v3, p5

    .line 58
    invoke-static {v1, v2, v3, v4, v0}, Le/a/m0/a1$k;->e0(Landroid/content/Context;ZZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v0

    .line 59
    iget-object v3, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 60
    invoke-static {v1, v2, v4, v3}, Le/a/m0/a1$k;->h0(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v2

    .line 61
    iget-object v3, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 62
    invoke-static {v1, v4, v3}, Le/a/m0/a1$k;->S(Landroid/content/Context;Le/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v3

    .line 63
    iget-object v7, v6, Le/a/c/r/k/b;->l:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    if-eqz v7, :cond_d

    .line 64
    invoke-static {v7}, Le/a/m0/a1$k;->h1(Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;)Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 65
    invoke-interface {v4, v1, v7}, Le/a/c/i/l/f/f;->c(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 66
    :cond_d
    new-instance v1, Le/a/c/r/k/c;

    move-object/from16 p0, v1

    move-object/from16 p1, v5

    move-object/from16 p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v8

    invoke-direct/range {p0 .. p5}, Le/a/c/r/k/c;-><init>(Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Landroid/app/PendingIntent;)V

    .line 67
    new-instance v0, Le/a/c/r/k/a;

    invoke-direct {v0, v6, v1}, Le/a/c/r/k/a;-><init>(Le/a/c/r/k/b;Le/a/c/r/k/c;)V

    return-object v0
.end method

.method public static synthetic n(Le/a/c/g/f;Ljava/lang/String;Lcom/truecaller/insights/categorizer/CategorizerInputType;ILjava/lang/Object;)Le/a/c/g/a;
    .locals 0

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/truecaller/insights/categorizer/CategorizerInputType;->SMS:Lcom/truecaller/insights/categorizer/CategorizerInputType;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0, p1, p2}, Le/a/c/g/f;->s(Ljava/lang/String;Lcom/truecaller/insights/categorizer/CategorizerInputType;)Le/a/c/g/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n0(Le/a/f/y/c;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 1
    :cond_0
    invoke-interface {p0, p1}, Le/a/f/y/c;->A(Z)V

    return-void
.end method

.method public static final n1(Le/a/c/r/b$c;Landroid/content/Context;ZZZLe/a/b0/m/a/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;)Le/a/c/r/k/a;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const-string v6, "$this$toCustomSmartNotifWithActions"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "addressProfile"

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "smartNotificationsHelper"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "notificationBannerHelper"

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$this$toCustomSmartNotif"

    .line 1
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v6, v0, Le/a/c/r/b$c;->b:Ljava/lang/String;

    const-string v8, "Delivery update"

    if-eqz v6, :cond_0

    move-object v10, v6

    goto :goto_0

    :cond_0
    move-object v10, v8

    :goto_0
    const-string v6, "deliveryUiModel"

    .line 3
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v6, v3, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    .line 5
    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    const-string v7, ""

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v9, v3, Le/a/b0/m/a/a;->b:Ljava/lang/String;

    const/16 v11, 0x20

    .line 7
    invoke-static {v6, v9, v11}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v7

    .line 8
    :goto_1
    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v9

    const/16 v24, 0x0

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v6, v24

    :goto_2
    if-eqz v6, :cond_3

    const-string v9, " \u2022 "

    .line 9
    invoke-static {v6, v9}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->O(Le/a/c/r/b$c;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object/from16 v6, v24

    :goto_3
    if-eqz v6, :cond_4

    goto :goto_4

    .line 10
    :cond_4
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->O(Le/a/c/r/b$c;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    move-object v12, v6

    .line 11
    iget-object v6, v0, Le/a/c/r/b$c;->h:Le/a/c/r/j/m;

    if-eqz v6, :cond_5

    goto :goto_5

    .line 12
    :cond_5
    new-instance v6, Le/a/c/r/j/m;

    sget v9, Lcom/truecaller/insights/R$drawable;->ic_tcx_delivery:I

    const/4 v11, 0x6

    const/4 v13, 0x0

    invoke-direct {v6, v9, v13, v13, v11}, Le/a/c/r/j/m;-><init>(IIII)V

    :goto_5
    move-object v14, v6

    move/from16 v6, p3

    .line 13
    invoke-static {v1, v3, v6}, Le/a/m0/a1$k;->g0(Landroid/content/Context;Le/a/b0/m/a/a;Z)Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v23, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 15
    sget-object v9, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->d:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;

    .line 16
    iget-object v9, v0, Le/a/c/r/b$c;->a:Ljava/lang/String;

    .line 17
    invoke-static {v9}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "Delivery"

    if-eqz v9, :cond_6

    const-string v13, "Delivery_"

    .line 18
    invoke-static {v13, v9}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    const-string v15, "Locale.getDefault()"

    invoke-static {v13, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v9, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v9, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v9, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v9

    goto :goto_6

    :cond_6
    move-object/from16 v16, v11

    .line 19
    :goto_6
    iget-object v9, v0, Le/a/c/r/b$c;->g:Ljava/lang/String;

    .line 20
    iget-boolean v13, v0, Le/a/c/r/b$c;->i:Z

    const/16 v19, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x0

    move-object/from16 v15, v23

    move-object/from16 v17, v9

    move/from16 v18, v13

    move/from16 v20, p3

    .line 21
    invoke-direct/range {v15 .. v22}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILs1/z/c/f;)V

    .line 22
    invoke-virtual {v5, v11}, Le/a/c/i/l/e/a;->a(Ljava/lang/String;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v21

    .line 23
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->R(Le/a/c/r/b$c;)Le/a/c/r/j/c0;

    move-result-object v17

    const/16 v16, 0x0

    const/16 v20, 0x0

    .line 24
    iget-object v5, v0, Le/a/c/r/b$c;->b:Ljava/lang/String;

    if-eqz v5, :cond_7

    move-object/from16 v22, v8

    goto :goto_7

    :cond_7
    move-object/from16 v22, v7

    :goto_7
    const/16 v5, 0x400

    .line 25
    new-instance v6, Le/a/c/r/k/b;

    const-string v11, ""

    const-string v13, ""

    const-string v15, ""

    move-object v9, v6

    move-object/from16 v18, v3

    move-object/from16 v19, v23

    move/from16 v23, v5

    invoke-direct/range {v9 .. v23}, Le/a/c/r/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/Integer;Le/a/c/r/j/c0;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/util/List;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;I)V

    .line 26
    iget-object v0, v0, Le/a/c/r/b$c;->j:Le/a/c/r/j/a;

    if-eqz v0, :cond_8

    .line 27
    iget-object v3, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 28
    invoke-static {v0, v1, v4, v3}, Le/a/m0/a1$k;->d0(Le/a/c/r/j/a;Landroid/content/Context;Le/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v0

    goto :goto_8

    .line 29
    :cond_8
    iget-object v0, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 30
    invoke-static {v1, v2, v4, v0}, Le/a/m0/a1$k;->Q(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v0

    .line 31
    :goto_8
    iget-object v3, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    move/from16 v5, p4

    .line 32
    invoke-static {v1, v2, v5, v4, v3}, Le/a/m0/a1$k;->e0(Landroid/content/Context;ZZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v3

    .line 33
    iget-object v5, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 34
    invoke-static {v1, v2, v4, v5}, Le/a/m0/a1$k;->h0(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v2

    .line 35
    iget-object v5, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 36
    invoke-static {v1, v4, v5}, Le/a/m0/a1$k;->S(Landroid/content/Context;Le/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v5

    .line 37
    iget-object v7, v6, Le/a/c/r/k/b;->l:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    if-eqz v7, :cond_9

    .line 38
    invoke-static {v7}, Le/a/m0/a1$k;->h1(Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;)Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 39
    invoke-interface {v4, v1, v7}, Le/a/c/i/l/f/f;->c(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;)Landroid/app/PendingIntent;

    move-result-object v24

    .line 40
    :cond_9
    new-instance v1, Le/a/c/r/k/c;

    move-object/from16 p0, v1

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move-object/from16 p3, v2

    move-object/from16 p4, v5

    move-object/from16 p5, v24

    invoke-direct/range {p0 .. p5}, Le/a/c/r/k/c;-><init>(Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Landroid/app/PendingIntent;)V

    .line 41
    new-instance v0, Le/a/c/r/k/a;

    invoke-direct {v0, v6, v1}, Le/a/c/r/k/a;-><init>(Le/a/c/r/k/b;Le/a/c/r/k/c;)V

    return-object v0
.end method

.method public static o(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final o0(Landroid/database/sqlite/SQLiteException;)V
    .locals 1

    const-string v0, "$this$ignoreOrThrow"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/database/sqlite/SQLiteDiskIOException;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p0, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p0, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 5
    :cond_3
    throw p0
.end method

.method public static final o1(Le/a/c/r/b$d;Landroid/content/Context;ZZZLe/a/b0/m/a/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;)Le/a/c/r/k/a;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const-string v6, "$this$toCustomSmartNotifWithActions"

    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "context"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "addressProfile"

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "smartNotificationsHelper"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "notificationBannerHelper"

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "$this$toCustomSmartNotif"

    .line 1
    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v6, Le/a/c/r/k/b;

    .line 3
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->Z(Le/a/c/r/b$d;)Ljava/lang/String;

    move-result-object v11

    .line 4
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->Y(Le/a/c/r/b$d;)Ljava/lang/String;

    move-result-object v12

    .line 5
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->Z(Le/a/c/r/b$d;)Ljava/lang/String;

    move-result-object v13

    .line 6
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->Y(Le/a/c/r/b$d;)Ljava/lang/String;

    move-result-object v14

    .line 7
    iget-object v7, v0, Le/a/c/r/b$d;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x1c682951

    const/4 v10, 0x6

    const/4 v15, 0x0

    if-eq v8, v9, :cond_1

    const v9, 0x4dc282d2    # 4.07919168E8f

    if-eq v8, v9, :cond_0

    goto :goto_0

    :cond_0
    const-string v8, "dose_due"

    .line 9
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Le/a/c/r/j/m;

    sget v8, Lcom/truecaller/insights/R$drawable;->ic_calendar_due:I

    invoke-direct {v7, v8, v15, v15, v10}, Le/a/c/r/j/m;-><init>(IIII)V

    goto :goto_1

    :cond_1
    const-string v8, "cancelled"

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 11
    new-instance v7, Le/a/c/r/j/m;

    sget v8, Lcom/truecaller/insights/R$drawable;->ic_calendar_cancel:I

    sget-object v9, Le/a/c/f/k/c;->d:Le/a/c/f/k/c;

    sget-object v9, Le/a/c/f/k/c;->a:Ls1/k;

    .line 12
    iget-object v10, v9, Ls1/k;->a:Ljava/lang/Object;

    .line 13
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 14
    iget-object v9, v9, Ls1/k;->b:Ljava/lang/Object;

    .line 15
    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v10, v9}, Le/a/c/r/j/m;-><init>(III)V

    goto :goto_1

    .line 16
    :cond_2
    :goto_0
    new-instance v7, Le/a/c/r/j/m;

    sget v8, Lcom/truecaller/insights/R$drawable;->ic_calendar_success:I

    invoke-direct {v7, v8, v15, v15, v10}, Le/a/c/r/j/m;-><init>(IIII)V

    :goto_1
    move-object v15, v7

    move/from16 v7, p3

    .line 17
    invoke-static {v1, v3, v7}, Le/a/m0/a1$k;->g0(Landroid/content/Context;Le/a/b0/m/a/a;Z)Ljava/lang/String;

    move-result-object v3

    .line 18
    new-instance v8, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    iget-object v10, v0, Le/a/c/r/b$d;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x5f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    iget-object v10, v0, Le/a/c/r/b$d;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 24
    iget-object v9, v0, Le/a/c/r/b$d;->b:Ljava/lang/String;

    .line 25
    iget-boolean v10, v0, Le/a/c/r/b$d;->n:Z

    const/16 v20, 0x0

    const/16 v22, 0x8

    const/16 v24, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    move/from16 v21, p3

    .line 26
    invoke-direct/range {v16 .. v23}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILs1/z/c/f;)V

    const-string v7, "Event"

    .line 27
    invoke-virtual {v5, v7}, Le/a/c/i/l/e/a;->a(Ljava/lang/String;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v22

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v5, 0x1400

    const-string v16, ""

    move-object v10, v6

    move-object/from16 v19, v3

    move-object/from16 v20, v8

    move-object/from16 v23, v24

    move/from16 v24, v5

    .line 28
    invoke-direct/range {v10 .. v24}, Le/a/c/r/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/Integer;Le/a/c/r/j/c0;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/util/List;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;I)V

    .line 29
    iget-object v0, v0, Le/a/c/r/b$d;->o:Le/a/c/r/j/a;

    if-eqz v0, :cond_3

    .line 30
    iget-object v3, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 31
    invoke-static {v0, v1, v4, v3}, Le/a/m0/a1$k;->d0(Le/a/c/r/j/a;Landroid/content/Context;Le/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v0

    goto :goto_2

    .line 32
    :cond_3
    iget-object v0, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 33
    invoke-static {v1, v2, v4, v0}, Le/a/m0/a1$k;->Q(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v0

    .line 34
    :goto_2
    iget-object v3, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    move/from16 v5, p4

    .line 35
    invoke-static {v1, v2, v5, v4, v3}, Le/a/m0/a1$k;->e0(Landroid/content/Context;ZZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v3

    .line 36
    iget-object v5, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 37
    invoke-static {v1, v2, v4, v5}, Le/a/m0/a1$k;->h0(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v2

    .line 38
    iget-object v5, v6, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 39
    invoke-static {v1, v4, v5}, Le/a/m0/a1$k;->S(Landroid/content/Context;Le/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v5

    .line 40
    iget-object v7, v6, Le/a/c/r/k/b;->l:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    if-eqz v7, :cond_4

    .line 41
    invoke-static {v7}, Le/a/m0/a1$k;->h1(Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;)Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 42
    invoke-interface {v4, v1, v7}, Le/a/c/i/l/f/f;->c(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 43
    :goto_3
    new-instance v4, Le/a/c/r/k/c;

    move-object/from16 p0, v4

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move-object/from16 p3, v2

    move-object/from16 p4, v5

    move-object/from16 p5, v1

    invoke-direct/range {p0 .. p5}, Le/a/c/r/k/c;-><init>(Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Landroid/app/PendingIntent;)V

    .line 44
    new-instance v0, Le/a/c/r/k/a;

    invoke-direct {v0, v6, v4}, Le/a/c/r/k/a;-><init>(Le/a/c/r/k/b;Le/a/c/r/k/c;)V

    return-object v0
.end method

.method public static final p(Le/q/a/d/c;)Le/a/c/r/e/a/c;
    .locals 5

    const-string v0, "$this$convertToInsightsAccountModel"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/c/r/e/a/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Le/a/c/r/e/a/c;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Le/a/c/r/e/a/c;

    invoke-virtual {p0}, Le/q/a/d/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "this.address"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le/q/a/d/c;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "this.accountType"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Le/q/a/d/c;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "this.accountNumber"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Le/a/c/r/e/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Le/q/a/d/a;->a()Ljava/util/Date;

    move-result-object v1

    const-string v2, "this.createdAt"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Le/a/c/r/e/a/c;->t(Ljava/util/Date;)V

    .line 5
    invoke-virtual {p0}, Le/q/a/d/c;->m()Z

    move-result v1

    .line 6
    iput-boolean v1, v0, Le/a/c/r/e/a/c;->j:Z

    .line 7
    invoke-virtual {p0}, Le/q/a/d/c;->l()Z

    move-result v1

    .line 8
    iput-boolean v1, v0, Le/a/c/r/e/a/c;->g:Z

    .line 9
    invoke-virtual {p0}, Le/q/a/d/c;->h()Ljava/lang/String;

    move-result-object v1

    .line 10
    iput-object v1, v0, Le/a/c/r/e/a/c;->k:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Le/q/a/d/c;->i()J

    move-result-wide v1

    .line 12
    iput-wide v1, v0, Le/a/c/r/e/a/c;->h:J

    .line 13
    invoke-virtual {p0}, Le/q/a/d/c;->j()Ljava/util/Date;

    move-result-object v1

    .line 14
    iput-object v1, v0, Le/a/c/r/e/a/c;->i:Ljava/util/Date;

    .line 15
    invoke-virtual {p0}, Le/q/a/d/c;->f()F

    move-result p0

    .line 16
    iput p0, v0, Le/a/c/r/e/a/c;->f:F

    return-object v0
.end method

.method public static final p0(Ljava/lang/Double;D)D
    .locals 2

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double p0, v0, p1

    :goto_0
    return-wide p0
.end method

.method public static final p1(Le/a/c/r/b$f;Landroid/content/Context;ZZZLe/a/b0/m/a/a;Le/a/c/i/l/f/f;Le/a/c/i/l/e/a;)Le/a/c/r/k/a;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v8, p3

    move-object/from16 v3, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    const-string v4, "$this$toCustomSmartNotifWithActions"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "addressProfile"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "smartNotificationsHelper"

    invoke-static {v11, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "notificationBannerHelper"

    invoke-static {v12, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "$this$toCustomSmartNotif"

    .line 1
    invoke-static {v0, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v4, v0, Le/a/c/r/b$f;->o:Ljava/lang/String;

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, " not implemented for smart notification"

    const-string v13, "Travel"

    const/4 v7, 0x6

    const/4 v9, 0x0

    const/4 v14, 0x0

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string v5, "train"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5
    new-instance v30, Le/a/c/r/k/b;

    .line 6
    iget-object v15, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 7
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->k0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v17

    .line 8
    iget-object v10, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 9
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->l0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v19

    .line 10
    new-instance v6, Le/a/c/r/j/m;

    .line 11
    iget v4, v0, Le/a/c/r/b$f;->v:I

    .line 12
    invoke-direct {v6, v4, v9, v9, v7}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 13
    iget-object v9, v0, Le/a/c/r/b$f;->d:Ljava/lang/String;

    const/16 v22, 0x0

    .line 14
    new-instance v5, Le/a/c/r/j/c0;

    .line 15
    iget-object v4, v0, Le/a/c/r/b$f;->e:Ljava/lang/String;

    .line 16
    invoke-direct {v5, v4, v14, v14, v7}, Le/a/c/r/j/c0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 17
    invoke-static {v1, v3, v8}, Le/a/m0/a1$k;->g0(Landroid/content/Context;Le/a/b0/m/a/a;Z)Ljava/lang/String;

    move-result-object v24

    .line 18
    new-instance v25, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 19
    iget-object v3, v0, Le/a/c/r/b$f;->y:Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v4, 0x1

    .line 20
    invoke-static {v3, v14, v4}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 21
    iget-object v7, v0, Le/a/c/r/b$f;->s:Ljava/lang/String;

    .line 22
    iget-boolean v0, v0, Le/a/c/r/b$f;->u:Z

    const/16 v16, 0x0

    const/16 v18, 0x8

    const/16 v20, 0x0

    move-object/from16 v3, v25

    move-object/from16 v23, v5

    move-object v5, v7

    move-object/from16 v21, v6

    move v6, v0

    move/from16 v7, v16

    move/from16 v8, p3

    move-object v0, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v20

    .line 23
    invoke-direct/range {v3 .. v10}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILs1/z/c/f;)V

    const/16 v26, 0x0

    .line 24
    invoke-virtual {v12, v13}, Le/a/c/i/l/e/a;->a(Ljava/lang/String;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x1400

    move-object v3, v15

    move-object/from16 v15, v30

    move-object/from16 v16, v3

    move-object/from16 v20, v21

    move-object/from16 v21, v0

    .line 25
    invoke-direct/range {v15 .. v29}, Le/a/c/r/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/Integer;Le/a/c/r/j/c0;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/util/List;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_1
    const-string v5, "alert"

    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 27
    iget-object v4, v0, Le/a/c/r/b$f;->p:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 28
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v10, -0x5185d186

    if-eq v5, v10, :cond_3

    const v10, 0x5b0b983

    if-eq v5, v10, :cond_0

    const v10, 0x1e1abdca

    if-ne v5, v10, :cond_6

    const-string v5, "reschedule"

    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_0
    const-string v5, "delay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 30
    :goto_0
    new-instance v30, Le/a/c/r/k/b;

    .line 31
    iget-object v4, v0, Le/a/c/r/b$f;->t:Ljava/lang/String;

    const-string v5, ")  "

    const/16 v6, 0x28

    if-eqz v4, :cond_1

    .line 32
    invoke-static {v6}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 33
    iget-object v10, v0, Le/a/c/r/b$f;->t:Ljava/lang/String;

    .line 34
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v10, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 37
    :cond_1
    iget-object v4, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    :goto_1
    move-object/from16 v16, v4

    .line 38
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->k0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v17

    .line 39
    iget-object v4, v0, Le/a/c/r/b$f;->t:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 40
    invoke-static {v6}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 41
    iget-object v6, v0, Le/a/c/r/b$f;->t:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v5, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 45
    :cond_2
    iget-object v4, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    :goto_2
    move-object/from16 v18, v4

    .line 46
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->l0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v19

    .line 47
    new-instance v15, Le/a/c/r/j/m;

    .line 48
    iget v4, v0, Le/a/c/r/b$f;->v:I

    .line 49
    invoke-direct {v15, v4, v9, v9, v7}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 50
    iget-object v10, v0, Le/a/c/r/b$f;->d:Ljava/lang/String;

    const/16 v22, 0x0

    .line 51
    new-instance v9, Le/a/c/r/j/c0;

    .line 52
    iget-object v4, v0, Le/a/c/r/b$f;->e:Ljava/lang/String;

    .line 53
    invoke-direct {v9, v4, v14, v14, v7}, Le/a/c/r/j/c0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 54
    invoke-static {v1, v3, v8}, Le/a/m0/a1$k;->g0(Landroid/content/Context;Le/a/b0/m/a/a;Z)Ljava/lang/String;

    move-result-object v24

    .line 55
    new-instance v25, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 56
    iget-object v3, v0, Le/a/c/r/b$f;->y:Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v4, 0x1

    .line 57
    invoke-static {v3, v14, v4}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 58
    iget-object v5, v0, Le/a/c/r/b$f;->s:Ljava/lang/String;

    .line 59
    iget-boolean v6, v0, Le/a/c/r/b$f;->u:Z

    const/4 v7, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x0

    move-object/from16 v3, v25

    move/from16 v8, p3

    move-object/from16 v23, v9

    move/from16 v9, v20

    move-object/from16 v26, v10

    move-object/from16 v10, v21

    .line 60
    invoke-direct/range {v3 .. v10}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILs1/z/c/f;)V

    const/4 v3, 0x1

    .line 61
    invoke-static {v0, v3}, Le/a/m0/a1$k;->G(Le/a/c/r/b$f;Z)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-virtual {v12, v13}, Le/a/c/i/l/e/a;->a(Ljava/lang/String;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x1000

    move-object v3, v15

    move-object/from16 v15, v30

    move-object/from16 v20, v3

    move-object/from16 v21, v26

    move-object/from16 v26, v0

    .line 63
    invoke-direct/range {v15 .. v29}, Le/a/c/r/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/Integer;Le/a/c/r/j/c0;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/util/List;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_3
    const-string v5, "cancel"

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 65
    new-instance v30, Le/a/c/r/k/b;

    .line 66
    iget-object v15, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 67
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->k0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v17

    .line 68
    iget-object v10, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 69
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->l0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v19

    .line 70
    new-instance v6, Le/a/c/r/j/m;

    .line 71
    iget v4, v0, Le/a/c/r/b$f;->v:I

    .line 72
    invoke-direct {v6, v4, v9, v9, v7}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 73
    iget-object v4, v0, Le/a/c/r/b$f;->t:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v21, v4

    goto :goto_3

    .line 74
    :cond_4
    iget-object v5, v0, Le/a/c/r/b$f;->d:Ljava/lang/String;

    move-object/from16 v21, v5

    .line 75
    :goto_3
    iget-object v9, v0, Le/a/c/r/b$f;->w:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    move-object/from16 v23, v14

    goto :goto_4

    .line 76
    :cond_5
    new-instance v4, Le/a/c/r/j/c0;

    .line 77
    iget-object v5, v0, Le/a/c/r/b$f;->e:Ljava/lang/String;

    .line 78
    invoke-direct {v4, v5, v14, v14, v7}, Le/a/c/r/j/c0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    move-object/from16 v23, v4

    .line 79
    :goto_4
    invoke-static {v1, v3, v8}, Le/a/m0/a1$k;->g0(Landroid/content/Context;Le/a/b0/m/a/a;Z)Ljava/lang/String;

    move-result-object v24

    .line 80
    new-instance v25, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 81
    iget-object v3, v0, Le/a/c/r/b$f;->y:Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v4, 0x1

    .line 82
    invoke-static {v3, v14, v4}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 83
    iget-object v5, v0, Le/a/c/r/b$f;->s:Ljava/lang/String;

    .line 84
    iget-boolean v0, v0, Le/a/c/r/b$f;->u:Z

    const/4 v7, 0x0

    const/16 v16, 0x8

    const/16 v18, 0x0

    move-object/from16 v3, v25

    move-object/from16 v20, v6

    move v6, v0

    move/from16 v8, p3

    move-object v0, v9

    move/from16 v9, v16

    move-object/from16 v22, v10

    move-object/from16 v10, v18

    .line 85
    invoke-direct/range {v3 .. v10}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILs1/z/c/f;)V

    const/16 v26, 0x0

    .line 86
    invoke-virtual {v12, v13}, Le/a/c/i/l/e/a;->a(Ljava/lang/String;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x1400

    move-object v3, v15

    move-object/from16 v15, v30

    move-object/from16 v16, v3

    move-object/from16 v18, v22

    move-object/from16 v22, v0

    .line 87
    invoke-direct/range {v15 .. v29}, Le/a/c/r/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/Integer;Le/a/c/r/j/c0;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/util/List;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 88
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    iget-object v0, v0, Le/a/c/r/b$f;->p:Ljava/lang/String;

    .line 90
    invoke-static {v2, v0, v6}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    const-string v5, "bus"

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 92
    new-instance v30, Le/a/c/r/k/b;

    .line 93
    iget-object v15, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 94
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->k0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v17

    .line 95
    iget-object v10, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 96
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->l0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v19

    .line 97
    new-instance v6, Le/a/c/r/j/m;

    .line 98
    iget v4, v0, Le/a/c/r/b$f;->v:I

    .line 99
    invoke-direct {v6, v4, v9, v9, v7}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 100
    iget-object v9, v0, Le/a/c/r/b$f;->d:Ljava/lang/String;

    const/16 v22, 0x0

    .line 101
    new-instance v5, Le/a/c/r/j/c0;

    .line 102
    iget-object v4, v0, Le/a/c/r/b$f;->e:Ljava/lang/String;

    .line 103
    invoke-direct {v5, v4, v14, v14, v7}, Le/a/c/r/j/c0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 104
    invoke-static {v1, v3, v8}, Le/a/m0/a1$k;->g0(Landroid/content/Context;Le/a/b0/m/a/a;Z)Ljava/lang/String;

    move-result-object v24

    .line 105
    new-instance v25, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 106
    iget-object v3, v0, Le/a/c/r/b$f;->y:Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v4, 0x1

    .line 107
    invoke-static {v3, v14, v4}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 108
    iget-object v7, v0, Le/a/c/r/b$f;->s:Ljava/lang/String;

    .line 109
    iget-boolean v0, v0, Le/a/c/r/b$f;->u:Z

    const/16 v16, 0x0

    const/16 v18, 0x8

    const/16 v20, 0x0

    move-object/from16 v3, v25

    move-object/from16 v23, v5

    move-object v5, v7

    move-object/from16 v21, v6

    move v6, v0

    move/from16 v7, v16

    move/from16 v8, p3

    move-object v0, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v20

    .line 110
    invoke-direct/range {v3 .. v10}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILs1/z/c/f;)V

    const/16 v26, 0x0

    .line 111
    invoke-virtual {v12, v13}, Le/a/c/i/l/e/a;->a(Ljava/lang/String;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x1400

    move-object v3, v15

    move-object/from16 v15, v30

    move-object/from16 v16, v3

    move-object/from16 v20, v21

    move-object/from16 v21, v0

    .line 112
    invoke-direct/range {v15 .. v29}, Le/a/c/r/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/Integer;Le/a/c/r/j/c0;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/util/List;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;I)V

    goto/16 :goto_5

    :sswitch_3
    const-string v5, "flight"

    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 114
    new-instance v30, Le/a/c/r/k/b;

    .line 115
    iget-object v15, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 116
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->k0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v17

    .line 117
    iget-object v10, v0, Le/a/c/r/b$f;->a:Ljava/lang/String;

    .line 118
    invoke-static/range {p0 .. p0}, Le/a/m0/a1$k;->l0(Le/a/c/r/b$f;)Ljava/lang/String;

    move-result-object v19

    .line 119
    new-instance v6, Le/a/c/r/j/m;

    .line 120
    iget v4, v0, Le/a/c/r/b$f;->v:I

    .line 121
    invoke-direct {v6, v4, v9, v9, v7}, Le/a/c/r/j/m;-><init>(IIII)V

    .line 122
    iget-object v9, v0, Le/a/c/r/b$f;->d:Ljava/lang/String;

    const/16 v22, 0x0

    .line 123
    new-instance v5, Le/a/c/r/j/c0;

    .line 124
    iget-object v4, v0, Le/a/c/r/b$f;->e:Ljava/lang/String;

    .line 125
    invoke-direct {v5, v4, v14, v14, v7}, Le/a/c/r/j/c0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 126
    invoke-static {v1, v3, v8}, Le/a/m0/a1$k;->g0(Landroid/content/Context;Le/a/b0/m/a/a;Z)Ljava/lang/String;

    move-result-object v24

    .line 127
    new-instance v25, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 128
    iget-object v3, v0, Le/a/c/r/b$f;->y:Lcom/truecaller/insights/models/InsightsDomain$f;

    const/4 v4, 0x1

    .line 129
    invoke-static {v3, v14, v4}, Le/a/m0/a1$k;->A(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 130
    iget-object v7, v0, Le/a/c/r/b$f;->s:Ljava/lang/String;

    .line 131
    iget-boolean v0, v0, Le/a/c/r/b$f;->u:Z

    const/16 v16, 0x0

    const/16 v18, 0x8

    const/16 v20, 0x0

    move-object/from16 v3, v25

    move-object/from16 v23, v5

    move-object v5, v7

    move-object/from16 v21, v6

    move v6, v0

    move/from16 v7, v16

    move/from16 v8, p3

    move-object v0, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v20

    .line 132
    invoke-direct/range {v3 .. v10}, Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILs1/z/c/f;)V

    const/16 v26, 0x0

    .line 133
    invoke-virtual {v12, v13}, Le/a/c/i/l/e/a;->a(Ljava/lang/String;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x1400

    move-object v3, v15

    move-object/from16 v15, v30

    move-object/from16 v16, v3

    move-object/from16 v20, v21

    move-object/from16 v21, v0

    .line 134
    invoke-direct/range {v15 .. v29}, Le/a/c/r/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Le/a/c/r/j/m;Ljava/lang/String;Ljava/lang/Integer;Le/a/c/r/j/c0;Ljava/lang/String;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;Ljava/util/List;Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;I)V

    :goto_5
    move-object/from16 v0, v30

    .line 135
    iget-object v3, v0, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 136
    invoke-static {v1, v2, v11, v3}, Le/a/m0/a1$k;->Q(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v3

    .line 137
    iget-object v4, v0, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    move/from16 v5, p4

    .line 138
    invoke-static {v1, v2, v5, v11, v4}, Le/a/m0/a1$k;->e0(Landroid/content/Context;ZZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v4

    .line 139
    iget-object v5, v0, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 140
    invoke-static {v1, v2, v11, v5}, Le/a/m0/a1$k;->h0(Landroid/content/Context;ZLe/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v2

    .line 141
    iget-object v5, v0, Le/a/c/r/k/b;->j:Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;

    .line 142
    invoke-static {v1, v11, v5}, Le/a/m0/a1$k;->S(Landroid/content/Context;Le/a/c/i/l/f/f;Lcom/truecaller/insights/models/smartnotifications/SmartNotificationMetadata;)Le/a/c/r/k/e;

    move-result-object v5

    .line 143
    iget-object v6, v0, Le/a/c/r/k/b;->l:Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    if-eqz v6, :cond_7

    .line 144
    invoke-static {v6}, Le/a/m0/a1$k;->h1(Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;)Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 145
    invoke-interface {v11, v1, v6}, Le/a/c/i/l/f/f;->c(Landroid/content/Context;Lcom/truecaller/insights/models/smartnotifications/NotificationBannerMetaData;)Landroid/app/PendingIntent;

    move-result-object v14

    .line 146
    :cond_7
    new-instance v1, Le/a/c/r/k/c;

    move-object/from16 p0, v1

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v2

    move-object/from16 p4, v5

    move-object/from16 p5, v14

    invoke-direct/range {p0 .. p5}, Le/a/c/r/k/c;-><init>(Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Le/a/c/r/k/e;Landroid/app/PendingIntent;)V

    .line 147
    new-instance v2, Le/a/c/r/k/a;

    invoke-direct {v2, v0, v1}, Le/a/c/r/k/a;-><init>(Le/a/c/r/k/b;Le/a/c/r/k/c;)V

    return-object v2

    .line 148
    :cond_8
    :goto_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    iget-object v0, v0, Le/a/c/r/b$f;->o:Ljava/lang/String;

    .line 150
    invoke-static {v2, v0, v6}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x4bce7b90 -> :sswitch_3
        0x17e80 -> :sswitch_2
        0x589895c -> :sswitch_1
        0x697f208 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic q(Le/a/o/b/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/data/entity/FeatureType;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 1
    sget-object p5, Lcom/truecaller/data/entity/FeatureType;->UNDEFINED:Lcom/truecaller/data/entity/FeatureType;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Le/a/o/b/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/truecaller/data/entity/FeatureType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final q0(Ljava/lang/Double;Ljava/lang/Double;)D
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot multiply null value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final q1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain$b;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;Z)",
            "Lcom/truecaller/insights/models/InsightsDomain$b;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "$this$toDeliveryDomainSchema"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actions"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Delivery"

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Lcom/truecaller/insights/models/InsightsDomain$b;

    .line 3
    sget-object v3, Lcom/truecaller/insights/binders/utils/OrderStatus;->Companion:Lcom/truecaller/insights/binders/utils/OrderStatus$b;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "type"

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/truecaller/insights/binders/utils/OrderStatus;->access$getMap$cp()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/insights/binders/utils/OrderStatus;

    .line 6
    sget-object v5, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->Companion:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus$a;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;->access$getMap$cp()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal4()Ljava/lang/String;

    move-result-object v10

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object v12

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object v15

    .line 17
    sget-object v11, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->Companion:Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes$a;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object v13

    .line 18
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;->access$getMap$cp()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/c/p/a;->M2(Lcom/truecaller/insights/models/smartcards/ActionStateEntity;)Le/a/c/r/j/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v23, v0

    .line 21
    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Le/a/c/p/a;->V1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/b;

    move-result-object v13

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v16

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v19

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v18

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getConversationId()J

    move-result-wide v20

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->isIM()Z

    move-result v22

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getMessage()Ljava/lang/String;

    move-result-object v26

    .line 28
    sget-object v24, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    move-object v3, v1

    move/from16 v25, p2

    .line 29
    invoke-direct/range {v3 .. v26}, Lcom/truecaller/insights/models/InsightsDomain$b;-><init>(Lcom/truecaller/insights/binders/utils/OrderStatus;Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$OrderSubStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/binders/utils/DeliverySchemaRuleHelper$UrlTypes;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lw3/b/a/b;JZLe/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;)V

    return-object v1

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create Delivery from ["

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] pdo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic r(Le/a/o/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/data/entity/CallContextMessage;
    .locals 9

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    .line 1
    sget-object v0, Lcom/truecaller/data/entity/FeatureType;->UNDEFINED:Lcom/truecaller/data/entity/FeatureType;

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/truecaller/data/entity/MessageType$Undefined;->b:Lcom/truecaller/data/entity/MessageType$Undefined;

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-interface/range {v2 .. v8}, Le/a/o/b/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/FeatureType;Lcom/truecaller/data/entity/MessageType;Ljava/lang/String;)Lcom/truecaller/data/entity/CallContextMessage;

    move-result-object v0

    return-object v0
.end method

.method public static final r0(Ls1/z/b/l;Ljava/lang/String;Le/a/p5/m0;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Le/a/p5/m0;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/a4/d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/a4/d;

    iget v1, v0, Le/a/a4/d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a4/d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a4/d;

    invoke-direct {v0, p3}, Le/a/a4/d;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/a4/d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a4/d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/a/a4/d;->h:Ljava/lang/Object;

    check-cast p0, Le/a/p5/l0;

    iget-object p1, v0, Le/a/a4/d;->g:Ljava/lang/Object;

    check-cast p1, Le/a/p5/l0;

    iget-object p1, v0, Le/a/a4/d;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p2, p1}, Le/a/p5/m0;->a(Ljava/lang/String;)Le/a/p5/l0;

    move-result-object p2

    .line 5
    iput-object p1, v0, Le/a/a4/d;->f:Ljava/lang/Object;

    iput-object p2, v0, Le/a/a4/d;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/a4/d;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/a4/d;->e:I

    invoke-interface {p0, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p2

    .line 6
    :goto_1
    invoke-interface {p0}, Le/a/p5/l0;->stop()V

    .line 7
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method

.method public static final r1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;Z)",
            "Lcom/truecaller/insights/models/InsightsDomain;"
        }
    .end annotation

    const-string v0, "$this$toDomainSchema"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "Delivery"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Le/a/m0/a1$k;->q1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain$b;

    move-result-object p0

    goto :goto_1

    :sswitch_1
    const-string p1, "Notif"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Le/a/m0/a1$k;->y1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$d;

    move-result-object p0

    goto :goto_1

    :sswitch_2
    const-string p1, "Event"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Le/a/m0/a1$k;->t1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$c;

    move-result-object p0

    goto :goto_1

    :sswitch_3
    const-string v1, "Bill"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Le/a/m0/a1$k;->i1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain$Bill;

    move-result-object p0

    goto :goto_1

    :sswitch_4
    const-string p1, "Bank"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Le/a/m0/a1$k;->f1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$a;

    move-result-object p0

    goto :goto_1

    :sswitch_5
    const-string p1, "OTP"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Le/a/m0/a1$k;->z1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;)Lcom/truecaller/insights/models/InsightsDomain$e;

    move-result-object p0

    goto :goto_1

    :sswitch_6
    const-string v1, "Travel"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Le/a/m0/a1$k;->D1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain$f;

    move-result-object p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a3494c6 -> :sswitch_6
        0x1330b -> :sswitch_5
        0x1f7a5c -> :sswitch_4
        0x1f9827 -> :sswitch_3
        0x403827a -> :sswitch_2
        0x47f5f10 -> :sswitch_1
        0x34ef8014 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final s(Ljava/lang/Double;Ljava/lang/Double;)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot divide null value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final s0(Ls1/z/b/a;Ljava/lang/String;Le/a/p5/m0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ljava/lang/String;",
            "Le/a/p5/m0;",
            ")V"
        }
    .end annotation

    const-string v0, "$this$invoke"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2, p1}, Le/a/p5/m0;->a(Ljava/lang/String;)Le/a/p5/l0;

    move-result-object p1

    .line 2
    invoke-interface {p0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Le/a/p5/l0;->stop()V

    return-void
.end method

.method public static synthetic s1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain;
    .locals 0

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 2
    :cond_1
    invoke-static {p0, p1, p2}, Le/a/m0/a1$k;->r1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;Z)Lcom/truecaller/insights/models/InsightsDomain;

    move-result-object p0

    return-object p0
.end method

.method public static final t(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "+TT;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/d;

    iget v1, v0, Le/a/c/d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/d;

    invoke-direct {v0, p1}, Le/a/c/d;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide v1, v0, Le/a/c/d;->h:J

    iget-object p0, v0, Le/a/c/d;->g:Ljava/lang/Object;

    check-cast p0, Ls1/z/c/c0;

    iget-object v0, v0, Le/a/c/d;->f:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object p1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5
    iput-object p1, v0, Le/a/c/d;->f:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/d;->g:Ljava/lang/Object;

    iput-wide v4, v0, Le/a/c/d;->h:J

    iput v3, v0, Le/a/c/d;->e:I

    invoke-interface {p0, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    move-wide v1, v4

    move-object p1, p0

    move-object p0, v0

    .line 6
    :goto_1
    iput-object p1, p0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    .line 8
    new-instance v1, Ls1/k;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 9
    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p0, p1}, Ljava/lang/Long;-><init>(J)V

    .line 10
    invoke-direct {v1, v0, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final t0(Lcom/truecaller/insights/commons/model/InsightsFilterType;)Z
    .locals 1

    const-string v0, "$this$isBlackListed"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/m0/a1$k;->C0(Lcom/truecaller/insights/commons/model/InsightsFilterType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final t1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$c;
    .locals 24

    const-string v0, "$this$toEventDomainSchema"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Event"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/truecaller/insights/models/InsightsDomain$c;

    move-object v2, v0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v8

    .line 9
    sget-object v9, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Le/a/c/p/a;->V1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/b;

    move-result-object v9

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v12

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v14

    invoke-static {v14}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v15

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v14

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getConversationId()J

    move-result-wide v16

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->isIM()Z

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getMessage()Ljava/lang/String;

    move-result-object v22

    const v23, 0xc000

    move/from16 v21, p1

    .line 18
    invoke-direct/range {v2 .. v23}, Lcom/truecaller/insights/models/InsightsDomain$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lw3/b/a/b;JZLe/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;I)V

    return-object v0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create Event from ["

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] pdo"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static u(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "ambassador"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "known_sender"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "user"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "gold"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "cred"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "verified_business"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_0

    :sswitch_6
    const-string v2, "premium"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "business"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move v1, v5

    goto :goto_0

    :sswitch_8
    const-string v2, "priority"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    move v1, v6

    goto :goto_0

    :sswitch_9
    const-string v2, "verified"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    return v3

    :pswitch_1
    const/16 p0, 0x200

    return p0

    :pswitch_2
    return v6

    :pswitch_3
    const/16 p0, 0x20

    return p0

    :pswitch_4
    const/16 p0, 0x100

    return p0

    :pswitch_5
    const/16 p0, 0x80

    return p0

    :pswitch_6
    return v4

    :pswitch_7
    const/16 p0, 0x40

    return p0

    :pswitch_8
    const/16 p0, 0x10

    return p0

    :pswitch_9
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76dfe138 -> :sswitch_9
        -0x4577865c -> :sswitch_8
        -0x445b4040 -> :sswitch_7
        -0x12fb31a9 -> :sswitch_6
        -0xf740ca9 -> :sswitch_5
        0x2eb94e -> :sswitch_4
        0x308060 -> :sswitch_3
        0x36ebcb -> :sswitch_2
        0x175df2b1 -> :sswitch_1
        0x4b263cd1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final u0(Lcom/truecaller/data/entity/Contact;)Z
    .locals 6

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->s()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    .line 3
    new-instance v4, Ls1/d0/c;

    const/16 v5, 0x39

    invoke-direct {v4, v3, v5}, Ls1/d0/c;-><init>(CC)V

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v4, v3}, Ls1/u/i;->k0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x2a

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x23

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x3b

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x2b

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 4
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static final u1(Le/a/c/g/a0/j;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/a0/j;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Double;

    .line 1
    iget-wide v1, p0, Le/a/c/g/a0/j;->a:D

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-wide v1, p0, Le/a/c/g/a0/j;->b:D

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    iget-wide v1, p0, Le/a/c/g/a0/j;->c:D

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7
    iget-wide v1, p0, Le/a/c/g/a0/j;->d:D

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 9
    iget-wide v1, p0, Le/a/c/g/a0/j;->e:D

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 11
    iget-wide v1, p0, Le/a/c/g/a0/j;->f:D

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 13
    iget-wide v1, p0, Le/a/c/g/a0/j;->g:D

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 15
    iget-wide v1, p0, Le/a/c/g/a0/j;->h:D

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 17
    iget-wide v1, p0, Le/a/c/g/a0/j;->i:D

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 19
    iget-wide v1, p0, Le/a/c/g/a0/j;->j:D

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/16 v1, 0x9

    aput-object p0, v0, v1

    .line 21
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {v1}, Le/a/m0/a1$k;->u(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final v0(Le/a/f/y/x;)Z
    .locals 1

    const-string v0, "$this$isConference"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Le/a/f/y/x;->a:Landroid/telecom/Call;

    .line 2
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final v1(Lcom/truecaller/flashsdk/models/FormField;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/flashsdk/models/FormField;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu3/j0;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toMap"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/models/FormField;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->A1(Ljava/lang/String;)Lu3/j0;

    move-result-object v1

    const-string v2, "X-Amz-Algorithm"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/models/FormField;->getPolicy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->A1(Ljava/lang/String;)Lu3/j0;

    move-result-object v1

    const-string v2, "Policy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/models/FormField;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->A1(Ljava/lang/String;)Lu3/j0;

    move-result-object v1

    const-string v2, "X-Amz-Signature"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/models/FormField;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->A1(Ljava/lang/String;)Lu3/j0;

    move-result-object v1

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/models/FormField;->getAccess()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->A1(Ljava/lang/String;)Lu3/j0;

    move-result-object v1

    const-string v2, "acl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/models/FormField;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->A1(Ljava/lang/String;)Lu3/j0;

    move-result-object v1

    const-string v2, "X-Amz-Date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/models/FormField;->getBucket()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->A1(Ljava/lang/String;)Lu3/j0;

    move-result-object v1

    const-string v2, "bucket"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/flashsdk/models/FormField;->getCredential()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/a/m0/a1$k;->A1(Ljava/lang/String;)Lu3/j0;

    move-result-object p0

    const-string v1, "X-Amz-Credential"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static final w(Le/a/c/r/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getAnalyticCategory"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Le/a/c/r/b$b;->o:Ljava/lang/String;

    .line 2
    invoke-static {p0, p1}, Le/a/m0/a1$k;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final w0(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Z
    .locals 6

    const-string v0, "$this$isCreditCardBill"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payment_due"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getBillCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "payment_notif"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Le/a/m0/a1$k;->C(Lcom/truecaller/insights/models/InsightsDomain$Bill;)D

    move-result-wide v2

    int-to-double v4, v1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    const-string v0, "$this$isTypeBillDue"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    const-string v2, "due"

    const-string v3, "overdue"

    .line 3
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueInsType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "creditcard"

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final w1(Ljava/util/List;)Le/a/c/g/a0/j;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Le/a/c/g/a0/j;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Le/a/c/g/a0/j;

    move-object v2, v1

    const/4 v3, 0x0

    .line 2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    const/4 v9, 0x3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    const/4 v11, 0x4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    const/4 v13, 0x5

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    const/4 v15, 0x6

    .line 3
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    move-object/from16 v23, v1

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v21

    .line 4
    invoke-direct/range {v2 .. v22}, Le/a/c/g/a0/j;-><init>(DDDDDDDDDD)V

    return-object v23
.end method

.method public static final x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7bcfca1e

    if-eq v0, v1, :cond_2

    const v1, -0x1f6ae2cc

    if-eq v0, v1, :cond_1

    const v1, 0x552751c9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CreditCard"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p1, "creditcard_bill"

    goto :goto_1

    :cond_1
    const-string v0, "PrepaidSuccess"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p1, "prepaid_success"

    goto :goto_1

    :cond_2
    const-string v0, "PrepaidExpiry"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p1, "prepaid_expiry"

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "Bill"

    :goto_1
    return-object p1
.end method

.method public static final x0(Lcom/truecaller/insights/models/InsightsDomain$e;)Z
    .locals 1

    const-string v0, "$this$isDeliveryOtp"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$e;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "delivery"

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final x1(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Number;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toNormalizedNumbers"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lcom/truecaller/data/entity/Number;

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic y(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    and-int/lit8 p1, p2, 0x2

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1}, Le/a/m0/a1$k;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final y0(Le/a/f/a/g;)Z
    .locals 1

    const-string v0, "$this$isGold"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$hasBadge"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget p0, p0, Le/a/f/a/g;->d:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final y1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Z)Lcom/truecaller/insights/models/InsightsDomain$d;
    .locals 15

    const-string v0, "$this$toNotifDomainSchema"

    move-object v1, p0

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Notif"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/truecaller/insights/models/InsightsDomain$d;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v3

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v6

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getConversationId()J

    move-result-wide v7

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->isIM()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc0

    move-object v1, v0

    move/from16 v12, p1

    .line 10
    invoke-direct/range {v1 .. v14}, Lcom/truecaller/insights/models/InsightsDomain$d;-><init>(Ljava/lang/String;JLjava/lang/String;Lw3/b/a/b;JZLe/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;I)V

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create Update from ["

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] pdo"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final z(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getAnalyticsCategory"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "train"

    .line 2
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Travel_train"

    goto :goto_1

    :sswitch_1
    const-string v0, "alert"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/insights/models/InsightsDomain$f;->k()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Le/a/m0/a1$k;->z(Lcom/truecaller/insights/models/InsightsDomain$f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :sswitch_2
    const-string p0, "bus"

    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Travel_bus"

    goto :goto_1

    :sswitch_3
    const-string p0, "flight"

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Travel_flight"

    goto :goto_1

    :cond_0
    :goto_0
    const-string p0, "Travel_alert"

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bce7b90 -> :sswitch_3
        0x17e80 -> :sswitch_2
        0x589895c -> :sswitch_1
        0x697f208 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final z0(Le/a/f/a/g;)Z
    .locals 1

    const-string v0, "$this$isGoldWithSpam"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Le/a/f/a/g;->k:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/f/a/g;->x:Lcom/truecaller/blocking/FilterMatch;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/f/a/g;->x:Lcom/truecaller/blocking/FilterMatch;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object p0, p0, Le/a/f/a/g;->x:Lcom/truecaller/blocking/FilterMatch;

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/blocking/FilterMatch;->c()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final z1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;)Lcom/truecaller/insights/models/InsightsDomain$e;
    .locals 17

    const-string v0, "$this$toOtpDomainSchema"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OTP"

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/truecaller/insights/models/InsightsDomain$e;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getConversationId()J

    move-result-wide v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v10

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v9

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getTransport()Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v3

    sget-object v11, Lcom/truecaller/insights/commons/model/Transport;->IM:Lcom/truecaller/insights/commons/model/Transport;

    if-ne v3, v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v11, v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->getMessage()Ljava/lang/String;

    move-result-object v16

    const/4 v13, 0x0

    .line 11
    sget-object v14, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    const/4 v15, 0x0

    move-object v3, v0

    .line 12
    invoke-direct/range {v3 .. v16}, Lcom/truecaller/insights/models/InsightsDomain$e;-><init>(JJLjava/lang/String;Lw3/b/a/b;Ljava/lang/String;ZLjava/lang/String;Le/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;)V

    return-object v0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create OtpDomain from ["

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] pdo"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
