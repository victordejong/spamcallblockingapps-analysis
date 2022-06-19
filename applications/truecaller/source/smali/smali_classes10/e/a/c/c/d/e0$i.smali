.class public Le/a/c/c/d/e0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/e0;->K(Ljava/util/List;JILs1/w/d;)Ljava/lang/Object;
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
    iput-object p1, p0, Le/a/c/c/d/e0$i;->b:Le/a/c/c/d/e0;

    iput-object p2, p0, Le/a/c/c/d/e0$i;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 53
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/c/c/d/e0$i;->b:Le/a/c/c/d/e0;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    .line 3
    iget-object v2, v1, Le/a/c/c/d/e0$i;->a:Ln3/c0/y;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "conversationId"

    .line 4
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "transport"

    .line 5
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "messageID"

    .line 6
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "d"

    .line 7
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "k"

    .line 8
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "p"

    .line 9
    invoke-static {v2, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "classified_by"

    .line 10
    invoke-static {v2, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "message"

    .line 11
    invoke-static {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "updateCategory"

    .line 12
    invoke-static {v2, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "c"

    .line 13
    invoke-static {v2, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "o"

    .line 14
    invoke-static {v2, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "f"

    .line 15
    invoke-static {v2, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "g"

    .line 16
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "s"

    .line 17
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v4

    const-string v4, "account_model_id"

    .line 18
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "val1"

    .line 19
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v18, v4

    const-string v4, "val2"

    .line 20
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v19, v4

    const-string v4, "val3"

    .line 21
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    const-string v4, "val4"

    .line 22
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v21, v4

    const-string v4, "val5"

    .line 23
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v22, v4

    const-string v4, "datetime"

    .line 24
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v23, v4

    const-string v4, "address"

    .line 25
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v24, v4

    const-string v4, "msg_date"

    .line 26
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v25, v4

    const-string v4, "date"

    .line 27
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v26, v4

    const-string v4, "dff_val1"

    .line 28
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v27, v4

    const-string v4, "dff_val2"

    .line 29
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v28, v4

    const-string v4, "dff_val3"

    .line 30
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v29, v4

    const-string v4, "dff_val4"

    .line 31
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v30, v4

    const-string v4, "dff_val5"

    .line 32
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v31, v4

    const-string v4, "active"

    .line 33
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v32, v4

    const-string v4, "state"

    .line 34
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v33, v4

    const-string v4, "synthetic_record_id"

    .line 35
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v34, v4

    const-string v4, "deleted"

    .line 36
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v35, v4

    const-string v4, "created_at"

    .line 37
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v36, v4

    const-string v4, "spam_category"

    .line 38
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v37, v4

    const-string v4, "no_of_words"

    .line 39
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v38, v3

    const-string v3, "confidence_score"

    .line 40
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v39, v15

    .line 41
    new-instance v15, Ljava/util/ArrayList;

    move/from16 v40, v14

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 43
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 44
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v50, v0

    .line 45
    iget-object v0, v1, Le/a/c/c/d/e0$i;->b:Le/a/c/c/d/e0;

    .line 46
    iget-object v0, v0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 47
    invoke-virtual {v0, v14}, Le/a/c/c0/g;->e(I)Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v44

    .line 48
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 49
    iget-object v14, v1, Le/a/c/c/d/e0$i;->b:Le/a/c/c/d/e0;

    .line 50
    iget-object v14, v14, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 51
    invoke-virtual {v14, v0}, Le/a/c/c0/g;->d(I)Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object v47

    .line 52
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v45, 0x0

    goto :goto_1

    .line 53
    :cond_0
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    .line 54
    :goto_1
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v46, 0x0

    goto :goto_2

    .line 55
    :cond_1
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v46, v0

    .line 56
    :goto_2
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 57
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v48

    .line 58
    new-instance v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v49}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;-><init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)V

    move/from16 v41, v3

    move v14, v4

    .line 59
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 60
    invoke-virtual {v0, v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 61
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    .line 62
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    :goto_3
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 64
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_4

    .line 65
    :cond_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 66
    :goto_4
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 67
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_5

    .line 68
    :cond_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    :goto_5
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 70
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_6

    .line 71
    :cond_5
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    :goto_6
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    move/from16 v3, v40

    .line 73
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_7

    .line 74
    :cond_6
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    :goto_7
    invoke-virtual {v0, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    move/from16 v4, v39

    .line 76
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_7

    move/from16 v40, v3

    const/4 v3, 0x0

    goto :goto_8

    .line 77
    :cond_7
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    move/from16 v40, v3

    move-object/from16 v3, v39

    .line 78
    :goto_8
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    move/from16 v3, v38

    .line 79
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_8

    move/from16 v39, v3

    const/4 v3, 0x0

    goto :goto_9

    .line 80
    :cond_8
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    move/from16 v39, v3

    move-object/from16 v3, v38

    .line 81
    :goto_9
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    move/from16 v3, v16

    .line 82
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move/from16 v38, v3

    const/4 v3, 0x0

    goto :goto_a

    .line 83
    :cond_9
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v38, v3

    move-object/from16 v3, v16

    .line 84
    :goto_a
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    move/from16 v3, v17

    .line 85
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_a

    move/from16 v17, v3

    const/4 v3, 0x0

    goto :goto_b

    .line 86
    :cond_a
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v17, v3

    move-object/from16 v3, v16

    .line 87
    :goto_b
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    move/from16 v3, v18

    .line 88
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_b

    move/from16 v18, v3

    const/4 v3, 0x0

    goto :goto_c

    .line 89
    :cond_b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v18, v3

    move-object/from16 v3, v16

    .line 90
    :goto_c
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v3, v19

    .line 91
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_c

    move/from16 v19, v3

    const/4 v3, 0x0

    goto :goto_d

    .line 92
    :cond_c
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v19, v3

    move-object/from16 v3, v16

    .line 93
    :goto_d
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    move/from16 v3, v20

    .line 94
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v20, v3

    const/4 v3, 0x0

    goto :goto_e

    .line 95
    :cond_d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v20, v3

    move-object/from16 v3, v16

    .line 96
    :goto_e
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v3, v21

    .line 97
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_e

    move/from16 v21, v3

    const/4 v3, 0x0

    goto :goto_f

    .line 98
    :cond_e
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v21, v3

    move-object/from16 v3, v16

    .line 99
    :goto_f
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v3, v22

    .line 100
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_f

    move/from16 v22, v3

    const/4 v3, 0x0

    goto :goto_10

    .line 101
    :cond_f
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v22, v3

    move-object/from16 v3, v16

    .line 102
    :goto_10
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v3, v23

    .line 103
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_10

    move/from16 v23, v3

    const/4 v3, 0x0

    goto :goto_11

    .line 104
    :cond_10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v23, v3

    move-object/from16 v3, v16

    .line 105
    :goto_11
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v3, v24

    .line 106
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_11

    move/from16 v24, v3

    const/4 v3, 0x0

    goto :goto_12

    .line 107
    :cond_11
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v24, v3

    move-object/from16 v3, v16

    .line 108
    :goto_12
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v3, v25

    .line 109
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_12

    move/from16 v25, v3

    move/from16 v16, v4

    const/4 v3, 0x0

    goto :goto_13

    .line 110
    :cond_12
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v25, v3

    move-object/from16 v3, v16

    move/from16 v16, v4

    .line 111
    :goto_13
    iget-object v4, v1, Le/a/c/c/d/e0$i;->b:Le/a/c/c/d/e0;

    .line 112
    iget-object v4, v4, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 113
    invoke-virtual {v4, v3}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    .line 114
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v3, v26

    .line 115
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    goto :goto_14

    .line 116
    :cond_13
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    :goto_14
    invoke-virtual {v0, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v4, v27

    .line 118
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_14

    move/from16 v27, v3

    const/4 v3, 0x0

    goto :goto_15

    .line 119
    :cond_14
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v27, v3

    move-object/from16 v3, v26

    .line 120
    :goto_15
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v3, v28

    .line 121
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_15

    move/from16 v28, v3

    const/4 v3, 0x0

    goto :goto_16

    .line 122
    :cond_15
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v28, v3

    move-object/from16 v3, v26

    .line 123
    :goto_16
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v3, v29

    .line 124
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_16

    move/from16 v29, v3

    const/4 v3, 0x0

    goto :goto_17

    .line 125
    :cond_16
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v29, v3

    move-object/from16 v3, v26

    .line 126
    :goto_17
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v3, v30

    .line 127
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_17

    move/from16 v30, v3

    const/4 v3, 0x0

    goto :goto_18

    .line 128
    :cond_17
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v30, v3

    move-object/from16 v3, v26

    .line 129
    :goto_18
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v3, v31

    .line 130
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_18

    move/from16 v31, v3

    const/4 v3, 0x0

    goto :goto_19

    .line 131
    :cond_18
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move/from16 v31, v3

    move-object/from16 v3, v26

    .line 132
    :goto_19
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v3, v32

    .line 133
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v32, 0x1

    if-eqz v26, :cond_19

    move/from16 v26, v3

    move/from16 v3, v32

    goto :goto_1a

    :cond_19
    move/from16 v26, v3

    const/4 v3, 0x0

    .line 134
    :goto_1a
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v3, v33

    .line 135
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1a

    move/from16 v42, v3

    const/4 v3, 0x0

    goto :goto_1b

    .line 136
    :cond_1a
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move/from16 v42, v3

    move-object/from16 v3, v33

    .line 137
    :goto_1b
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v3, v34

    .line 138
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1b

    move/from16 v34, v3

    const/4 v3, 0x0

    goto :goto_1c

    .line 139
    :cond_1b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move/from16 v34, v3

    move-object/from16 v3, v33

    .line 140
    :goto_1c
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v3, v35

    .line 141
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    move/from16 v35, v3

    if-eqz v33, :cond_1c

    move/from16 v3, v32

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .line 142
    :goto_1d
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v3, v36

    .line 143
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_1d

    move/from16 v36, v3

    move/from16 v32, v4

    const/4 v3, 0x0

    goto :goto_1e

    .line 144
    :cond_1d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move/from16 v36, v3

    move-object/from16 v3, v32

    move/from16 v32, v4

    .line 145
    :goto_1e
    iget-object v4, v1, Le/a/c/c/d/e0$i;->b:Le/a/c/c/d/e0;

    .line 146
    iget-object v4, v4, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 147
    invoke-virtual {v4, v3}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    .line 148
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v3, v37

    .line 149
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 150
    invoke-virtual {v0, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    .line 151
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v37, v3

    move v4, v14

    move/from16 v3, v41

    move/from16 v33, v42

    move/from16 v0, v50

    move/from16 v51, v39

    move/from16 v39, v16

    move/from16 v16, v38

    move/from16 v38, v51

    move/from16 v52, v32

    move/from16 v32, v26

    move/from16 v26, v27

    move/from16 v27, v52

    goto/16 :goto_0

    .line 152
    :cond_1e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 153
    iget-object v0, v1, Le/a/c/c/d/e0$i;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v15

    :catchall_0
    move-exception v0

    .line 154
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 155
    iget-object v2, v1, Le/a/c/c/d/e0$i;->a:Ln3/c0/y;

    invoke-virtual {v2}, Ln3/c0/y;->l()V

    .line 156
    throw v0
.end method
