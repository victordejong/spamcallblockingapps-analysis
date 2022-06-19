.class final Lcom/hiya/stingray/ui/stats/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/stats/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;TR;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/hiya/stingray/ui/stats/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hiya/stingray/ui/stats/c$c;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/stats/c$c;-><init>()V

    sput-object v0, Lcom/hiya/stingray/ui/stats/c$c;->f:Lcom/hiya/stingray/ui/stats/c$c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/hiya/stingray/ui/stats/c$a;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/d0;",
            ">;)",
            "Lcom/hiya/stingray/ui/stats/c$a;"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "blockedCallLogs"

    .line 2
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "it"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    move-object v6, v3

    check-cast v6, Lcom/hiya/stingray/t/d0;

    .line 6
    invoke-static {v6, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/hiya/stingray/t/d0;->s()J

    move-result-wide v6

    invoke-static {v6, v7, v5}, Lcom/hiya/stingray/util/p;->e(JZ)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 11
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    const/16 v8, 0x1e

    int-to-long v8, v8

    :goto_1
    const/4 v10, 0x0

    cmp-long v11, v6, v8

    if-gez v11, :cond_3

    .line 13
    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    sub-long v11, v2, v11

    .line 14
    invoke-static {v11, v12, v5}, Lcom/hiya/stingray/util/p;->e(JZ)Ljava/lang/String;

    move-result-object v11

    .line 15
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    goto :goto_1

    .line 16
    :cond_3
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    const-string v3, "it.reputationDataItem"

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    .line 17
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hiya/stingray/t/d0;

    .line 18
    invoke-static {v8, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v8

    sget-object v9, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    if-ltz v7, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {}, Lkotlin/s/k;->o()V

    throw v2

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    .line 19
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v8, 0x0

    goto :goto_7

    .line 20
    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :cond_a
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hiya/stingray/t/d0;

    .line 21
    invoke-static {v9, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v9

    sget-object v11, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    if-ne v9, v11, :cond_b

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_a

    add-int/lit8 v8, v8, 0x1

    if-ltz v8, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {}, Lkotlin/s/k;->o()V

    throw v2

    :cond_d
    :goto_7
    if-eqz v0, :cond_e

    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v9, 0x0

    goto :goto_a

    .line 23
    :cond_e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    :cond_f
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/hiya/stingray/t/d0;

    .line 24
    invoke-static {v11, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v12

    invoke-static {v12, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v12

    sget-object v13, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    if-eq v12, v13, :cond_10

    invoke-virtual {v11}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v12

    invoke-static {v12, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object v12

    sget-object v13, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    if-eq v12, v13, :cond_10

    invoke-virtual {v11}, Lcom/hiya/stingray/t/d0;->h()Lcom/hiya/stingray/t/b0;

    move-result-object v11

    sget-object v12, Lcom/hiya/stingray/t/b0;->MANUAL_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-ne v11, v12, :cond_10

    const/4 v11, 0x1

    goto :goto_9

    :cond_10
    const/4 v11, 0x0

    :goto_9
    if-eqz v11, :cond_f

    add-int/lit8 v9, v9, 0x1

    if-ltz v9, :cond_11

    goto :goto_8

    :cond_11
    invoke-static {}, Lkotlin/s/k;->o()V

    throw v2

    :cond_12
    :goto_a
    if-eqz v0, :cond_13

    .line 25
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v5, 0x0

    goto :goto_c

    .line 26
    :cond_13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/t/d0;

    .line 27
    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_15

    goto :goto_b

    :cond_15
    invoke-static {}, Lkotlin/s/k;->o()V

    throw v2

    :cond_16
    move v5, v10

    .line 28
    :goto_c
    new-instance v0, Lcom/hiya/stingray/ui/stats/c$c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/stats/c$c$a;-><init>()V

    invoke-static {p1, v0}, Lkotlin/s/k;->d0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    const/16 v0, 0xa

    .line 29
    invoke-static {p1, v0}, Lkotlin/s/k;->f0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v6

    .line 30
    new-instance p1, Lcom/hiya/stingray/ui/stats/c$a;

    move-object v0, p1

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/hiya/stingray/ui/stats/c$a;-><init>(Ljava/util/List;IIIILjava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/stats/c$c;->a(Ljava/util/List;)Lcom/hiya/stingray/ui/stats/c$a;

    move-result-object p1

    return-object p1
.end method
