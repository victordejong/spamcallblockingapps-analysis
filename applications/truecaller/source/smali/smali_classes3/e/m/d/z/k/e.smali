.class public Le/m/d/z/k/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Le/m/d/z/i/a;


# instance fields
.field public final a:Ljava/net/HttpURLConnection;

.field public final b:Le/m/d/z/j/b;

.field public c:J

.field public d:J

.field public final e:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/k/e;->f:Le/m/d/z/i/a;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/google/firebase/perf/util/Timer;Le/m/d/z/j/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Le/m/d/z/k/e;->c:J

    .line 3
    iput-wide v0, p0, Le/m/d/z/k/e;->d:J

    .line 4
    iput-object p1, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    .line 5
    iput-object p3, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    .line 6
    iput-object p2, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    .line 7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Le/m/d/z/j/b;->l(Ljava/lang/String;)Le/m/d/z/j/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Le/m/d/z/k/e;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->c()V

    .line 3
    iget-object v0, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    .line 4
    iget-wide v0, v0, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 5
    iput-wide v0, p0, Le/m/d/z/k/e;->c:J

    .line 6
    iget-object v2, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-virtual {v2, v0, v1}, Le/m/d/z/j/b;->f(J)Le/m/d/z/j/b;

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 9
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-static {v1}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 10
    throw v0
.end method

.method public b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/d/z/k/e;->l()V

    .line 2
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Le/m/d/z/j/b;->d(I)Le/m/d/z/j/b;

    .line 3
    :try_start_0
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/m/d/z/j/b;->g(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 6
    new-instance v1, Le/m/d/z/k/a;

    check-cast v0, Ljava/io/InputStream;

    iget-object v2, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v3, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1, v0, v2, v3}, Le/m/d/z/k/a;-><init>(Ljava/io/InputStream;Le/m/d/z/j/b;Lcom/google/firebase/perf/util/Timer;)V

    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/m/d/z/j/b;->g(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 8
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Le/m/d/z/j/b;->h(J)Le/m/d/z/j/b;

    .line 9
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 10
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-virtual {v1}, Le/m/d/z/j/b;->b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 12
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-static {v1}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 13
    throw v0
.end method

.method public c([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/d/z/k/e;->l()V

    .line 2
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Le/m/d/z/j/b;->d(I)Le/m/d/z/j/b;

    .line 3
    :try_start_0
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/j/b;->g(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 6
    new-instance v0, Le/m/d/z/k/a;

    check-cast p1, Ljava/io/InputStream;

    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0, p1, v1, v2}, Le/m/d/z/k/a;-><init>(Ljava/io/InputStream;Le/m/d/z/j/b;Lcom/google/firebase/perf/util/Timer;)V

    move-object p1, v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/j/b;->g(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 8
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Le/m/d/z/j/b;->h(J)Le/m/d/z/j/b;

    .line 9
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 10
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-virtual {v0}, Le/m/d/z/j/b;->b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 11
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 12
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-static {v0}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 13
    throw p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/io/InputStream;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/d/z/k/e;->l()V

    .line 2
    :try_start_0
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Le/m/d/z/j/b;->d(I)Le/m/d/z/j/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Le/m/d/z/k/e;->f:Le/m/d/z/i/a;

    .line 4
    iget-boolean v1, v0, Le/m/d/z/i/a;->b:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, v0, Le/m/d/z/i/a;->a:Le/m/d/z/i/b;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v1, Le/m/d/z/k/a;

    iget-object v2, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v3, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1, v0, v2, v3}, Le/m/d/z/k/a;-><init>(Ljava/io/InputStream;Le/m/d/z/j/b;Lcom/google/firebase/perf/util/Timer;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/d/z/k/e;->l()V

    .line 2
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Le/m/d/z/j/b;->d(I)Le/m/d/z/j/b;

    .line 3
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/z/j/b;->g(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 4
    :try_start_0
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 5
    new-instance v1, Le/m/d/z/k/a;

    iget-object v2, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v3, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v1, v0, v2, v3}, Le/m/d/z/k/a;-><init>(Ljava/io/InputStream;Le/m/d/z/j/b;Lcom/google/firebase/perf/util/Timer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 7
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-static {v1}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 8
    throw v0
.end method

.method public g()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Le/m/d/z/k/b;

    iget-object v1, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    .line 2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v3, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-direct {v0, v1, v2, v3}, Le/m/d/z/k/b;-><init>(Ljava/io/OutputStream;Le/m/d/z/j/b;Lcom/google/firebase/perf/util/Timer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 4
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-static {v1}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 5
    throw v0
.end method

.method public h()Ljava/security/Permission;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 3
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-static {v1}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 4
    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/d/z/k/e;->l()V

    .line 2
    iget-wide v0, p0, Le/m/d/z/k/e;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v0

    iput-wide v0, p0, Le/m/d/z/k/e;->d:J

    .line 4
    iget-object v2, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-virtual {v2, v0, v1}, Le/m/d/z/j/b;->k(J)Le/m/d/z/j/b;

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 6
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-virtual {v1, v0}, Le/m/d/z/j/b;->d(I)Le/m/d/z/j/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 8
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-static {v1}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 9
    throw v0
.end method

.method public k()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/d/z/k/e;->l()V

    .line 2
    iget-wide v0, p0, Le/m/d/z/k/e;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v0

    iput-wide v0, p0, Le/m/d/z/k/e;->d:J

    .line 4
    iget-object v2, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-virtual {v2, v0, v1}, Le/m/d/z/j/b;->k(J)Le/m/d/z/j/b;

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Le/m/d/z/j/b;->d(I)Le/m/d/z/j/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    iget-object v2, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v2}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 8
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-static {v1}, Le/m/d/z/k/h;->c(Le/m/d/z/j/b;)V

    .line 9
    throw v0
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-wide v0, p0, Le/m/d/z/k/e;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->c()V

    .line 3
    iget-object v0, p0, Le/m/d/z/k/e;->e:Lcom/google/firebase/perf/util/Timer;

    .line 4
    iget-wide v0, v0, Lcom/google/firebase/perf/util/Timer;->a:J

    .line 5
    iput-wide v0, p0, Le/m/d/z/k/e;->c:J

    .line 6
    iget-object v2, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-virtual {v2, v0, v1}, Le/m/d/z/j/b;->f(J)Le/m/d/z/j/b;

    .line 7
    :cond_0
    invoke-virtual {p0}, Le/m/d/z/k/e;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    invoke-virtual {v1, v0}, Le/m/d/z/j/b;->c(Ljava/lang/String;)Le/m/d/z/j/b;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Le/m/d/z/k/e;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Le/m/d/z/j/b;->c(Ljava/lang/String;)Le/m/d/z/j/b;

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Le/m/d/z/k/e;->b:Le/m/d/z/j/b;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Le/m/d/z/j/b;->c(Ljava/lang/String;)Le/m/d/z/j/b;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/k/e;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
