.class public Le/a/c/c/d/e0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/e0;->I(JJJLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/c/c/d/e0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/e0;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/e0$m;->b:Le/a/c/c/d/e0;

    iput-object p2, p0, Le/a/c/c/d/e0$m;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/c/c/d/e0$m;->b:Le/a/c/c/d/e0;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    .line 3
    iget-object v2, v1, Le/a/c/c/d/e0$m;->a:Ln3/c0/y;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "messageID"

    .line 4
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "address"

    .line 5
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "spam_category"

    .line 6
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "classified_by"

    .line 7
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "confidence_score"

    .line 8
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "transport"

    .line 9
    invoke-static {v2, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "conversationId"

    .line 10
    invoke-static {v2, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "message"

    .line 11
    invoke-static {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "no_of_words"

    .line 12
    invoke-static {v2, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "deleted"

    .line 13
    invoke-static {v2, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "created_at"

    .line 14
    invoke-static {v2, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "d"

    .line 15
    invoke-static {v2, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "k"

    .line 16
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "p"

    .line 17
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v4

    const-string v4, "c"

    .line 18
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "o"

    .line 19
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "f"

    .line 20
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "g"

    .line 21
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "s"

    .line 22
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "val1"

    .line 23
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "val2"

    .line 24
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "val3"

    .line 25
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    const-string v4, "val4"

    .line 26
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    const-string v4, "val5"

    .line 27
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v26, v4

    const-string v4, "date"

    .line 28
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v27, v4

    const-string v4, "dff_val1"

    .line 29
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v28, v4

    const-string v4, "dff_val2"

    .line 30
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v29, v4

    const-string v4, "dff_val3"

    .line 31
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v30, v4

    const-string v4, "dff_val4"

    .line 32
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v31, v4

    const-string v4, "dff_val5"

    .line 33
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v32, v4

    const-string v4, "datetime"

    .line 34
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v33, v4

    const-string v4, "synthetic_record_id"

    .line 35
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v34, v4

    const-string v4, "account_model_id"

    .line 36
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v35, v4

    const-string v4, "msg_date"

    .line 37
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v36, v4

    const-string v4, "active"

    .line 38
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v37, v4

    const-string v4, "state"

    .line 39
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v38, v4

    const-string v4, "updateCategory"

    .line 40
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v39, v3

    .line 41
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v40, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 43
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v41, v7

    .line 44
    iget-object v7, v1, Le/a/c/c/d/e0$m;->b:Le/a/c/c/d/e0;

    .line 45
    iget-object v7, v7, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 46
    invoke-virtual {v7, v15}, Le/a/c/c0/g;->d(I)Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object v48

    .line 47
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v49

    .line 48
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 49
    iget-object v15, v1, Le/a/c/c/d/e0$m;->b:Le/a/c/c/d/e0;

    .line 50
    iget-object v15, v15, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 51
    invoke-virtual {v15, v7}, Le/a/c/c0/g;->e(I)Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v45

    .line 52
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 53
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v46, 0x0

    goto :goto_1

    .line 54
    :cond_0
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v46, v7

    .line 55
    :goto_1
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 56
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v47, 0x0

    goto :goto_2

    .line 57
    :cond_1
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v47, v7

    .line 58
    :goto_2
    new-instance v7, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    move-object/from16 v42, v7

    invoke-direct/range {v42 .. v50}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;-><init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)V

    move v15, v8

    move/from16 v42, v9

    .line 59
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 60
    invoke-virtual {v7, v8, v9}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 61
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_3

    .line 62
    :cond_2
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 63
    :goto_3
    invoke-virtual {v7, v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    .line 64
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 65
    invoke-virtual {v7, v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    .line 66
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    .line 67
    :goto_4
    invoke-virtual {v7, v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    .line 68
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_5

    .line 69
    :cond_4
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 70
    :goto_5
    iget-object v9, v1, Le/a/c/c/d/e0$m;->b:Le/a/c/c/d/e0;

    .line 71
    iget-object v9, v9, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 72
    invoke-virtual {v9, v8}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v8

    .line 73
    invoke-virtual {v7, v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v8, v40

    .line 74
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_6

    .line 75
    :cond_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 76
    :goto_6
    invoke-virtual {v7, v9}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    move/from16 v9, v39

    .line 77
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_6

    move/from16 v40, v0

    const/4 v0, 0x0

    goto :goto_7

    .line 78
    :cond_6
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    move/from16 v40, v0

    move-object/from16 v0, v39

    .line 79
    :goto_7
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    move/from16 v0, v16

    .line 80
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_7

    move/from16 v39, v0

    const/4 v0, 0x0

    goto :goto_8

    .line 81
    :cond_7
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v39, v0

    move-object/from16 v0, v16

    .line 82
    :goto_8
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 83
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_8

    move/from16 v17, v0

    const/4 v0, 0x0

    goto :goto_9

    .line 84
    :cond_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v17, v0

    move-object/from16 v0, v16

    .line 85
    :goto_9
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 86
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_a

    .line 87
    :cond_9
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v18, v0

    move-object/from16 v0, v16

    .line 88
    :goto_a
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 89
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_a

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_b

    .line 90
    :cond_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v19, v0

    move-object/from16 v0, v16

    .line 91
    :goto_b
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    move/from16 v0, v20

    .line 92
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_b

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_c

    .line 93
    :cond_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v20, v0

    move-object/from16 v0, v16

    .line 94
    :goto_c
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    move/from16 v0, v21

    .line 95
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_c

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_d

    .line 96
    :cond_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v21, v0

    move-object/from16 v0, v16

    .line 97
    :goto_d
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    move/from16 v0, v22

    .line 98
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v22, v0

    const/4 v0, 0x0

    goto :goto_e

    .line 99
    :cond_d
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v22, v0

    move-object/from16 v0, v16

    .line 100
    :goto_e
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v0, v23

    .line 101
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_e

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_f

    .line 102
    :cond_e
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v23, v0

    move-object/from16 v0, v16

    .line 103
    :goto_f
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 104
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_f

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_10

    .line 105
    :cond_f
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v24, v0

    move-object/from16 v0, v16

    .line 106
    :goto_10
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 107
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_10

    move/from16 v25, v0

    const/4 v0, 0x0

    goto :goto_11

    .line 108
    :cond_10
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v25, v0

    move-object/from16 v0, v16

    .line 109
    :goto_11
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, v26

    .line 110
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_11

    move/from16 v26, v0

    const/4 v0, 0x0

    goto :goto_12

    .line 111
    :cond_11
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v26, v0

    move-object/from16 v0, v16

    .line 112
    :goto_12
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 113
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_12

    move/from16 v27, v0

    const/4 v0, 0x0

    goto :goto_13

    .line 114
    :cond_12
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v27, v0

    move-object/from16 v0, v16

    .line 115
    :goto_13
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v28

    .line 116
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_13

    move/from16 v28, v0

    const/4 v0, 0x0

    goto :goto_14

    .line 117
    :cond_13
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v28, v0

    move-object/from16 v0, v16

    .line 118
    :goto_14
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v0, v29

    .line 119
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_14

    move/from16 v29, v0

    const/4 v0, 0x0

    goto :goto_15

    .line 120
    :cond_14
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v29, v0

    move-object/from16 v0, v16

    .line 121
    :goto_15
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v30

    .line 122
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_15

    move/from16 v30, v0

    const/4 v0, 0x0

    goto :goto_16

    .line 123
    :cond_15
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v30, v0

    move-object/from16 v0, v16

    .line 124
    :goto_16
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v31

    .line 125
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_16

    move/from16 v31, v0

    const/4 v0, 0x0

    goto :goto_17

    .line 126
    :cond_16
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v31, v0

    move-object/from16 v0, v16

    .line 127
    :goto_17
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v32

    .line 128
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_17

    move/from16 v32, v0

    const/4 v0, 0x0

    goto :goto_18

    .line 129
    :cond_17
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v32, v0

    move-object/from16 v0, v16

    .line 130
    :goto_18
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v33

    .line 131
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_18

    move/from16 v33, v0

    const/4 v0, 0x0

    goto :goto_19

    .line 132
    :cond_18
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v33, v0

    move-object/from16 v0, v16

    .line 133
    :goto_19
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v34

    .line 134
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_19

    move/from16 v34, v0

    const/4 v0, 0x0

    goto :goto_1a

    .line 135
    :cond_19
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v34, v0

    move-object/from16 v0, v16

    .line 136
    :goto_1a
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v0, v35

    .line 137
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_1a

    move/from16 v35, v0

    const/4 v0, 0x0

    goto :goto_1b

    .line 138
    :cond_1a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v35, v0

    move-object/from16 v0, v16

    .line 139
    :goto_1b
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    move/from16 v0, v36

    .line 140
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_1b

    move/from16 v36, v0

    move/from16 v16, v4

    const/4 v0, 0x0

    goto :goto_1c

    .line 141
    :cond_1b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v36, v0

    move-object/from16 v0, v16

    move/from16 v16, v4

    .line 142
    :goto_1c
    iget-object v4, v1, Le/a/c/c/d/e0$m;->b:Le/a/c/c/d/e0;

    .line 143
    iget-object v4, v4, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 144
    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 145
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v37

    .line 146
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    .line 147
    :goto_1d
    invoke-virtual {v7, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v4, v38

    .line 148
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_1d

    move/from16 v38, v0

    const/4 v0, 0x0

    goto :goto_1e

    .line 149
    :cond_1d
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    move/from16 v38, v0

    move-object/from16 v0, v37

    .line 150
    :goto_1e
    invoke-virtual {v7, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v37, v38

    move/from16 v0, v40

    move/from16 v7, v41

    move/from16 v38, v4

    move/from16 v40, v8

    move v8, v15

    move/from16 v4, v16

    move/from16 v16, v39

    move/from16 v39, v9

    move/from16 v9, v42

    goto/16 :goto_0

    .line 152
    :cond_1e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 153
    iget-object v0, v1, Le/a/c/c/d/e0$m;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 154
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 155
    iget-object v2, v1, Le/a/c/c/d/e0$m;->a:Ln3/c0/y;

    invoke-virtual {v2}, Ln3/c0/y;->l()V

    .line 156
    throw v0
.end method
