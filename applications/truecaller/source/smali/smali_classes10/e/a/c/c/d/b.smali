.class public final Le/a/c/c/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/a;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/c/r/e/a/b;",
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

    iput-object v0, p0, Le/a/c/c/d/b;->c:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/b;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/c/c/d/b$a;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/b$a;-><init>(Le/a/c/c/d/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/b;->b:Ln3/c0/k;

    return-void
.end method


# virtual methods
.method public a(Le/a/c/r/e/a/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/c/d/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/b;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/d/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/c/c/d/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/b;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public b(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Le/a/c/r/e/a/b;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM account_mapping_rule_model WHERE from_account=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 3
    iget-object p1, p0, Le/a/c/c/d/b;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 4
    iget-object p1, p0, Le/a/c/c/d/b;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "id"

    .line 5
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v2, "to_account"

    .line 6
    invoke-static {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "from_account"

    .line 7
    invoke-static {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "from_address"

    .line 8
    invoke-static {p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "to_address"

    .line 9
    invoke-static {p1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "created_at"

    .line 10
    invoke-static {p1, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 11
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 13
    new-instance v8, Le/a/c/r/e/a/b;

    invoke-direct {v8}, Le/a/c/r/e/a/b;-><init>()V

    .line 14
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 15
    iput-wide v9, v8, Le/a/c/r/e/a/b;->a:J

    .line 16
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v1

    goto :goto_1

    .line 17
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 18
    :goto_1
    iput-object v9, v8, Le/a/c/r/e/a/b;->b:Ljava/lang/Long;

    .line 19
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v1

    goto :goto_2

    .line 20
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 21
    :goto_2
    iput-object v9, v8, Le/a/c/r/e/a/b;->c:Ljava/lang/Long;

    .line 22
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v1

    goto :goto_3

    .line 23
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 24
    :goto_3
    iput-object v9, v8, Le/a/c/r/e/a/b;->d:Ljava/lang/String;

    .line 25
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v1

    goto :goto_4

    .line 26
    :cond_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 27
    :goto_4
    iput-object v9, v8, Le/a/c/r/e/a/b;->e:Ljava/lang/String;

    .line 28
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v1

    goto :goto_5

    .line 29
    :cond_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 30
    :goto_5
    iget-object v10, p0, Le/a/c/c/d/b;->c:Le/a/c/c0/g;

    invoke-virtual {v10, v9}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v9

    const-string v10, "createdAt"

    .line 31
    invoke-static {v9, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object v9, v8, Le/a/c/r/e/a/b;->f:Ljava/util/Date;

    .line 33
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 34
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 35
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v7

    :catchall_0
    move-exception p2

    .line 36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 37
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 38
    throw p2
.end method
