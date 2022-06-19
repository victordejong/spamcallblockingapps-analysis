.class public final Le/m/a/c/c1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/c1/h$b;
    }
.end annotation


# static fields
.field public static final a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/m/a/c/c1/h;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static a(ILe/m/a/c/q1/t;)V
    .locals 2

    const/4 v0, 0x7

    .line 1
    invoke-virtual {p1, v0}, Le/m/a/c/q1/t;->y(I)V

    .line 2
    iget-object p1, p1, Le/m/a/c/q1/t;->a:[B

    const/4 v0, 0x0

    const/16 v1, -0x54

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    .line 3
    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 4
    aput-byte v1, p1, v0

    const/4 v0, 0x3

    .line 5
    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 6
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    .line 7
    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    .line 8
    aput-byte p0, p1, v0

    return-void
.end method

.method public static b(Le/m/a/c/q1/s;)Le/m/a/c/c1/h$b;
    .locals 11

    .line 1
    sget-object v0, Le/m/a/c/c1/h;->a:[I

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    .line 2
    invoke-virtual {p0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v1

    const/4 v3, 0x4

    const v4, 0xffff

    if-ne v1, v4, :cond_0

    const/16 v1, 0x18

    .line 3
    invoke-virtual {p0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v1

    const/4 v4, 0x7

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-int/2addr v1, v4

    const v4, 0xac41

    if-ne v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x2

    :cond_1
    move v8, v1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    move v6, v4

    .line 5
    :goto_1
    invoke-virtual {p0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v7

    add-int/2addr v7, v6

    .line 6
    invoke-virtual {p0}, Le/m/a/c/q1/s;->e()Z

    move-result v6

    if-nez v6, :cond_2

    add-int/2addr v2, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v6, v7, 0x2

    goto :goto_1

    :cond_3
    :goto_2
    const/16 v6, 0xa

    .line 7
    invoke-virtual {p0, v6}, Le/m/a/c/q1/s;->f(I)I

    move-result v6

    .line 8
    invoke-virtual {p0}, Le/m/a/c/q1/s;->e()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 9
    invoke-virtual {p0, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v7

    if-lez v7, :cond_4

    .line 10
    invoke-virtual {p0, v1}, Le/m/a/c/q1/s;->l(I)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Le/m/a/c/q1/s;->e()Z

    move-result v7

    const v9, 0xbb80

    const v10, 0xac44

    if-eqz v7, :cond_5

    move v7, v9

    goto :goto_3

    :cond_5
    move v7, v10

    .line 12
    :goto_3
    invoke-virtual {p0, v3}, Le/m/a/c/q1/s;->f(I)I

    move-result p0

    if-ne v7, v10, :cond_6

    const/16 v10, 0xd

    if-ne p0, v10, :cond_6

    .line 13
    aget p0, v0, p0

    move v9, p0

    goto :goto_6

    :cond_6
    if-ne v7, v9, :cond_c

    .line 14
    array-length v9, v0

    if-ge p0, v9, :cond_c

    .line 15
    aget v0, v0, p0

    .line 16
    rem-int/lit8 v6, v6, 0x5

    const/16 v4, 0x8

    const/4 v9, 0x1

    if-eq v6, v9, :cond_9

    const/16 v9, 0xb

    if-eq v6, v1, :cond_8

    if-eq v6, v5, :cond_9

    if-eq v6, v3, :cond_7

    goto :goto_4

    :cond_7
    if-eq p0, v5, :cond_b

    if-eq p0, v4, :cond_b

    if-ne p0, v9, :cond_a

    goto :goto_5

    :cond_8
    if-eq p0, v4, :cond_b

    if-ne p0, v9, :cond_a

    goto :goto_5

    :cond_9
    if-eq p0, v5, :cond_b

    if-ne p0, v4, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    move v9, v0

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    move v9, v4

    .line 17
    :goto_6
    new-instance p0, Le/m/a/c/c1/h$b;

    const/4 v6, 0x2

    const/4 v10, 0x0

    move-object v4, p0

    move v5, v2

    invoke-direct/range {v4 .. v10}, Le/m/a/c/c1/h$b;-><init>(IIIIILe/m/a/c/c1/h$a;)V

    return-object p0
.end method
