.class public Le/a/c/c/d/l0;
.super Ln3/c0/g0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/g0/a<",
        "Le/a/c/r/h/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Le/a/c/c/d/k0$i;


# direct methods
.method public varargs constructor <init>(Le/a/c/c/d/k0$i;Ln3/c0/q;Ln3/c0/y;ZZ[Ljava/lang/String;)V
    .locals 6

    .line 1
    iput-object p1, p0, Le/a/c/c/d/l0;->k:Le/a/c/c/d/k0$i;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Ln3/c0/g0/a;-><init>(Ln3/c0/q;Ln3/c0/y;ZZ[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public e(Landroid/database/Cursor;)Ljava/util/List;
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Le/a/c/r/h/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "messageID"

    .line 1
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "address"

    .line 2
    invoke-static {v1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "updateCategory"

    .line 3
    invoke-static {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "spam_category"

    .line 4
    invoke-static {v1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "classified_by"

    .line 5
    invoke-static {v1, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "confidence_score"

    .line 6
    invoke-static {v1, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "transport"

    .line 7
    invoke-static {v1, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "conversationId"

    .line 8
    invoke-static {v1, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "message"

    .line 9
    invoke-static {v1, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "no_of_words"

    .line 10
    invoke-static {v1, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deleted"

    .line 11
    invoke-static {v1, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "created_at"

    .line 12
    invoke-static {v1, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "d"

    .line 13
    invoke-static {v1, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "k"

    .line 14
    invoke-static {v1, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "p"

    .line 15
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    const-string v0, "c"

    .line 16
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    const-string v0, "o"

    .line 17
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    const-string v0, "f"

    .line 18
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v19, v0

    const-string v0, "g"

    .line 19
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    const-string v0, "s"

    .line 20
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v21, v0

    const-string v0, "val1"

    .line 21
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    const-string v0, "val2"

    .line 22
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    const-string v0, "val3"

    .line 23
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v0

    const-string v0, "val4"

    .line 24
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v25, v0

    const-string v0, "val5"

    .line 25
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v26, v0

    const-string v0, "date"

    .line 26
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v27, v0

    const-string v0, "dff_val1"

    .line 27
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    const-string v0, "dff_val2"

    .line 28
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    const-string v0, "dff_val3"

    .line 29
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v30, v0

    const-string v0, "dff_val4"

    .line 30
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v31, v0

    const-string v0, "dff_val5"

    .line 31
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v32, v0

    const-string v0, "datetime"

    .line 32
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v33, v0

    const-string v0, "msg_date"

    .line 33
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v34, v0

    const-string v0, "active"

    .line 34
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v35, v0

    const-string v0, "state"

    .line 35
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v36, v0

    const-string v0, "as_state"

    .line 36
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v37, v15

    const-string v15, "extra"

    .line 37
    invoke-static {v1, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v14

    .line 38
    new-instance v14, Ljava/util/ArrayList;

    move/from16 v39, v13

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_37

    .line 40
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    const/16 v40, 0x0

    if-eqz v13, :cond_0

    move-object/from16 v13, v40

    goto :goto_1

    .line 41
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 42
    :goto_1
    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_1

    move/from16 v42, v0

    move-object/from16 v0, v40

    goto :goto_2

    .line 43
    :cond_1
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    move/from16 v42, v0

    move-object/from16 v0, v41

    .line 44
    :goto_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-interface {v1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-interface {v1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_17

    move/from16 v41, v15

    move/from16 v15, v39

    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_18

    move-object/from16 v39, v14

    move/from16 v14, v38

    invoke-interface {v1, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_19

    move-object/from16 v38, v0

    move/from16 v0, v37

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_1a

    move-object/from16 v37, v13

    move/from16 v13, v16

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_16

    move/from16 v16, v13

    move/from16 v13, v17

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_15

    move/from16 v17, v13

    move/from16 v13, v18

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_14

    move/from16 v18, v13

    move/from16 v13, v19

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_13

    move/from16 v19, v13

    move/from16 v13, v20

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_12

    move/from16 v20, v13

    move/from16 v13, v21

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_11

    move/from16 v21, v13

    move/from16 v13, v22

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_10

    move/from16 v22, v13

    move/from16 v13, v23

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_f

    move/from16 v23, v13

    move/from16 v13, v24

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_e

    move/from16 v24, v13

    move/from16 v13, v25

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_d

    move/from16 v25, v13

    move/from16 v13, v26

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_c

    move/from16 v26, v13

    move/from16 v13, v27

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_b

    move/from16 v27, v13

    move/from16 v13, v28

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    move/from16 v28, v13

    move/from16 v13, v29

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_9

    move/from16 v29, v13

    move/from16 v13, v30

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_8

    move/from16 v30, v13

    move/from16 v13, v31

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_7

    move/from16 v31, v13

    move/from16 v13, v32

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_6

    move/from16 v32, v13

    move/from16 v13, v33

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_5

    move/from16 v33, v13

    move/from16 v13, v34

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_4

    move/from16 v34, v13

    move/from16 v13, v35

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_3

    move/from16 v35, v13

    move/from16 v13, v36

    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-nez v36, :cond_2

    goto/16 :goto_4

    :cond_2
    move/from16 v36, v4

    move/from16 v52, v6

    move/from16 v43, v8

    move/from16 v8, v17

    move-object/from16 v4, v40

    move-object/from16 v6, p0

    move/from16 v17, v0

    move/from16 v54, v16

    move/from16 v16, v2

    move v2, v13

    move v13, v7

    move/from16 v7, v54

    goto/16 :goto_21

    :cond_3
    move/from16 v35, v13

    goto/16 :goto_3

    :cond_4
    move/from16 v34, v13

    goto/16 :goto_3

    :cond_5
    move/from16 v33, v13

    goto :goto_3

    :cond_6
    move/from16 v32, v13

    goto :goto_3

    :cond_7
    move/from16 v31, v13

    goto :goto_3

    :cond_8
    move/from16 v30, v13

    goto :goto_3

    :cond_9
    move/from16 v29, v13

    goto :goto_3

    :cond_a
    move/from16 v28, v13

    goto :goto_3

    :cond_b
    move/from16 v27, v13

    goto :goto_3

    :cond_c
    move/from16 v26, v13

    goto :goto_3

    :cond_d
    move/from16 v25, v13

    goto :goto_3

    :cond_e
    move/from16 v24, v13

    goto :goto_3

    :cond_f
    move/from16 v23, v13

    goto :goto_3

    :cond_10
    move/from16 v22, v13

    goto :goto_3

    :cond_11
    move/from16 v21, v13

    goto :goto_3

    :cond_12
    move/from16 v20, v13

    goto :goto_3

    :cond_13
    move/from16 v19, v13

    goto :goto_3

    :cond_14
    move/from16 v18, v13

    goto :goto_3

    :cond_15
    move/from16 v17, v13

    goto :goto_3

    :cond_16
    move/from16 v16, v13

    goto :goto_3

    :cond_17
    move/from16 v41, v15

    move/from16 v15, v39

    :cond_18
    move-object/from16 v39, v14

    move/from16 v14, v38

    :cond_19
    move-object/from16 v38, v0

    move/from16 v0, v37

    :cond_1a
    move-object/from16 v37, v13

    :goto_3
    move/from16 v13, v36

    .line 45
    :goto_4
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_1b

    move/from16 v36, v4

    move-object/from16 v48, v40

    goto :goto_5

    .line 46
    :cond_1b
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v48, v36

    move/from16 v36, v4

    .line 47
    :goto_5
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v52, v6

    move/from16 v53, v13

    move-object/from16 v6, p0

    .line 48
    iget-object v13, v6, Le/a/c/c/d/l0;->k:Le/a/c/c/d/k0$i;

    iget-object v13, v13, Le/a/c/c/d/k0$i;->b:Le/a/c/c/d/k0;

    .line 49
    iget-object v13, v13, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 50
    invoke-virtual {v13, v4}, Le/a/c/c0/g;->d(I)Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object v49

    .line 51
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v50

    .line 52
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 53
    iget-object v13, v6, Le/a/c/c/d/l0;->k:Le/a/c/c/d/k0$i;

    iget-object v13, v13, Le/a/c/c/d/k0$i;->b:Le/a/c/c/d/k0;

    .line 54
    iget-object v13, v13, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 55
    invoke-virtual {v13, v4}, Le/a/c/c0/g;->e(I)Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v46

    .line 56
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 57
    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v47, v40

    goto :goto_6

    .line 58
    :cond_1c
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v47, v4

    .line 59
    :goto_6
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 60
    new-instance v4, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    move-object/from16 v43, v4

    invoke-direct/range {v43 .. v51}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;-><init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)V

    move v13, v7

    move/from16 v43, v8

    .line 61
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 62
    invoke-virtual {v4, v7, v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 63
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    move-object/from16 v7, v40

    goto :goto_7

    .line 64
    :cond_1d
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 65
    :goto_7
    invoke-virtual {v4, v7}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    .line 66
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 67
    invoke-virtual {v4, v7}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    .line 68
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v44, 0x0

    if-eqz v7, :cond_1e

    const/4 v7, 0x1

    goto :goto_8

    :cond_1e
    move/from16 v7, v44

    .line 69
    :goto_8
    invoke-virtual {v4, v7}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    .line 70
    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    move-object/from16 v7, v40

    goto :goto_9

    .line 71
    :cond_1f
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 72
    :goto_9
    iget-object v8, v6, Le/a/c/c/d/l0;->k:Le/a/c/c/d/k0$i;

    iget-object v8, v8, Le/a/c/c/d/k0$i;->b:Le/a/c/c/d/k0;

    .line 73
    iget-object v8, v8, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 74
    invoke-virtual {v8, v7}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v7

    .line 75
    invoke-virtual {v4, v7}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    .line 76
    invoke-interface {v1, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_20

    move-object/from16 v7, v40

    goto :goto_a

    .line 77
    :cond_20
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    :goto_a
    invoke-virtual {v4, v7}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 79
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_21

    move-object/from16 v7, v40

    goto :goto_b

    .line 80
    :cond_21
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 81
    :goto_b
    invoke-virtual {v4, v7}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    move/from16 v7, v16

    .line 82
    invoke-interface {v1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_22

    move-object/from16 v8, v40

    goto :goto_c

    .line 83
    :cond_22
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 84
    :goto_c
    invoke-virtual {v4, v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    move/from16 v8, v17

    .line 85
    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_23

    move/from16 v17, v0

    move-object/from16 v0, v40

    goto :goto_d

    .line 86
    :cond_23
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v0

    move-object/from16 v0, v16

    .line 87
    :goto_d
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 88
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_24

    move/from16 v18, v0

    move-object/from16 v0, v40

    goto :goto_e

    .line 89
    :cond_24
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v18, v0

    move-object/from16 v0, v16

    .line 90
    :goto_e
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 91
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_25

    move/from16 v19, v0

    move-object/from16 v0, v40

    goto :goto_f

    .line 92
    :cond_25
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v19, v0

    move-object/from16 v0, v16

    .line 93
    :goto_f
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    move/from16 v0, v20

    .line 94
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_26

    move/from16 v20, v0

    move-object/from16 v0, v40

    goto :goto_10

    .line 95
    :cond_26
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v20, v0

    move-object/from16 v0, v16

    .line 96
    :goto_10
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    move/from16 v0, v21

    .line 97
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_27

    move/from16 v21, v0

    move-object/from16 v0, v40

    goto :goto_11

    .line 98
    :cond_27
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v21, v0

    move-object/from16 v0, v16

    .line 99
    :goto_11
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    move/from16 v0, v22

    .line 100
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_28

    move/from16 v22, v0

    move-object/from16 v0, v40

    goto :goto_12

    .line 101
    :cond_28
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v22, v0

    move-object/from16 v0, v16

    .line 102
    :goto_12
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v0, v23

    .line 103
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_29

    move/from16 v23, v0

    move-object/from16 v0, v40

    goto :goto_13

    .line 104
    :cond_29
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v23, v0

    move-object/from16 v0, v16

    .line 105
    :goto_13
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 106
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2a

    move/from16 v24, v0

    move-object/from16 v0, v40

    goto :goto_14

    .line 107
    :cond_2a
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v24, v0

    move-object/from16 v0, v16

    .line 108
    :goto_14
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 109
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2b

    move/from16 v25, v0

    move-object/from16 v0, v40

    goto :goto_15

    .line 110
    :cond_2b
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v25, v0

    move-object/from16 v0, v16

    .line 111
    :goto_15
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, v26

    .line 112
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2c

    move/from16 v26, v0

    move-object/from16 v0, v40

    goto :goto_16

    .line 113
    :cond_2c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v26, v0

    move-object/from16 v0, v16

    .line 114
    :goto_16
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 115
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2d

    move/from16 v27, v0

    move-object/from16 v0, v40

    goto :goto_17

    .line 116
    :cond_2d
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v27, v0

    move-object/from16 v0, v16

    .line 117
    :goto_17
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v28

    .line 118
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2e

    move/from16 v28, v0

    move-object/from16 v0, v40

    goto :goto_18

    .line 119
    :cond_2e
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v28, v0

    move-object/from16 v0, v16

    .line 120
    :goto_18
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v0, v29

    .line 121
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2f

    move/from16 v29, v0

    move-object/from16 v0, v40

    goto :goto_19

    .line 122
    :cond_2f
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v29, v0

    move-object/from16 v0, v16

    .line 123
    :goto_19
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v30

    .line 124
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_30

    move/from16 v30, v0

    move-object/from16 v0, v40

    goto :goto_1a

    .line 125
    :cond_30
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v30, v0

    move-object/from16 v0, v16

    .line 126
    :goto_1a
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v31

    .line 127
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_31

    move/from16 v31, v0

    move-object/from16 v0, v40

    goto :goto_1b

    .line 128
    :cond_31
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v31, v0

    move-object/from16 v0, v16

    .line 129
    :goto_1b
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v32

    .line 130
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_32

    move/from16 v32, v0

    move-object/from16 v0, v40

    goto :goto_1c

    .line 131
    :cond_32
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v32, v0

    move-object/from16 v0, v16

    .line 132
    :goto_1c
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v33

    .line 133
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_33

    move/from16 v33, v0

    move-object/from16 v0, v40

    goto :goto_1d

    .line 134
    :cond_33
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v33, v0

    move-object/from16 v0, v16

    .line 135
    :goto_1d
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v34

    .line 136
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_34

    move/from16 v34, v0

    move/from16 v16, v2

    move-object/from16 v0, v40

    goto :goto_1e

    .line 137
    :cond_34
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v34, v0

    move-object/from16 v0, v16

    move/from16 v16, v2

    .line 138
    :goto_1e
    iget-object v2, v6, Le/a/c/c/d/l0;->k:Le/a/c/c/d/k0$i;

    iget-object v2, v2, Le/a/c/c/d/k0$i;->b:Le/a/c/c/d/k0;

    .line 139
    iget-object v2, v2, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 140
    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 141
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v35

    .line 142
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    goto :goto_1f

    :cond_35
    move/from16 v2, v44

    .line 143
    :goto_1f
    invoke-virtual {v4, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v2, v53

    .line 144
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_36

    goto :goto_20

    .line 145
    :cond_36
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    :goto_20
    move/from16 v35, v0

    move-object/from16 v0, v40

    .line 146
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    .line 147
    :goto_21
    new-instance v0, Le/a/c/r/h/a;

    move/from16 v53, v2

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-direct {v0, v4, v1, v2}, Le/a/c/r/h/a;-><init>(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/lang/Integer;Ljava/lang/String;)V

    move-object/from16 v1, v39

    .line 148
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v38, v14

    move/from16 v39, v15

    move/from16 v2, v16

    move/from16 v37, v17

    move/from16 v4, v36

    move/from16 v15, v41

    move/from16 v0, v42

    move/from16 v6, v52

    move/from16 v36, v53

    move-object v14, v1

    move/from16 v16, v7

    move/from16 v17, v8

    move v7, v13

    move/from16 v8, v43

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_37
    move-object/from16 v6, p0

    move-object v1, v14

    return-object v1
.end method
