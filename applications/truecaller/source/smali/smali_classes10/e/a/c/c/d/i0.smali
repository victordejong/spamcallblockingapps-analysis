.class public final Le/a/c/c/d/i0;
.super Le/a/c/c/d/h0;
.source "SourceFile"


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;",
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
    invoke-direct {p0}, Le/a/c/c/d/h0;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/i0;->c:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/c/c/d/i0$a;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/i0$a;-><init>(Le/a/c/c/d/i0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/i0;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/c/c/d/i0$b;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/i0$b;-><init>(Le/a/c/c/d/i0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/i0;->d:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;
    .locals 13

    const-string v0, "\n            SELECT * FROM sender_resolution_table WHERE sender = ?\n        "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 5
    iget-object p1, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "sender"

    .line 6
    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "sender_name"

    .line 7
    invoke-static {p1, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "sender_icon_uri"

    .line 8
    invoke-static {p1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "created_at"

    .line 9
    invoke-static {p1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "last_updated_at"

    .line 10
    invoke-static {p1, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 12
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v8, v2

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 14
    :goto_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    .line 15
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 16
    :goto_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    .line 17
    :cond_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 18
    :goto_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_4

    .line 19
    :cond_4
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 20
    :goto_4
    iget-object v3, p0, Le/a/c/c/d/i0;->c:Le/a/c/c0/g;

    invoke-virtual {v3, v1}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v11

    .line 21
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    .line 22
    :cond_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 23
    :goto_5
    iget-object v1, p0, Le/a/c/c/d/i0;->c:Le/a/c/c0/g;

    invoke-virtual {v1, v2}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v12

    .line 24
    new-instance v2, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 26
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 27
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 28
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 29
    throw v1
.end method

.method public b(Ljava/util/Date;Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/core/senderresolution/model/SenderResolutionBatchEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT pdo.address, pdo.msg_date\n            FROM parsed_data_object_table pdo LEFT JOIN sender_resolution_table srt ON pdo.address = srt.sender\n            WHERE pdo.msg_date < ? AND pdo.spam_category != 4 AND (\n                srt.sender_name IS NULL OR srt.sender_name = \'\'\n                OR srt.last_updated_at < ?\n            )\n            GROUP BY pdo.address\n            ORDER BY pdo.msg_date DESC\n            LIMIT ?\n        "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/i0;->c:Le/a/c/c0/g;

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

    .line 5
    iget-object v2, p0, Le/a/c/c/d/i0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, p2}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p2

    if-nez p2, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    int-to-long p1, p3

    .line 8
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 9
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 10
    iget-object p2, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance v1, Le/a/c/c/d/i0$f;

    invoke-direct {v1, p0, v0}, Le/a/c/c/d/i0$f;-><init>(Le/a/c/c/d/i0;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, v1, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/i0$d;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/i0$d;-><init>(Le/a/c/c/d/i0;Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/i0$c;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/i0$c;-><init>(Le/a/c/c/d/i0;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/senders/resolution/SenderResolutionEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/i0$e;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/i0$e;-><init>(Le/a/c/c/d/i0;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/i0;->d:Ln3/c0/c0;

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

    if-nez p3, :cond_1

    .line 5
    invoke-interface {v0, p2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0, p2, p3}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_1
    const/4 p2, 0x3

    if-nez p1, :cond_2

    .line 7
    invoke-interface {v0, p2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-interface {v0, p2, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 9
    :goto_2
    iget-object p1, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 10
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 11
    iget-object p1, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p1, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    .line 13
    iget-object p1, p0, Le/a/c/c/d/i0;->d:Ln3/c0/c0;

    invoke-virtual {p1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    iget-object p2, p0, Le/a/c/c/d/i0;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 15
    iget-object p2, p0, Le/a/c/c/d/i0;->d:Ln3/c0/c0;

    invoke-virtual {p2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 16
    throw p1
.end method
