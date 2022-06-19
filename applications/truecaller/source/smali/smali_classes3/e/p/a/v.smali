.class public abstract Le/p/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/p/a/v;->j()Lv3/h;

    move-result-object v0

    invoke-interface {v0}, Lv3/b0;->close()V

    return-void
.end method

.method public abstract d()Le/p/a/p;
.end method

.method public abstract j()Lv3/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final k()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/p/a/v;->b()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    .line 3
    invoke-virtual {p0}, Le/p/a/v;->j()Lv3/h;

    move-result-object v3

    .line 4
    :try_start_0
    invoke-interface {v3}, Lv3/h;->i0()[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {v3}, Le/p/a/y/i;->c(Ljava/io/Closeable;)V

    const-wide/16 v5, -0x1

    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    .line 6
    array-length v3, v4

    int-to-long v5, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/p/a/v;->d()Le/p/a/p;

    move-result-object v1

    .line 9
    sget-object v2, Le/p/a/y/i;->c:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, v1, Le/p/a/p;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 11
    :cond_2
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v3}, Le/p/a/y/i;->c(Ljava/io/Closeable;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Cannot buffer entire body for content length: "

    invoke-static {v3, v1, v2}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
