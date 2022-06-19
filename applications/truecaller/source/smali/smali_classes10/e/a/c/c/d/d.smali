.class public final Le/a/c/c/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/c;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/c/r/e/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/c0/g;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/d;->c:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/c/c/d/d$a;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/d$a;-><init>(Le/a/c/c/d/d;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/d;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/c/c/d/d$b;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/d$b;-><init>(Le/a/c/c/d/d;Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        UPDATE account_model_table SET active = 0 "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        WHERE id in ("

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 8
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 15
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 18
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 19
    iget-object p1, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object p1, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 21
    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/c/r/e/a/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM account_model_table"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    .line 2
    iget-object v0, v1, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, v1, Le/a/c/c/d/d;->a:Ln3/c0/q;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "id"

    .line 4
    invoke-static {v5, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "created_at"

    .line 5
    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "address"

    .line 6
    invoke-static {v5, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "account_type"

    .line 7
    invoke-static {v5, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "account_number"

    .line 8
    invoke-static {v5, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "balance"

    .line 9
    invoke-static {v5, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "active"

    .line 10
    invoke-static {v5, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "record_count"

    .line 11
    invoke-static {v5, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "update_stamp"

    .line 12
    invoke-static {v5, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "root_account"

    .line 13
    invoke-static {v5, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "normalized_name"

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

    if-eqz v4, :cond_8

    .line 17
    new-instance v4, Le/a/c/r/e/a/c;

    invoke-direct {v4}, Le/a/c/r/e/a/c;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    .line 18
    :try_start_1
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 19
    iput-wide v2, v4, Le/a/c/r/e/a/c;->a:J

    .line 20
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 22
    :goto_1
    iget-object v3, v1, Le/a/c/c/d/d;->c:Le/a/c/c0/g;

    invoke-virtual {v3, v2}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v2

    .line 23
    invoke-virtual {v4, v2}, Le/a/c/r/e/a/c;->t(Ljava/util/Date;)V

    .line 24
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    .line 25
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    :goto_2
    iput-object v2, v4, Le/a/c/r/e/a/c;->c:Ljava/lang/String;

    .line 27
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    .line 28
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 29
    :goto_3
    iput-object v2, v4, Le/a/c/r/e/a/c;->d:Ljava/lang/String;

    .line 30
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_4

    .line 31
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    :goto_4
    iput-object v2, v4, Le/a/c/r/e/a/c;->e:Ljava/lang/String;

    .line 33
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    .line 34
    iput v2, v4, Le/a/c/r/e/a/c;->f:F

    .line 35
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    .line 36
    :goto_5
    iput-boolean v2, v4, Le/a/c/r/e/a/c;->g:Z

    move-object v2, v4

    .line 37
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 38
    iput-wide v3, v2, Le/a/c/r/e/a/c;->h:J

    .line 39
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_6

    .line 40
    :cond_5
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 41
    :goto_6
    iget-object v4, v1, Le/a/c/c/d/d;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v3}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    .line 42
    iput-object v3, v2, Le/a/c/r/e/a/c;->i:Ljava/util/Date;

    .line 43
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_7

    :cond_6
    const/4 v3, 0x0

    .line 44
    :goto_7
    iput-boolean v3, v2, Le/a/c/r/e/a/c;->j:Z

    .line 45
    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_8

    .line 46
    :cond_7
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 47
    :goto_8
    iput-object v3, v2, Le/a/c/r/e/a/c;->k:Ljava/lang/String;

    move-object/from16 v3, v17

    .line 48
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    move-object/from16 v3, v16

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_8
    move-object/from16 v16, v3

    move-object v3, v2

    .line 49
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 50
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 51
    :goto_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 52
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 53
    throw v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Le/a/c/r/e/a/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM account_model_table WHERE account_number=? AND address=?"

    const/4 v2, 0x2

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    const/4 v0, 0x1

    move-object/from16 v4, p1

    .line 2
    invoke-virtual {v3, v0, v4}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    move-object/from16 v4, p2

    .line 3
    invoke-virtual {v3, v2, v4}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    iget-object v2, v1, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 5
    iget-object v2, v1, Le/a/c/c/d/d;->a:Ln3/c0/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v6, "id"

    .line 6
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "created_at"

    .line 7
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "address"

    .line 8
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "account_type"

    .line 9
    invoke-static {v2, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "account_number"

    .line 10
    invoke-static {v2, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "balance"

    .line 11
    invoke-static {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "active"

    .line 12
    invoke-static {v2, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "record_count"

    .line 13
    invoke-static {v2, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "update_stamp"

    .line 14
    invoke-static {v2, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "root_account"

    .line 15
    invoke-static {v2, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "normalized_name"

    .line 16
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 19
    new-instance v5, Le/a/c/r/e/a/c;

    invoke-direct {v5}, Le/a/c/r/e/a/c;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    .line 20
    :try_start_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 21
    iput-wide v3, v5, Le/a/c/r/e/a/c;->a:J

    .line 22
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 24
    :goto_1
    iget-object v4, v1, Le/a/c/c/d/d;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v3}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    .line 25
    invoke-virtual {v5, v3}, Le/a/c/r/e/a/c;->t(Ljava/util/Date;)V

    .line 26
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    .line 27
    :cond_1
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 28
    :goto_2
    iput-object v3, v5, Le/a/c/r/e/a/c;->c:Ljava/lang/String;

    .line 29
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    .line 30
    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 31
    :goto_3
    iput-object v3, v5, Le/a/c/r/e/a/c;->d:Ljava/lang/String;

    .line 32
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_4

    .line 33
    :cond_3
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    :goto_4
    iput-object v3, v5, Le/a/c/r/e/a/c;->e:Ljava/lang/String;

    .line 35
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    .line 36
    iput v3, v5, Le/a/c/r/e/a/c;->f:F

    .line 37
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .line 38
    :goto_5
    iput-boolean v3, v5, Le/a/c/r/e/a/c;->g:Z

    .line 39
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 40
    iput-wide v3, v5, Le/a/c/r/e/a/c;->h:J

    .line 41
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    goto :goto_6

    .line 42
    :cond_5
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 43
    :goto_6
    iget-object v4, v1, Le/a/c/c/d/d;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v3}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    .line 44
    iput-object v3, v5, Le/a/c/r/e/a/c;->i:Ljava/util/Date;

    .line 45
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_7

    :cond_6
    const/4 v3, 0x0

    .line 46
    :goto_7
    iput-boolean v3, v5, Le/a/c/r/e/a/c;->j:Z

    .line 47
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_8

    .line 48
    :cond_7
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    :goto_8
    iput-object v3, v5, Le/a/c/r/e/a/c;->k:Ljava/lang/String;

    move-object/from16 v3, v17

    .line 50
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    move-object/from16 v3, v16

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_8
    move-object/from16 v16, v3

    move-object v3, v4

    .line 51
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 52
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 53
    :goto_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 54
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 55
    throw v0
.end method

.method public d()Lq3/a/x2/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/r/e/a/a;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n        SELECT address, MIN(account_type) AS account_type \n        FROM account_model_table \n        WHERE active = 1\n        GROUP BY address\n        "

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    const-string v3, "account_model_table"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Le/a/c/c/d/d$c;

    invoke-direct {v4, p0, v0}, Le/a/c/c/d/d$c;-><init>(Le/a/c/c/d/d;Ln3/c0/y;)V

    invoke-static {v2, v1, v3, v4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object v0

    return-object v0
.end method

.method public e(Le/a/c/r/e/a/c;)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/d;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public f(Ljava/util/List;)[J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/r/e/a/c;",
            ">;)[J"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/d;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnIdsArray(Ljava/util/Collection;)[J

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public g(J)Le/a/c/r/e/a/c;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM account_model_table WHERE id = ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Ln3/c0/y;->l0(IJ)V

    .line 3
    iget-object v0, v1, Le/a/c/c/d/d;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v0, v1, Le/a/c/c/d/d;->a:Ln3/c0/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "id"

    .line 5
    invoke-static {v6, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "created_at"

    .line 6
    invoke-static {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "address"

    .line 7
    invoke-static {v6, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "account_type"

    .line 8
    invoke-static {v6, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "account_number"

    .line 9
    invoke-static {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "balance"

    .line 10
    invoke-static {v6, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "active"

    .line 11
    invoke-static {v6, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "record_count"

    .line 12
    invoke-static {v6, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "update_stamp"

    .line 13
    invoke-static {v6, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "root_account"

    .line 14
    invoke-static {v6, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "normalized_name"

    .line 15
    invoke-static {v6, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 17
    new-instance v4, Le/a/c/r/e/a/c;

    invoke-direct {v4}, Le/a/c/r/e/a/c;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 p2, v2

    move-object/from16 v16, v3

    .line 18
    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 19
    iput-wide v2, v4, Le/a/c/r/e/a/c;->a:J

    .line 20
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v5

    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 22
    :goto_0
    iget-object v2, v1, Le/a/c/c/d/d;->c:Le/a/c/c0/g;

    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 23
    invoke-virtual {v4, v0}, Le/a/c/r/e/a/c;->t(Ljava/util/Date;)V

    .line 24
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v5

    goto :goto_1

    .line 25
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_1
    iput-object v0, v4, Le/a/c/r/e/a/c;->c:Ljava/lang/String;

    .line 27
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v5

    goto :goto_2

    .line 28
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    :goto_2
    iput-object v0, v4, Le/a/c/r/e/a/c;->d:Ljava/lang/String;

    .line 30
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v5

    goto :goto_3

    .line 31
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_3
    iput-object v0, v4, Le/a/c/r/e/a/c;->e:Ljava/lang/String;

    .line 33
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 34
    iput v0, v4, Le/a/c/r/e/a/c;->f:F

    .line 35
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 36
    :goto_4
    iput-boolean v0, v4, Le/a/c/r/e/a/c;->g:Z

    .line 37
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 38
    iput-wide v2, v4, Le/a/c/r/e/a/c;->h:J

    .line 39
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v5

    goto :goto_5

    .line 40
    :cond_5
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 41
    :goto_5
    iget-object v2, v1, Le/a/c/c/d/d;->c:Le/a/c/c0/g;

    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 42
    iput-object v0, v4, Le/a/c/r/e/a/c;->i:Ljava/util/Date;

    .line 43
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    .line 44
    :goto_6
    iput-boolean v2, v4, Le/a/c/r/e/a/c;->j:Z

    move/from16 v0, p2

    .line 45
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_7

    .line 46
    :cond_7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 47
    :goto_7
    iput-object v5, v4, Le/a/c/r/e/a/c;->k:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_8
    move-object/from16 v16, v3

    .line 48
    :goto_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 49
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 50
    :goto_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 51
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 52
    throw v0
.end method
