.class public final Le/m/a/c/g1/d0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public final g:[I

.field public final h:Le/m/a/c/q1/t;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Le/m/a/c/g1/d0/e;->g:[I

    .line 3
    new-instance v1, Le/m/a/c/q1/t;

    invoke-direct {v1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v1, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/g1/e;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->x()V

    .line 2
    invoke-virtual {p0}, Le/m/a/c/g1/d0/e;->b()V

    .line 3
    iget-wide v0, p1, Le/m/a/c/g1/e;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v5

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x1b

    cmp-long v0, v0, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    if-eqz v0, :cond_8

    .line 5
    iget-object v0, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v3, v1, v4}, Le/m/a/c/g1/e;->e([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 6
    :cond_2
    iget-object v0, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v5

    const-wide/32 v7, 0x4f676753

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    return v3

    .line 7
    :cond_3
    new-instance p1, Le/m/a/c/m0;

    const-string p2, "expected OggS capture pattern at begin of page"

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    iget-object v0, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->q()I

    move-result v0

    iput v0, p0, Le/m/a/c/g1/d0/e;->a:I

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    return v3

    .line 9
    :cond_5
    new-instance p1, Le/m/a/c/m0;

    const-string p2, "unsupported bit stream revision"

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_6
    iget-object p2, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    invoke-virtual {p2}, Le/m/a/c/q1/t;->q()I

    move-result p2

    iput p2, p0, Le/m/a/c/g1/d0/e;->b:I

    .line 11
    iget-object p2, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    .line 12
    iget-object v0, p2, Le/m/a/c/q1/t;->a:[B

    iget v2, p2, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p2, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v0, v2

    int-to-long v6, v2

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    add-int/lit8 v2, v5, 0x1

    iput v2, p2, Le/m/a/c/q1/t;->b:I

    aget-byte v5, v0, v5

    int-to-long v10, v5

    and-long/2addr v10, v8

    const/16 v5, 0x8

    shl-long/2addr v10, v5

    or-long v5, v6, v10

    add-int/lit8 v7, v2, 0x1

    iput v7, p2, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v0, v2

    int-to-long v10, v2

    and-long/2addr v10, v8

    const/16 v2, 0x10

    shl-long/2addr v10, v2

    or-long/2addr v5, v10

    add-int/lit8 v2, v7, 0x1

    iput v2, p2, Le/m/a/c/q1/t;->b:I

    aget-byte v7, v0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x18

    shl-long/2addr v10, v7

    or-long/2addr v5, v10

    add-int/lit8 v7, v2, 0x1

    iput v7, p2, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v0, v2

    int-to-long v10, v2

    and-long/2addr v10, v8

    const/16 v2, 0x20

    shl-long/2addr v10, v2

    or-long/2addr v5, v10

    add-int/lit8 v2, v7, 0x1

    iput v2, p2, Le/m/a/c/q1/t;->b:I

    aget-byte v7, v0, v7

    int-to-long v10, v7

    and-long/2addr v10, v8

    const/16 v7, 0x28

    shl-long/2addr v10, v7

    or-long/2addr v5, v10

    add-int/lit8 v7, v2, 0x1

    iput v7, p2, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v0, v2

    int-to-long v10, v2

    and-long/2addr v10, v8

    const/16 v2, 0x30

    shl-long/2addr v10, v2

    or-long/2addr v5, v10

    add-int/lit8 v2, v7, 0x1

    iput v2, p2, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v7

    int-to-long v10, v0

    and-long v7, v10, v8

    const/16 v0, 0x38

    shl-long/2addr v7, v0

    or-long/2addr v5, v7

    .line 13
    iput-wide v5, p0, Le/m/a/c/g1/d0/e;->c:J

    .line 14
    invoke-virtual {p2}, Le/m/a/c/q1/t;->h()J

    .line 15
    iget-object p2, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    invoke-virtual {p2}, Le/m/a/c/q1/t;->h()J

    .line 16
    iget-object p2, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    invoke-virtual {p2}, Le/m/a/c/q1/t;->h()J

    .line 17
    iget-object p2, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    invoke-virtual {p2}, Le/m/a/c/q1/t;->q()I

    move-result p2

    iput p2, p0, Le/m/a/c/g1/d0/e;->d:I

    add-int/2addr p2, v1

    .line 18
    iput p2, p0, Le/m/a/c/g1/d0/e;->e:I

    .line 19
    iget-object p2, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    invoke-virtual {p2}, Le/m/a/c/q1/t;->x()V

    .line 20
    iget-object p2, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    iget-object p2, p2, Le/m/a/c/q1/t;->a:[B

    iget v0, p0, Le/m/a/c/g1/d0/e;->d:I

    .line 21
    invoke-virtual {p1, p2, v3, v0, v3}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 22
    :goto_2
    iget p1, p0, Le/m/a/c/g1/d0/e;->d:I

    if-ge v3, p1, :cond_7

    .line 23
    iget-object p1, p0, Le/m/a/c/g1/d0/e;->g:[I

    iget-object p2, p0, Le/m/a/c/g1/d0/e;->h:Le/m/a/c/q1/t;

    invoke-virtual {p2}, Le/m/a/c/q1/t;->q()I

    move-result p2

    aput p2, p1, v3

    .line 24
    iget p1, p0, Le/m/a/c/g1/d0/e;->f:I

    iget-object p2, p0, Le/m/a/c/g1/d0/e;->g:[I

    aget p2, p2, v3

    add-int/2addr p1, p2

    iput p1, p0, Le/m/a/c/g1/d0/e;->f:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v4

    :cond_8
    :goto_3
    if-eqz p2, :cond_9

    return v3

    .line 25
    :cond_9
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/g1/d0/e;->a:I

    .line 2
    iput v0, p0, Le/m/a/c/g1/d0/e;->b:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Le/m/a/c/g1/d0/e;->c:J

    .line 4
    iput v0, p0, Le/m/a/c/g1/d0/e;->d:I

    .line 5
    iput v0, p0, Le/m/a/c/g1/d0/e;->e:I

    .line 6
    iput v0, p0, Le/m/a/c/g1/d0/e;->f:I

    return-void
.end method
