.class public final synthetic Lcom/facebook/internal/w0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/net/URL;

.field public final synthetic b:Ls1/z/c/c0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/concurrent/locks/ReentrantLock;

.field public final synthetic e:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public synthetic constructor <init>(Ljava/net/URL;Ls1/z/c/c0;Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/w0/a;->a:Ljava/net/URL;

    iput-object p2, p0, Lcom/facebook/internal/w0/a;->b:Ls1/z/c/c0;

    iput-object p3, p0, Lcom/facebook/internal/w0/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/internal/w0/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p5, p0, Lcom/facebook/internal/w0/a;->e:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/facebook/internal/w0/a;->a:Ljava/net/URL;

    iget-object v1, p0, Lcom/facebook/internal/w0/a;->b:Ls1/z/c/c0;

    iget-object v2, p0, Lcom/facebook/internal/w0/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/internal/w0/a;->d:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v4, p0, Lcom/facebook/internal/w0/a;->e:Ljava/util/concurrent/locks/Condition;

    const-string v5, "$openIdKeyUrl"

    .line 1
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$result"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$kid"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$lock"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "connection.inputStream"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v5, 0x2000

    instance-of v6, v7, Ljava/io/BufferedReader;

    if-eqz v6, :cond_0

    check-cast v7, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v7, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v7, v6

    :goto_0
    invoke-static {v7}, Ls1/y/h;->d(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 5
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 7
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 8
    :try_start_2
    sget-object v2, Lcom/facebook/internal/w0/c;->a:Lcom/facebook/internal/w0/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 10
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_3
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 11
    :goto_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 12
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_4
    invoke-interface {v4}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :catchall_3
    move-exception v0

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
