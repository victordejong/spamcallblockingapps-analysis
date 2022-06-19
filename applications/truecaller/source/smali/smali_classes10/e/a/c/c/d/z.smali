.class public final Le/a/c/c/d/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/y;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/c0/g;

.field public final d:Ln3/c0/c0;

.field public final e:Ln3/c0/c0;

.field public final f:Ln3/c0/c0;

.field public final g:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/c/c/d/z$a;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/z$a;-><init>(Le/a/c/c/d/z;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/z;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/c/c/d/z$b;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/z$b;-><init>(Le/a/c/c/d/z;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/z;->d:Ln3/c0/c0;

    .line 6
    new-instance v0, Le/a/c/c/d/z$c;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/z$c;-><init>(Le/a/c/c/d/z;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/z;->e:Ln3/c0/c0;

    .line 7
    new-instance v0, Le/a/c/c/d/z$d;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/z$d;-><init>(Le/a/c/c/d/z;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/z;->f:Ln3/c0/c0;

    .line 8
    new-instance v0, Le/a/c/c/d/z$e;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/z$e;-><init>(Le/a/c/c/d/z;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/z;->g:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/x2/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM insights_reminders"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    const-string v3, "insights_reminders"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Le/a/c/c/d/z$f;

    invoke-direct {v4, p0, v0}, Le/a/c/c/d/z$f;-><init>(Le/a/c/c/d/z;Ln3/c0/y;)V

    invoke-static {v2, v1, v3, v4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method

.method public b([Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE insights_reminders SET is_notification_pending = 0 WHERE uniqueRefId IN ("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    array-length v1, p1

    .line 5
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 9
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    if-nez v4, :cond_0

    .line 10
    invoke-interface {v0, v3}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {v0, v3, v4}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 13
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 14
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 16
    throw p1
.end method

.method public c()Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM insights_reminders WHERE is_dismissed = 0"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    .line 2
    iget-object v0, v1, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, v1, Le/a/c/c/d/z;->a:Ln3/c0/q;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "uniqueRefId"

    .line 4
    invoke-static {v5, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "vendorName"

    .line 5
    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "due_date"

    .line 6
    invoke-static {v5, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "generated_date"

    .line 7
    invoke-static {v5, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "image_url"

    .line 8
    invoke-static {v5, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "times_notified"

    .line 9
    invoke-static {v5, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_dismissed"

    .line 10
    invoke-static {v5, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "category"

    .line 11
    invoke-static {v5, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "meta"

    .line 12
    invoke-static {v5, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "created_at"

    .line 13
    invoke-static {v5, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "is_notification_pending"

    .line 14
    invoke-static {v5, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 17
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v17, 0x0

    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    .line 19
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v18, 0x0

    goto :goto_2

    .line 20
    :cond_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    .line 21
    :goto_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v28, v0

    const/4 v4, 0x0

    goto :goto_3

    .line 22
    :cond_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move/from16 v28, v0

    .line 23
    :goto_3
    iget-object v0, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v0, v4}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v19

    .line 24
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    .line 25
    :cond_3
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 26
    :goto_4
    iget-object v4, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v20

    .line 27
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v21, 0x0

    goto :goto_5

    .line 28
    :cond_4
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 29
    :goto_5
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 30
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v23, 0x1

    goto :goto_6

    :cond_5
    const/16 v23, 0x0

    .line 31
    :goto_6
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v24, 0x0

    goto :goto_7

    .line 32
    :cond_6
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 33
    :goto_7
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v25, 0x0

    goto :goto_8

    .line 34
    :cond_7
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 35
    :goto_8
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    .line 36
    :cond_8
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 37
    :goto_9
    iget-object v4, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v26

    .line 38
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v27, 0x1

    goto :goto_a

    :cond_9
    const/16 v27, 0x0

    .line 39
    :goto_a
    new-instance v0, Lcom/truecaller/insights/models/InsightsReminder;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v27}, Lcom/truecaller/insights/models/InsightsReminder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 40
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v28

    goto/16 :goto_0

    .line 41
    :cond_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 42
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception v0

    .line 43
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    .line 45
    throw v0
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/z;->e:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 5
    iget-object v1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 7
    iget-object v1, p0, Le/a/c/c/d/z;->e:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 9
    iget-object v2, p0, Le/a/c/c/d/z;->e:Ln3/c0/c0;

    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 10
    throw v1
.end method

.method public e(Lcom/truecaller/insights/models/InsightsReminder;)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/z;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public f([Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM insights_reminders WHERE is_dismissed = 0 AND uniqueRefId IN ("

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    array-length v3, v0

    .line 4
    invoke-static {v2, v3}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    add-int/2addr v3, v4

    .line 7
    invoke-static {v2, v3}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v2

    .line 8
    array-length v3, v0

    move v6, v4

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v3, :cond_1

    aget-object v8, v0, v6

    if-nez v8, :cond_0

    .line 9
    invoke-virtual {v2, v7}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v2, v7, v8}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, v1, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 12
    iget-object v0, v1, Le/a/c/c/d/z;->a:Ln3/c0/q;

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "uniqueRefId"

    .line 13
    invoke-static {v6, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "vendorName"

    .line 14
    invoke-static {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "due_date"

    .line 15
    invoke-static {v6, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "generated_date"

    .line 16
    invoke-static {v6, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "image_url"

    .line 17
    invoke-static {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "times_notified"

    .line 18
    invoke-static {v6, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "is_dismissed"

    .line 19
    invoke-static {v6, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "category"

    .line 20
    invoke-static {v6, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "meta"

    .line 21
    invoke-static {v6, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "created_at"

    .line 22
    invoke-static {v6, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "is_notification_pending"

    .line 23
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 26
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v17, 0x0

    goto :goto_3

    .line 27
    :cond_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    .line 28
    :goto_3
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v18, 0x0

    goto :goto_4

    .line 29
    :cond_3
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    .line 30
    :goto_4
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move/from16 v28, v0

    const/4 v5, 0x0

    goto :goto_5

    .line 31
    :cond_4
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v28, v0

    .line 32
    :goto_5
    iget-object v0, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v0, v5}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v19

    .line 33
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    .line 34
    :cond_5
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 35
    :goto_6
    iget-object v5, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v5, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v20

    .line 36
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v21, 0x0

    goto :goto_7

    .line 37
    :cond_6
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 38
    :goto_7
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 39
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v23, 0x1

    goto :goto_8

    :cond_7
    const/16 v23, 0x0

    .line 40
    :goto_8
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v24, 0x0

    goto :goto_9

    .line 41
    :cond_8
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 42
    :goto_9
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v25, 0x0

    goto :goto_a

    .line 43
    :cond_9
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 44
    :goto_a
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_b

    .line 45
    :cond_a
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 46
    :goto_b
    iget-object v5, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v5, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v26

    .line 47
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v27, 0x1

    goto :goto_c

    :cond_b
    const/16 v27, 0x0

    .line 48
    :goto_c
    new-instance v0, Lcom/truecaller/insights/models/InsightsReminder;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v27}, Lcom/truecaller/insights/models/InsightsReminder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 49
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v28

    goto/16 :goto_2

    .line 50
    :cond_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 51
    invoke-virtual {v2}, Ln3/c0/y;->l()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 52
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 53
    invoke-virtual {v2}, Ln3/c0/y;->l()V

    .line 54
    throw v0
.end method

.method public g(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/z;->f:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    int-to-long v1, p2

    const/4 p2, 0x1

    .line 3
    invoke-interface {v0, p2, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 4
    invoke-interface {v0, p2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p2, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 6
    :goto_0
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 7
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 8
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    .line 10
    iget-object p1, p0, Le/a/c/c/d/z;->f:Ln3/c0/c0;

    invoke-virtual {p1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object p2, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 12
    iget-object p2, p0, Le/a/c/c/d/z;->f:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 13
    throw p1
.end method

.method public h(Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT * FROM insights_reminders \n        WHERE vendorName = ?\n        "

    const/4 v3, 0x1

    .line 1
    invoke-static {v2, v3}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {v2, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v2, v3, v0}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, v1, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 5
    iget-object v0, v1, Le/a/c/c/d/z;->a:Ln3/c0/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v2, v4, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "uniqueRefId"

    .line 6
    invoke-static {v6, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "vendorName"

    .line 7
    invoke-static {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "due_date"

    .line 8
    invoke-static {v6, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "generated_date"

    .line 9
    invoke-static {v6, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "image_url"

    .line 10
    invoke-static {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "times_notified"

    .line 11
    invoke-static {v6, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "is_dismissed"

    .line 12
    invoke-static {v6, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "category"

    .line 13
    invoke-static {v6, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "meta"

    .line 14
    invoke-static {v6, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "created_at"

    .line 15
    invoke-static {v6, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "is_notification_pending"

    .line 16
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 19
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v17, 0x0

    goto :goto_2

    .line 20
    :cond_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    .line 21
    :goto_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v18, 0x0

    goto :goto_3

    .line 22
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    .line 23
    :goto_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move/from16 v28, v0

    const/4 v5, 0x0

    goto :goto_4

    .line 24
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v28, v0

    .line 25
    :goto_4
    iget-object v0, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v0, v5}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v19

    .line 26
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    .line 27
    :cond_4
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 28
    :goto_5
    iget-object v5, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v5, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v20

    .line 29
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v21, 0x0

    goto :goto_6

    .line 30
    :cond_5
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 31
    :goto_6
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 32
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v23, 0x1

    goto :goto_7

    :cond_6
    const/16 v23, 0x0

    .line 33
    :goto_7
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v24, 0x0

    goto :goto_8

    .line 34
    :cond_7
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 35
    :goto_8
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v25, 0x0

    goto :goto_9

    .line 36
    :cond_8
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 37
    :goto_9
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_a

    .line 38
    :cond_9
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 39
    :goto_a
    iget-object v5, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v5, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v26

    .line 40
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v27, 0x1

    goto :goto_b

    :cond_a
    const/16 v27, 0x0

    .line 41
    :goto_b
    new-instance v0, Lcom/truecaller/insights/models/InsightsReminder;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v27}, Lcom/truecaller/insights/models/InsightsReminder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 42
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v28

    goto/16 :goto_1

    .line 43
    :cond_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-virtual {v2}, Ln3/c0/y;->l()V

    return-object v4

    :catchall_0
    move-exception v0

    .line 45
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 46
    invoke-virtual {v2}, Ln3/c0/y;->l()V

    .line 47
    throw v0
.end method

.method public i()Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsReminder;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM insights_reminders"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    .line 2
    iget-object v0, v1, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, v1, Le/a/c/c/d/z;->a:Ln3/c0/q;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "uniqueRefId"

    .line 4
    invoke-static {v5, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "vendorName"

    .line 5
    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "due_date"

    .line 6
    invoke-static {v5, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "generated_date"

    .line 7
    invoke-static {v5, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "image_url"

    .line 8
    invoke-static {v5, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "times_notified"

    .line 9
    invoke-static {v5, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "is_dismissed"

    .line 10
    invoke-static {v5, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "category"

    .line 11
    invoke-static {v5, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "meta"

    .line 12
    invoke-static {v5, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "created_at"

    .line 13
    invoke-static {v5, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "is_notification_pending"

    .line 14
    invoke-static {v5, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 17
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v17, 0x0

    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    .line 19
    :goto_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v18, 0x0

    goto :goto_2

    .line 20
    :cond_1
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    .line 21
    :goto_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v28, v0

    const/4 v4, 0x0

    goto :goto_3

    .line 22
    :cond_2
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move/from16 v28, v0

    .line 23
    :goto_3
    iget-object v0, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v0, v4}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v19

    .line 24
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_4

    .line 25
    :cond_3
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 26
    :goto_4
    iget-object v4, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v20

    .line 27
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v21, 0x0

    goto :goto_5

    .line 28
    :cond_4
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 29
    :goto_5
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 30
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v23, 0x1

    goto :goto_6

    :cond_5
    const/16 v23, 0x0

    .line 31
    :goto_6
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v24, 0x0

    goto :goto_7

    .line 32
    :cond_6
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    .line 33
    :goto_7
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v25, 0x0

    goto :goto_8

    .line 34
    :cond_7
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 35
    :goto_8
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    .line 36
    :cond_8
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 37
    :goto_9
    iget-object v4, v1, Le/a/c/c/d/z;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v26

    .line 38
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v27, 0x1

    goto :goto_a

    :cond_9
    const/16 v27, 0x0

    .line 39
    :goto_a
    new-instance v0, Lcom/truecaller/insights/models/InsightsReminder;

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v27}, Lcom/truecaller/insights/models/InsightsReminder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 40
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, v28

    goto/16 :goto_0

    .line 41
    :cond_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 42
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception v0

    .line 43
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 44
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    .line 45
    throw v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/z;->g:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 5
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 6
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    .line 8
    iget-object p1, p0, Le/a/c/c/d/z;->g:Ln3/c0/c0;

    invoke-virtual {p1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object v1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 10
    iget-object v1, p0, Le/a/c/c/d/z;->g:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 11
    throw p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/z;->d:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0, p2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0, p2, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 7
    :goto_1
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 8
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 9
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-object p1, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    .line 11
    iget-object p1, p0, Le/a/c/c/d/z;->d:Ln3/c0/c0;

    invoke-virtual {p1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    iget-object p2, p0, Le/a/c/c/d/z;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 13
    iget-object p2, p0, Le/a/c/c/d/z;->d:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 14
    throw p1
.end method
