.class public final Lv3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/z;


# instance fields
.field public final a:Lv3/u;

.field public final b:Ljava/util/zip/Deflater;

.field public final c:Lv3/j;

.field public d:Z

.field public final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lv3/z;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv3/u;

    invoke-direct {v0, p1}, Lv3/u;-><init>(Lv3/z;)V

    iput-object v0, p0, Lv3/n;->a:Lv3/u;

    .line 3
    new-instance p1, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Lv3/n;->b:Ljava/util/zip/Deflater;

    .line 4
    new-instance v1, Lv3/j;

    invoke-direct {v1, v0, p1}, Lv3/j;-><init>(Lv3/g;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Lv3/n;->c:Lv3/j;

    .line 5
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lv3/n;->e:Ljava/util/zip/CRC32;

    .line 6
    iget-object p1, v0, Lv3/u;->a:Lv3/f;

    const/16 v0, 0x1f8b

    .line 7
    invoke-virtual {p1, v0}, Lv3/f;->J0(I)Lv3/f;

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Lv3/f;->B0(I)Lv3/f;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lv3/f;->B0(I)Lv3/f;

    .line 10
    invoke-virtual {p1, v0}, Lv3/f;->G0(I)Lv3/f;

    .line 11
    invoke-virtual {p1, v0}, Lv3/f;->B0(I)Lv3/f;

    .line 12
    invoke-virtual {p1, v0}, Lv3/f;->B0(I)Lv3/f;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lv3/n;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lv3/n;->c:Lv3/j;

    .line 3
    iget-object v2, v1, Lv3/j;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lv3/j;->b(Z)V

    .line 5
    iget-object v1, p0, Lv3/n;->a:Lv3/u;

    iget-object v2, p0, Lv3/n;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lv3/u;->b(I)Lv3/g;

    .line 6
    iget-object v1, p0, Lv3/n;->a:Lv3/u;

    iget-object v2, p0, Lv3/n;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lv3/u;->b(I)Lv3/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :goto_0
    :try_start_1
    iget-object v1, p0, Lv3/n;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 8
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lv3/n;->a:Lv3/u;

    invoke-virtual {v1}, Lv3/u;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lv3/n;->d:Z

    if-nez v0, :cond_3

    return-void

    .line 10
    :cond_3
    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/n;->c:Lv3/j;

    invoke-virtual {v0}, Lv3/j;->flush()V

    return-void
.end method

.method public h1(Lv3/f;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_5

    if-nez v2, :cond_1

    return-void

    .line 1
    :cond_1
    iget-object v2, p1, Lv3/f;->a:Lv3/w;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move-wide v4, p2

    :goto_1
    cmp-long v6, v4, v0

    if-lez v6, :cond_3

    .line 2
    iget v6, v2, Lv3/w;->c:I

    iget v7, v2, Lv3/w;->b:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    .line 3
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 4
    iget-object v7, p0, Lv3/n;->e:Ljava/util/zip/CRC32;

    iget-object v8, v2, Lv3/w;->a:[B

    iget v9, v2, Lv3/w;->b:I

    invoke-virtual {v7, v8, v9, v6}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 5
    iget-object v2, v2, Lv3/w;->f:Lv3/w;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    .line 6
    :cond_3
    iget-object v0, p0, Lv3/n;->c:Lv3/j;

    invoke-virtual {v0, p1, p2, p3}, Lv3/j;->h1(Lv3/f;J)V

    return-void

    .line 7
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    :cond_5
    const-string p1, "byteCount < 0: "

    .line 8
    invoke-static {p1, p2, p3}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/n;->a:Lv3/u;

    invoke-virtual {v0}, Lv3/u;->i()Lv3/c0;

    move-result-object v0

    return-object v0
.end method
