.class public final Le/m/a/c/g1/x/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# static fields
.field public static final o:[I

.field public static final p:[I

.field public static final q:[B

.field public static final r:[B

.field public static final s:I


# instance fields
.field public final a:[B

.field public b:Z

.field public c:J

.field public d:I

.field public e:I

.field public f:Z

.field public g:J

.field public h:I

.field public i:I

.field public j:J

.field public k:Le/m/a/c/g1/i;

.field public l:Le/m/a/c/g1/s;

.field public m:Le/m/a/c/g1/q;

.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Le/m/a/c/g1/x/a;->o:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Le/m/a/c/g1/x/a;->p:[I

    const-string v1, "#!AMR\n"

    .line 3
    invoke-static {v1}, Le/m/a/c/q1/d0;->r(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Le/m/a/c/g1/x/a;->q:[B

    const-string v1, "#!AMR-WB\n"

    .line 4
    invoke-static {v1}, Le/m/a/c/q1/d0;->r(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Le/m/a/c/g1/x/a;->r:[B

    const/16 v1, 0x8

    .line 5
    aget v0, v0, v1

    sput v0, Le/m/a/c/g1/x/a;->s:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/x/a;->a:[B

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/m/a/c/g1/x/a;->h:I

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    .line 1
    iput-wide p3, p0, Le/m/a/c/g1/x/a;->c:J

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/m/a/c/g1/x/a;->d:I

    .line 3
    iput v0, p0, Le/m/a/c/g1/x/a;->e:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/m/a/c/g1/x/a;->m:Le/m/a/c/g1/q;

    instance-of v1, v0, Le/m/a/c/g1/d;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Le/m/a/c/g1/d;

    .line 6
    iget-wide p3, v0, Le/m/a/c/g1/d;->b:J

    iget v0, v0, Le/m/a/c/g1/d;->e:I

    invoke-static {p1, p2, p3, p4, v0}, Le/m/a/c/g1/d;->d(JJI)J

    move-result-wide p1

    .line 7
    iput-wide p1, p0, Le/m/a/c/g1/x/a;->j:J

    goto :goto_0

    .line 8
    :cond_0
    iput-wide p3, p0, Le/m/a/c/g1/x/a;->j:J

    :goto_0
    return-void
.end method

.method public final b(Le/m/a/c/g1/e;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p1, Le/m/a/c/g1/e;->f:I

    .line 2
    iget-object v1, p0, Le/m/a/c/g1/x/a;->a:[B

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v1, v0, v2, v0}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 4
    iget-object p1, p0, Le/m/a/c/g1/x/a;->a:[B

    aget-byte p1, p1, v0

    and-int/lit16 v1, p1, 0x83

    if-gtz v1, :cond_9

    shr-int/lit8 p1, p1, 0x3

    const/16 v1, 0xf

    and-int/2addr p1, v1

    if-ltz p1, :cond_5

    if-gt p1, v1, :cond_5

    .line 5
    iget-boolean v1, p0, Le/m/a/c/g1/x/a;->b:Z

    if-eqz v1, :cond_1

    const/16 v3, 0xa

    if-lt p1, v3, :cond_0

    const/16 v3, 0xd

    if-le p1, v3, :cond_1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-nez v3, :cond_4

    if-nez v1, :cond_3

    const/16 v1, 0xc

    if-lt p1, v1, :cond_2

    const/16 v1, 0xe

    if-le p1, v1, :cond_3

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    if-nez v0, :cond_7

    .line 6
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Illegal AMR "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Le/m/a/c/g1/x/a;->b:Z

    if-eqz v2, :cond_6

    const-string v2, "WB"

    goto :goto_2

    :cond_6
    const-string v2, "NB"

    :goto_2
    const-string v3, " frame type "

    invoke-static {v1, v2, v3, p1}, Le/d/c/a/a;->i(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_7
    iget-boolean v0, p0, Le/m/a/c/g1/x/a;->b:Z

    if-eqz v0, :cond_8

    sget-object v0, Le/m/a/c/g1/x/a;->p:[I

    aget p1, v0, p1

    goto :goto_3

    :cond_8
    sget-object v0, Le/m/a/c/g1/x/a;->o:[I

    aget p1, v0, p1

    :goto_3
    return p1

    .line 8
    :cond_9
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Invalid padding bits for frame header "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Le/m/a/c/g1/e;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/a/c/g1/x/a;->q:[B

    const/4 v1, 0x0

    .line 2
    iput v1, p1, Le/m/a/c/g1/e;->f:I

    .line 3
    array-length v2, v0

    new-array v2, v2, [B

    .line 4
    array-length v3, v0

    .line 5
    invoke-virtual {p1, v2, v1, v3, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 6
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 7
    iput-boolean v1, p0, Le/m/a/c/g1/x/a;->b:Z

    .line 8
    array-length v0, v0

    invoke-virtual {p1, v0}, Le/m/a/c/g1/e;->i(I)V

    return v3

    .line 9
    :cond_0
    sget-object v0, Le/m/a/c/g1/x/a;->r:[B

    .line 10
    iput v1, p1, Le/m/a/c/g1/e;->f:I

    .line 11
    array-length v2, v0

    new-array v2, v2, [B

    .line 12
    array-length v4, v0

    .line 13
    invoke-virtual {p1, v2, v1, v4, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 14
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    iput-boolean v3, p0, Le/m/a/c/g1/x/a;->b:Z

    .line 16
    array-length v0, v0

    invoke-virtual {p1, v0}, Le/m/a/c/g1/e;->i(I)V

    return v3

    :cond_1
    return v1
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Le/m/a/c/g1/e;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 2
    invoke-virtual/range {p0 .. p1}, Le/m/a/c/g1/x/a;->c(Le/m/a/c/g1/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "Could not find AMR header."

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v2, v0, Le/m/a/c/g1/x/a;->n:Z

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 5
    iput-boolean v3, v0, Le/m/a/c/g1/x/a;->n:Z

    .line 6
    iget-boolean v2, v0, Le/m/a/c/g1/x/a;->b:Z

    if-eqz v2, :cond_2

    const-string v6, "audio/amr-wb"

    goto :goto_1

    :cond_2
    const-string v6, "audio/3gpp"

    :goto_1
    move-object v8, v6

    if-eqz v2, :cond_3

    const/16 v2, 0x3e80

    goto :goto_2

    :cond_3
    const/16 v2, 0x1f40

    :goto_2
    move v13, v2

    .line 7
    iget-object v2, v0, Le/m/a/c/g1/x/a;->l:Le/m/a/c/g1/s;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    sget v11, Le/m/a/c/g1/x/a;->s:I

    const/4 v12, 0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 8
    invoke-static/range {v7 .. v18}, Lcom/google/android/exoplayer2/Format;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 9
    invoke-interface {v2, v6}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 10
    :cond_4
    iget v2, v0, Le/m/a/c/g1/x/a;->e:I

    const/4 v6, -0x1

    if-nez v2, :cond_6

    .line 11
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Le/m/a/c/g1/x/a;->b(Le/m/a/c/g1/e;)I

    move-result v2

    iput v2, v0, Le/m/a/c/g1/x/a;->d:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iput v2, v0, Le/m/a/c/g1/x/a;->e:I

    .line 13
    iget v7, v0, Le/m/a/c/g1/x/a;->h:I

    if-ne v7, v6, :cond_5

    .line 14
    iget-wide v7, v1, Le/m/a/c/g1/e;->d:J

    .line 15
    iput-wide v7, v0, Le/m/a/c/g1/x/a;->g:J

    .line 16
    iput v2, v0, Le/m/a/c/g1/x/a;->h:I

    .line 17
    :cond_5
    iget v7, v0, Le/m/a/c/g1/x/a;->h:I

    if-ne v7, v2, :cond_6

    .line 18
    iget v2, v0, Le/m/a/c/g1/x/a;->i:I

    add-int/2addr v2, v3

    iput v2, v0, Le/m/a/c/g1/x/a;->i:I

    .line 19
    :cond_6
    iget-object v2, v0, Le/m/a/c/g1/x/a;->l:Le/m/a/c/g1/s;

    iget v7, v0, Le/m/a/c/g1/x/a;->e:I

    .line 20
    invoke-interface {v2, v1, v7, v3}, Le/m/a/c/g1/s;->d(Le/m/a/c/g1/e;IZ)I

    move-result v1

    if-ne v1, v6, :cond_7

    goto :goto_3

    .line 21
    :cond_7
    iget v2, v0, Le/m/a/c/g1/x/a;->e:I

    sub-int/2addr v2, v1

    iput v2, v0, Le/m/a/c/g1/x/a;->e:I

    const/4 v6, 0x0

    if-lez v2, :cond_8

    goto :goto_3

    .line 22
    :cond_8
    iget-object v7, v0, Le/m/a/c/g1/x/a;->l:Le/m/a/c/g1/s;

    iget-wide v1, v0, Le/m/a/c/g1/x/a;->j:J

    iget-wide v8, v0, Le/m/a/c/g1/x/a;->c:J

    add-long/2addr v8, v1

    const/4 v10, 0x1

    iget v11, v0, Le/m/a/c/g1/x/a;->d:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 23
    iget-wide v1, v0, Le/m/a/c/g1/x/a;->c:J

    const-wide/16 v7, 0x4e20

    add-long/2addr v1, v7

    iput-wide v1, v0, Le/m/a/c/g1/x/a;->c:J

    .line 24
    :catch_0
    :goto_3
    iget-boolean v1, v0, Le/m/a/c/g1/x/a;->f:Z

    if-eqz v1, :cond_9

    goto :goto_4

    .line 25
    :cond_9
    new-instance v1, Le/m/a/c/g1/q$b;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    invoke-direct {v1, v7, v8, v4, v5}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 27
    iput-object v1, v0, Le/m/a/c/g1/x/a;->m:Le/m/a/c/g1/q;

    .line 28
    iget-object v2, v0, Le/m/a/c/g1/x/a;->k:Le/m/a/c/g1/i;

    invoke-interface {v2, v1}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    .line 29
    iput-boolean v3, v0, Le/m/a/c/g1/x/a;->f:Z

    :goto_4
    return v6
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/x/a;->k:Le/m/a/c/g1/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/g1/x/a;->l:Le/m/a/c/g1/s;

    .line 3
    invoke-interface {p1}, Le/m/a/c/g1/i;->g()V

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/c/g1/x/a;->c(Le/m/a/c/g1/e;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
