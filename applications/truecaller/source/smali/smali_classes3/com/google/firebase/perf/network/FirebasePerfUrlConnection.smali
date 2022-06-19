.class public Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContent(Ljava/net/URL;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 2
    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->c()V

    .line 4
    iget-wide v2, v1, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 5
    new-instance v4, Le/m/d/z/j/b;

    invoke-direct {v4, v0}, Le/m/d/z/j/b;-><init>(Le/m/d/z/m/k;)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 7
    instance-of v5, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_0

    .line 8
    new-instance v5, Le/m/d/z/k/d;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v5, v0, v1, v4}, Le/m/d/z/k/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/firebase/perf/util/Timer;Le/m/d/z/j/b;)V

    .line 9
    invoke-virtual {v5}, Le/m/d/z/k/d;->getContent()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_0
    instance-of v5, v0, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_1

    .line 11
    new-instance v5, Le/m/d/z/k/c;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v5, v0, v1, v4}, Le/m/d/z/k/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Le/m/d/z/j/b;)V

    .line 12
    invoke-virtual {v5}, Le/m/d/z/k/c;->getContent()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v4, v2, v3}, Le/m/d/z/j/b;->f(J)Le/m/d/z/j/b;

    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 16
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {v4, p0}, Le/m/d/z/j/b;->l(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 18
    invoke-static {v4}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 19
    throw v0
.end method

.method public static getContent(Ljava/net/URL;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    sget-object v0, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 21
    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 22
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->c()V

    .line 23
    iget-wide v2, v1, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 24
    new-instance v4, Le/m/d/z/j/b;

    invoke-direct {v4, v0}, Le/m/d/z/j/b;-><init>(Le/m/d/z/m/k;)V

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 26
    instance-of v5, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_0

    .line 27
    new-instance v5, Le/m/d/z/k/d;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v5, v0, v1, v4}, Le/m/d/z/k/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/firebase/perf/util/Timer;Le/m/d/z/j/b;)V

    .line 28
    iget-object v0, v5, Le/m/d/z/k/d;->a:Le/m/d/z/k/e;

    invoke-virtual {v0, p1}, Le/m/d/z/k/e;->c([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_0
    instance-of v5, v0, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_1

    .line 30
    new-instance v5, Le/m/d/z/k/c;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v5, v0, v1, v4}, Le/m/d/z/k/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Le/m/d/z/j/b;)V

    .line 31
    iget-object v0, v5, Le/m/d/z/k/c;->a:Le/m/d/z/k/e;

    invoke-virtual {v0, p1}, Le/m/d/z/k/e;->c([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {v4, v2, v3}, Le/m/d/z/j/b;->f(J)Le/m/d/z/j/b;

    .line 34
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 35
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-virtual {v4, p0}, Le/m/d/z/j/b;->l(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 37
    invoke-static {v4}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 38
    throw p1
.end method

.method public static instrument(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/m/d/z/k/d;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 3
    sget-object v2, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 4
    new-instance v3, Le/m/d/z/j/b;

    invoke-direct {v3, v2}, Le/m/d/z/j/b;-><init>(Le/m/d/z/m/k;)V

    .line 5
    invoke-direct {v0, p0, v1, v3}, Le/m/d/z/k/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/firebase/perf/util/Timer;Le/m/d/z/j/b;)V

    return-object v0

    .line 6
    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Le/m/d/z/k/c;

    check-cast p0, Ljava/net/HttpURLConnection;

    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 8
    sget-object v2, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 9
    new-instance v3, Le/m/d/z/j/b;

    invoke-direct {v3, v2}, Le/m/d/z/j/b;-><init>(Le/m/d/z/m/k;)V

    .line 10
    invoke-direct {v0, p0, v1, v3}, Le/m/d/z/k/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Le/m/d/z/j/b;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    .line 2
    new-instance v1, Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1}, Lcom/google/firebase/perf/util/Timer;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->c()V

    .line 4
    iget-wide v2, v1, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 5
    new-instance v4, Le/m/d/z/j/b;

    invoke-direct {v4, v0}, Le/m/d/z/j/b;-><init>(Le/m/d/z/m/k;)V

    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 7
    instance-of v5, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_0

    .line 8
    new-instance v5, Le/m/d/z/k/d;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v5, v0, v1, v4}, Le/m/d/z/k/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/firebase/perf/util/Timer;Le/m/d/z/j/b;)V

    .line 9
    invoke-virtual {v5}, Le/m/d/z/k/d;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_0
    instance-of v5, v0, Ljava/net/HttpURLConnection;

    if-eqz v5, :cond_1

    .line 11
    new-instance v5, Le/m/d/z/k/c;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-direct {v5, v0, v1, v4}, Le/m/d/z/k/c;-><init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Le/m/d/z/j/b;)V

    .line 12
    invoke-virtual {v5}, Le/m/d/z/k/c;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v4, v2, v3}, Le/m/d/z/j/b;->f(J)Le/m/d/z/j/b;

    .line 15
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 16
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-virtual {v4, p0}, Le/m/d/z/j/b;->l(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 18
    invoke-static {v4}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 19
    throw v0
.end method
