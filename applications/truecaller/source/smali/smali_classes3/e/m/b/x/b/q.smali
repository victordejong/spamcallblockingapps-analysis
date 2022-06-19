.class public final Le/m/b/x/b/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/InputStream;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Le/m/b/x/b/m;

.field public e:Le/m/b/x/b/x;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Le/m/b/x/b/n;

.field public final i:Z

.field public j:I

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Le/m/b/x/b/n;Le/m/b/x/b/x;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 3
    iget-boolean v0, p1, Le/m/b/x/b/n;->w:Z

    .line 4
    iput-boolean v0, p0, Le/m/b/x/b/q;->i:Z

    .line 5
    iget v0, p1, Le/m/b/x/b/n;->e:I

    .line 6
    iput v0, p0, Le/m/b/x/b/q;->j:I

    .line 7
    iget-boolean v0, p1, Le/m/b/x/b/n;->f:Z

    .line 8
    iput-boolean v0, p0, Le/m/b/x/b/q;->k:Z

    .line 9
    iput-object p2, p0, Le/m/b/x/b/q;->e:Le/m/b/x/b/x;

    .line 10
    check-cast p2, Le/m/b/x/b/c0/d;

    .line 11
    iget-object v0, p2, Le/m/b/x/b/c0/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    .line 12
    iput-object v0, p0, Le/m/b/x/b/q;->b:Ljava/lang/String;

    .line 13
    iget v0, p2, Le/m/b/x/b/c0/d;->b:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    .line 14
    :cond_0
    iput v0, p0, Le/m/b/x/b/q;->f:I

    .line 15
    iget-object v2, p2, Le/m/b/x/b/c0/d;->c:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Le/m/b/x/b/q;->g:Ljava/lang/String;

    .line 17
    sget-object v3, Le/m/b/x/b/t;->a:Ljava/util/logging/Logger;

    .line 18
    iget-boolean v4, p0, Le/m/b/x/b/q;->k:Z

    if-eqz v4, :cond_1

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_5

    const-string v6, "-------------- RESPONSE --------------"

    .line 19
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 20
    sget-object v7, Le/m/b/x/d/v;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v8, p2, Le/m/b/x/b/c0/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v8, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v9, "HTTP/1."

    .line 22
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move-object v8, v5

    :goto_1
    if-eqz v8, :cond_3

    .line 23
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 24
    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    const/16 v0, 0x20

    .line 25
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_4
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    move-object v6, v5

    .line 27
    :goto_3
    iget-object v0, p1, Le/m/b/x/b/n;->c:Le/m/b/x/b/k;

    if-eqz v4, :cond_6

    move-object v2, v6

    goto :goto_4

    :cond_6
    move-object v2, v5

    .line 28
    :goto_4
    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 29
    new-instance v7, Le/m/b/x/b/k$a;

    invoke-direct {v7, v0, v2}, Le/m/b/x/b/k$a;-><init>(Le/m/b/x/b/k;Ljava/lang/StringBuilder;)V

    .line 30
    iget-object v2, p2, Le/m/b/x/b/c0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5
    if-ge v1, v2, :cond_7

    .line 31
    iget-object v8, p2, Le/m/b/x/b/c0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 32
    iget-object v9, p2, Le/m/b/x/b/c0/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v8, v9, v7}, Le/m/b/x/b/k;->p(Ljava/lang/String;Ljava/lang/String;Le/m/b/x/b/k$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 34
    :cond_7
    iget-object v0, v7, Le/m/b/x/b/k$a;->a:Le/m/b/x/d/b;

    invoke-virtual {v0}, Le/m/b/x/d/b;->b()V

    .line 35
    iget-object p2, p2, Le/m/b/x/b/c0/d;->a:Ljava/net/HttpURLConnection;

    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    .line 36
    iget-object p1, p1, Le/m/b/x/b/n;->c:Le/m/b/x/b/k;

    .line 37
    invoke-virtual {p1}, Le/m/b/x/b/k;->k()Ljava/lang/String;

    move-result-object p2

    .line 38
    :cond_8
    iput-object p2, p0, Le/m/b/x/b/q;->c:Ljava/lang/String;

    if-nez p2, :cond_9

    goto :goto_6

    .line 39
    :cond_9
    new-instance v5, Le/m/b/x/b/m;

    invoke-direct {v5, p2}, Le/m/b/x/b/m;-><init>(Ljava/lang/String;)V

    :goto_6
    iput-object v5, p0, Le/m/b/x/b/q;->d:Le/m/b/x/b/m;

    if-eqz v4, :cond_a

    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_a
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/x/b/q;->d()V

    .line 2
    iget-object v0, p0, Le/m/b/x/b/q;->e:Le/m/b/x/b/x;

    check-cast v0, Le/m/b/x/b/c0/d;

    .line 3
    iget-object v0, v0, Le/m/b/x/b/c0/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public b()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/b/x/b/q;->l:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Le/m/b/x/b/q;->e:Le/m/b/x/b/x;

    invoke-virtual {v0}, Le/m/b/x/b/x;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v1, p0, Le/m/b/x/b/q;->b:Ljava/lang/String;

    .line 4
    iget-boolean v2, p0, Le/m/b/x/b/q;->i:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "gzip"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 7
    :cond_0
    sget-object v1, Le/m/b/x/b/t;->a:Ljava/util/logging/Logger;

    .line 8
    iget-boolean v2, p0, Le/m/b/x/b/q;->k:Z

    if-eqz v2, :cond_1

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    new-instance v3, Le/m/b/x/d/o;

    iget v4, p0, Le/m/b/x/b/q;->j:I

    invoke-direct {v3, v0, v1, v2, v4}, Le/m/b/x/d/o;-><init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v0, v3

    .line 10
    :cond_1
    iput-object v0, p0, Le/m/b/x/b/q;->a:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 12
    throw v1

    .line 13
    :catch_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Le/m/b/x/b/q;->l:Z

    .line 15
    :cond_3
    iget-object v0, p0, Le/m/b/x/b/q;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public c()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/b/q;->d:Le/m/b/x/b/m;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le/m/b/x/b/m;->c()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/b/x/b/q;->d:Le/m/b/x/b/m;

    .line 2
    invoke-virtual {v0}, Le/m/b/x/b/m;->c()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Le/m/b/x/d/e;->b:Ljava/nio/charset/Charset;

    :goto_1
    return-object v0
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/x/b/q;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget v0, p0, Le/m/b/x/b/q;->f:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/x/b/q;->b()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-static {v0, v1, v2}, Le/m/b/x/d/l;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 4
    invoke-virtual {p0}, Le/m/b/x/b/q;->c()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
