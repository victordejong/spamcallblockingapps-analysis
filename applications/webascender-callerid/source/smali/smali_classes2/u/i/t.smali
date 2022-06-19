.class public final Lu/i/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/i/t$a;
    }
.end annotation


# instance fields
.field final a:[B

.field b:I


# direct methods
.method constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu/i/t;->a:[B

    .line 3
    iput p2, p0, Lu/i/t;->b:I

    return-void
.end method

.method public static a(J)I
    .locals 5

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v4, p0, v1

    if-nez v4, :cond_1

    const/16 p0, 0x14

    return p0

    :cond_1
    const/4 v1, 0x0

    if-gez v3, :cond_2

    neg-long p0, p0

    const/4 v1, 0x1

    :cond_2
    const-wide/32 v2, 0x5f5e100

    cmp-long v4, p0, v2

    if-gez v4, :cond_a

    const-wide/16 v2, 0x2710

    cmp-long v4, p0, v2

    if-gez v4, :cond_6

    const-wide/16 v2, 0x64

    cmp-long v4, p0, v2

    if-gez v4, :cond_4

    const-wide/16 v2, 0xa

    cmp-long v4, p0, v2

    if-gez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v2, 0x3e8

    cmp-long v0, p0, v2

    if-gez v0, :cond_5

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v2, 0xf4240

    cmp-long v0, p0, v2

    if-gez v0, :cond_8

    const-wide/32 v2, 0x186a0

    cmp-long v0, p0, v2

    if-gez v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v2, 0x989680

    cmp-long v0, p0, v2

    if-gez v0, :cond_9

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v2, 0xe8d4a51000L

    cmp-long v0, p0, v2

    if-gez v0, :cond_e

    const-wide v2, 0x2540be400L

    cmp-long v0, p0, v2

    if-gez v0, :cond_c

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, p0, v2

    if-gez v0, :cond_b

    const/16 v0, 0x9

    goto :goto_0

    :cond_b
    const/16 v0, 0xa

    goto :goto_0

    :cond_c
    const-wide v2, 0x174876e800L

    cmp-long v0, p0, v2

    if-gez v0, :cond_d

    const/16 v0, 0xb

    goto :goto_0

    :cond_d
    const/16 v0, 0xc

    goto :goto_0

    :cond_e
    const-wide v2, 0x38d7ea4c68000L

    cmp-long v0, p0, v2

    if-gez v0, :cond_11

    const-wide v2, 0x9184e72a000L

    cmp-long v0, p0, v2

    if-gez v0, :cond_f

    const/16 v0, 0xd

    goto :goto_0

    :cond_f
    const-wide v2, 0x5af3107a4000L

    cmp-long v0, p0, v2

    if-gez v0, :cond_10

    const/16 v0, 0xe

    goto :goto_0

    :cond_10
    const/16 v0, 0xf

    goto :goto_0

    :cond_11
    const-wide v2, 0x16345785d8a0000L

    cmp-long v0, p0, v2

    if-gez v0, :cond_13

    const-wide v2, 0x2386f26fc10000L

    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 v0, 0x10

    goto :goto_0

    :cond_12
    const/16 v0, 0x11

    goto :goto_0

    :cond_13
    const-wide v2, 0xde0b6b3a7640000L

    cmp-long v0, p0, v2

    if-gez v0, :cond_14

    const/16 v0, 0x12

    goto :goto_0

    :cond_14
    const/16 v0, 0x13

    :goto_0
    if-eqz v1, :cond_15

    add-int/lit8 v0, v0, 0x1

    :cond_15
    return v0
.end method

.method public static c(Ljava/lang/CharSequence;)I
    .locals 9

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_8

    add-int/lit8 v4, v2, 0x1

    .line 3
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_0

    goto :goto_5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_1

    :cond_1
    const/16 v5, 0x800

    if-ge v4, v5, :cond_2

    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    :cond_2
    const v5, 0xd800

    if-lt v4, v5, :cond_7

    const v5, 0xdfff

    if-le v4, v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v0, :cond_4

    .line 4
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    const v8, 0xdbff

    if-gt v4, v8, :cond_6

    const v4, 0xdc00

    if-lt v7, v4, :cond_6

    if-le v7, v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x4

    move v2, v6

    goto :goto_5

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x3

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return v3
.end method

.method public static d(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static e(J)I
    .locals 5

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static f([B)Lu/i/t;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lu/i/t;->g([BI)Lu/i/t;

    move-result-object p0

    return-object p0
.end method

.method public static g([BI)Lu/i/t;
    .locals 1

    .line 1
    new-instance v0, Lu/i/t;

    invoke-direct {v0, p0, p1}, Lu/i/t;-><init>([BI)V

    return-object v0
.end method

.method static m([BIB)V
    .locals 3

    add-int/lit8 v0, p1, 0x0

    .line 1
    sget-object v1, Lu/i/a;->a:[C

    shr-int/lit8 v2, p2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 p2, p2, 0xf

    .line 2
    aget-char p2, v1, p2

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method final b()I
    .locals 1

    .line 1
    iget v0, p0, Lu/i/t;->b:I

    return v0
.end method

.method public h([B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lu/i/t;->a:[B

    iget v1, p0, Lu/i/t;->b:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget v0, p0, Lu/i/t;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lu/i/t;->b:I

    return-void
.end method

.method public i(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/16 p1, 0x30

    .line 1
    invoke-virtual {p0, p1}, Lu/i/t;->l(I)V

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v3, p1, v0

    if-nez v3, :cond_1

    const-string p1, "-9223372036854775808"

    .line 2
    invoke-virtual {p0, p1}, Lu/i/t;->j(Ljava/lang/String;)V

    return-void

    :cond_1
    if-gez v2, :cond_2

    const/16 v0, 0x2d

    .line 3
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    neg-long p1, p1

    .line 4
    :cond_2
    invoke-virtual {p0, p1, p2}, Lu/i/t;->k(J)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method k(J)V
    .locals 6

    .line 1
    iget v0, p0, Lu/i/t;->b:I

    invoke-static {p1, p2}, Lu/i/t;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    iput v0, p0, Lu/i/t;->b:I

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    const-wide/16 v1, 0xa

    .line 3
    rem-long v3, p1, v1

    long-to-int v4, v3

    .line 4
    iget-object v3, p0, Lu/i/t;->a:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v5, Lu/i/a;->a:[C

    aget-char v4, v5, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 5
    div-long/2addr p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu/i/t;->a:[B

    iget v1, p0, Lu/i/t;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lu/i/t;->b:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public n(J)V
    .locals 9

    .line 1
    iget v0, p0, Lu/i/t;->b:I

    .line 2
    iget-object v1, p0, Lu/i/t;->a:[B

    add-int/lit8 v2, v0, 0x0

    const/16 v3, 0x38

    ushr-long v3, p1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-static {v1, v2, v3}, Lu/i/t;->m([BIB)V

    .line 3
    iget-object v1, p0, Lu/i/t;->a:[B

    add-int/lit8 v2, v0, 0x2

    const/16 v3, 0x30

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-static {v1, v2, v3}, Lu/i/t;->m([BIB)V

    .line 4
    iget-object v1, p0, Lu/i/t;->a:[B

    add-int/lit8 v2, v0, 0x4

    const/16 v3, 0x28

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-static {v1, v2, v3}, Lu/i/t;->m([BIB)V

    .line 5
    iget-object v1, p0, Lu/i/t;->a:[B

    add-int/lit8 v2, v0, 0x6

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-static {v1, v2, v3}, Lu/i/t;->m([BIB)V

    .line 6
    iget-object v1, p0, Lu/i/t;->a:[B

    add-int/lit8 v2, v0, 0x8

    const/16 v3, 0x18

    ushr-long v3, p1, v3

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    invoke-static {v1, v2, v3}, Lu/i/t;->m([BIB)V

    .line 7
    iget-object v1, p0, Lu/i/t;->a:[B

    add-int/lit8 v2, v0, 0xa

    const/16 v3, 0x10

    ushr-long v7, p1, v3

    and-long/2addr v7, v5

    long-to-int v4, v7

    int-to-byte v4, v4

    invoke-static {v1, v2, v4}, Lu/i/t;->m([BIB)V

    .line 8
    iget-object v1, p0, Lu/i/t;->a:[B

    add-int/lit8 v2, v0, 0xc

    const/16 v4, 0x8

    ushr-long v7, p1, v4

    and-long/2addr v7, v5

    long-to-int v4, v7

    int-to-byte v4, v4

    invoke-static {v1, v2, v4}, Lu/i/t;->m([BIB)V

    .line 9
    iget-object v1, p0, Lu/i/t;->a:[B

    add-int/lit8 v2, v0, 0xe

    and-long/2addr p1, v5

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v1, v2, p1}, Lu/i/t;->m([BIB)V

    add-int/2addr v0, v3

    .line 10
    iput v0, p0, Lu/i/t;->b:I

    return-void
.end method

.method o(J)V
    .locals 4

    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 1
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    const/16 v2, 0x8

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 2
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 3
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 4
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 5
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 6
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v0

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 7
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    and-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 8
    invoke-virtual {p0, p1}, Lu/i/t;->l(I)V

    return-void
.end method

.method public p(Ljava/lang/CharSequence;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    .line 2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_9

    add-int/lit8 v2, v1, 0x1

    .line 4
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-virtual {p0, v4}, Lu/i/t;->l(I)V

    move v1, v2

    goto :goto_1

    :cond_1
    const/16 v4, 0x800

    if-ge v2, v4, :cond_2

    shr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0xc0

    .line 6
    invoke-virtual {p0, v4}, Lu/i/t;->l(I)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    .line 7
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    goto/16 :goto_4

    :cond_2
    const v4, 0xd800

    const/16 v5, 0x3f

    if-lt v2, v4, :cond_8

    const v4, 0xdfff

    if-le v2, v4, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_4

    .line 9
    invoke-virtual {p0, v5}, Lu/i/t;->l(I)V

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_5

    .line 10
    invoke-virtual {p0, v5}, Lu/i/t;->l(I)V

    goto :goto_5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 11
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 12
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 13
    invoke-virtual {p0, v5}, Lu/i/t;->l(I)V

    .line 14
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v5, v4

    :goto_2
    invoke-virtual {p0, v5}, Lu/i/t;->l(I)V

    goto :goto_4

    .line 15
    :cond_7
    invoke-static {v2, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    shr-int/lit8 v4, v2, 0x12

    or-int/lit16 v4, v4, 0xf0

    .line 16
    invoke-virtual {p0, v4}, Lu/i/t;->l(I)V

    shr-int/lit8 v4, v2, 0xc

    and-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 17
    invoke-virtual {p0, v4}, Lu/i/t;->l(I)V

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 18
    invoke-virtual {p0, v4}, Lu/i/t;->l(I)V

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    .line 19
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    goto :goto_4

    :cond_8
    :goto_3
    shr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0xe0

    .line 20
    invoke-virtual {p0, v4}, Lu/i/t;->l(I)V

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 21
    invoke-virtual {p0, v4}, Lu/i/t;->l(I)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    .line 22
    invoke-virtual {p0, v2}, Lu/i/t;->l(I)V

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    :goto_5
    return-void
.end method

.method q(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 1
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_0
    int-to-byte p1, p1

    .line 2
    invoke-virtual {p0, p1}, Lu/i/t;->l(I)V

    return-void
.end method

.method r(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x7f

    and-long/2addr v0, p1

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lu/i/t;->l(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    int-to-byte p1, p2

    .line 2
    invoke-virtual {p0, p1}, Lu/i/t;->l(I)V

    return-void
.end method
