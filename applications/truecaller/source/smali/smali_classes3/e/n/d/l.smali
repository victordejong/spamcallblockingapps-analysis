.class public Le/n/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOT_FOUND:I = -0x1


# instance fields
.field public final a:[I

.field public final b:[I

.field public c:I

.field public final d:[I

.field public final e:[I

.field public final f:[Lcom/mopub/nativeads/NativeAd;

.field public g:I


# direct methods
.method public constructor <init>([I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    new-array v1, v0, [I

    .line 2
    iput-object v1, p0, Le/n/d/l;->a:[I

    new-array v2, v0, [I

    .line 3
    iput-object v2, p0, Le/n/d/l;->b:[I

    const/4 v3, 0x0

    .line 4
    iput v3, p0, Le/n/d/l;->c:I

    new-array v4, v0, [I

    .line 5
    iput-object v4, p0, Le/n/d/l;->d:[I

    new-array v4, v0, [I

    .line 6
    iput-object v4, p0, Le/n/d/l;->e:[I

    new-array v4, v0, [Lcom/mopub/nativeads/NativeAd;

    .line 7
    iput-object v4, p0, Le/n/d/l;->f:[Lcom/mopub/nativeads/NativeAd;

    .line 8
    iput v3, p0, Le/n/d/l;->g:I

    .line 9
    array-length v4, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Le/n/d/l;->c:I

    .line 10
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Le/n/d/l;->c:I

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a([IIII)I
    .locals 2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-gt p1, p2, :cond_2

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .line 1
    aget v1, p0, v0

    if-ge v1, p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_0

    :cond_0
    if-le v1, p3, :cond_1

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    not-int p0, p1

    return p0
.end method

.method public static b([III)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Le/n/d/l;->a([IIII)I

    move-result p1

    if-gez p1, :cond_0

    not-int p0, p1

    return p0

    .line 2
    :cond_0
    aget p2, p0, p1

    :goto_0
    if-ltz p1, :cond_1

    .line 3
    aget v0, p0, p1

    if-ne v0, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static c([III)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Le/n/d/l;->a([IIII)I

    move-result p2

    if-gez p2, :cond_0

    not-int p0, p2

    return p0

    .line 2
    :cond_0
    aget v0, p0, p2

    :goto_0
    if-ge p2, p1, :cond_1

    .line 3
    aget v1, p0, p2

    if-ne v1, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method


# virtual methods
.method public d(II)I
    .locals 10

    .line 1
    iget v0, p0, Le/n/d/l;->g:I

    new-array v1, v0, [I

    .line 2
    new-array v0, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 3
    :goto_0
    iget v5, p0, Le/n/d/l;->g:I

    if-ge v3, v5, :cond_2

    .line 4
    iget-object v5, p0, Le/n/d/l;->d:[I

    aget v6, v5, v3

    .line 5
    iget-object v7, p0, Le/n/d/l;->e:[I

    aget v8, v7, v3

    if-gt p1, v8, :cond_0

    if-ge v8, p2, :cond_0

    .line 6
    aput v6, v1, v4

    sub-int/2addr v8, v4

    .line 7
    aput v8, v0, v4

    .line 8
    iget-object v5, p0, Le/n/d/l;->f:[Lcom/mopub/nativeads/NativeAd;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 9
    iget-object v5, p0, Le/n/d/l;->f:[Lcom/mopub/nativeads/NativeAd;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-lez v4, :cond_1

    sub-int v9, v3, v4

    .line 10
    aput v6, v5, v9

    sub-int/2addr v8, v4

    .line 11
    aput v8, v7, v9

    .line 12
    iget-object v5, p0, Le/n/d/l;->f:[Lcom/mopub/nativeads/NativeAd;

    aget-object v6, v5, v3

    aput-object v6, v5, v9

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return v2

    .line 13
    :cond_3
    aget p1, v0, v2

    .line 14
    iget-object p2, p0, Le/n/d/l;->b:[I

    iget v3, p0, Le/n/d/l;->c:I

    invoke-static {p2, v3, p1}, Le/n/d/l;->b([III)I

    move-result p1

    .line 15
    iget p2, p0, Le/n/d/l;->c:I

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-lt p2, p1, :cond_4

    .line 16
    iget-object v3, p0, Le/n/d/l;->a:[I

    add-int v5, p2, v4

    aget v6, v3, p2

    aput v6, v3, v5

    .line 17
    iget-object v3, p0, Le/n/d/l;->b:[I

    aget v6, v3, p2

    sub-int/2addr v6, v4

    aput v6, v3, v5

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v2, v4, :cond_5

    .line 18
    iget-object p2, p0, Le/n/d/l;->a:[I

    add-int v3, p1, v2

    aget v5, v1, v2

    aput v5, p2, v3

    .line 19
    iget-object p2, p0, Le/n/d/l;->b:[I

    aget v5, v0, v2

    aput v5, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 20
    :cond_5
    iget p1, p0, Le/n/d/l;->c:I

    add-int/2addr p1, v4

    iput p1, p0, Le/n/d/l;->c:I

    .line 21
    iget p1, p0, Le/n/d/l;->g:I

    sub-int/2addr p1, v4

    iput p1, p0, Le/n/d/l;->g:I

    return v4
.end method

.method public e(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Le/n/d/l;->d:[I

    iget v1, p0, Le/n/d/l;->g:I

    invoke-static {v0, v1, p1}, Le/n/d/l;->c([III)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public f(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Le/n/d/l;->e:[I

    iget v1, p0, Le/n/d/l;->g:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Le/n/d/l;->a([IIII)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public g(I)Lcom/mopub/nativeads/NativeAd;
    .locals 3

    .line 1
    iget-object v0, p0, Le/n/d/l;->e:[I

    iget v1, p0, Le/n/d/l;->g:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Le/n/d/l;->a([IIII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/n/d/l;->f:[Lcom/mopub/nativeads/NativeAd;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/n/d/l;->a:[I

    iget v1, p0, Le/n/d/l;->c:I

    invoke-static {v0, v1, p1}, Le/n/d/l;->b([III)I

    move-result v0

    .line 2
    :goto_0
    iget v1, p0, Le/n/d/l;->c:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Le/n/d/l;->a:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 4
    iget-object v1, p0, Le/n/d/l;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/n/d/l;->d:[I

    iget v1, p0, Le/n/d/l;->g:I

    invoke-static {v0, v1, p1}, Le/n/d/l;->b([III)I

    move-result p1

    .line 6
    :goto_1
    iget v0, p0, Le/n/d/l;->g:I

    if-ge p1, v0, :cond_1

    .line 7
    iget-object v0, p0, Le/n/d/l;->d:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 8
    iget-object v0, p0, Le/n/d/l;->e:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public i(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/n/d/l;->a:[I

    iget v1, p0, Le/n/d/l;->c:I

    invoke-static {v0, v1, p1}, Le/n/d/l;->c([III)I

    move-result v0

    .line 2
    :goto_0
    iget v1, p0, Le/n/d/l;->c:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Le/n/d/l;->a:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 4
    iget-object v1, p0, Le/n/d/l;->b:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/n/d/l;->d:[I

    iget v1, p0, Le/n/d/l;->g:I

    invoke-static {v0, v1, p1}, Le/n/d/l;->c([III)I

    move-result p1

    .line 6
    :goto_1
    iget v0, p0, Le/n/d/l;->g:I

    if-ge p1, v0, :cond_1

    .line 7
    iget-object v0, p0, Le/n/d/l;->d:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 8
    iget-object v0, p0, Le/n/d/l;->e:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
