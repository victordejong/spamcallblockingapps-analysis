.class public final Le/a/b/k/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/k/b/a/a;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/b/k/b/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/b/k/b/a/b$a;

    invoke-direct {v0, p0, p1}, Le/a/b/k/b/a/b$a;-><init>(Le/a/b/k/b/a/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/b/k/b/a/b;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/b/k/b/a/b$b;

    invoke-direct {v0, p0, p1}, Le/a/b/k/b/a/b$b;-><init>(Le/a/b/k/b/a/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/b/k/b/a/b;->c:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/b/k/b/a/b;->c:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 5
    iget-object v1, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 7
    iget-object v1, p0, Le/a/b/k/b/a/b;->c:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 9
    iget-object v2, p0, Le/a/b/k/b/a/b;->c:Ln3/c0/c0;

    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 10
    throw v1
.end method

.method public b(J)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Le/a/b/k/b/b/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM contact WHERE district_id = ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Ln3/c0/y;->l0(IJ)V

    .line 3
    iget-object v0, v1, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v0, v1, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "id"

    .line 5
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "hospital_name"

    .line 6
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "phone_number"

    .line 7
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "address"

    .line 8
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "district_id"

    .line 9
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "state_id"

    .line 10
    invoke-static {v2, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 11
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 13
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v13, v4

    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    .line 15
    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v14, v4

    goto :goto_2

    .line 16
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v14, v11

    .line 17
    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v15, v4

    goto :goto_3

    .line 18
    :cond_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    .line 19
    :goto_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v16, v4

    goto :goto_4

    .line 20
    :cond_3
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v16, v11

    .line 21
    :goto_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v17, v4

    goto :goto_5

    .line 22
    :cond_4
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v17, v11

    .line 23
    :goto_5
    new-instance v11, Le/a/b/k/b/b/a;

    move-object v12, v11

    invoke-direct/range {v12 .. v17}, Le/a/b/k/b/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 24
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 25
    iput-wide v12, v11, Le/a/b/k/b/b/a;->a:J

    .line 26
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 27
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 28
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    return-object v10

    :catchall_0
    move-exception v0

    .line 29
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 30
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    .line 31
    throw v0
.end method

.method public c(Le/a/b/k/b/b/a;)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/b/k/b/a/b;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/b/k/b/a/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method
