.class public final Le/m/a/c/q1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/m/a/c/q1/d0;->f:[B

    iput-object v0, p0, Le/m/a/c/q1/t;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array v0, p1, [B

    iput-object v0, p0, Le/m/a/c/q1/t;->a:[B

    .line 5
    iput p1, p0, Le/m/a/c/q1/t;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Le/m/a/c/q1/t;->a:[B

    .line 8
    array-length p1, p1

    iput p1, p0, Le/m/a/c/q1/t;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Le/m/a/c/q1/t;->a:[B

    .line 11
    iput p2, p0, Le/m/a/c/q1/t;->c:I

    return-void
.end method


# virtual methods
.method public A([BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/q1/t;->a:[B

    .line 2
    iput p2, p0, Le/m/a/c/q1/t;->c:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Le/m/a/c/q1/t;->b:I

    return-void
.end method

.method public B(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->r(Z)V

    .line 2
    iput p1, p0, Le/m/a/c/q1/t;->c:I

    return-void
.end method

.method public C(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Le/m/a/c/q1/t;->c:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln3/g0/y;->r(Z)V

    .line 2
    iput p1, p0, Le/m/a/c/q1/t;->b:I

    return-void
.end method

.method public D(I)V
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/c/q1/t;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Le/m/a/c/q1/t;->C(I)V

    return-void
.end method

.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Le/m/a/c/q1/t;->c:I

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public c(Le/m/a/c/q1/s;I)V
    .locals 2

    .line 1
    iget-object v0, p1, Le/m/a/c/q1/s;->a:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Le/m/a/c/q1/t;->d([BII)V

    .line 2
    invoke-virtual {p1, v1}, Le/m/a/c/q1/s;->j(I)V

    return-void
.end method

.method public d([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Le/m/a/c/q1/t;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Le/m/a/c/q1/t;->b:I

    return-void
.end method

.method public e()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/m/a/c/q1/t;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Le/m/a/c/q1/t;->b:I

    .line 3
    :goto_0
    iget v1, p0, Le/m/a/c/q1/t;->c:I

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Le/m/a/c/q1/t;->a:[B

    aget-byte v1, v1, v0

    .line 4
    sget v5, Le/m/a/c/q1/d0;->a:I

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v4

    :goto_2
    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_3
    iget v1, p0, Le/m/a/c/q1/t;->b:I

    sub-int v5, v0, v1

    const/4 v6, 0x3

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Le/m/a/c/q1/t;->a:[B

    aget-byte v7, v5, v1

    const/16 v8, -0x11

    if-ne v7, v8, :cond_4

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v5, v7

    const/16 v8, -0x45

    if-ne v7, v8, :cond_4

    add-int/lit8 v7, v1, 0x2

    aget-byte v5, v5, v7

    const/16 v7, -0x41

    if-ne v5, v7, :cond_4

    add-int/2addr v1, v6

    .line 6
    iput v1, p0, Le/m/a/c/q1/t;->b:I

    .line 7
    :cond_4
    iget-object v1, p0, Le/m/a/c/q1/t;->a:[B

    iget v5, p0, Le/m/a/c/q1/t;->b:I

    sub-int v6, v0, v5

    invoke-static {v1, v5, v6}, Le/m/a/c/q1/d0;->i([BII)Ljava/lang/String;

    move-result-object v1

    .line 8
    iput v0, p0, Le/m/a/c/q1/t;->b:I

    .line 9
    iget v5, p0, Le/m/a/c/q1/t;->c:I

    if-ne v0, v5, :cond_5

    return-object v1

    .line 10
    :cond_5
    iget-object v6, p0, Le/m/a/c/q1/t;->a:[B

    aget-byte v7, v6, v0

    if-ne v7, v2, :cond_6

    add-int/2addr v0, v4

    .line 11
    iput v0, p0, Le/m/a/c/q1/t;->b:I

    if-ne v0, v5, :cond_6

    return-object v1

    .line 12
    :cond_6
    iget v0, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v6, v0

    if-ne v2, v3, :cond_7

    add-int/2addr v0, v4

    .line 13
    iput v0, p0, Le/m/a/c/q1/t;->b:I

    :cond_7
    return-object v1
.end method

.method public g()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public h()J
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x8

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x10

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    const/16 v0, 0x18

    shl-long/2addr v3, v0

    or-long v0, v1, v3

    return-wide v0
.end method

.method public i()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/c/q1/t;->g()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Top bit not zero: "

    invoke-static {v2, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public k()J
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x38

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x28

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x18

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v4, v0, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v1, v7

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v3, v0, v3

    int-to-long v7, v3

    and-long/2addr v7, v5

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/a/c/q1/t;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Le/m/a/c/q1/t;->b:I

    .line 3
    :goto_0
    iget v1, p0, Le/m/a/c/q1/t;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Le/m/a/c/q1/t;->a:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Le/m/a/c/q1/t;->a:[B

    iget v2, p0, Le/m/a/c/q1/t;->b:I

    sub-int v3, v0, v2

    invoke-static {v1, v2, v3}, Le/m/a/c/q1/d0;->i([BII)Ljava/lang/String;

    move-result-object v1

    .line 5
    iput v0, p0, Le/m/a/c/q1/t;->b:I

    .line 6
    iget v2, p0, Le/m/a/c/q1/t;->c:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 7
    iput v0, p0, Le/m/a/c/q1/t;->b:I

    :cond_2
    return-object v1
.end method

.method public m(I)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iget v0, p0, Le/m/a/c/q1/t;->b:I

    add-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    .line 2
    iget v2, p0, Le/m/a/c/q1/t;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Le/m/a/c/q1/t;->a:[B

    aget-byte v1, v2, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 3
    :goto_0
    iget-object v2, p0, Le/m/a/c/q1/t;->a:[B

    invoke-static {v2, v0, v1}, Le/m/a/c/q1/d0;->i([BII)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget v1, p0, Le/m/a/c/q1/t;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Le/m/a/c/q1/t;->b:I

    return-object v0
.end method

.method public n(I)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/m/a/c/q1/t;->o(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Le/m/a/c/q1/t;->a:[B

    iget v2, p0, Le/m/a/c/q1/t;->b:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 2
    iget p2, p0, Le/m/a/c/q1/t;->b:I

    add-int/2addr p2, p1

    iput p2, p0, Le/m/a/c/q1/t;->b:I

    return-object v0
.end method

.method public p()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/a/c/q1/t;->q()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Le/m/a/c/q1/t;->q()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Le/m/a/c/q1/t;->q()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Le/m/a/c/q1/t;->q()I

    move-result v3

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public q()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public r()J
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    int-to-long v3, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    const/16 v1, 0x18

    shl-long/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v0, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v1, 0x8

    shl-long/2addr v7, v1

    or-long v1, v2, v7

    add-int/lit8 v3, v4, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v4

    int-to-long v3, v0

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public s()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public t()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/c/q1/t;->e()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Top bit not zero: "

    invoke-static {v2, v0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public u()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/a/c/q1/t;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    .line 2
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Top bit not zero: "

    invoke-static {v3, v0, v1}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public v()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public w()J
    .locals 11

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    iget v1, p0, Le/m/a/c/q1/t;->b:I

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/4 v2, 0x7

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ltz v3, :cond_2

    shl-int v6, v5, v3

    int-to-long v7, v6

    and-long/2addr v7, v0

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    if-ge v3, v4, :cond_0

    sub-int/2addr v6, v5

    int-to-long v6, v6

    and-long/2addr v0, v6

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_0
    if-ne v3, v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    :goto_2
    if-ge v5, v2, :cond_4

    .line 2
    iget-object v3, p0, Le/m/a/c/q1/t;->a:[B

    iget v6, p0, Le/m/a/c/q1/t;->b:I

    add-int/2addr v6, v5

    aget-byte v3, v3, v6

    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_3

    shl-long/2addr v0, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-long v6, v3

    or-long/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Invalid UTF-8 sequence continuation byte: "

    invoke-static {v3, v0, v1}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_4
    iget v3, p0, Le/m/a/c/q1/t;->b:I

    add-int/2addr v3, v2

    iput v3, p0, Le/m/a/c/q1/t;->b:I

    return-wide v0

    .line 5
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Invalid UTF-8 sequence first byte: "

    invoke-static {v3, v0, v1}, Le/d/c/a/a;->p2(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/q1/t;->b:I

    .line 2
    iput v0, p0, Le/m/a/c/q1/t;->c:I

    return-void
.end method

.method public y(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/q1/t;->a:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 2
    new-array v0, p1, [B

    :cond_0
    invoke-virtual {p0, v0, p1}, Le/m/a/c/q1/t;->A([BI)V

    return-void
.end method

.method public z([B)V
    .locals 1

    .line 1
    array-length v0, p1

    .line 2
    iput-object p1, p0, Le/m/a/c/q1/t;->a:[B

    .line 3
    iput v0, p0, Le/m/a/c/q1/t;->c:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Le/m/a/c/q1/t;->b:I

    return-void
.end method
