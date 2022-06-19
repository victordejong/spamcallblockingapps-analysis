.class public Le/a/c/c/d/b0;
.super Ln3/c0/g0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/g0/a<",
        "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Le/a/c/c/d/c0$a;


# direct methods
.method public varargs constructor <init>(Le/a/c/c/d/c0$a;Ln3/c0/q;Ln3/c0/y;ZZ[Ljava/lang/String;)V
    .locals 6

    .line 1
    iput-object p1, p0, Le/a/c/c/d/b0;->k:Le/a/c/c/d/c0$a;

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
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "messageID"

    .line 1
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "address"

    .line 2
    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "message"

    .line 3
    invoke-static {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "date"

    .line 4
    invoke-static {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "conversationId"

    .line 5
    invoke-static {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 8
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    move-object v11, v8

    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v11, v7

    .line 11
    :goto_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v12, v8

    goto :goto_2

    .line 12
    :cond_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    .line 13
    :goto_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 14
    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_3
    move-object/from16 v7, p0

    .line 15
    iget-object v13, v7, Le/a/c/c/d/b0;->k:Le/a/c/c/d/c0$a;

    iget-object v13, v13, Le/a/c/c/d/c0$a;->b:Le/a/c/c/d/c0;

    .line 16
    iget-object v13, v13, Le/a/c/c/d/c0;->b:Le/a/c/c0/g;

    .line 17
    invoke-virtual {v13, v8}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v13

    .line 18
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 19
    new-instance v8, Lcom/truecaller/insights/models/pdo/SmsBackupMessage;

    move-object/from16 v16, v8

    invoke-direct/range {v8 .. v15}, Lcom/truecaller/insights/models/pdo/SmsBackupMessage;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V

    .line 20
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object/from16 v7, p0

    return-object v6
.end method
