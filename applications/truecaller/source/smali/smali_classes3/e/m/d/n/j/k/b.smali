.class public final synthetic Le/m/d/n/j/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Le/m/d/n/j/k/k$a;


# direct methods
.method public synthetic constructor <init>(Le/m/d/n/j/k/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/j/k/b;->a:Le/m/d/n/j/k/k$a;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Le/m/d/n/j/k/b;->a:Le/m/d/n/j/k/k$a;

    .line 1
    iget-object v1, v0, Le/m/d/n/j/k/k$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Le/m/d/n/j/k/k$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->isMarked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Le/m/d/n/j/k/k$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/n/j/k/d;

    invoke-virtual {v1}, Le/m/d/n/j/k/d;->a()Ljava/util/Map;

    move-result-object v1

    .line 5
    iget-object v3, v0, Le/m/d/n/j/k/k$a;->a:Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/d/n/j/k/d;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_2

    .line 7
    iget-object v3, v0, Le/m/d/n/j/k/k$a;->d:Le/m/d/n/j/k/k;

    .line 8
    iget-object v4, v3, Le/m/d/n/j/k/k;->a:Le/m/d/n/j/k/g;

    .line 9
    iget-object v3, v3, Le/m/d/n/j/k/k;->c:Ljava/lang/String;

    .line 10
    iget-boolean v0, v0, Le/m/d/n/j/k/k$a;->c:Z

    const-string v5, "Failed to close key/value metadata file."

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, v4, Le/m/d/n/j/k/g;->a:Le/m/d/n/j/n/f;

    const-string v4, "internal-keys"

    invoke-virtual {v0, v3, v4}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, v4, Le/m/d/n/j/k/g;->a:Le/m/d/n/j/n/f;

    const-string v4, "keys"

    invoke-virtual {v0, v3, v4}, Le/m/d/n/j/n/f;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 13
    :goto_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v0, Le/m/d/n/j/k/g;->b:Ljava/nio/charset/Charset;

    invoke-direct {v4, v6, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-object v3, v2

    .line 17
    :catch_1
    :try_start_3
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v1, 0x6

    .line 18
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 19
    :goto_2
    invoke-static {v3, v5}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v3

    :goto_3
    move-object v3, v2

    :goto_4
    invoke-static {v3, v5}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 20
    throw v0

    :cond_2
    :goto_5
    return-object v2

    :catchall_3
    move-exception v1

    .line 21
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1
.end method
