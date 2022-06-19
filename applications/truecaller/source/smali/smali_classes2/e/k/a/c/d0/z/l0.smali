.class public Le/k/a/c/d0/z/l0;
.super Le/k/a/c/d0/z/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/o<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x7f

    new-array v0, v0, [I

    .line 1
    sput-object v0, Le/k/a/c/d0/z/l0;->e:[I

    const/4 v1, -0x1

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 3
    sget-object v2, Le/k/a/c/d0/z/l0;->e:[I

    add-int/lit8 v3, v1, 0x30

    aput v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 4
    sget-object v1, Le/k/a/c/d0/z/l0;->e:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0x41

    .line 5
    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/o;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static s0([BI)I
    .locals 2

    .line 1
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static t0([BI)J
    .locals 3

    .line 1
    invoke-static {p0, p1}, Le/k/a/c/d0/z/l0;->s0([BI)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    .line 2
    invoke-static {p0, p1}, Le/k/a/c/d0/z/l0;->s0([BI)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr p0, v2

    ushr-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p1, Ljava/util/UUID;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object p1
.end method

.method public m0(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "UUID has to be represented by standard 36-char representation"

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/16 v4, 0x24

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3
    sget-object v0, Le/k/a/b/b;->b:Le/k/a/b/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Le/k/a/b/a0/c;

    const/16 v2, 0x1f4

    .line 6
    invoke-direct {v1, v5, v2}, Le/k/a/b/a0/c;-><init>(Le/k/a/b/a0/a;I)V

    .line 7
    invoke-virtual {v0, p1, v1}, Le/k/a/b/a;->d(Ljava/lang/String;Le/k/a/b/a0/c;)V

    .line 8
    invoke-virtual {v1}, Le/k/a/b/a0/c;->q()[B

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/l0;->r0([BLe/k/a/c/g;)Ljava/util/UUID;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v2, v3, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p2, v0, p1, v1, v2}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v5

    :cond_1
    const/16 v0, 0x8

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_2

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    const/16 v0, 0x12

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_2

    .line 14
    invoke-virtual {p0, p1, v3, p2}, Le/k/a/c/d0/z/l0;->v0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result v0

    int-to-long v0, v0

    const/16 v3, 0x20

    shl-long/2addr v0, v3

    const/16 v4, 0x9

    .line 15
    invoke-virtual {p0, p1, v4, p2}, Le/k/a/c/d0/z/l0;->w0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    const/16 v7, 0xe

    .line 16
    invoke-virtual {p0, p1, v7, p2}, Le/k/a/c/d0/z/l0;->w0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result v7

    int-to-long v7, v7

    or-long/2addr v4, v7

    add-long/2addr v0, v4

    const/16 v4, 0x13

    .line 17
    invoke-virtual {p0, p1, v4, p2}, Le/k/a/c/d0/z/l0;->w0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result v4

    shl-int/2addr v4, v6

    invoke-virtual {p0, p1, v2, p2}, Le/k/a/c/d0/z/l0;->w0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result v2

    or-int/2addr v2, v4

    int-to-long v4, v2

    shl-long/2addr v4, v3

    const/16 v2, 0x1c

    .line 18
    invoke-virtual {p0, p1, v2, p2}, Le/k/a/c/d0/z/l0;->v0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result p1

    int-to-long p1, p1

    shl-long/2addr p1, v3

    ushr-long/2addr p1, v3

    or-long/2addr p1, v4

    .line 19
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v0, v1, p1, p2}, Ljava/util/UUID;-><init>(JJ)V

    move-object p1, v2

    :goto_0
    return-object p1

    .line 20
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v2, v3, [Ljava/lang/Object;

    .line 21
    invoke-virtual {p2, v0, p1, v1, v2}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v5
.end method

.method public n0(Ljava/lang/Object;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/l0;->r0([BLe/k/a/c/g;)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Le/k/a/c/d0/z/o;->n0(Ljava/lang/Object;Le/k/a/c/g;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public q0(Ljava/lang/String;Le/k/a/c/g;C)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v2

    const-string p3, "Non-hex character \'%c\' (value 0x%s), not valid for UUID String"

    .line 3
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-virtual {p2, p1, v0, p3}, Le/k/a/c/g;->i0(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public final r0([BLe/k/a/c/g;)Ljava/util/UUID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 2
    new-instance p2, Ljava/util/UUID;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Le/k/a/c/d0/z/l0;->t0([BI)J

    move-result-wide v0

    const/16 v2, 0x8

    invoke-static {p1, v2}, Le/k/a/c/d0/z/l0;->t0([BI)J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p2

    .line 3
    :cond_0
    iget-object p2, p2, Le/k/a/c/g;->g:Le/k/a/b/j;

    const-string v0, "Can only construct UUIDs from byte[16]; got "

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    const-string v2, " bytes"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 6
    new-instance v2, Le/k/a/c/e0/c;

    invoke-direct {v2, p2, v0, p1, v1}, Le/k/a/c/e0/c;-><init>(Le/k/a/b/j;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    throw v2
.end method

.method public u0(Ljava/lang/String;ILe/k/a/c/g;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/d0/z/l0;->e:[I

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 p2, p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    if-gt p2, v2, :cond_0

    .line 3
    aget v3, v0, v1

    shl-int/lit8 v3, v3, 0x4

    aget v4, v0, p2

    or-int/2addr v3, v4

    if-ltz v3, :cond_0

    return v3

    :cond_0
    const/4 v3, 0x0

    if-gt v1, v2, :cond_2

    .line 4
    aget v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p3, p2}, Le/k/a/c/d0/z/l0;->q0(Ljava/lang/String;Le/k/a/c/g;C)I

    throw v3

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p3, v1}, Le/k/a/c/d0/z/l0;->q0(Ljava/lang/String;Le/k/a/c/g;C)I

    throw v3
.end method

.method public v0(Ljava/lang/String;ILe/k/a/c/g;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/l0;->u0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x2

    .line 2
    invoke-virtual {p0, p1, v1, p3}, Le/k/a/c/d0/z/l0;->u0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x4

    .line 3
    invoke-virtual {p0, p1, v1, p3}, Le/k/a/c/d0/z/l0;->u0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x6

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/l0;->u0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public w0(Ljava/lang/String;ILe/k/a/c/g;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/l0;->u0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/d0/z/l0;->u0(Ljava/lang/String;ILe/k/a/c/g;)I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method
