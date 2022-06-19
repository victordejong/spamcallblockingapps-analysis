.class public final Le/a/c/a/n/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c/r/d/b;

.field public static final b:Le/a/c/r/d/b;

.field public static final c:Le/a/c/r/d/b;

.field public static final d:Le/a/c/r/d/b;

.field public static final e:Le/a/c/a/n/d/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 45

    .line 1
    new-instance v0, Le/a/c/a/n/d/a;

    invoke-direct {v0}, Le/a/c/a/n/d/a;-><init>()V

    sput-object v0, Le/a/c/a/n/d/a;->e:Le/a/c/a/n/d/a;

    const/16 v0, 0x7f

    and-int/lit8 v0, v0, 0x1

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x7f

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x7f

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    move-object v7, v3

    :goto_2
    const/16 v3, 0x7f

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/16 v4, 0x7f

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    move-object v4, v1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    const/16 v5, 0x7f

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_5

    move-object v5, v1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    const/16 v6, 0x7f

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_6

    .line 2
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    move-object v15, v6

    const-string v14, "feature"

    .line 3
    invoke-static {v0, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCategory"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventInfo"

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "context"

    invoke-static {v3, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actionType"

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "actionInfo"

    invoke-static {v5, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "propertyMap"

    invoke-static {v15, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "permission"

    const-string v10, "<set-?>"

    .line 4
    invoke-static {v5, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "smart_notifications"

    .line 5
    invoke-static {v6, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "messaging_settings"

    .line 6
    invoke-static {v8, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "click"

    .line 7
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "grant_permission"

    .line 8
    invoke-static {v4, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v16

    const/16 v17, 0x0

    if-lez v16, :cond_7

    const/16 v16, 0x1

    goto :goto_7

    :cond_7
    move/from16 v16, v17

    :goto_7
    const-string v18, "Failed requirement."

    if-eqz v16, :cond_23

    move-object/from16 v16, v15

    .line 10
    new-instance v15, Le/a/c/r/d/b;

    move-object/from16 v19, v15

    .line 11
    new-instance v15, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1c0

    const/16 v25, 0x0

    move-object/from16 v26, v4

    move-object v4, v15

    move-object/from16 v27, v10

    move-object/from16 v10, v26

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    move-wide/from16 v11, v20

    move-object/from16 v30, v13

    move-object/from16 v13, v22

    move-object/from16 v31, v14

    move/from16 v14, v23

    move-object/from16 v33, v15

    move-object/from16 v32, v19

    move-object/from16 v19, v16

    move/from16 v15, v24

    move-object/from16 v16, v25

    invoke-direct/range {v4 .. v16}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 12
    invoke-static/range {v19 .. v19}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v5, v32

    move-object/from16 v6, v33

    .line 13
    invoke-direct {v5, v6, v4}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 14
    sput-object v5, Le/a/c/a/n/d/a;->a:Le/a/c/r/d/b;

    const/16 v4, 0x7f

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8

    move-object v4, v1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    const/16 v5, 0x7f

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    move-object v5, v1

    goto :goto_9

    :cond_9
    const/4 v5, 0x0

    :goto_9
    const/16 v6, 0x7f

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_a

    move-object v6, v1

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    :goto_a
    const/16 v7, 0x7f

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_b

    move-object v7, v1

    goto :goto_b

    :cond_b
    const/4 v7, 0x0

    :goto_b
    const/16 v8, 0x7f

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_c

    move-object v8, v1

    goto :goto_c

    :cond_c
    const/4 v8, 0x0

    :goto_c
    const/16 v9, 0x7f

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_d

    move-object v9, v1

    goto :goto_d

    :cond_d
    const/4 v9, 0x0

    :goto_d
    const/16 v10, 0x7f

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_e

    .line 15
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_e

    :cond_e
    const/4 v10, 0x0

    :goto_e
    move-object/from16 v11, v31

    .line 16
    invoke-static {v4, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v30

    invoke-static {v7, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v5, v28

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, v29

    invoke-static {v10, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "permission"

    move-object/from16 v9, v27

    .line 17
    invoke-static {v8, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "smart_notifications"

    .line 18
    invoke-static {v12, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "messaging_settings"

    .line 19
    invoke-static {v13, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "click"

    .line 20
    invoke-static {v14, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "remove_permission"

    .line 21
    invoke-static {v15, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-lez v16, :cond_f

    const/16 v16, 0x1

    goto :goto_f

    :cond_f
    move/from16 v16, v17

    :goto_f
    if-eqz v16, :cond_22

    move-object/from16 v16, v1

    .line 23
    new-instance v1, Le/a/c/r/d/b;

    move-object/from16 v27, v9

    .line 24
    new-instance v9, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x1c0

    const/16 v44, 0x0

    move-object/from16 v32, v9

    move-object/from16 v33, v8

    move-object/from16 v34, v12

    move-object/from16 v35, v6

    move-object/from16 v36, v13

    move-object/from16 v37, v14

    move-object/from16 v38, v15

    invoke-direct/range {v32 .. v44}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 25
    invoke-static {v10}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    .line 26
    invoke-direct {v1, v9, v6}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 27
    sput-object v1, Le/a/c/a/n/d/a;->b:Le/a/c/r/d/b;

    const/16 v1, 0x7f

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    move-object/from16 v1, v16

    goto :goto_10

    :cond_10
    const/4 v1, 0x0

    :goto_10
    const/16 v6, 0x7f

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_11

    move-object/from16 v6, v16

    goto :goto_11

    :cond_11
    const/4 v6, 0x0

    :goto_11
    const/16 v8, 0x7f

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_12

    move-object/from16 v8, v16

    goto :goto_12

    :cond_12
    const/4 v8, 0x0

    :goto_12
    const/16 v9, 0x7f

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_13

    move-object/from16 v9, v16

    goto :goto_13

    :cond_13
    const/4 v9, 0x0

    :goto_13
    const/16 v10, 0x7f

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_14

    move-object/from16 v10, v16

    goto :goto_14

    :cond_14
    const/4 v10, 0x0

    :goto_14
    const/16 v12, 0x7f

    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_15

    move-object/from16 v12, v16

    goto :goto_15

    :cond_15
    const/4 v12, 0x0

    :goto_15
    const/16 v13, 0x7f

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_16

    .line 28
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_16

    :cond_16
    const/4 v13, 0x0

    .line 29
    :goto_16
    invoke-static {v1, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "permission"

    move-object/from16 v6, v27

    .line 30
    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "smart_reminders"

    .line 31
    invoke-static {v9, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "messaging_settings"

    .line 32
    invoke-static {v10, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "click"

    .line 33
    invoke-static {v12, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "grant_permission"

    .line 34
    invoke-static {v14, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_17

    const/4 v15, 0x1

    goto :goto_17

    :cond_17
    move/from16 v15, v17

    :goto_17
    if-eqz v15, :cond_21

    .line 36
    new-instance v15, Le/a/c/r/d/b;

    move-object/from16 v27, v6

    .line 37
    new-instance v6, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1c0

    const/16 v40, 0x0

    move-object/from16 v28, v6

    move-object/from16 v29, v1

    move-object/from16 v30, v9

    move-object/from16 v31, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v14

    invoke-direct/range {v28 .. v40}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 38
    invoke-static {v13}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 39
    invoke-direct {v15, v6, v1}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 40
    sput-object v15, Le/a/c/a/n/d/a;->c:Le/a/c/r/d/b;

    const/16 v1, 0x7f

    const/4 v6, 0x1

    and-int/2addr v1, v6

    if-eqz v1, :cond_18

    move-object/from16 v1, v16

    goto :goto_18

    :cond_18
    const/4 v1, 0x0

    :goto_18
    const/16 v8, 0x7f

    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_19

    move-object/from16 v9, v16

    goto :goto_19

    :cond_19
    const/4 v9, 0x0

    :goto_19
    and-int/lit8 v10, v8, 0x4

    if-eqz v10, :cond_1a

    move-object/from16 v10, v16

    goto :goto_1a

    :cond_1a
    const/4 v10, 0x0

    :goto_1a
    and-int/lit8 v12, v8, 0x8

    if-eqz v12, :cond_1b

    move-object/from16 v12, v16

    goto :goto_1b

    :cond_1b
    const/4 v12, 0x0

    :goto_1b
    and-int/lit8 v13, v8, 0x10

    if-eqz v13, :cond_1c

    move-object/from16 v13, v16

    goto :goto_1c

    :cond_1c
    const/4 v13, 0x0

    :goto_1c
    and-int/lit8 v14, v8, 0x20

    if-eqz v14, :cond_1d

    move-object/from16 v14, v16

    goto :goto_1d

    :cond_1d
    const/4 v14, 0x0

    :goto_1d
    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_1e

    .line 41
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1e

    :cond_1e
    const/4 v8, 0x0

    .line 42
    :goto_1e
    invoke-static {v1, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    move-object/from16 v1, v27

    .line 43
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "smart_reminders"

    .line 44
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "messaging_settings"

    .line 45
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "click"

    .line 46
    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "remove_permission"

    .line 47
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1f

    move/from16 v17, v6

    :cond_1f
    if-eqz v17, :cond_20

    .line 49
    new-instance v1, Le/a/c/r/d/b;

    .line 50
    new-instance v6, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1c0

    const/16 v40, 0x0

    move-object/from16 v28, v6

    move-object/from16 v29, v0

    move-object/from16 v30, v2

    move-object/from16 v31, v10

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    invoke-direct/range {v28 .. v40}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 51
    invoke-static {v8}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 52
    invoke-direct {v1, v6, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 53
    sput-object v1, Le/a/c/a/n/d/a;->d:Le/a/c/r/d/b;

    return-void

    .line 54
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
