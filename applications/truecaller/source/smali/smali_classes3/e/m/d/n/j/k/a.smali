.class public final synthetic Le/m/d/n/j/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/m/d/n/j/k/k;


# direct methods
.method public synthetic constructor <init>(Le/m/d/n/j/k/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/j/k/a;->a:Le/m/d/n/j/k/k;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Le/m/d/n/j/k/a;->a:Le/m/d/n/j/k/k;

    .line 1
    iget-object v1, v0, Le/m/d/n/j/k/k;->f:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, v0, Le/m/d/n/j/k/k;->f:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v0, Le/m/d/n/j/k/k;->f:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x1

    .line 4
    iget-object v6, v0, Le/m/d/n/j/k/k;->f:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    move v3, v5

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 5
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_1

    .line 6
    iget-object v1, v0, Le/m/d/n/j/k/k;->a:Le/m/d/n/j/k/g;

    iget-object v0, v0, Le/m/d/n/j/k/k;->c:Ljava/lang/String;

    const-string v3, "Failed to close user metadata file."

    .line 7
    iget-object v1, v1, Le/m/d/n/j/k/g;->a:Le/m/d/n/j/n/f;

    const-string v5, "user-data"

    invoke-virtual {v1, v0, v5}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 8
    :try_start_1
    new-instance v1, Le/m/d/n/j/k/f;

    invoke-direct {v1, v2}, Le/m/d/n/j/k/f;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Le/m/d/n/j/k/g;->b:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-object v2, v4

    .line 13
    :catch_1
    :try_start_3
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v1, 0x6

    .line 14
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 15
    :goto_1
    invoke-static {v2, v3}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v4, v2

    :goto_2
    move-object v2, v4

    :goto_3
    invoke-static {v2, v3}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 16
    throw v0

    :cond_1
    :goto_4
    return-object v4

    :catchall_3
    move-exception v0

    .line 17
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method
