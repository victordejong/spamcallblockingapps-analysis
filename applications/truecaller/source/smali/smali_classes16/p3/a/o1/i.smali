.class public Lp3/a/o1/i;
.super Lp3/a/n1/c;
.source "SourceFile"


# instance fields
.field public final a:Lv3/f;


# direct methods
.method public constructor <init>(Lv3/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/n1/c;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/o1/i;->a:Lv3/f;

    return-void
.end method


# virtual methods
.method public D(I)Lp3/a/n1/e2;
    .locals 4

    .line 1
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    .line 2
    iget-object v1, p0, Lp3/a/o1/i;->a:Lv3/f;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lv3/f;->h1(Lv3/f;J)V

    .line 3
    new-instance p1, Lp3/a/o1/i;

    invoke-direct {p1, v0}, Lp3/a/o1/i;-><init>(Lv3/f;)V

    return-object p1
.end method

.method public c0(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c2(Ljava/io/OutputStream;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/o1/i;->a:Lv3/f;

    int-to-long v7, p2

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "out"

    invoke-static {p1, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-wide v1, v0, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->d0(JJJ)V

    .line 4
    iget-object p2, v0, Lv3/f;->a:Lv3/w;

    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-lez v1, :cond_2

    if-eqz p2, :cond_1

    .line 5
    iget v1, p2, Lv3/w;->c:I

    iget v2, p2, Lv3/w;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 6
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 7
    iget-object v2, p2, Lv3/w;->a:[B

    iget v3, p2, Lv3/w;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    iget v2, p2, Lv3/w;->b:I

    add-int/2addr v2, v1

    iput v2, p2, Lv3/w;->b:I

    .line 9
    iget-wide v3, v0, Lv3/f;->b:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lv3/f;->b:J

    sub-long/2addr v7, v5

    .line 10
    iget v1, p2, Lv3/w;->c:I

    if-ne v2, v1, :cond_0

    .line 11
    invoke-virtual {p2}, Lv3/w;->a()Lv3/w;

    move-result-object v1

    .line 12
    iput-object v1, v0, Lv3/f;->a:Lv3/w;

    .line 13
    invoke-static {p2}, Lv3/x;->a(Lv3/w;)V

    move-object p2, v1

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/o1/i;->a:Lv3/f;

    .line 2
    iget-wide v1, v0, Lv3/f;->b:J

    .line 3
    invoke-virtual {v0, v1, v2}, Lv3/f;->skip(J)V

    return-void
.end method

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/o1/i;->a:Lv3/f;

    .line 2
    iget-wide v0, v0, Lv3/f;->b:J

    long-to-int v0, v0

    return v0
.end method

.method public r0([BII)V
    .locals 2

    :goto_0
    if-lez p3, :cond_1

    .line 1
    iget-object v0, p0, Lp3/a/o1/i;->a:Lv3/f;

    invoke-virtual {v0, p1, p2, p3}, Lv3/f;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "EOF trying to read "

    const-string v0, " bytes"

    invoke-static {p2, p3, v0}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public readUnsignedByte()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/i;->a:Lv3/f;

    invoke-virtual {v0}, Lv3/f;->readByte()B

    move-result v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skipBytes(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/i;->a:Lv3/f;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lv3/f;->skip(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {p1}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
