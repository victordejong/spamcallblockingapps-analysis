.class public Le/a/b0/k/b;
.super Ljava/util/Calendar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/k/b$a;
    }
.end annotation


# static fields
.field public static a:[I

.field public static b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Le/a/b0/k/b;->a:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Le/a/b0/k/b;->b:[I

    .line 3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0x1f
        0x1f
        0x1f
        0x1f
        0x1f
        0x1f
        0x1e
        0x1e
        0x1e
        0x1e
        0x1e
        0x1d
    .end array-data
.end method

.method public static a(Le/a/b0/k/b$a;)Le/a/b0/k/b$a;
    .locals 7

    .line 1
    iget v0, p0, Le/a/b0/k/b$a;->b:I

    const/16 v1, 0xb

    if-gt v0, v1, :cond_6

    const/16 v2, -0xb

    if-lt v0, v2, :cond_6

    .line 2
    iget v0, p0, Le/a/b0/k/b$a;->a:I

    add-int/lit16 v0, v0, -0x640

    .line 3
    iput v0, p0, Le/a/b0/k/b$a;->a:I

    .line 4
    iget v2, p0, Le/a/b0/k/b$a;->c:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 5
    iput v2, p0, Le/a/b0/k/b$a;->c:I

    mul-int/lit16 v2, v0, 0x16d

    add-int/lit8 v0, v0, 0x3

    .line 6
    div-int/lit8 v0, v0, 0x4

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    add-int/2addr v2, v0

    .line 7
    iget v0, p0, Le/a/b0/k/b$a;->a:I

    add-int/lit8 v0, v0, 0x63

    .line 8
    div-int/lit8 v0, v0, 0x64

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    sub-int/2addr v2, v0

    .line 9
    iget v0, p0, Le/a/b0/k/b$a;->a:I

    add-int/lit16 v0, v0, 0x18f

    .line 10
    div-int/lit16 v0, v0, 0x190

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    add-int/2addr v2, v0

    const/4 v0, 0x0

    move v4, v0

    .line 11
    :goto_0
    iget v5, p0, Le/a/b0/k/b$a;->b:I

    if-ge v4, v5, :cond_0

    .line 12
    sget-object v5, Le/a/b0/k/b;->a:[I

    aget v5, v5, v4

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-le v5, v3, :cond_3

    .line 13
    iget v4, p0, Le/a/b0/k/b$a;->a:I

    .line 14
    rem-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_1

    rem-int/lit8 v5, v4, 0x64

    if-nez v5, :cond_2

    .line 15
    :cond_1
    rem-int/lit16 v4, v4, 0x190

    if-nez v4, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 16
    :cond_3
    iget p0, p0, Le/a/b0/k/b$a;->c:I

    add-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x4f

    .line 17
    div-int/lit16 p0, v2, 0x2f15

    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p0, v4

    .line 18
    rem-int/lit16 v2, v2, 0x2f15

    mul-int/lit8 p0, p0, 0x21

    add-int/lit16 p0, p0, 0x3d3

    .line 19
    div-int/lit16 v4, v2, 0x5b5

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, p0

    .line 20
    rem-int/lit16 v2, v2, 0x5b5

    const/16 p0, 0x16e

    if-lt v2, p0, :cond_4

    add-int/lit8 v2, v2, -0x1

    .line 21
    div-int/lit16 p0, v2, 0x16d

    int-to-double v5, p0

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int p0, v5

    add-int/2addr v4, p0

    .line 22
    rem-int/lit16 v2, v2, 0x16d

    :cond_4
    :goto_1
    if-ge v0, v1, :cond_5

    .line 23
    sget-object p0, Le/a/b0/k/b;->b:[I

    aget v5, p0, v0

    if-lt v2, v5, :cond_5

    .line 24
    aget p0, p0, v0

    sub-int/2addr v2, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v2, v3

    .line 25
    new-instance p0, Le/a/b0/k/b$a;

    invoke-direct {p0, v4, v0, v2}, Le/a/b0/k/b$a;-><init>(III)V

    return-object p0

    .line 26
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
