.class public Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD4"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public count:J

.field public final dataBuffer:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x67452301

    .line 2
    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    const v0, -0x10325477

    .line 3
    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    const v0, -0x67452302

    .line 4
    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    const v0, 0x10325476

    .line 5
    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    return-void
.end method


# virtual methods
.method public getOutput()[B
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x38

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v1, v0, 0x78

    :goto_0
    add-int/lit8 v0, v1, 0x8

    .line 2
    new-array v0, v0, [B

    const/16 v2, -0x80

    const/4 v3, 0x0

    .line 3
    aput-byte v2, v0, v3

    move v2, v3

    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    add-int v4, v1, v2

    .line 4
    iget-wide v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    const-wide/16 v7, 0x8

    mul-long/2addr v5, v7

    mul-int/lit8 v7, v2, 0x8

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->update([B)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 6
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v1, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    .line 7
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    .line 8
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v1, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    .line 9
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    return-object v0
.end method

.method public processBuffer()V
    .locals 7

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    mul-int/lit8 v4, v2, 0x4

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x2

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v0

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v5, v3

    aput v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 3
    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 4
    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 5
    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 6
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->round1([I)V

    .line 7
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->round2([I)V

    .line 8
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->round3([I)V

    .line 9
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 10
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 11
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 12
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    return-void
.end method

.method public round1([I)V
    .locals 8

    .line 1
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    aget v0, p1, v0

    add-int/2addr v1, v0

    const/4 v0, 0x3

    invoke-static {v1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 2
    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v3, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v1, v2

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 3
    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v4, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v3, p1, v3

    add-int/2addr v1, v3

    const/16 v3, 0xb

    invoke-static {v1, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 4
    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v5, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v4

    aget v4, p1, v0

    add-int/2addr v1, v4

    const/16 v4, 0x13

    invoke-static {v1, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 5
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v5

    const/4 v5, 0x4

    aget v5, p1, v5

    add-int/2addr v1, v5

    invoke-static {v1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 6
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v5

    const/4 v5, 0x5

    aget v5, p1, v5

    add-int/2addr v1, v5

    invoke-static {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 7
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    add-int/2addr v1, v5

    invoke-static {v1, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 8
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v5

    aget v5, p1, v2

    add-int/2addr v1, v5

    invoke-static {v1, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 9
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v5

    const/16 v5, 0x8

    aget v5, p1, v5

    add-int/2addr v1, v5

    invoke-static {v1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 10
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    add-int/2addr v1, v5

    invoke-static {v1, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 11
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v5

    const/16 v5, 0xa

    aget v5, p1, v5

    add-int/2addr v1, v5

    invoke-static {v1, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 12
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v5

    aget v5, p1, v3

    add-int/2addr v1, v5

    invoke-static {v1, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v1

    iput v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 13
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v1, v5

    const/16 v5, 0xc

    aget v5, p1, v5

    add-int/2addr v1, v5

    invoke-static {v1, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 14
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v5, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 15
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v0, v2, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 16
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget p1, p1, v1

    add-int/2addr v0, p1

    invoke-static {v0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result p1

    iput p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    return-void
.end method

.method public round2([I)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    aget v0, p1, v0

    const v2, 0x5a827999

    const/4 v3, 0x3

    invoke-static {v1, v0, v2, v3}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 2
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v4, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v4}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 3
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v0, v5, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    const/16 v5, 0x9

    invoke-static {v0, v1, v2, v5}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 4
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    const/16 v6, 0xd

    invoke-static {v0, v1, v2, v6}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 5
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 6
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    aget v1, p1, v4

    invoke-static {v0, v1, v2, v4}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 7
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    aget v1, p1, v5

    invoke-static {v0, v1, v2, v5}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 8
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    aget v1, p1, v6

    invoke-static {v0, v1, v2, v6}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 9
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 10
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v4}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 11
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v5}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 12
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v6}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 13
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    aget v1, p1, v3

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 14
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v3, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v4}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 15
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v0, v3, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xb

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v5}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 16
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v3, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget p1, p1, v1

    invoke-static {v0, p1, v2, v6}, Le/d/c/a/a;->c1(IIII)I

    move-result p1

    iput p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    return-void
.end method

.method public round3([I)V
    .locals 9

    .line 1
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    aget v0, p1, v0

    const v2, 0x6ed9eba1

    const/4 v3, 0x3

    invoke-static {v1, v0, v2, v3}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 2
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v4, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    const/16 v4, 0x9

    invoke-static {v0, v1, v2, v4}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 3
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v0, v5, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    const/16 v5, 0xb

    invoke-static {v0, v1, v2, v5}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 4
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v6, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    const/16 v6, 0xf

    invoke-static {v0, v1, v2, v6}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 5
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 6
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v4}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 7
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v5}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 8
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v6}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 9
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 10
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    aget v1, p1, v4

    invoke-static {v0, v1, v2, v4}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 11
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v5}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 12
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v6}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 13
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v8, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v0, v7, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    aget v1, p1, v3

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 14
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v0, v3, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    aget v1, p1, v5

    invoke-static {v0, v1, v2, v4}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 15
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v0, v3, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    invoke-static {v0, v1, v2, v5}, Le/d/c/a/a;->c1(IIII)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 16
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v0, v3, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v0

    add-int/2addr v0, v1

    aget p1, p1, v6

    invoke-static {v0, p1, v2, v6}, Le/d/c/a/a;->c1(IIII)I

    move-result p1

    iput p1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    return-void
.end method

.method public update([B)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    const-wide/16 v2, 0x3f

    and-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v2

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    array-length v5, v4

    if-lt v3, v5, :cond_0

    .line 3
    array-length v3, v4

    sub-int/2addr v3, v0

    .line 4
    invoke-static {p1, v2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-wide v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    add-int/2addr v2, v3

    .line 6
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->processBuffer()V

    move v0, v1

    goto :goto_0

    .line 7
    :cond_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    .line 8
    array-length v1, p1

    sub-int/2addr v1, v2

    .line 9
    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-wide v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    :cond_1
    return-void
.end method
