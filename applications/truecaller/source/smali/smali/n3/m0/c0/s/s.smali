.class public Ln3/m0/c0/s/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Ln3/m0/c0/s/p$c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/c0/y;

.field public final synthetic b:Ln3/m0/c0/s/t;


# direct methods
.method public constructor <init>(Ln3/m0/c0/s/t;Ln3/c0/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/s/s;->b:Ln3/m0/c0/s/t;

    iput-object p2, p0, Ln3/m0/c0/s/s;->a:Ln3/c0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/m0/c0/s/s;->b:Ln3/m0/c0/s/t;

    .line 2
    iget-object v0, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    .line 3
    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    iget-object v0, p0, Ln3/m0/c0/s/s;->b:Ln3/m0/c0/s/t;

    .line 5
    iget-object v0, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    .line 6
    iget-object v1, p0, Ln3/m0/c0/s/s;->a:Ln3/c0/y;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "id"

    .line 7
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "state"

    .line 8
    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "output"

    .line 9
    invoke-static {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "run_attempt_count"

    .line 10
    invoke-static {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 11
    new-instance v6, Ln3/g/a;

    invoke-direct {v6}, Ln3/g/a;-><init>()V

    .line 12
    new-instance v7, Ln3/g/a;

    invoke-direct {v7}, Ln3/g/a;-><init>()V

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 14
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 15
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v6, v8}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 17
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v6, v8, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 20
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual {v7, v8}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 22
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v7, v8, v9}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v8, -0x1

    .line 24
    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 25
    iget-object v8, p0, Ln3/m0/c0/s/s;->b:Ln3/m0/c0/s/t;

    .line 26
    invoke-virtual {v8, v6}, Ln3/m0/c0/s/t;->b(Ln3/g/a;)V

    .line 27
    iget-object v8, p0, Ln3/m0/c0/s/s;->b:Ln3/m0/c0/s/t;

    .line 28
    invoke-virtual {v8, v7}, Ln3/m0/c0/s/t;->a(Ln3/g/a;)V

    .line 29
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 31
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 32
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-virtual {v6, v9}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    goto :goto_2

    :cond_3
    move-object v9, v3

    :goto_2
    if-nez v9, :cond_4

    .line 34
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 35
    :cond_4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_5

    .line 36
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 37
    invoke-virtual {v7, v10}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    goto :goto_3

    :cond_5
    move-object v10, v3

    :goto_3
    if-nez v10, :cond_6

    .line 38
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 39
    :cond_6
    new-instance v11, Ln3/m0/c0/s/p$c;

    invoke-direct {v11}, Ln3/m0/c0/s/p$c;-><init>()V

    .line 40
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Ln3/m0/c0/s/p$c;->a:Ljava/lang/String;

    .line 41
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 42
    invoke-static {v12}, Ln3/g0/y;->Q0(I)Ln3/m0/x$a;

    move-result-object v12

    iput-object v12, v11, Ln3/m0/c0/s/p$c;->b:Ln3/m0/x$a;

    .line 43
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    .line 44
    invoke-static {v12}, Ln3/m0/f;->a([B)Ln3/m0/f;

    move-result-object v12

    iput-object v12, v11, Ln3/m0/c0/s/p$c;->c:Ln3/m0/f;

    .line 45
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Ln3/m0/c0/s/p$c;->d:I

    .line 46
    iput-object v9, v11, Ln3/m0/c0/s/p$c;->e:Ljava/util/List;

    .line 47
    iput-object v10, v11, Ln3/m0/c0/s/p$c;->f:Ljava/util/List;

    .line 48
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :cond_7
    iget-object v1, p0, Ln3/m0/c0/s/s;->b:Ln3/m0/c0/s/t;

    .line 50
    iget-object v1, v1, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    .line 51
    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    iget-object v0, p0, Ln3/m0/c0/s/s;->b:Ln3/m0/c0/s/t;

    .line 54
    iget-object v0, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    .line 55
    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    return-object v8

    :catchall_0
    move-exception v1

    .line 56
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 57
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 58
    iget-object v1, p0, Ln3/m0/c0/s/s;->b:Ln3/m0/c0/s/t;

    .line 59
    iget-object v1, v1, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    .line 60
    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 61
    throw v0
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/m0/c0/s/s;->a:Ln3/c0/y;

    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-void
.end method
