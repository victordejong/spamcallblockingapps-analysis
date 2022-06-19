.class public final Le/a/c/a/b/a/k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Le/a/c/a/b/a/d0;",
        "Le/a/c/a/s/g/f<",
        "Le/a/c/a/b/a/d0;",
        ">;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/b/a/f;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/k;->b:Le/a/c/a/b/a/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/c/a/b/a/d0;

    move-object/from16 v2, p2

    check-cast v2, Le/a/c/a/s/g/f;

    const-string v3, "tag"

    .line 2
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "tagView"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Le/a/c/a/b/a/j;

    invoke-direct {v3, v0, v1}, Le/a/c/a/b/a/j;-><init>(Le/a/c/a/b/a/k;Le/a/c/a/b/a/d0;)V

    const-wide/16 v4, 0x258

    .line 4
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v2, v0, Le/a/c/a/b/a/k;->b:Le/a/c/a/b/a/f;

    .line 6
    iget-object v2, v2, Le/a/c/a/b/a/f;->h:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/a/s/g/f;

    .line 8
    invoke-virtual {v3}, Le/a/c/a/s/g/f;->getMetadata()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/a/b/a/d0;

    invoke-static {v4, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v3}, Le/a/c/a/s/g/f;->e()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, v0, Le/a/c/a/b/a/k;->b:Le/a/c/a/b/a/f;

    invoke-static {v2}, Le/a/c/a/b/a/f;->PA(Le/a/c/a/b/a/f;)Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, v0, Le/a/c/a/b/a/k;->b:Le/a/c/a/b/a/f;

    invoke-static {v3}, Le/a/c/a/b/a/f;->OA(Le/a/c/a/b/a/f;)Z

    move-result v3

    .line 12
    iget-object v4, v0, Le/a/c/a/b/a/k;->b:Le/a/c/a/b/a/f;

    .line 13
    invoke-virtual {v4}, Le/a/c/a/b/a/f;->SA()Le/a/c/r/m/b;

    move-result-object v4

    const-string v5, "<set-?>"

    const-string v6, "propertyMap"

    const-string v7, "actionInfo"

    const-string v8, "actionType"

    const-string v9, "context"

    const-string v10, "eventInfo"

    const-string v11, "eventCategory"

    const-string v12, "feature"

    const-string v15, ""

    const-string v13, "selectedTag"

    const-string v14, "senderId"

    if-nez v4, :cond_2

    .line 14
    iget-object v4, v0, Le/a/c/a/b/a/k;->b:Le/a/c/a/b/a/f;

    invoke-virtual {v4}, Le/a/c/a/b/a/f;->QA()Le/a/c/e/c;

    move-result-object v4

    .line 15
    iget-object v1, v1, Le/a/c/a/b/a/d0;->b:Le/a/c/r/m/b;

    .line 16
    iget-object v1, v1, Le/a/c/r/m/b;->a:Ljava/lang/String;

    .line 17
    invoke-static {v2, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    invoke-static {v15, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tag_bottomsheet"

    .line 20
    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {v2, v3}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "click"

    .line 24
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "conversation_view"

    .line 25
    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v5, Le/a/c/r/d/b;

    .line 27
    new-instance v8, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1c0

    const/16 v25, 0x0

    move-object v13, v8

    move-object v9, v14

    move-object v14, v6

    move-object v6, v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    move-object/from16 v18, v3

    move-object/from16 v19, v6

    invoke-direct/range {v13 .. v25}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 28
    invoke-static {v9}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 29
    invoke-direct {v5, v8, v1}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 30
    invoke-interface {v4, v5}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    goto/16 :goto_1

    :cond_2
    move/from16 p1, v3

    .line 31
    iget-object v3, v0, Le/a/c/a/b/a/k;->b:Le/a/c/a/b/a/f;

    invoke-virtual {v3}, Le/a/c/a/b/a/f;->QA()Le/a/c/e/c;

    move-result-object v3

    .line 32
    iget-object v4, v4, Le/a/c/r/m/b;->a:Ljava/lang/String;

    .line 33
    iget-object v1, v1, Le/a/c/a/b/a/d0;->b:Le/a/c/r/m/b;

    .line 34
    iget-object v1, v1, Le/a/c/r/m/b;->a:Ljava/lang/String;

    .line 35
    invoke-static {v2, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "oldTag"

    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    invoke-static {v15, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tag_bottomsheet"

    .line 38
    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v7, p1

    .line 39
    invoke-static {v2, v7}, Le/a/c/c0/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "click"

    .line 43
    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "user_tag"

    .line 44
    invoke-static {v8, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v5, Le/a/c/r/d/b;

    .line 46
    new-instance v9, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1c0

    const/16 v28, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v19, v2

    move-object/from16 v20, v8

    move-object/from16 v21, v7

    move-object/from16 v22, v1

    invoke-direct/range {v16 .. v28}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 47
    invoke-static {v13}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 48
    invoke-direct {v5, v9, v1}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 49
    invoke-interface {v3, v5}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 50
    :goto_1
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
