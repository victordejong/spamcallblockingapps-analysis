.class public Lw3/c/a/a/a/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lw3/c/a/a/a/j/a;->a:I

    const/16 v0, 0x11

    .line 3
    iput v0, p0, Lw3/c/a/a/a/j/a;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Lw3/c/a/a/a/j/a;
    .locals 1

    .line 1
    iget v0, p0, Lw3/c/a/a/a/j/a;->a:I

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, p1

    iput v0, p0, Lw3/c/a/a/a/j/a;->a:I

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lw3/c/a/a/a/j/a;
    .locals 8

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lw3/c/a/a/a/j/a;->a:I

    mul-int/lit8 p1, p1, 0x25

    iput p1, p0, Lw3/c/a/a/a/j/a;->a:I

    goto/16 :goto_9

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    instance-of v0, p1, [J

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, [J

    .line 5
    array-length v0, p1

    :goto_0
    if-ge v2, v0, :cond_a

    aget-wide v3, p1, v2

    .line 6
    iget v5, p0, Lw3/c/a/a/a/j/a;->a:I

    mul-int/lit8 v5, v5, 0x25

    shr-long v6, v3, v1

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int/2addr v5, v3

    iput v5, p0, Lw3/c/a/a/a/j/a;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, [I

    .line 9
    array-length v0, p1

    :goto_1
    if-ge v2, v0, :cond_a

    aget v1, p1, v2

    .line 10
    invoke-virtual {p0, v1}, Lw3/c/a/a/a/j/a;->a(I)Lw3/c/a/a/a/j/a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 12
    check-cast p1, [S

    .line 13
    array-length v0, p1

    :goto_2
    if-ge v2, v0, :cond_a

    aget-short v1, p1, v2

    .line 14
    iget v3, p0, Lw3/c/a/a/a/j/a;->a:I

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v3, v1

    iput v3, p0, Lw3/c/a/a/a/j/a;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 15
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 16
    check-cast p1, [C

    .line 17
    array-length v0, p1

    :goto_3
    if-ge v2, v0, :cond_a

    aget-char v1, p1, v2

    .line 18
    iget v3, p0, Lw3/c/a/a/a/j/a;->a:I

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v3, v1

    iput v3, p0, Lw3/c/a/a/a/j/a;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 19
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 20
    check-cast p1, [B

    .line 21
    array-length v0, p1

    :goto_4
    if-ge v2, v0, :cond_a

    aget-byte v1, p1, v2

    .line 22
    iget v3, p0, Lw3/c/a/a/a/j/a;->a:I

    mul-int/lit8 v3, v3, 0x25

    add-int/2addr v3, v1

    iput v3, p0, Lw3/c/a/a/a/j/a;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 23
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 24
    check-cast p1, [D

    .line 25
    array-length v0, p1

    :goto_5
    if-ge v2, v0, :cond_a

    aget-wide v3, p1, v2

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 27
    iget v5, p0, Lw3/c/a/a/a/j/a;->a:I

    mul-int/lit8 v5, v5, 0x25

    shr-long v6, v3, v1

    xor-long/2addr v3, v6

    long-to-int v3, v3

    add-int/2addr v5, v3

    iput v5, p0, Lw3/c/a/a/a/j/a;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 28
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 29
    check-cast p1, [F

    .line 30
    array-length v0, p1

    :goto_6
    if-ge v2, v0, :cond_a

    aget v1, p1, v2

    .line 31
    iget v3, p0, Lw3/c/a/a/a/j/a;->a:I

    mul-int/lit8 v3, v3, 0x25

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v3

    iput v1, p0, Lw3/c/a/a/a/j/a;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 32
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 33
    check-cast p1, [Z

    .line 34
    array-length v0, p1

    :goto_7
    if-ge v2, v0, :cond_a

    aget-boolean v1, p1, v2

    .line 35
    iget v3, p0, Lw3/c/a/a/a/j/a;->a:I

    mul-int/lit8 v3, v3, 0x25

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    iput v3, p0, Lw3/c/a/a/a/j/a;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 36
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    .line 37
    array-length v0, p1

    :goto_8
    if-ge v2, v0, :cond_a

    aget-object v1, p1, v2

    .line 38
    invoke-virtual {p0, v1}, Lw3/c/a/a/a/j/a;->b(Ljava/lang/Object;)Lw3/c/a/a/a/j/a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 39
    :cond_9
    iget v0, p0, Lw3/c/a/a/a/j/a;->a:I

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lw3/c/a/a/a/j/a;->a:I

    :cond_a
    :goto_9
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/c/a/a/a/j/a;->a:I

    return v0
.end method
