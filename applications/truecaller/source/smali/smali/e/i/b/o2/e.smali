.class public Le/i/b/o2/e;
.super Le/i/b/c3;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Le/i/b/u2/a;

.field public final e:Le/i/b/u2/y;

.field public final f:Le/i/b/o2/d;

.field public final g:Le/i/b/i2/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/i/b/u2/a;Le/i/b/u2/y;Le/i/b/o2/d;Le/i/b/i2/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/o2/e;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/i/b/o2/e;->d:Le/i/b/u2/a;

    .line 4
    iput-object p3, p0, Le/i/b/o2/e;->e:Le/i/b/u2/y;

    .line 5
    iput-object p4, p0, Le/i/b/o2/e;->f:Le/i/b/o2/d;

    .line 6
    iput-object p5, p0, Le/i/b/o2/e;->g:Le/i/b/i2/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Le/i/b/v2;->c:Le/i/b/v2;

    sget-object v1, Le/i/b/s2/o;->c:Le/i/b/s2/o;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/i/b/o2/e;->c()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v2}, Ln3/g0/y;->k(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v2, p0, Le/i/b/o2/e;->d:Le/i/b/u2/a;

    .line 5
    iput-object v1, v2, Le/i/b/u2/a;->b:Le/i/b/s2/o;

    .line 6
    iget-object v1, p0, Le/i/b/o2/e;->f:Le/i/b/o2/d;

    invoke-virtual {v1, v0}, Le/i/b/o2/d;->a(Le/i/b/v2;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v2}, Le/i/b/o2/e;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 8
    invoke-static {v3}, Ln3/g0/y;->k(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    iget-object v3, p0, Le/i/b/o2/e;->d:Le/i/b/u2/a;

    .line 10
    iput-object v1, v3, Le/i/b/u2/a;->b:Le/i/b/s2/o;

    .line 11
    iget-object v1, p0, Le/i/b/o2/e;->f:Le/i/b/o2/d;

    invoke-virtual {v1, v0}, Le/i/b/o2/d;->a(Le/i/b/v2;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0, v3}, Le/i/b/o2/e;->b(Ljava/lang/String;)V

    .line 13
    :goto_1
    throw v2
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/o2/e;->d:Le/i/b/u2/a;

    .line 2
    iget-object v1, v0, Le/i/b/u2/a;->c:Le/i/b/u2/x;

    .line 3
    iget-object v1, v1, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 4
    invoke-virtual {v1}, Le/i/b/u2/d0;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<html><body style=\'text-align:center; margin:0px; padding:0px; horizontal-align:center;\'><script>%%adTagData%%</script></body></html>"

    .line 5
    invoke-static {v1, v2}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, v0, Le/i/b/u2/a;->c:Le/i/b/u2/x;

    .line 7
    iget-object v2, v2, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 8
    invoke-virtual {v2}, Le/i/b/u2/d0;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%%adTagData%%"

    .line 9
    invoke-static {v2, v3}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Le/i/b/u2/a;->a:Ljava/lang/String;

    .line 11
    iget-object p1, p0, Le/i/b/o2/e;->d:Le/i/b/u2/a;

    .line 12
    sget-object v0, Le/i/b/s2/o;->b:Le/i/b/s2/o;

    iput-object v0, p1, Le/i/b/u2/a;->b:Le/i/b/s2/o;

    .line 13
    iget-object p1, p0, Le/i/b/o2/e;->f:Le/i/b/o2/d;

    sget-object v0, Le/i/b/v2;->a:Le/i/b/v2;

    invoke-virtual {p1, v0}, Le/i/b/o2/d;->a(Le/i/b/v2;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Le/i/b/o2/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/i/b/o2/e;->e:Le/i/b/u2/y;

    invoke-virtual {v1}, Le/i/b/u2/y;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Le/i/b/o2/e;->g:Le/i/b/i2/g;

    const-string v3, "GET"

    .line 4
    invoke-virtual {v2, v0, v1, v3}, Le/i/b/i2/g;->c(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 5
    invoke-static {v0}, Le/i/b/i2/g;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    .line 6
    :try_start_0
    invoke-static {v0}, Ln3/g0/y;->g(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 8
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
