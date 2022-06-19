.class public final Lcom/hiya/stingray/t/d1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/t/d1$a;-><init>()V

    return-void
.end method

.method private final b(JLcom/hiya/stingray/t/d1$c;)J
    .locals 2

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/d1$c;->ANNUAL:Lcom/hiya/stingray/t/d1$c;

    if-ne p3, v0, :cond_0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x16d

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    add-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lcom/hiya/stingray/t/d1;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/manager/u3$l;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/manager/u3$l;",
            ">;)",
            "Lcom/hiya/stingray/t/d1;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "purchases"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "previousPurchases"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/stingray/manager/u3$p;->values()[Lcom/hiya/stingray/manager/u3$p;

    move-result-object v1

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v1, v7

    .line 4
    invoke-virtual {v8}, Lcom/hiya/stingray/manager/u3$p;->isAnnual()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 7
    check-cast v7, Lcom/hiya/stingray/manager/u3$p;

    .line 8
    invoke-virtual {v7}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {}, Lcom/hiya/stingray/manager/u3$p;->values()[Lcom/hiya/stingray/manager/u3$p;

    move-result-object v4

    .line 10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 11
    array-length v8, v4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v4, v9

    .line 12
    invoke-virtual {v10}, Lcom/hiya/stingray/manager/u3$p;->isMonthly()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 13
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v7, v5}, Lkotlin/s/k;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 15
    check-cast v7, Lcom/hiya/stingray/manager/u3$p;

    .line 16
    invoke-virtual {v7}, Lcom/hiya/stingray/manager/u3$p;->getId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 17
    :cond_5
    invoke-static {v1, v4}, Lkotlin/s/k;->X(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/hiya/stingray/manager/u3$l;

    .line 19
    invoke-virtual {v10}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Lcom/hiya/stingray/manager/u3$l;->a()Ljava/lang/Boolean;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10, v11}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_6

    goto :goto_5

    :cond_8
    move-object v7, v8

    .line 20
    :goto_5
    check-cast v7, Lcom/hiya/stingray/manager/u3$l;

    if-eqz v7, :cond_f

    .line 21
    invoke-virtual {v7}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/hiya/stingray/t/d1$c;->ANNUAL:Lcom/hiya/stingray/t/d1$c;

    goto :goto_6

    .line 22
    :cond_9
    invoke-virtual {v7}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/hiya/stingray/t/d1$c;->MONTHLY:Lcom/hiya/stingray/t/d1$c;

    .line 23
    :goto_6
    sget-object v11, Lcom/hiya/stingray/t/d1$b;->SUBSCRIBED:Lcom/hiya/stingray/t/d1$b;

    .line 24
    invoke-virtual {v7}, Lcom/hiya/stingray/manager/u3$l;->d()J

    move-result-wide v12

    .line 25
    sget-object v1, Lcom/hiya/stingray/t/d1;->g:Lcom/hiya/stingray/t/d1$a;

    invoke-virtual {v7}, Lcom/hiya/stingray/manager/u3$l;->d()J

    move-result-wide v4

    invoke-direct {v1, v4, v5, v0}, Lcom/hiya/stingray/t/d1$a;->b(JLcom/hiya/stingray/t/d1$c;)J

    move-result-wide v14

    .line 26
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hiya/stingray/manager/u3$l;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3$l;->a()Ljava/lang/Boolean;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_a

    move-object v8, v2

    :cond_c
    if-eqz v8, :cond_d

    const/16 v16, 0x1

    goto :goto_8

    :cond_d
    const/16 v16, 0x0

    :goto_8
    const-wide/16 v18, 0x0

    const/16 v20, 0x20

    const/16 v21, 0x0

    .line 27
    new-instance v1, Lcom/hiya/stingray/t/d1;

    move-object v10, v1

    move-object/from16 v17, v0

    invoke-direct/range {v10 .. v21}, Lcom/hiya/stingray/t/d1;-><init>(Lcom/hiya/stingray/t/d1$b;JJZLcom/hiya/stingray/t/d1$c;JILkotlin/w/c/g;)V

    return-object v1

    :cond_e
    return-object v8

    .line 28
    :cond_f
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/hiya/stingray/manager/u3$l;

    .line 29
    invoke-virtual {v5}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/u3$l;->a()Ljava/lang/Boolean;

    move-result-object v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v7}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    goto :goto_9

    :cond_11
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_10

    goto :goto_a

    :cond_12
    move-object v3, v8

    .line 30
    :goto_a
    check-cast v3, Lcom/hiya/stingray/manager/u3$l;

    if-eqz v3, :cond_14

    .line 31
    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/hiya/stingray/t/d1$c;->ANNUAL:Lcom/hiya/stingray/t/d1$c;

    :goto_b
    move-object v11, v0

    goto :goto_c

    .line 32
    :cond_13
    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3$l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/hiya/stingray/t/d1$c;->MONTHLY:Lcom/hiya/stingray/t/d1$c;

    goto :goto_b

    .line 33
    :goto_c
    new-instance v0, Lcom/hiya/stingray/t/d1;

    .line 34
    sget-object v5, Lcom/hiya/stingray/t/d1$b;->FREE:Lcom/hiya/stingray/t/d1$b;

    .line 35
    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3$l;->d()J

    move-result-wide v6

    .line 36
    sget-object v1, Lcom/hiya/stingray/t/d1;->g:Lcom/hiya/stingray/t/d1$a;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/u3$l;->d()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v11}, Lcom/hiya/stingray/t/d1$a;->b(JLcom/hiya/stingray/t/d1$c;)J

    move-result-wide v8

    const/4 v10, 0x1

    const-wide/16 v12, 0x0

    const/16 v14, 0x20

    const/4 v15, 0x0

    move-object v4, v0

    .line 37
    invoke-direct/range {v4 .. v15}, Lcom/hiya/stingray/t/d1;-><init>(Lcom/hiya/stingray/t/d1$b;JJZLcom/hiya/stingray/t/d1$c;JILkotlin/w/c/g;)V

    return-object v0

    :cond_14
    return-object v8
.end method
