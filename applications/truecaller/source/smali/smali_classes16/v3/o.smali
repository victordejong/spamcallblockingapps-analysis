.class public final Lv3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/b0;


# instance fields
.field public a:B

.field public final b:Lv3/v;

.field public final c:Ljava/util/zip/Inflater;

.field public final d:Lv3/p;

.field public final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lv3/b0;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv3/v;

    invoke-direct {v0, p1}, Lv3/v;-><init>(Lv3/b0;)V

    iput-object v0, p0, Lv3/o;->b:Lv3/v;

    .line 3
    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lv3/o;->c:Ljava/util/zip/Inflater;

    .line 4
    new-instance v1, Lv3/p;

    invoke-direct {v1, v0, p1}, Lv3/p;-><init>(Lv3/h;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lv3/o;->d:Lv3/p;

    .line 5
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lv3/o;->e:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;II)V
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

    invoke-static {p1, p2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/o;->d:Lv3/p;

    invoke-virtual {v0}, Lv3/p;->close()V

    return-void
.end method

.method public final d(Lv3/f;JJ)V
    .locals 5

    .line 1
    iget-object p1, p1, Lv3/f;->a:Lv3/w;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 2
    :goto_0
    iget v1, p1, Lv3/w;->c:I

    iget v2, p1, Lv3/w;->b:I

    sub-int v3, v1, v2

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_1

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p2, v1

    .line 3
    iget-object p1, p1, Lv3/w;->f:Lv3/w;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    cmp-long v3, p4, v1

    if-lez v3, :cond_3

    .line 4
    iget v3, p1, Lv3/w;->b:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int p2, v3

    .line 5
    iget p3, p1, Lv3/w;->c:I

    sub-int/2addr p3, p2

    int-to-long v3, p3

    .line 6
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    .line 7
    iget-object v3, p0, Lv3/o;->e:Ljava/util/zip/CRC32;

    iget-object v4, p1, Lv3/w;->a:[B

    invoke-virtual {v3, v4, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    .line 8
    iget-object p1, p1, Lv3/w;->f:Lv3/w;

    if-eqz p1, :cond_2

    move-wide p2, v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    :cond_3
    return-void

    .line 9
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0
.end method

.method public d2(Lv3/f;J)J
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    const-string v0, "sink"

    invoke-static {v7, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ltz v2, :cond_0

    move v3, v11

    goto :goto_0

    :cond_0
    move v3, v10

    :goto_0
    if-eqz v3, :cond_16

    if-nez v2, :cond_1

    return-wide v0

    .line 1
    :cond_1
    iget-byte v0, v6, Lv3/o;->a:B

    const-wide/16 v12, -0x1

    if-nez v0, :cond_11

    .line 2
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lv3/v;->y1(J)V

    .line 3
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    .line 4
    iget-object v0, v0, Lv3/v;->a:Lv3/f;

    const-wide/16 v1, 0x3

    .line 5
    invoke-virtual {v0, v1, v2}, Lv3/f;->l(J)B

    move-result v14

    shr-int/lit8 v0, v14, 0x1

    and-int/2addr v0, v11

    if-ne v0, v11, :cond_2

    move v15, v11

    goto :goto_1

    :cond_2
    move v15, v10

    :goto_1
    if-eqz v15, :cond_3

    .line 6
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    .line 7
    iget-object v1, v0, Lv3/v;->a:Lv3/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    .line 8
    invoke-virtual/range {v0 .. v5}, Lv3/o;->d(Lv3/f;JJ)V

    .line 9
    :cond_3
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    invoke-virtual {v0}, Lv3/v;->readShort()S

    move-result v0

    const/16 v1, 0x1f8b

    const-string v2, "ID1ID2"

    .line 10
    invoke-virtual {v6, v2, v1, v0}, Lv3/o;->b(Ljava/lang/String;II)V

    .line 11
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lv3/v;->skip(J)V

    shr-int/lit8 v0, v14, 0x2

    and-int/2addr v0, v11

    if-ne v0, v11, :cond_4

    move v0, v11

    goto :goto_2

    :cond_4
    move v0, v10

    :goto_2
    const-wide/16 v1, 0x2

    if-eqz v0, :cond_7

    .line 12
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    invoke-virtual {v0, v1, v2}, Lv3/v;->y1(J)V

    if-eqz v15, :cond_5

    .line 13
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    .line 14
    iget-object v1, v0, Lv3/v;->a:Lv3/f;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    .line 15
    invoke-virtual/range {v0 .. v5}, Lv3/o;->d(Lv3/f;JJ)V

    .line 16
    :cond_5
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    .line 17
    iget-object v0, v0, Lv3/v;->a:Lv3/f;

    .line 18
    invoke-virtual {v0}, Lv3/f;->K()S

    move-result v0

    int-to-long v4, v0

    .line 19
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    invoke-virtual {v0, v4, v5}, Lv3/v;->y1(J)V

    if-eqz v15, :cond_6

    .line 20
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    .line 21
    iget-object v1, v0, Lv3/v;->a:Lv3/f;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v16, v4

    .line 22
    invoke-virtual/range {v0 .. v5}, Lv3/o;->d(Lv3/f;JJ)V

    goto :goto_3

    :cond_6
    move-wide/from16 v16, v4

    .line 23
    :goto_3
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lv3/v;->skip(J)V

    :cond_7
    shr-int/lit8 v0, v14, 0x3

    and-int/2addr v0, v11

    if-ne v0, v11, :cond_8

    move v0, v11

    goto :goto_4

    :cond_8
    move v0, v10

    :goto_4
    const-wide/16 v16, 0x1

    if-eqz v0, :cond_b

    .line 24
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide v22, 0x7fffffffffffffffL

    move-object/from16 v18, v0

    .line 25
    invoke-virtual/range {v18 .. v23}, Lv3/v;->b(BJJ)J

    move-result-wide v18

    cmp-long v0, v18, v12

    if-eqz v0, :cond_a

    if-eqz v15, :cond_9

    .line 26
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    .line 27
    iget-object v1, v0, Lv3/v;->a:Lv3/f;

    const-wide/16 v2, 0x0

    add-long v4, v18, v16

    move-object/from16 v0, p0

    .line 28
    invoke-virtual/range {v0 .. v5}, Lv3/o;->d(Lv3/f;JJ)V

    .line 29
    :cond_9
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    add-long v1, v18, v16

    invoke-virtual {v0, v1, v2}, Lv3/v;->skip(J)V

    goto :goto_5

    .line 30
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_b
    :goto_5
    shr-int/lit8 v0, v14, 0x4

    and-int/2addr v0, v11

    if-ne v0, v11, :cond_c

    move v10, v11

    :cond_c
    if-eqz v10, :cond_f

    .line 31
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    .line 32
    invoke-virtual/range {v0 .. v5}, Lv3/v;->b(BJJ)J

    move-result-wide v18

    cmp-long v0, v18, v12

    if-eqz v0, :cond_e

    if-eqz v15, :cond_d

    .line 33
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    .line 34
    iget-object v1, v0, Lv3/v;->a:Lv3/f;

    const-wide/16 v2, 0x0

    add-long v4, v18, v16

    move-object/from16 v0, p0

    .line 35
    invoke-virtual/range {v0 .. v5}, Lv3/o;->d(Lv3/f;JJ)V

    .line 36
    :cond_d
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    add-long v1, v18, v16

    invoke-virtual {v0, v1, v2}, Lv3/v;->skip(J)V

    goto :goto_6

    .line 37
    :cond_e
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_f
    :goto_6
    if-eqz v15, :cond_10

    .line 38
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    const-wide/16 v1, 0x2

    .line 39
    invoke-virtual {v0, v1, v2}, Lv3/v;->y1(J)V

    .line 40
    iget-object v0, v0, Lv3/v;->a:Lv3/f;

    .line 41
    invoke-virtual {v0}, Lv3/f;->K()S

    move-result v0

    .line 42
    iget-object v1, v6, Lv3/o;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const-string v2, "FHCRC"

    invoke-virtual {v6, v2, v0, v1}, Lv3/o;->b(Ljava/lang/String;II)V

    .line 43
    iget-object v0, v6, Lv3/o;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 44
    :cond_10
    iput-byte v11, v6, Lv3/o;->a:B

    .line 45
    :cond_11
    iget-byte v0, v6, Lv3/o;->a:B

    const/4 v1, 0x2

    if-ne v0, v11, :cond_13

    .line 46
    iget-wide v2, v7, Lv3/f;->b:J

    .line 47
    iget-object v0, v6, Lv3/o;->d:Lv3/p;

    invoke-virtual {v0, v7, v8, v9}, Lv3/p;->d2(Lv3/f;J)J

    move-result-wide v8

    cmp-long v0, v8, v12

    if-eqz v0, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v4, v8

    .line 48
    invoke-virtual/range {v0 .. v5}, Lv3/o;->d(Lv3/f;JJ)V

    return-wide v8

    .line 49
    :cond_12
    iput-byte v1, v6, Lv3/o;->a:B

    .line 50
    :cond_13
    iget-byte v0, v6, Lv3/o;->a:B

    if-ne v0, v1, :cond_15

    .line 51
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    const-wide/16 v1, 0x4

    .line 52
    invoke-virtual {v0, v1, v2}, Lv3/v;->y1(J)V

    .line 53
    iget-object v0, v0, Lv3/v;->a:Lv3/f;

    .line 54
    invoke-virtual {v0}, Lv3/f;->readInt()I

    move-result v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->a3(I)I

    move-result v0

    .line 55
    iget-object v3, v6, Lv3/o;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    long-to-int v3, v3

    const-string v4, "CRC"

    invoke-virtual {v6, v4, v0, v3}, Lv3/o;->b(Ljava/lang/String;II)V

    .line 56
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    .line 57
    invoke-virtual {v0, v1, v2}, Lv3/v;->y1(J)V

    .line 58
    iget-object v0, v0, Lv3/v;->a:Lv3/f;

    .line 59
    invoke-virtual {v0}, Lv3/f;->readInt()I

    move-result v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->a3(I)I

    move-result v0

    .line 60
    iget-object v1, v6, Lv3/o;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "ISIZE"

    invoke-virtual {v6, v2, v0, v1}, Lv3/o;->b(Ljava/lang/String;II)V

    const/4 v0, 0x3

    .line 61
    iput-byte v0, v6, Lv3/o;->a:B

    .line 62
    iget-object v0, v6, Lv3/o;->b:Lv3/v;

    invoke-virtual {v0}, Lv3/v;->N1()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_7

    .line 63
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_7
    return-wide v12

    :cond_16
    const-string v0, "byteCount < 0: "

    .line 64
    invoke-static {v0, v8, v9}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lv3/o;->b:Lv3/v;

    invoke-virtual {v0}, Lv3/v;->i()Lv3/c0;

    move-result-object v0

    return-object v0
.end method
