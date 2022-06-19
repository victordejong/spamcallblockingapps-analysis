.class public final Le/a/a/k/a/f2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/f2/a;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/a/g/g;

.field public final c:Le/a/b0/q/b;

.field public final d:Le/a/a/i0;

.field public final e:Le/a/p5/a0;

.field public final f:Le/a/q2/a;

.field public final g:Le/a/y2/q/a;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/b0/q/b;Le/a/a/i0;Le/a/p5/a0;Le/a/q2/a;Le/a/y2/q/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundWorkTrigger"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/f2/c;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/k/a/f2/c;->b:Le/a/a/g/g;

    iput-object p3, p0, Le/a/a/k/a/f2/c;->c:Le/a/b0/q/b;

    iput-object p4, p0, Le/a/a/k/a/f2/c;->d:Le/a/a/i0;

    iput-object p5, p0, Le/a/a/k/a/f2/c;->e:Le/a/p5/a0;

    iput-object p6, p0, Le/a/a/k/a/f2/c;->f:Le/a/q2/a;

    iput-object p7, p0, Le/a/a/k/a/f2/c;->g:Le/a/y2/q/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a/f2/c;->d:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->n3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/k/a/f2/c;->e:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/a/k/a/f2/c;->e:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Le/a/a/k/a/f2/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/k/a/f2/c;->d(Z)Le/a/a/k/a/f2/d;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p0, v2}, Le/a/a/k/a/f2/c;->d(Z)Le/a/a/k/a/f2/d;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "Truecaller"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    sget-object v5, Le/a/a/k/a/f2/b;->a:Le/a/a/k/a/f2/b;

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 6
    array-length v6, v5

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 7
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    new-array v9, v0, [Ljava/io/File;

    :goto_1
    array-length v9, v9

    if-le v9, v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance v9, Ljava/io/File;

    const-string v10, ".nomedia"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Le/a/p5/s0/g;->i1(Ljava/io/File;)Z

    .line 9
    invoke-static {v8}, Le/a/p5/s0/g;->i1(Ljava/io/File;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v4}, Le/a/p5/s0/g;->i1(Ljava/io/File;)Z

    .line 11
    iget-object v4, p0, Le/a/a/k/a/f2/c;->d:Le/a/a/i0;

    invoke-interface {v4, v0}, Le/a/a/i0;->q2(Z)V

    const/4 v4, 0x2

    new-array v5, v4, [Le/a/a/k/a/f2/d;

    aput-object v1, v5, v0

    aput-object v3, v5, v2

    move v1, v0

    move v2, v1

    :goto_3
    if-ge v1, v4, :cond_4

    .line 12
    aget-object v3, v5, v1

    .line 13
    iget v3, v3, Le/a/a/k/a/f2/d;->a:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v0, v4, :cond_5

    .line 14
    aget-object v1, v5, v0

    .line 15
    iget v1, v1, Le/a/a/k/a/f2/d;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/k/a/f2/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/k/a/f2/c;->g:Le/a/y2/q/a;

    sget-object v1, Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker;->d:Lcom/truecaller/messaging/transport/im/legacy/ImAttachmentMigratorWorker$a;

    invoke-interface {v0, v1}, Le/a/y2/q/a;->b(Le/a/y2/i;)Ln3/m0/s;

    :cond_0
    return-void
.end method

.method public final d(Z)Le/a/a/k/a/f2/d;
    .locals 8

    const-string v0, "\n            type != ?\n            AND message_id IN (\n                SELECT _id\n                FROM msg_messages\n                WHERE transport = 2 AND (status & 1) = "

    const-string v1, "\n            )\n        "

    .line 1
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    iget-object v2, p0, Le/a/a/k/a/f2/c;->a:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v3

    const-string v0, "text/plain"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 5
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/a/a/k/a/f2/c;->b:Le/a/a/g/g;

    invoke-interface {v1, v0}, Le/a/a/g/g;->q(Landroid/database/Cursor;)Le/a/a/g/j0/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move v2, v1

    .line 7
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 8
    invoke-interface {v0}, Le/a/a/g/j0/c;->getEntity()Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v3

    instance-of v5, v3, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    check-cast v4, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v4, :cond_0

    .line 9
    iget-object v3, p0, Le/a/a/k/a/f2/c;->c:Le/a/b0/q/b;

    iget-object v5, v4, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {v3, v5}, Le/a/b0/q/b;->c(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Le/a/a/k/a/f2/c;->c:Le/a/b0/q/b;

    iget-object v5, v4, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-interface {v3, v5}, Le/a/b0/q/b;->a(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 10
    invoke-virtual {p0, v4, p1}, Le/a/a/k/a/f2/c;->e(Lcom/truecaller/messaging/data/types/BinaryEntity;Z)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v0, v4}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 12
    new-instance p1, Le/a/a/k/a/f2/d;

    invoke-direct {p1, v1, v2}, Le/a/a/k/a/f2/d;-><init>(II)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 14
    :cond_4
    new-instance p1, Le/a/a/k/a/f2/d;

    invoke-direct {p1, v1, v1}, Le/a/a/k/a/f2/d;-><init>(II)V

    return-object p1
.end method

.method public final e(Lcom/truecaller/messaging/data/types/BinaryEntity;Z)Z
    .locals 13

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/a/k/a/f2/c;->a:Landroid/content/ContentResolver;

    iget-object v2, p1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 2
    :try_start_1
    iget-object v3, p0, Le/a/a/k/a/f2/c;->c:Le/a/b0/q/b;

    iget-wide v4, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    iget-object v6, p1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const/4 v12, 0x1

    if-nez p2, :cond_0

    move v7, v12

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    const/4 v8, 0x0

    new-instance v9, Le/a/a/k/a/f2/c$a;

    invoke-direct {v9, v1}, Le/a/a/k/a/f2/c$a;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Le/a/n/g0;->L0(Le/a/b0/q/b;JLjava/lang/String;ZILs1/z/b/l;ILjava/lang/Object;)Ls1/k;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :try_start_2
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p2, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast p2, Landroid/net/Uri;

    .line 6
    iget-object v1, p0, Le/a/a/k/a/f2/c;->a:Landroid/content/ContentResolver;

    .line 7
    invoke-static {}, Le/a/b0/q/g0;->x()Landroid/net/Uri;

    move-result-object v2

    .line 8
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "entity_info1"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_id = ?"

    new-array v4, v12, [Ljava/lang/String;

    .line 9
    iget-wide v5, p1, Lcom/truecaller/messaging/data/types/Entity;->a:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 10
    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return v0

    .line 11
    :cond_1
    iget-object p2, p0, Le/a/a/k/a/f2/c;->a:Landroid/content/ContentResolver;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-static {p2, p1}, Le/a/p5/s0/f;->K(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v12

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {v1, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    return v0
.end method
