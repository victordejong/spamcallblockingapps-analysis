.class public Ln3/m0/c0/t/n;
.super Ln3/m0/c0/t/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/m0/c0/t/o<",
        "Ljava/util/List<",
        "Ln3/m0/x;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/m0/c0/l;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ln3/m0/c0/l;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/t/n;->b:Ln3/m0/c0/l;

    iput-object p2, p0, Ln3/m0/c0/t/n;->c:Ljava/lang/String;

    invoke-direct {p0}, Ln3/m0/c0/t/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Ln3/m0/c0/t/n;->b:Ln3/m0/c0/l;

    .line 2
    iget-object v0, v0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v0

    iget-object v1, p0, Ln3/m0/c0/t/n;->c:Ljava/lang/String;

    check-cast v0, Ln3/m0/c0/s/t;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    const-string v3, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 5
    invoke-static {v3, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v3, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v3, v2, v1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 8
    :goto_0
    iget-object v1, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 9
    iget-object v1, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 10
    :try_start_0
    iget-object v1, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "id"

    .line 11
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v5, "state"

    .line 12
    invoke-static {v1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "output"

    .line 13
    invoke-static {v1, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "run_attempt_count"

    .line 14
    invoke-static {v1, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 15
    new-instance v8, Ln3/g/a;

    invoke-direct {v8}, Ln3/g/a;-><init>()V

    .line 16
    new-instance v9, Ln3/g/a;

    invoke-direct {v9}, Ln3/g/a;-><init>()V

    .line 17
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 18
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 19
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-virtual {v8, v10}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_2

    .line 21
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v8, v10, v11}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 24
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 25
    invoke-virtual {v9, v10}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_1

    .line 26
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {v9, v10, v11}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v10, -0x1

    .line 28
    invoke-interface {v1, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 29
    invoke-virtual {v0, v8}, Ln3/m0/c0/s/t;->b(Ln3/g/a;)V

    .line 30
    invoke-virtual {v0, v9}, Ln3/m0/c0/s/t;->a(Ln3/g/a;)V

    .line 31
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 33
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 34
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 35
    invoke-virtual {v8, v11}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    goto :goto_3

    :cond_4
    move-object v11, v4

    :goto_3
    if-nez v11, :cond_5

    .line 36
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 37
    :cond_5
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_6

    .line 38
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 39
    invoke-virtual {v9, v12}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    goto :goto_4

    :cond_6
    move-object v12, v4

    :goto_4
    if-nez v12, :cond_7

    .line 40
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 41
    :cond_7
    new-instance v13, Ln3/m0/c0/s/p$c;

    invoke-direct {v13}, Ln3/m0/c0/s/p$c;-><init>()V

    .line 42
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Ln3/m0/c0/s/p$c;->a:Ljava/lang/String;

    .line 43
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 44
    invoke-static {v14}, Ln3/g0/y;->Q0(I)Ln3/m0/x$a;

    move-result-object v14

    iput-object v14, v13, Ln3/m0/c0/s/p$c;->b:Ln3/m0/x$a;

    .line 45
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    .line 46
    invoke-static {v14}, Ln3/m0/f;->a([B)Ln3/m0/f;

    move-result-object v14

    iput-object v14, v13, Ln3/m0/c0/s/p$c;->c:Ln3/m0/f;

    .line 47
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    iput v14, v13, Ln3/m0/c0/s/p$c;->d:I

    .line 48
    iput-object v11, v13, Ln3/m0/c0/s/p$c;->e:Ljava/util/List;

    .line 49
    iput-object v12, v13, Ln3/m0/c0/s/p$c;->f:Ljava/util/List;

    .line 50
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 51
    :cond_8
    iget-object v2, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 53
    invoke-virtual {v3}, Ln3/c0/y;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    iget-object v0, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 55
    sget-object v0, Ln3/m0/c0/s/p;->t:Ln3/c/a/c/a;

    invoke-interface {v0, v10}, Ln3/c/a/c/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v2

    .line 56
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 57
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    .line 58
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 59
    iget-object v0, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 60
    throw v1
.end method
