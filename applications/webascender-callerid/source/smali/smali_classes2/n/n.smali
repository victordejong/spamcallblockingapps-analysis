.class public final Ln/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/b0;


# instance fields
.field private final f:Ln/w;

.field private final g:Ljava/util/zip/Deflater;

.field private final h:Ln/j;

.field private i:Z

.field private final j:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ln/b0;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln/w;

    invoke-direct {v0, p1}, Ln/w;-><init>(Ln/b0;)V

    iput-object v0, p0, Ln/n;->f:Ln/w;

    .line 3
    new-instance p1, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Ln/n;->g:Ljava/util/zip/Deflater;

    .line 4
    new-instance v1, Ln/j;

    invoke-direct {v1, v0, p1}, Ln/j;-><init>(Ln/g;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Ln/n;->h:Ln/j;

    .line 5
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Ln/n;->j:Ljava/util/zip/CRC32;

    .line 6
    iget-object p1, v0, Ln/w;->f:Ln/f;

    const/16 v0, 0x1f8b

    .line 7
    invoke-virtual {p1, v0}, Ln/f;->b1(I)Ln/f;

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p1, v0}, Ln/f;->O0(I)Ln/f;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Ln/f;->O0(I)Ln/f;

    .line 10
    invoke-virtual {p1, v0}, Ln/f;->X0(I)Ln/f;

    .line 11
    invoke-virtual {p1, v0}, Ln/f;->O0(I)Ln/f;

    .line 12
    invoke-virtual {p1, v0}, Ln/f;->O0(I)Ln/f;

    return-void
.end method

.method private final a(Ln/f;J)V
    .locals 5

    .line 1
    iget-object p1, p1, Ln/f;->f:Ln/y;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_1

    .line 2
    iget v1, p1, Ln/y;->c:I

    iget v2, p1, Ln/y;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 4
    iget-object v1, p0, Ln/n;->j:Ljava/util/zip/CRC32;

    iget-object v3, p1, Ln/y;->a:[B

    iget v4, p1, Ln/y;->b:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v1, v2

    sub-long/2addr p2, v1

    .line 5
    iget-object p1, p1, Ln/y;->f:Ln/y;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method

.method private final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln/n;->f:Ln/w;

    iget-object v1, p0, Ln/n;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ln/w;->a(I)Ln/g;

    .line 2
    iget-object v0, p0, Ln/n;->f:Ln/w;

    iget-object v1, p0, Ln/n;->g:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ln/w;->a(I)Ln/g;

    return-void
.end method


# virtual methods
.method public B0(Ln/f;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    return-void

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Ln/n;->a(Ln/f;J)V

    .line 2
    iget-object v0, p0, Ln/n;->h:Ln/j;

    invoke-virtual {v0, p1, p2, p3}, Ln/j;->B0(Ln/f;J)V

    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ln/n;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln/n;->h:Ln/j;

    invoke-virtual {v1}, Ln/j;->b()V

    .line 3
    invoke-direct {p0}, Ln/n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    :goto_0
    :try_start_1
    iget-object v1, p0, Ln/n;->g:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    .line 5
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Ln/n;->f:Ln/w;

    invoke-virtual {v1}, Ln/w;->close()V
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

    .line 6
    iput-boolean v1, p0, Ln/n;->i:Z

    if-nez v0, :cond_3

    return-void

    .line 7
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
    iget-object v0, p0, Ln/n;->h:Ln/j;

    invoke-virtual {v0}, Ln/j;->flush()V

    return-void
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/n;->f:Ln/w;

    invoke-virtual {v0}, Ln/w;->timeout()Ln/e0;

    move-result-object v0

    return-object v0
.end method
