.class public final Le/a/c/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/e/e;
.implements Lq3/a/i0;


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Lq3/a/e1;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/r/j/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/r/j/j;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Le/a/c/e/c;


# direct methods
.method public constructor <init>(Le/a/c/e/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/e/f;->g:Le/a/c/e/c;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/c/e/f;->a:Lq3/a/y;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "Executors.newSingleThreadExecutor()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lq3/a/g1;

    invoke-direct {v0, p1}, Lq3/a/g1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 5
    iput-object v0, p0, Le/a/c/e/f;->b:Lq3/a/e1;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/c/e/f;->c:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/c/e/f;->d:Ljava/util/Map;

    const-string p1, ""

    .line 8
    iput-object p1, p0, Le/a/c/e/f;->e:Ljava/lang/String;

    const-string p1, "others_tab"

    .line 9
    iput-object p1, p0, Le/a/c/e/f;->f:Ljava/lang/String;

    return-void
.end method

.method public static final d(Le/a/c/e/f;Le/a/c/r/j/j;)Ljava/util/List;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, v1, Le/a/c/r/j/j;->a:Le/a/c/r/j/i;

    .line 4
    instance-of v3, v2, Le/a/c/r/j/s;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move-object v7, v2

    check-cast v7, Le/a/c/r/j/s;

    .line 5
    iget-object v7, v7, Le/a/c/r/j/s;->b:Le/a/c/r/j/n;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v4

    :goto_1
    if-eqz v7, :cond_f

    const-string v7, ""

    .line 6
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v10, "feature"

    .line 7
    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "eventCategory"

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "eventInfo"

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "context"

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "actionType"

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "actionInfo"

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "propertyMap"

    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v2}, Le/a/c/r/j/i;->b()Le/a/c/r/j/h;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 9
    iget-object v9, v9, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_5

    const/16 v10, 0x9

    if-eq v9, v10, :cond_4

    const/16 v10, 0xc

    if-eq v9, v10, :cond_4

    :goto_3
    const-string v9, "info_card"

    goto :goto_4

    :cond_4
    const-string v9, "important_message_feedback"

    goto :goto_4

    :cond_5
    const-string v9, "updates_tag"

    :goto_4
    move-object v11, v9

    const-string v9, "<set-?>"

    .line 11
    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, v2}, Le/a/c/e/f;->f(Le/a/c/r/j/i;)Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-static {v12, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v10, v0, Le/a/c/e/f;->e:Ljava/lang/String;

    invoke-interface {v2}, Le/a/c/r/j/i;->a()Z

    move-result v13

    invoke-static {v10, v13}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 15
    invoke-static {v13, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v2}, Le/a/c/r/j/i;->b()Le/a/c/r/j/h;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 17
    iget-object v10, v10, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    .line 18
    :goto_5
    sget-object v14, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->EDIT_TAG_FEEDBACK:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    if-ne v10, v14, :cond_7

    const-string v10, "edit_tag"

    goto :goto_6

    .line 19
    :cond_7
    iget-object v10, v0, Le/a/c/e/f;->f:Ljava/lang/String;

    :goto_6
    move-object v14, v10

    .line 20
    invoke-static {v14, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "view"

    .line 21
    invoke-static {v15, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v10, v4, [Ls1/k;

    .line 22
    invoke-virtual/range {p0 .. p1}, Le/a/c/e/f;->e(Le/a/c/r/j/j;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 23
    new-instance v8, Ls1/k;

    move-object/from16 v16, v7

    const-string v7, "view_time"

    invoke-direct {v8, v7, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v10, v5

    .line 24
    invoke-static {v10}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object v4

    .line 25
    invoke-static {v4, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {v2}, Le/a/c/r/j/i;->b()Le/a/c/r/j/h;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 27
    iget-object v7, v7, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_9

    goto :goto_9

    .line 28
    :cond_9
    invoke-interface {v2}, Le/a/c/r/j/i;->b()Le/a/c/r/j/h;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 29
    iget-object v7, v7, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    if-eqz v7, :cond_a

    .line 30
    invoke-virtual {v7}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackClass()Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    move-result-object v7

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    :goto_8
    sget-object v8, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->EDIT_TAG:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    if-ne v7, v8, :cond_b

    :goto_9
    move-object/from16 v7, v16

    goto :goto_a

    .line 31
    :cond_b
    invoke-interface {v2}, Le/a/c/r/j/i;->c()Le/a/c/i/e/b;

    move-result-object v7

    if-nez v7, :cond_c

    const-string v7, "with_button"

    goto :goto_a

    :cond_c
    const-string v7, "without_button"

    .line 32
    :goto_a
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d

    const/16 v18, 0x1

    goto :goto_b

    :cond_d
    move/from16 v18, v5

    :goto_b
    if-eqz v18, :cond_e

    .line 34
    new-instance v5, Le/a/c/r/d/b;

    .line 35
    new-instance v8, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1c0

    const/16 v22, 0x0

    move-object v10, v8

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v22}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 36
    invoke-static {v4}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 37
    invoke-direct {v5, v8, v4}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 38
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 39
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_c
    if-nez v3, :cond_10

    const/4 v3, 0x0

    goto :goto_d

    :cond_10
    move-object v3, v2

    .line 40
    :goto_d
    check-cast v3, Le/a/c/r/j/s;

    if-eqz v3, :cond_11

    .line 41
    iget-object v3, v3, Le/a/c/r/j/s;->c:Le/a/c/r/j/a;

    goto :goto_e

    :cond_11
    const/4 v3, 0x0

    :goto_e
    if-eqz v3, :cond_17

    .line 42
    iget-object v3, v1, Le/a/c/r/j/j;->a:Le/a/c/r/j/i;

    .line 43
    instance-of v4, v3, Le/a/c/r/j/s;

    if-nez v4, :cond_12

    const/4 v3, 0x0

    :cond_12
    check-cast v3, Le/a/c/r/j/s;

    if-eqz v3, :cond_13

    .line 44
    iget-object v3, v3, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    goto :goto_f

    :cond_13
    const/4 v3, 0x0

    .line 45
    :goto_f
    instance-of v4, v3, Le/a/c/r/j/p$b;

    if-eqz v4, :cond_14

    .line 46
    invoke-virtual {v0, v2}, Le/a/c/e/f;->o(Le/a/c/r/j/i;)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual/range {p0 .. p1}, Le/a/c/e/f;->e(Le/a/c/r/j/j;)J

    move-result-wide v4

    .line 48
    invoke-virtual {v0, v2}, Le/a/c/e/f;->f(Le/a/c/r/j/i;)Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-interface {v2}, Le/a/c/r/j/i;->a()Z

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v3

    move-wide v2, v4

    move-object v4, v7

    move v5, v8

    .line 50
    invoke-virtual/range {v0 .. v5}, Le/a/c/e/f;->n(Ljava/lang/String;JLjava/lang/String;Z)Le/a/c/r/d/b;

    move-result-object v8

    goto :goto_10

    .line 51
    :cond_14
    instance-of v4, v3, Le/a/c/r/j/p$g;

    if-eqz v4, :cond_15

    .line 52
    invoke-virtual/range {p0 .. p1}, Le/a/c/e/f;->e(Le/a/c/r/j/j;)J

    move-result-wide v3

    .line 53
    invoke-virtual {v0, v2}, Le/a/c/e/f;->f(Le/a/c/r/j/i;)Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-interface {v2}, Le/a/c/r/j/i;->a()Z

    move-result v7

    const-string v1, "copy_otp"

    move-object/from16 v0, p0

    move-wide v2, v3

    move-object v4, v5

    move v5, v7

    .line 55
    invoke-virtual/range {v0 .. v5}, Le/a/c/e/f;->n(Ljava/lang/String;JLjava/lang/String;Z)Le/a/c/r/d/b;

    move-result-object v8

    goto :goto_10

    .line 56
    :cond_15
    instance-of v3, v3, Le/a/c/r/j/p$d;

    if-eqz v3, :cond_16

    .line 57
    invoke-virtual {v0, v2}, Le/a/c/e/f;->o(Le/a/c/r/j/i;)Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual/range {p0 .. p1}, Le/a/c/e/f;->e(Le/a/c/r/j/j;)J

    move-result-wide v4

    .line 59
    invoke-virtual {v0, v2}, Le/a/c/e/f;->f(Le/a/c/r/j/i;)Ljava/lang/String;

    move-result-object v7

    .line 60
    invoke-interface {v2}, Le/a/c/r/j/i;->a()Z

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v3

    move-wide v2, v4

    move-object v4, v7

    move v5, v8

    .line 61
    invoke-virtual/range {v0 .. v5}, Le/a/c/e/f;->n(Ljava/lang/String;JLjava/lang/String;Z)Le/a/c/r/d/b;

    move-result-object v8

    goto :goto_10

    :cond_16
    const/4 v8, 0x0

    .line 62
    :goto_10
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_17
    invoke-static {v6}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "idList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/c/e/f;->getCoroutineContext()Ls1/w/f;

    move-result-object v2

    new-instance v4, Le/a/c/e/f$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/c/e/f$c;-><init>(Le/a/c/e/f;Ljava/util/Set;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/e/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Le/a/c/e/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Le/a/c/e/f;->e:Ljava/lang/String;

    const-string v0, "others_tab"

    .line 4
    iput-object v0, p0, Le/a/c/e/f;->f:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;Ls1/k;Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/k<",
            "+",
            "Le/a/c/r/j/r;",
            "+",
            "Le/a/c/r/j/p;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "action"

    move-object/from16 v9, p1

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "category"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, ""

    const-string v4, "feature"

    .line 2
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventCategory"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventInfo"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionType"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionInfo"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "smart_action"

    const-string v11, "<set-?>"

    .line 3
    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, v0, Le/a/c/e/f;->e:Ljava/lang/String;

    move/from16 v4, p3

    invoke-static {v3, v4}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 5
    invoke-static {v12, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v13, v0, Le/a/c/e/f;->f:Ljava/lang/String;

    const-string v14, "click"

    move-object v3, v13

    move-object v4, v11

    move-object v5, v14

    move-object v6, v11

    move-object/from16 v7, p1

    move-object v8, v11

    .line 7
    invoke-static/range {v3 .. v8}, Le/d/c/a/a;->I0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v3, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast v3, Le/a/c/r/j/r;

    .line 10
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    check-cast v1, Le/a/c/r/j/p;

    invoke-virtual {v0, v3, v1}, Le/a/c/e/f;->m(Le/a/c/r/j/r;Le/a/c/r/j/p;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v5, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 14
    new-instance v1, Le/a/c/r/d/b;

    .line 15
    new-instance v15, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1c0

    const/16 v21, 0x0

    move-object v3, v15

    move-object v4, v10

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v9, p1

    move-wide/from16 v10, v16

    move-object/from16 v12, v18

    move/from16 v13, v19

    move/from16 v14, v20

    move-object v0, v15

    move-object/from16 v15, v21

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 16
    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 17
    invoke-direct {v1, v0, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v0, p0

    .line 18
    iget-object v2, v0, Le/a/c/e/f;->g:Le/a/c/e/c;

    invoke-interface {v2, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    .line 19
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final e(Le/a/c/r/j/j;)J
    .locals 4

    .line 1
    iget-wide v0, p1, Le/a/c/r/j/j;->c:J

    .line 2
    iget-wide v2, p1, Le/a/c/r/j/j;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final f(Le/a/c/r/j/i;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p1, Le/a/c/r/j/s;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/a/c/r/j/s;

    .line 3
    iget-object v0, p1, Le/a/c/r/j/s;->f:Le/a/c/r/j/r;

    .line 4
    iget-object p1, p1, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    .line 5
    invoke-virtual {p0, v0, p1}, Le/a/c/e/f;->m(Le/a/c/r/j/r;Le/a/c/r/j/p;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Le/a/c/b0/b;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Le/a/c/b0/b;

    .line 8
    iget-object p1, p1, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    .line 9
    iget-object p1, p1, Le/a/c/r/m/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown"

    :goto_0
    return-object p1
.end method

.method public g(Ls1/k;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/k<",
            "+",
            "Le/a/c/r/j/r;",
            "+",
            "Le/a/c/r/j/p;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "category"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v9, ""

    const-string v3, "feature"

    .line 2
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionInfo"

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "propertyMap"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "share_smart_card"

    const-string v3, "<set-?>"

    .line 3
    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v5, v0, Le/a/c/e/f;->e:Ljava/lang/String;

    move/from16 v6, p2

    invoke-static {v5, v6}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "conversation_view"

    .line 6
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "click"

    .line 7
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v5, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast v5, Le/a/c/r/j/r;

    .line 10
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    check-cast v1, Le/a/c/r/j/p;

    invoke-virtual {v0, v5, v1}, Le/a/c/e/f;->m(Le/a/c/r/j/r;Le/a/c/r/j/p;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 14
    new-instance v1, Le/a/c/r/d/b;

    .line 15
    new-instance v15, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1c0

    const/16 v16, 0x0

    move-object v3, v15

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 16
    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 17
    invoke-direct {v1, v0, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v0, p0

    .line 18
    iget-object v2, v0, Le/a/c/e/f;->g:Le/a/c/e/c;

    invoke-interface {v2, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    .line 19
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/e/f;->b:Lq3/a/e1;

    iget-object v1, p0, Le/a/c/e/f;->a:Lq3/a/y;

    invoke-virtual {v0, v1}, Ls1/w/a;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/c/e/f;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    new-instance v1, Le/a/c/e/f$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/c/e/f$b;-><init>(Le/a/c/e/f;Ls1/w/d;)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "senderAddress"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/e/f;->e:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Le/a/c/e/f;->f:Ljava/lang/String;

    return-void
.end method

.method public j(JLe/a/c/r/j/i;)V
    .locals 9

    const-string v0, "feedbackCard"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/c/e/f;->getCoroutineContext()Ls1/w/f;

    move-result-object v2

    new-instance v0, Le/a/c/e/f$a;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v3 .. v8}, Le/a/c/e/f$a;-><init>(Le/a/c/e/f;Le/a/c/r/j/i;JLs1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 19

    const/16 v0, 0x7f

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const/16 v4, 0x7f

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    and-int/lit8 v6, v4, 0x8

    if-eqz v6, :cond_3

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object v6, v3

    :goto_3
    and-int/lit8 v7, v4, 0x10

    if-eqz v7, :cond_4

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object v7, v3

    :goto_4
    and-int/lit8 v9, v4, 0x20

    if-eqz v9, :cond_5

    move-object v12, v2

    goto :goto_5

    :cond_5
    move-object v12, v3

    :goto_5
    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_6

    .line 1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_6
    const-string v4, "feature"

    .line 2
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCategory"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventInfo"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionInfo"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyMap"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "feedback_row"

    const-string v0, "<set-?>"

    .line 3
    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, p1

    move/from16 v5, p3

    .line 4
    invoke-static {v4, v5}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 5
    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    move-object/from16 v10, p2

    goto :goto_6

    :cond_7
    move-object v10, v2

    .line 6
    :goto_6
    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "view"

    .line 7
    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_8

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_9

    .line 9
    new-instance v0, Le/a/c/r/d/b;

    .line 10
    new-instance v1, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1c0

    const/16 v18, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v18}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 11
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 12
    invoke-direct {v0, v1, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v1, p0

    .line 13
    iget-object v2, v1, Le/a/c/e/f;->g:Le/a/c/e/c;

    invoke-interface {v2, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    :cond_9
    move-object/from16 v1, p0

    .line 14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v6, p3

    const-string v0, "actionInfo"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, ""

    const-string v1, "feature"

    .line 2
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventCategory"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventInfo"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionType"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyMap"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "feedback_row"

    const-string v0, "<set-?>"

    .line 3
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p1

    move/from16 v4, p4

    .line 4
    invoke-static {v3, v4}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    move-object/from16 v4, p2

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 6
    :goto_0
    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "click"

    .line 7
    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 10
    new-instance v14, Le/a/c/r/d/b;

    .line 11
    new-instance v15, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c0

    const/4 v12, 0x0

    move-object v0, v15

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v12}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 12
    invoke-static {v13}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 13
    invoke-direct {v14, v15, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v0, p0

    .line 14
    iget-object v1, v0, Le/a/c/e/f;->g:Le/a/c/e/c;

    invoke-interface {v1, v14}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    .line 15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final m(Le/a/c/r/j/r;Le/a/c/r/j/p;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Le/a/c/r/j/r$g;->a:Le/a/c/r/j/r$g;

    sget-object v1, Le/a/c/r/j/p$d;->b:Le/a/c/r/j/p$d;

    invoke-static {p2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x5f

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "Locale.getDefault()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_4

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string p1, "Unknown"

    :goto_0
    return-object p1
.end method

.method public final n(Ljava/lang/String;JLjava/lang/String;Z)Le/a/c/r/d/b;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, ""

    const-string v3, "feature"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventCategory"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "eventInfo"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionInfo"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "propertyMap"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "smart_action"

    const-string v1, "<set-?>"

    .line 3
    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, v0, Le/a/c/e/f;->e:Ljava/lang/String;

    move/from16 v3, p5

    invoke-static {v2, v3}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v7, v0, Le/a/c/e/f;->f:Ljava/lang/String;

    .line 7
    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "view"

    .line 8
    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ls1/k;

    .line 9
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v9, Ls1/k;

    const-string v10, "view_time"

    invoke-direct {v9, v10, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v9, v3, v5

    .line 11
    invoke-static {v3}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object v15

    .line 12
    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v9, p1

    .line 13
    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p4

    .line 14
    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    .line 16
    new-instance v1, Le/a/c/r/d/b;

    .line 17
    new-instance v2, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1c0

    const/16 v17, 0x0

    move-object v3, v2

    move-object/from16 v5, p4

    move-object/from16 v9, p1

    move-wide v10, v11

    move-object v12, v13

    move v13, v14

    move/from16 v14, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v17

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 18
    invoke-static/range {v16 .. v16}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 19
    invoke-direct {v1, v2, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    return-object v1

    .line 20
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final o(Le/a/c/r/j/i;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p1, Le/a/c/r/j/s;

    const-string v1, ""

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Le/a/c/r/j/s;

    .line 3
    iget-object v0, p1, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    .line 4
    instance-of v2, v0, Le/a/c/r/j/p$d;

    if-eqz v2, :cond_0

    .line 5
    iget-object p1, p1, Le/a/c/r/j/s;->f:Le/a/c/r/j/r;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v1, p1

    goto :goto_0

    .line 7
    :cond_0
    instance-of v0, v0, Le/a/c/r/j/p$b;

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p1, Le/a/c/r/j/s;->f:Le/a/c/r/j/r;

    .line 9
    sget-object v0, Le/a/c/r/j/r$e;->a:Le/a/c/r/j/r$e;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v1, "recharge"

    goto :goto_0

    :cond_1
    const-string v1, "pay_bill"

    :cond_2
    :goto_0
    return-object v1
.end method
