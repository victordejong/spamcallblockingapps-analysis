.class public final Le/a/c/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/e/a;
.implements Lq3/a/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/e/b$a;
    }
.end annotation


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Lq3/a/e1;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/y/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/e/b$a;",
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

    iput-object p1, p0, Le/a/c/e/b;->g:Le/a/c/e/c;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/c/e/b;->a:Lq3/a/y;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "Executors.newSingleThreadExecutor()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lq3/a/g1;

    invoke-direct {v0, p1}, Lq3/a/g1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 5
    iput-object v0, p0, Le/a/c/e/b;->b:Lq3/a/e1;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/c/e/b;->c:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/c/e/b;->d:Ljava/util/Map;

    const-string p1, ""

    .line 8
    iput-object p1, p0, Le/a/c/e/b;->e:Ljava/lang/String;

    const-string p1, "others_tab"

    .line 9
    iput-object p1, p0, Le/a/c/e/b;->f:Ljava/lang/String;

    return-void
.end method

.method public static final d(Le/a/c/e/b;Le/a/c/e/b$a;)Le/a/c/r/d/b;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Le/a/c/e/b$a;->a:Le/a/c/y/f;

    .line 3
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, ""

    const-string v5, "feature"

    .line 4
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventCategory"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "eventInfo"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionType"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionInfo"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "propertyMap"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, v2, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    .line 6
    instance-of v3, v3, Le/a/c/r/j/p$i;

    if-eqz v3, :cond_0

    const-string v3, "updates_tag"

    goto :goto_0

    :cond_0
    const-string v3, "info_card"

    :goto_0
    move-object v5, v3

    const-string v3, "<set-?>"

    .line 7
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v4, v2, Le/a/c/y/f;->c:Le/a/c/y/l;

    .line 9
    iget-object v6, v4, Le/a/c/y/l;->n:Ljava/lang/String;

    .line 10
    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v4, v0, Le/a/c/e/b;->e:Ljava/lang/String;

    .line 12
    iget-object v7, v2, Le/a/c/y/f;->c:Le/a/c/y/l;

    .line 13
    iget-boolean v7, v7, Le/a/c/y/l;->m:Z

    .line 14
    invoke-static {v4, v7}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v4, v2, Le/a/c/y/f;->e:Le/a/c/r/j/h;

    if-eqz v4, :cond_1

    .line 17
    iget-object v4, v4, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 18
    :goto_1
    sget-object v8, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->EDIT_TAG_FEEDBACK:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    if-ne v4, v8, :cond_2

    const-string v0, "edit_tag"

    goto :goto_2

    .line 19
    :cond_2
    iget-object v0, v0, Le/a/c/e/b;->f:Ljava/lang/String;

    :goto_2
    move-object v8, v0

    .line 20
    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "view"

    .line 21
    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v4, v0, [Ls1/k;

    .line 22
    iget-wide v10, v1, Le/a/c/e/b$a;->c:J

    iget-wide v12, v1, Le/a/c/e/b$a;->b:J

    sub-long/2addr v10, v12

    .line 23
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v10, Ls1/k;

    const-string v11, "view_time"

    invoke-direct {v10, v11, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v10, v4, v1

    .line 25
    invoke-static {v4}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object v15

    .line 26
    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v2, v2, Le/a/c/y/f;->c:Le/a/c/y/l;

    .line 28
    iget-object v2, v2, Le/a/c/y/l;->j:Ljava/util/List;

    .line 29
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "without_button"

    goto :goto_3

    :cond_3
    const-string v2, "with_button"

    :goto_3
    move-object v10, v2

    .line 30
    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    if-eqz v0, :cond_5

    .line 32
    new-instance v0, Le/a/c/r/d/b;

    .line 33
    new-instance v1, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v2, 0x1c0

    const/16 v16, 0x0

    move-object v4, v1

    move-object v3, v15

    move v15, v2

    invoke-direct/range {v4 .. v16}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 34
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 35
    invoke-direct {v0, v1, v2}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    return-object v0

    .line 36
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    invoke-virtual {p0}, Le/a/c/e/b;->getCoroutineContext()Ls1/w/f;

    move-result-object v2

    new-instance v4, Le/a/c/e/b$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/c/e/b$d;-><init>(Le/a/c/e/b;Ljava/util/Set;Ls1/w/d;)V

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
    iget-object v0, p0, Le/a/c/e/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Le/a/c/e/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Le/a/c/e/b;->e:Ljava/lang/String;

    const-string v0, "others_tab"

    .line 4
    iput-object v0, p0, Le/a/c/e/b;->f:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v3, p2

    const-string v1, "action"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "analyticsCategory"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, ""

    const-string v2, "feature"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventCategory"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventInfo"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "actionType"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "actionInfo"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "propertyMap"

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "smart_action"

    const-string v1, "<set-?>"

    .line 3
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v4, v0, Le/a/c/e/b;->e:Ljava/lang/String;

    move/from16 v5, p3

    invoke-static {v4, v5}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v5, v0, Le/a/c/e/b;->f:Ljava/lang/String;

    .line 7
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "click"

    .line 8
    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 12
    new-instance v15, Le/a/c/r/d/b;

    .line 13
    new-instance v13, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1c0

    const/16 v16, 0x0

    move-object v1, v13

    move-object/from16 v3, p2

    move-object/from16 v7, p1

    move-object v0, v13

    move-object/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 14
    invoke-static {v14}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 15
    invoke-direct {v15, v0, v1}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v0, p0

    .line 16
    iget-object v1, v0, Le/a/c/e/b;->g:Le/a/c/e/c;

    invoke-interface {v1, v15}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    .line 17
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public g(Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    const-string v1, "analyticsCategory"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v7, ""

    const-string v1, "feature"

    .line 2
    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventCategory"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eventInfo"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionType"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "actionInfo"

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "propertyMap"

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "share_smart_card"

    const-string v1, "<set-?>"

    .line 3
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v4, v0, Le/a/c/e/b;->e:Ljava/lang/String;

    move/from16 v5, p2

    invoke-static {v4, v5}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "conversation_view"

    .line 6
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "click"

    .line 7
    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 10
    new-instance v15, Le/a/c/r/d/b;

    .line 11
    new-instance v13, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1c0

    const/16 v16, 0x0

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v0, v13

    move-object/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 12
    invoke-static {v14}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 13
    invoke-direct {v15, v0, v1}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    move-object/from16 v0, p0

    .line 14
    iget-object v1, v0, Le/a/c/e/b;->g:Le/a/c/e/c;

    invoke-interface {v1, v15}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    return-void

    .line 15
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
    iget-object v0, p0, Le/a/c/e/b;->b:Lq3/a/e1;

    iget-object v1, p0, Le/a/c/e/b;->a:Lq3/a/y;

    invoke-virtual {v0, v1}, Ls1/w/a;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/c/e/b;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    new-instance v1, Le/a/c/e/b$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/c/e/b$c;-><init>(Le/a/c/e/b;Ls1/w/d;)V

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
    iput-object p1, p0, Le/a/c/e/b;->e:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Le/a/c/e/b;->f:Ljava/lang/String;

    return-void
.end method

.method public j(JLe/a/c/y/f;)V
    .locals 9

    const-string v0, "infoCardUiModel"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/c/e/b;->getCoroutineContext()Ls1/w/f;

    move-result-object v2

    new-instance v0, Le/a/c/e/b$b;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v3 .. v8}, Le/a/c/e/b$b;-><init>(Le/a/c/e/b;Le/a/c/y/f;JLs1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
