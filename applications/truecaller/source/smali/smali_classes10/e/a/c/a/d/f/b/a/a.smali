.class public final Le/a/c/a/d/f/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/a/c/r/d/b;

.field public static final b:Le/a/c/r/d/b;

.field public static final c:Le/a/c/r/d/b;

.field public static final d:Le/a/c/a/d/f/b/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 57

    .line 1
    new-instance v0, Le/a/c/a/d/f/b/a/a;

    invoke-direct {v0}, Le/a/c/a/d/f/b/a/a;-><init>()V

    sput-object v0, Le/a/c/a/d/f/b/a/a;->d:Le/a/c/a/d/f/b/a/a;

    const/16 v0, 0x7f

    and-int/lit8 v0, v0, 0x1

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    :goto_0
    const/16 v0, 0x7f

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v3, 0x7f

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object/from16 v24, v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v24, v3

    :goto_2
    const/16 v3, 0x7f

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    move-object v8, v3

    :goto_3
    const/16 v3, 0x7f

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v10, v1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    move-object v10, v3

    :goto_4
    const/16 v3, 0x7f

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v12, v1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    move-object v12, v3

    :goto_5
    const/16 v3, 0x7f

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_6

    .line 2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    move-object/from16 v25, v3

    const-string v14, "feature"

    move-object v3, v14

    const-string v6, "eventCategory"

    move-object v5, v6

    const-string v4, "eventInfo"

    move-object v7, v4

    const-string v15, "context"

    move-object v9, v15

    const-string v13, "actionType"

    move-object v11, v13

    move-object/from16 v26, v1

    const-string v1, "actionInfo"

    move-object/from16 v27, v13

    move-object v13, v1

    move-object/from16 v28, v1

    const-string v1, "propertyMap"

    move-object/from16 v29, v15

    move-object v15, v1

    const-string v30, "search"

    move-object/from16 v16, v30

    move-object/from16 v31, v1

    const-string v1, "<set-?>"

    move-object/from16 v17, v1

    move-object/from16 v23, v1

    move-object/from16 v19, v1

    move-object/from16 v21, v1

    const-string v32, "finance_search_page"

    move-object/from16 v18, v32

    const-string v33, "500ms"

    move-object/from16 v20, v33

    const-string v34, "start"

    move-object/from16 v22, v34

    move-object/from16 v35, v1

    move-object v1, v4

    move-object v4, v0

    move-object/from16 v36, v1

    move-object v1, v6

    move-object/from16 v6, v24

    move-object/from16 v37, v1

    move-object v1, v14

    move-object/from16 v14, v25

    .line 3
    invoke-static/range {v2 .. v23}, Le/d/c/a/a;->B2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v16, 0x0

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    move/from16 v2, v16

    :goto_7
    const-string v17, "Failed requirement."

    if-eqz v2, :cond_1a

    .line 4
    new-instance v2, Le/a/c/r/d/b;

    .line 5
    new-instance v15, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1c0

    const/16 v18, 0x0

    move-object v3, v15

    move-object/from16 v4, v30

    move-object v5, v0

    move-object/from16 v6, v24

    move-object/from16 v7, v32

    move-object/from16 v8, v34

    move-object/from16 v9, v33

    move-object v0, v15

    move-object/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 6
    invoke-static/range {v25 .. v25}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 7
    invoke-direct {v2, v0, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 8
    sput-object v2, Le/a/c/a/d/f/b/a/a;->a:Le/a/c/r/d/b;

    const/16 v0, 0x7f

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    move-object/from16 v0, v26

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    const/16 v2, 0x7f

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9

    move-object/from16 v5, v26

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    move-object v5, v2

    :goto_9
    const/16 v2, 0x7f

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a

    move-object/from16 v6, v26

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    move-object v6, v2

    :goto_a
    const/16 v2, 0x7f

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    move-object/from16 v2, v26

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    const/16 v3, 0x7f

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_c

    move-object/from16 v3, v26

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    :goto_c
    const/16 v4, 0x7f

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_d

    move-object/from16 v9, v26

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    move-object v9, v4

    :goto_d
    const/16 v4, 0x7f

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_e

    .line 9
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    :goto_e
    move-object v15, v4

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, v36

    invoke-static {v6, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, v29

    invoke-static {v2, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v27

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v12, v28

    invoke-static {v9, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, v31

    invoke-static {v15, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "search"

    move-object/from16 v11, v35

    .line 11
    invoke-static {v4, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "finance_search_page"

    .line 12
    invoke-static {v7, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "success"

    .line 13
    invoke-static {v8, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_f

    const/4 v3, 0x1

    goto :goto_f

    :cond_f
    move/from16 v3, v16

    :goto_f
    if-eqz v3, :cond_19

    .line 15
    new-instance v3, Le/a/c/r/d/b;

    move-object/from16 v18, v15

    .line 16
    new-instance v15, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1c0

    const/16 v24, 0x0

    move-object/from16 v38, v3

    move-object v3, v15

    move-object/from16 v39, v10

    move-object/from16 v40, v11

    move-wide/from16 v10, v19

    move-object/from16 v41, v12

    move-object/from16 v12, v21

    move-object/from16 v42, v13

    move/from16 v13, v22

    move-object/from16 v43, v14

    move/from16 v14, v23

    move-object/from16 v27, v2

    move-object v2, v15

    move-object/from16 v15, v24

    invoke-direct/range {v3 .. v15}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 17
    invoke-static/range {v18 .. v18}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v4, v38

    .line 18
    invoke-direct {v4, v2, v3}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 19
    sput-object v4, Le/a/c/a/d/f/b/a/a;->b:Le/a/c/r/d/b;

    const/16 v2, 0x7f

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_10

    move-object/from16 v2, v26

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    const/16 v4, 0x7f

    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_11

    move-object/from16 v5, v26

    goto :goto_11

    :cond_11
    const/4 v5, 0x0

    :goto_11
    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_12

    move-object/from16 v6, v26

    goto :goto_12

    :cond_12
    const/4 v6, 0x0

    :goto_12
    and-int/lit8 v7, v4, 0x8

    if-eqz v7, :cond_13

    move-object/from16 v7, v26

    goto :goto_13

    :cond_13
    const/4 v7, 0x0

    :goto_13
    and-int/lit8 v8, v4, 0x10

    if-eqz v8, :cond_14

    move-object/from16 v8, v26

    goto :goto_14

    :cond_14
    const/4 v8, 0x0

    :goto_14
    and-int/lit8 v9, v4, 0x20

    if-eqz v9, :cond_15

    move-object/from16 v9, v26

    goto :goto_15

    :cond_15
    const/4 v9, 0x0

    :goto_15
    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_16

    .line 20
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_16

    :cond_16
    const/4 v4, 0x0

    .line 21
    :goto_16
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "search"

    move-object/from16 v1, v40

    .line 22
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "finance_search_page"

    .line 23
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "empty"

    .line 24
    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_17

    move/from16 v16, v3

    :cond_17
    if-eqz v16, :cond_18

    .line 26
    new-instance v1, Le/a/c/r/d/b;

    .line 27
    new-instance v3, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x1c0

    const/16 v56, 0x0

    move-object/from16 v44, v3

    move-object/from16 v45, v0

    move-object/from16 v46, v5

    move-object/from16 v47, v6

    move-object/from16 v48, v2

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    invoke-direct/range {v44 .. v56}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 28
    invoke-static {v4}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 29
    invoke-direct {v1, v3, v0}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 30
    sput-object v1, Le/a/c/a/d/f/b/a/a;->c:Le/a/c/r/d/b;

    return-void

    .line 31
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
