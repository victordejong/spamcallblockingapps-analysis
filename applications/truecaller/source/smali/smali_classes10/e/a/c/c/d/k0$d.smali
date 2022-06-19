.class public Le/a/c/c/d/k0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/k0;->e(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/truecaller/insights/models/pdo/SmsBackup;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Le/a/c/c/d/k0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/k0;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/k0$d;->b:Le/a/c/c/d/k0;

    iput-object p2, p0, Le/a/c/c/d/k0$d;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/a/c/c/d/k0$d;->b:Le/a/c/c/d/k0;

    .line 2
    iget-object v0, v0, Le/a/c/c/d/k0;->a:Ln3/c0/q;

    .line 3
    iget-object v2, v1, Le/a/c/c/d/k0$d;->a:Ln3/c0/y;

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

    const-string v6, "message"

    .line 6
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "date"

    .line 7
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "transport"

    .line 8
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "parseFailed"

    .line 9
    invoke-static {v2, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "errorMessage"

    .line 10
    invoke-static {v2, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "retryCount"

    .line 11
    invoke-static {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "deleted"

    .line 12
    invoke-static {v2, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "created_at"

    .line 13
    invoke-static {v2, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "updateCategory"

    .line 14
    invoke-static {v2, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "classified_by"

    .line 15
    invoke-static {v2, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "conversationId"

    .line 16
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "spam_category"

    .line 17
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v4

    const-string v4, "confidence_score"

    .line 18
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v17, v4

    const-string v4, "no_of_words"

    .line 19
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_8

    move/from16 v18, v4

    .line 21
    new-instance v4, Lcom/truecaller/insights/models/pdo/SmsBackup;

    invoke-direct {v4}, Lcom/truecaller/insights/models/pdo/SmsBackup;-><init>()V

    move/from16 v19, v14

    move/from16 v20, v15

    .line 22
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 23
    invoke-virtual {v4, v14, v15}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setMessageID(J)V

    .line 24
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_0
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setAddress(Ljava/lang/String;)V

    .line 27
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 28
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_1
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setMessage(Ljava/lang/String;)V

    .line 30
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 31
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 32
    :goto_2
    iget-object v5, v1, Le/a/c/c/d/k0$d;->b:Le/a/c/c/d/k0;

    .line 33
    iget-object v5, v5, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 34
    invoke-virtual {v5, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 35
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setDate(Ljava/util/Date;)V

    .line 36
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 37
    iget-object v5, v1, Le/a/c/c/d/k0$d;->b:Le/a/c/c/d/k0;

    .line 38
    iget-object v5, v5, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 39
    invoke-virtual {v5, v0}, Le/a/c/c0/g;->e(I)Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v0

    .line 40
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setTransport(Lcom/truecaller/insights/commons/model/Transport;)V

    .line 41
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 42
    :goto_3
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setParseFailed(Z)V

    .line 43
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 44
    :cond_4
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_4
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setErrorMessage(Ljava/lang/String;)V

    .line 46
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 47
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setRetryCount(I)V

    .line 48
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    .line 49
    :goto_5
    invoke-virtual {v4, v5}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setDeleted(Z)V

    .line 50
    invoke-interface {v2, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    .line 51
    :cond_6
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 52
    :goto_6
    iget-object v5, v1, Le/a/c/c/d/k0$d;->b:Le/a/c/c/d/k0;

    .line 53
    iget-object v5, v5, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 54
    invoke-virtual {v5, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 55
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v0, v19

    .line 56
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    .line 57
    :cond_7
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_7
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setUpdateCategory(Ljava/lang/String;)V

    move/from16 v0, v20

    .line 59
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 60
    iget-object v5, v1, Le/a/c/c/d/k0$d;->b:Le/a/c/c/d/k0;

    .line 61
    iget-object v5, v5, Le/a/c/c/d/k0;->c:Le/a/c/c0/g;

    .line 62
    invoke-virtual {v5, v0}, Le/a/c/c0/g;->d(I)Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object v0

    .line 63
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setClassifiedBy(Lcom/truecaller/insights/models/pdo/ClassifierType;)V

    .line 64
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 65
    invoke-virtual {v4, v5, v6}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setConversationId(J)V

    move/from16 v0, v16

    .line 66
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 67
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setSpamCategory(I)V

    move/from16 v0, v17

    .line 68
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 69
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setConfidenceScore(F)V

    move/from16 v0, v18

    .line 70
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 71
    invoke-virtual {v4, v0}, Lcom/truecaller/insights/models/pdo/SmsBackup;->setNoOfWords(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    .line 72
    :goto_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 73
    iget-object v0, v1, Le/a/c/c/d/k0$d;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 74
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 75
    iget-object v2, v1, Le/a/c/c/d/k0$d;->a:Ln3/c0/y;

    invoke-virtual {v2}, Ln3/c0/y;->l()V

    .line 76
    throw v0
.end method
