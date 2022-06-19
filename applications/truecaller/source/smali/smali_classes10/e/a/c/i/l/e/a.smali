.class public final Le/a/c/i/l/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/i/l/e/b;

.field public final b:Le/a/b0/q/l0;

.field public final c:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/i/l/e/b;Le/a/b0/q/l0;Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "notificationBannerRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/l/e/a;->a:Le/a/c/i/l/e/b;

    iput-object p2, p0, Le/a/c/i/l/e/a;->b:Le/a/b0/q/l0;

    iput-object p3, p0, Le/a/c/i/l/e/a;->c:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "category"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Le/a/c/i/l/e/a;->c:Le/a/c/b/j;

    invoke-interface {v2}, Le/a/c/b/j;->A()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2
    iget-object v2, v0, Le/a/c/i/l/e/a;->a:Le/a/c/i/l/e/b;

    .line 3
    iget-object v2, v2, Le/a/c/i/l/e/b;->a:Le/a/u3/g;

    .line 4
    iget-object v4, v2, Le/a/u3/g;->H3:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0xf3

    aget-object v5, v5, v6

    invoke-virtual {v4, v2, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    check-cast v2, Le/a/u3/i;

    .line 5
    invoke-interface {v2}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-nez v4, :cond_1

    .line 7
    :try_start_0
    new-instance v4, Le/m/e/k;

    invoke-direct {v4}, Le/m/e/k;-><init>()V

    const-class v7, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBannerConfig;

    .line 8
    invoke-virtual {v4, v2, v7}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    invoke-static {v7}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBannerConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_e

    .line 11
    iget-object v4, v0, Le/a/c/i/l/e/a;->a:Le/a/c/i/l/e/b;

    invoke-virtual {v4}, Le/a/c/i/l/e/b;->b()Ljava/util/Map;

    move-result-object v4

    .line 12
    iget-object v7, v0, Le/a/c/i/l/e/a;->a:Le/a/c/i/l/e/b;

    invoke-virtual {v7}, Le/a/c/i/l/e/b;->c()Ljava/util/Map;

    move-result-object v7

    .line 13
    iget-object v8, v0, Le/a/c/i/l/e/a;->a:Le/a/c/i/l/e/b;

    invoke-virtual {v8}, Le/a/c/i/l/e/b;->a()Ljava/util/Map;

    move-result-object v8

    .line 14
    invoke-virtual {v2}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBannerConfig;->getBanners()Ljava/util/List;

    move-result-object v9

    .line 15
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 17
    move-object v12, v11

    check-cast v12, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 18
    invoke-virtual {v12}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v20, v11

    check-cast v20, Ljava/lang/Long;

    .line 19
    invoke-virtual {v12}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7, v11, v3}, Le/a/p5/s0/g;->Z(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v18

    .line 20
    invoke-virtual {v12}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v3, v11}, Le/a/p5/s0/g;->Z(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v19

    .line 21
    invoke-virtual {v12}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getMaxShowCount()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    goto :goto_3

    :cond_2
    invoke-virtual {v12}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getMaxShowCount()I

    move-result v3

    :goto_3
    move/from16 v17, v3

    const/16 v21, 0xf

    const/16 v22, 0x0

    .line 22
    invoke-static/range {v12 .. v22}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->copy$default(Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Long;ILjava/lang/Object;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 23
    invoke-static {v2, v6, v10, v5, v3}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBannerConfig;->copy$default(Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBannerConfig;ILjava/util/List;ILjava/lang/Object;)Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBannerConfig;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 24
    invoke-virtual {v2}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBannerConfig;->getBanners()Ljava/util/List;

    move-result-object v4

    .line 25
    instance-of v7, v4, Ljava/util/Collection;

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_5

    .line 26
    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    .line 27
    iget-object v10, v0, Le/a/c/i/l/e/a;->b:Le/a/b0/q/l0;

    invoke-virtual {v7}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getLastShownTime()Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_4

    :cond_6
    move-wide v11, v8

    :goto_4
    const-wide/16 v13, 0x1

    sget-object v15, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v10 .. v15}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_5

    move v4, v6

    goto :goto_6

    :cond_7
    :goto_5
    move v4, v5

    :goto_6
    if-eqz v4, :cond_8

    goto :goto_7

    :cond_8
    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_e

    .line 28
    invoke-virtual {v2}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBannerConfig;->getBanners()Ljava/util/List;

    move-result-object v4

    .line 29
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    .line 30
    invoke-virtual {v10}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getCategory()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 31
    iget-object v12, v0, Le/a/c/i/l/e/a;->b:Le/a/b0/q/l0;

    invoke-virtual {v10}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getLastShownTime()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    goto :goto_9

    :cond_9
    move-wide v13, v8

    :goto_9
    invoke-virtual {v2}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBannerConfig;->getInterval()I

    move-result v11

    move-object/from16 v18, v4

    int-to-long v3, v11

    sget-object v17, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v3

    invoke-virtual/range {v12 .. v17}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v10}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getShownCount()I

    move-result v3

    invoke-virtual {v10}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getMaxShowCount()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-virtual {v10}, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;->getClickedCount()I

    move-result v3

    if-ge v3, v5, :cond_b

    move v3, v5

    goto :goto_a

    :cond_a
    move-object/from16 v18, v4

    :cond_b
    move v3, v6

    :goto_a
    if-eqz v3, :cond_c

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object/from16 v4, v18

    const/4 v3, 0x0

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    .line 32
    :goto_b
    check-cast v3, Lcom/truecaller/insights/core/smartnotifications/smsparser/models/NotificationBanner;

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    :goto_c
    return-object v3
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    const-string v0, "bannerName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/i/l/e/a;->a:Le/a/c/i/l/e/b;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Le/a/c/i/l/e/b;->b()Ljava/util/Map;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Le/a/c/i/l/e/b;->c()Ljava/util/Map;

    move-result-object v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, p1, v3}, Le/a/p5/s0/g;->Z(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :try_start_0
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    invoke-virtual {p1, v0}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, v1, Le/a/c/i/l/e/b;->b:Le/a/c/c0/o;

    const-string v3, "bannerLastShownTimeJson"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/c/c0/o;->z(Ljava/lang/String;)V

    .line 9
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    invoke-virtual {p1, v2}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, v1, Le/a/c/i/l/e/b;->b:Le/a/c/c0/o;

    const-string v1, "bannerShownCountJson"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/c/c0/o;->n0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
