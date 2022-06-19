.class public final Ln/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/d0;


# instance fields
.field private f:B

.field private final g:Ln/x;

.field private final h:Ljava/util/zip/Inflater;

.field private final i:Ln/p;

.field private final j:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ln/d0;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln/x;

    invoke-direct {v0, p1}, Ln/x;-><init>(Ln/d0;)V

    iput-object v0, p0, Ln/o;->g:Ln/x;

    .line 3
    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Ln/o;->h:Ljava/util/zip/Inflater;

    .line 4
    new-instance v1, Ln/p;

    invoke-direct {v1, v0, p1}, Ln/p;-><init>(Ln/h;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Ln/o;->i:Ln/p;

    .line 5
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Ln/o;->j:Ljava/util/zip/CRC32;

    return-void
.end method

.method private final a(Ljava/lang/String;II)V
    .locals 3

    if-ne p3, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(this, *args)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final b()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1
    iget-object v0, v6, Ln/o;->g:Ln/x;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ln/x;->o1(J)V

    .line 2
    iget-object v0, v6, Ln/o;->g:Ln/x;

    .line 3
    iget-object v0, v0, Ln/x;->f:Ln/f;

    const-wide/16 v1, 0x3

    .line 4
    invoke-virtual {v0, v1, v2}, Ln/f;->l(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    .line 5
    iget-object v0, v6, Ln/o;->g:Ln/x;

    .line 6
    iget-object v1, v0, Ln/x;->f:Ln/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    .line 7
    invoke-direct/range {v0 .. v5}, Ln/o;->e(Ln/f;JJ)V

    .line 8
    :cond_1
    iget-object v0, v6, Ln/o;->g:Ln/x;

    invoke-virtual {v0}, Ln/x;->readShort()S

    move-result v0

    const/16 v1, 0x1f8b

    const-string v2, "ID1ID2"

    .line 9
    invoke-direct {v6, v2, v1, v0}, Ln/o;->a(Ljava/lang/String;II)V

    .line 10
    iget-object v0, v6, Ln/o;->g:Ln/x;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Ln/x;->H0(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 11
    iget-object v0, v6, Ln/o;->g:Ln/x;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ln/x;->o1(J)V

    if-eqz v10, :cond_3

    .line 12
    iget-object v0, v6, Ln/o;->g:Ln/x;

    .line 13
    iget-object v1, v0, Ln/x;->f:Ln/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    .line 14
    invoke-direct/range {v0 .. v5}, Ln/o;->e(Ln/f;JJ)V

    .line 15
    :cond_3
    iget-object v0, v6, Ln/o;->g:Ln/x;

    .line 16
    iget-object v0, v0, Ln/x;->f:Ln/f;

    .line 17
    invoke-virtual {v0}, Ln/f;->N()S

    move-result v0

    int-to-long v11, v0

    .line 18
    iget-object v0, v6, Ln/o;->g:Ln/x;

    invoke-virtual {v0, v11, v12}, Ln/x;->o1(J)V

    if-eqz v10, :cond_4

    .line 19
    iget-object v0, v6, Ln/o;->g:Ln/x;

    .line 20
    iget-object v1, v0, Ln/x;->f:Ln/f;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide v4, v11

    .line 21
    invoke-direct/range {v0 .. v5}, Ln/o;->e(Ln/f;JJ)V

    .line 22
    :cond_4
    iget-object v0, v6, Ln/o;->g:Ln/x;

    invoke-virtual {v0, v11, v12}, Ln/x;->H0(J)V

    :cond_5
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x1

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, v6, Ln/o;->g:Ln/x;

    invoke-virtual {v0, v9}, Ln/x;->a(B)J

    move-result-wide v15

    cmp-long v0, v15, v11

    if-eqz v0, :cond_8

    if-eqz v10, :cond_7

    .line 24
    iget-object v0, v6, Ln/o;->g:Ln/x;

    .line 25
    iget-object v1, v0, Ln/x;->f:Ln/f;

    const-wide/16 v2, 0x0

    add-long v4, v15, v13

    move-object/from16 v0, p0

    .line 26
    invoke-direct/range {v0 .. v5}, Ln/o;->e(Ln/f;JJ)V

    .line 27
    :cond_7
    iget-object v0, v6, Ln/o;->g:Ln/x;

    add-long v1, v15, v13

    invoke-virtual {v0, v1, v2}, Ln/x;->H0(J)V

    goto :goto_3

    .line 28
    :cond_8
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_9
    :goto_3
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_a

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_d

    .line 29
    iget-object v0, v6, Ln/o;->g:Ln/x;

    invoke-virtual {v0, v9}, Ln/x;->a(B)J

    move-result-wide v7

    cmp-long v0, v7, v11

    if-eqz v0, :cond_c

    if-eqz v10, :cond_b

    .line 30
    iget-object v0, v6, Ln/o;->g:Ln/x;

    .line 31
    iget-object v1, v0, Ln/x;->f:Ln/f;

    const-wide/16 v2, 0x0

    add-long v4, v7, v13

    move-object/from16 v0, p0

    .line 32
    invoke-direct/range {v0 .. v5}, Ln/o;->e(Ln/f;JJ)V

    .line 33
    :cond_b
    iget-object v0, v6, Ln/o;->g:Ln/x;

    add-long/2addr v7, v13

    invoke-virtual {v0, v7, v8}, Ln/x;->H0(J)V

    goto :goto_5

    .line 34
    :cond_c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_d
    :goto_5
    if-eqz v10, :cond_e

    .line 35
    iget-object v0, v6, Ln/o;->g:Ln/x;

    invoke-virtual {v0}, Ln/x;->f()S

    move-result v0

    iget-object v1, v6, Ln/o;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-short v1, v2

    const-string v2, "FHCRC"

    invoke-direct {v6, v2, v0, v1}, Ln/o;->a(Ljava/lang/String;II)V

    .line 36
    iget-object v0, v6, Ln/o;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_e
    return-void
.end method

.method private final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln/o;->g:Ln/x;

    invoke-virtual {v0}, Ln/x;->e()I

    move-result v0

    iget-object v1, p0, Ln/o;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "CRC"

    invoke-direct {p0, v1, v0, v2}, Ln/o;->a(Ljava/lang/String;II)V

    .line 2
    iget-object v0, p0, Ln/o;->g:Ln/x;

    invoke-virtual {v0}, Ln/x;->e()I

    move-result v0

    iget-object v1, p0, Ln/o;->h:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, "ISIZE"

    invoke-direct {p0, v1, v0, v2}, Ln/o;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private final e(Ln/f;JJ)V
    .locals 6

    .line 1
    iget-object p1, p1, Ln/f;->f:Ln/y;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2
    :goto_0
    iget v1, p1, Ln/y;->c:I

    iget v2, p1, Ln/y;->b:I

    sub-int v3, v1, v2

    int-to-long v3, v3

    cmp-long v5, p2, v3

    if-ltz v5, :cond_1

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    .line 3
    iget-object p1, p1, Ln/y;->f:Ln/y;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    cmp-long v3, p4, v1

    if-lez v3, :cond_3

    .line 4
    iget v3, p1, Ln/y;->b:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int p2, v3

    .line 5
    iget p3, p1, Ln/y;->c:I

    sub-int/2addr p3, p2

    int-to-long v3, p3

    .line 6
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    .line 7
    iget-object v3, p0, Ln/o;->j:Ljava/util/zip/CRC32;

    iget-object v4, p1, Ln/y;->a:[B

    invoke-virtual {v3, v4, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    .line 8
    iget-object p1, p1, Ln/y;->f:Ln/y;

    if-eqz p1, :cond_2

    move-wide p2, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_3
    return-void

    .line 9
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln/o;->i:Ln/p;

    invoke-virtual {v0}, Ln/p;->close()V

    return-void
.end method

.method public read(Ln/f;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p2, v0

    if-ltz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_7

    if-nez v3, :cond_1

    return-wide v0

    .line 1
    :cond_1
    iget-byte v0, p0, Ln/o;->f:B

    if-nez v0, :cond_2

    .line 2
    invoke-direct {p0}, Ln/o;->b()V

    .line 3
    iput-byte v2, p0, Ln/o;->f:B

    .line 4
    :cond_2
    iget-byte v0, p0, Ln/o;->f:B

    const-wide/16 v3, -0x1

    const/4 v1, 0x2

    if-ne v0, v2, :cond_4

    .line 5
    invoke-virtual {p1}, Ln/f;->p0()J

    move-result-wide v7

    .line 6
    iget-object v0, p0, Ln/o;->i:Ln/p;

    invoke-virtual {v0, p1, p2, p3}, Ln/p;->read(Ln/f;J)J

    move-result-wide p2

    cmp-long v0, p2, v3

    if-eqz v0, :cond_3

    move-object v5, p0

    move-object v6, p1

    move-wide v9, p2

    .line 7
    invoke-direct/range {v5 .. v10}, Ln/o;->e(Ln/f;JJ)V

    return-wide p2

    .line 8
    :cond_3
    iput-byte v1, p0, Ln/o;->f:B

    .line 9
    :cond_4
    iget-byte p1, p0, Ln/o;->f:B

    if-ne p1, v1, :cond_6

    .line 10
    invoke-direct {p0}, Ln/o;->c()V

    const/4 p1, 0x3

    .line 11
    iput-byte p1, p0, Ln/o;->f:B

    .line 12
    iget-object p1, p0, Ln/o;->g:Ln/x;

    invoke-virtual {p1}, Ln/x;->S()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "gzip finished without exhausting source"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return-wide v3

    .line 14
    :cond_7
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

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/o;->g:Ln/x;

    invoke-virtual {v0}, Ln/x;->timeout()Ln/e0;

    move-result-object v0

    return-object v0
.end method
