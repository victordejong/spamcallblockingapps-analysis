.class public final Le/a/c/c/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/g;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/c0/g;

.field public final d:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/h;->c:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/h;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/c/c/d/h$a;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/h$a;-><init>(Le/a/c/c/d/h;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/h;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/c/c/d/h$b;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/h$b;-><init>(Le/a/c/c/d/h;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/h;->d:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM action_state WHERE message_id = ? AND origin = ?"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1, p3}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 6
    iget-object p2, p0, Le/a/c/c/d/h;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance v1, Le/a/c/c/d/h$g;

    invoke-direct {v1, p0, v0}, Le/a/c/c/d/h$g;-><init>(Le/a/c/c/d/h;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, v1, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lq3/a/x2/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n        SELECT * FROM action_state\n        WHERE last_updated_at >= ?\n        AND origin = ?\n        AND domain = ?\n    "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/h;->c:Le/a/c/c0/g;

    invoke-virtual {v2, p1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Ln3/c0/y;->l0(IJ)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, p1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 7
    :goto_1
    invoke-virtual {v0, v1, p3}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/c/c/d/h;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "action_state"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    new-instance v1, Le/a/c/c/d/h$i;

    invoke-direct {v1, p0, v0}, Le/a/c/c/d/h$i;-><init>(Le/a/c/c/d/h;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, v1}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/h;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/h$d;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/h$d;-><init>(Le/a/c/c/d/h;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/h;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/h$e;

    invoke-direct {v1, p0}, Le/a/c/c/d/h$e;-><init>(Le/a/c/c/d/h;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM action_state WHERE message_id in ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 7
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 12
    iget-object v1, p0, Le/a/c/c/d/h;->a:Ln3/c0/q;

    new-instance v3, Le/a/c/c/d/h$h;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/h$h;-><init>(Le/a/c/c/d/h;Ln3/c0/y;)V

    invoke-static {v1, v2, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/util/Date;Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "SELECT * FROM action_state WHERE last_updated_at >= ? AND origin = ?"

    const/4 v3, 0x2

    .line 1
    invoke-static {v2, v3}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v2

    .line 2
    iget-object v4, v1, Le/a/c/c/d/h;->c:Le/a/c/c0/g;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 3
    invoke-virtual {v2, v5}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Ln3/c0/y;->l0(IJ)V

    :goto_0
    if-nez v0, :cond_1

    .line 5
    invoke-virtual {v2, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v2, v3, v0}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 7
    :goto_1
    iget-object v0, v1, Le/a/c/c/d/h;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 8
    iget-object v0, v1, Le/a/c/c/d/h;->a:Ln3/c0/q;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "id"

    .line 9
    invoke-static {v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "message_id"

    .line 10
    invoke-static {v3, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "domain"

    .line 11
    invoke-static {v3, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "state"

    .line 12
    invoke-static {v3, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "origin"

    .line 13
    invoke-static {v3, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "created_at"

    .line 14
    invoke-static {v3, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_updated_at"

    .line 15
    invoke-static {v3, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "extra"

    .line 16
    invoke-static {v3, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 17
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 19
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 20
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 21
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v19, v4

    goto :goto_3

    .line 22
    :cond_2
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v13

    .line 23
    :goto_3
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 24
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v21, v4

    goto :goto_4

    .line 25
    :cond_3
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v13

    .line 26
    :goto_4
    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v4

    goto :goto_5

    .line 27
    :cond_4
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 28
    :goto_5
    iget-object v14, v1, Le/a/c/c/d/h;->c:Le/a/c/c0/g;

    invoke-virtual {v14, v13}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v22

    .line 29
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v4

    goto :goto_6

    .line 30
    :cond_5
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 31
    :goto_6
    iget-object v14, v1, Le/a/c/c/d/h;->c:Le/a/c/c0/g;

    invoke-virtual {v14, v13}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v23

    .line 32
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v24, v4

    goto :goto_7

    .line 33
    :cond_6
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v24, v13

    .line 34
    :goto_7
    new-instance v13, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    move-object v14, v13

    invoke-direct/range {v14 .. v24}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;-><init>(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 36
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 37
    invoke-virtual {v2}, Ln3/c0/y;->l()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 38
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 39
    invoke-virtual {v2}, Ln3/c0/y;->l()V

    .line 40
    throw v0
.end method

.method public g(Lcom/truecaller/insights/models/smartcards/ActionStateEntity;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/h;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/h$c;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/h$c;-><init>(Le/a/c/c/d/h;Lcom/truecaller/insights/models/smartcards/ActionStateEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/util/List;Ljava/lang/String;)Lq3/a/x2/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM action_state WHERE message_id in ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ") AND origin = "

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 8
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 10
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 12
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v0, v1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 14
    :goto_2
    iget-object p1, p0, Le/a/c/c/d/h;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string v1, "action_state"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le/a/c/c/d/h$f;

    invoke-direct {v2, p0, v0}, Le/a/c/c/d/h$f;-><init>(Le/a/c/c/d/h;Ln3/c0/y;)V

    invoke-static {p1, p2, v1, v2}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
