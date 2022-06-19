.class public final Le/a/c/a/j/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c/r/d/b;

.field public static final b:Le/a/c/a/j/b/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 30

    .line 1
    new-instance v0, Le/a/c/a/j/b/g;

    invoke-direct {v0}, Le/a/c/a/j/b/g;-><init>()V

    sput-object v0, Le/a/c/a/j/b/g;->b:Le/a/c/a/j/b/g;

    const/16 v0, 0x7f

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const/16 v0, 0x7f

    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move-object/from16 v26, v2

    goto :goto_2

    :cond_2
    move-object/from16 v26, v3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object v10, v3

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    move-object v12, v2

    goto :goto_4

    :cond_4
    move-object v12, v3

    :goto_4
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_6
    const-string v5, "feature"

    const-string v7, "eventCategory"

    const-string v9, "eventInfo"

    const-string v11, "context"

    const-string v13, "actionType"

    const-string v15, "actionInfo"

    const-string v17, "propertyMap"

    const-string v0, "quick_filter"

    move-object/from16 v18, v0

    const-string v23, "<set-?>"

    move-object/from16 v19, v23

    move-object/from16 v25, v23

    move-object/from16 v21, v23

    const-string v27, "more_filters"

    move-object/from16 v20, v27

    const-string v28, "insights_smart_feed"

    move-object/from16 v22, v28

    const-string v29, "click"

    move-object/from16 v24, v29

    move-object/from16 v8, v26

    move-object v14, v2

    move-object/from16 v16, v3

    .line 3
    invoke-static/range {v4 .. v25}, Le/d/c/a/a;->B2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_8

    .line 4
    new-instance v1, Le/a/c/r/d/b;

    .line 5
    new-instance v4, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1c0

    const/16 v19, 0x0

    move-object v7, v4

    move-object v8, v0

    move-object/from16 v9, v27

    move-object/from16 v10, v26

    move-object/from16 v11, v28

    move-object/from16 v12, v29

    move-object v13, v2

    invoke-direct/range {v7 .. v19}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 6
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 7
    invoke-direct {v1, v4, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 8
    sput-object v1, Le/a/c/a/j/b/g;->a:Le/a/c/r/d/b;

    return-void

    .line 9
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
