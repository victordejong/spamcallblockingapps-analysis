.class public Ln3/c0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e0/a/c;
.implements Ln3/c0/i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/io/File;

.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Ln3/e0/a/c;

.field public g:Ln3/c0/h;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;ILn3/e0/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;I",
            "Ln3/e0/a/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/c0/a0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ln3/c0/a0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ln3/c0/a0;->c:Ljava/io/File;

    .line 5
    iput-object p4, p0, Ln3/c0/a0;->d:Ljava/util/concurrent/Callable;

    .line 6
    iput p5, p0, Ln3/c0/a0;->e:I

    .line 7
    iput-object p6, p0, Ln3/c0/a0;->f:Ln3/e0/a/c;

    return-void
.end method


# virtual methods
.method public b()Ln3/e0/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/a0;->f:Ln3/e0/a/c;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/c0/a0;->f:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->close()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/c0/a0;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/io/File;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Ln3/c0/a0;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Ln3/c0/a0;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    iget-object v0, p0, Ln3/c0/a0;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Ln3/c0/a0;->c:Ljava/io/File;

    if-eqz p2, :cond_1

    .line 4
    new-instance p2, Ljava/io/FileInputStream;

    iget-object v0, p0, Ln3/c0/a0;->c:Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_1
    iget-object p2, p0, Ln3/c0/a0;->d:Ljava/util/concurrent/Callable;

    if-eqz p2, :cond_7

    .line 6
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-static {p2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p2

    .line 8
    :goto_0
    iget-object v0, p0, Ln3/c0/a0;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "room-copy-helper"

    const-string v2, ".tmp"

    .line 10
    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    .line 12
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 13
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v8, 0x0

    if-le v0, v1, :cond_2

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, v7

    move-object v1, p2

    .line 14
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {p2}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v0

    .line 16
    invoke-static {v7}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 17
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_3

    .line 18
    invoke-virtual {v1, v2, v8, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 19
    :cond_3
    :goto_2
    invoke-virtual {v7, v8}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-interface {p2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 21
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 23
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Failed to create directories for "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_5
    :goto_3
    invoke-virtual {v6, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    .line 27
    :cond_6
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Failed to move intermediate file ("

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") to destination ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 30
    invoke-interface {p2}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 31
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 32
    throw p1

    :catch_0
    move-exception p1

    .line 33
    new-instance p2, Ljava/io/IOException;

    const-string v0, "inputStreamCallable exception on call"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 34
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "copyFromAssetPath, copyFromFile and copyFromInputStream are all null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/a0;->f:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWritableDatabase()Ln3/e0/a/b;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Ln3/c0/a0;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ln3/c0/a0;->j(Z)V

    .line 3
    iput-boolean v0, p0, Ln3/c0/a0;->h:Z

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/c0/a0;->f:Ln3/e0/a/c;

    invoke-interface {v0}, Ln3/e0/a/c;->getWritableDatabase()Ln3/e0/a/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ln3/c0/a0;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/c0/a0;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3
    iget-object v2, p0, Ln3/c0/a0;->g:Ln3/c0/h;

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 4
    :goto_0
    new-instance v3, Ln3/c0/h0/a;

    iget-object v4, p0, Ln3/c0/a0;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Ln3/c0/h0/a;-><init>(Ljava/lang/String;Ljava/io/File;Z)V

    .line 5
    :try_start_0
    iget-object v2, v3, Ln3/c0/h0/a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 6
    iget-boolean v2, v3, Ln3/c0/h0/a;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 7
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, v3, Ln3/c0/h0/a;->a:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    iput-object v2, v3, Ln3/c0/h0/a;->d:Ljava/nio/channels/FileChannel;

    .line 8
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to grab copy lock."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    .line 11
    :try_start_3
    invoke-virtual {p0, v1, p1}, Ln3/c0/a0;->d(Ljava/io/File;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12
    invoke-virtual {v3}, Ln3/c0/h0/a;->a()V

    return-void

    :catch_1
    move-exception p1

    .line 13
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to copy database file."

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 14
    :cond_2
    iget-object v2, p0, Ln3/c0/a0;->g:Ln3/c0/h;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_3

    .line 15
    invoke-virtual {v3}, Ln3/c0/h0/a;->a()V

    return-void

    .line 16
    :cond_3
    :try_start_5
    invoke-static {v1}, Ln3/c0/h0/b;->c(Ljava/io/File;)I

    move-result v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 17
    :try_start_6
    iget v4, p0, Ln3/c0/a0;->e:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v2, v4, :cond_4

    .line 18
    invoke-virtual {v3}, Ln3/c0/h0/a;->a()V

    return-void

    .line 19
    :cond_4
    :try_start_7
    iget-object v5, p0, Ln3/c0/a0;->g:Ln3/c0/h;

    invoke-virtual {v5, v2, v4}, Ln3/c0/h;->a(II)Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v2, :cond_5

    .line 20
    invoke-virtual {v3}, Ln3/c0/h0/a;->a()V

    return-void

    .line 21
    :cond_5
    :try_start_8
    iget-object v2, p0, Ln3/c0/a0;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_6

    .line 22
    :try_start_9
    invoke-virtual {p0, v1, p1}, Ln3/c0/a0;->d(Ljava/io/File;Z)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 23
    :catch_2
    :cond_6
    invoke-virtual {v3}, Ln3/c0/h0/a;->a()V

    return-void

    :catch_3
    invoke-virtual {v3}, Ln3/c0/h0/a;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v3}, Ln3/c0/h0/a;->a()V

    .line 24
    throw p1
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c0/a0;->f:Ln3/e0/a/c;

    invoke-interface {v0, p1}, Ln3/e0/a/c;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method
