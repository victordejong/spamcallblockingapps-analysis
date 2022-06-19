.class public final Le/a/o2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o2/t;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method public constructor <init>(IIZI)V
    .locals 2

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/16 p2, 0xa

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v1

    .line 1
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Le/a/o2/q;->c:Z

    const/4 p3, 0x1

    if-le p2, p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x2

    .line 2
    :goto_0
    iput p2, p0, Le/a/o2/q;->a:I

    if-ltz p1, :cond_4

    move v1, p1

    .line 3
    :cond_4
    iput v1, p0, Le/a/o2/q;->b:I

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 0

    .line 1
    iget p2, p0, Le/a/o2/q;->b:I

    iget p3, p0, Le/a/o2/q;->a:I

    mul-int/2addr p1, p3

    add-int/2addr p1, p2

    return p1
.end method

.method public b(III)I
    .locals 0

    .line 1
    iget p2, p0, Le/a/o2/q;->b:I

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sub-int p2, p1, p2

    .line 2
    iget p3, p0, Le/a/o2/q;->a:I

    add-int/lit8 p3, p3, -0x1

    div-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method public c(III)Z
    .locals 1

    .line 1
    iget p3, p0, Le/a/o2/q;->b:I

    if-lt p1, p3, :cond_0

    sub-int p3, p1, p3

    .line 2
    iget v0, p0, Le/a/o2/q;->a:I

    rem-int/2addr p3, v0

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Le/a/o2/q;->g(II)I

    move-result p1

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(II)I
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-boolean v0, p0, Le/a/o2/q;->c:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget v0, p0, Le/a/o2/q;->b:I

    if-ge p2, v0, :cond_1

    return p2

    :cond_1
    sub-int v0, p2, v0

    .line 3
    iget v1, p0, Le/a/o2/q;->a:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr p1, p2

    return p1
.end method

.method public e(III)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/o2/q;->g(II)I

    move-result p1

    return p1
.end method

.method public f(III)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/o2/q;->g(II)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public final g(II)I
    .locals 1

    .line 1
    iget v0, p0, Le/a/o2/q;->b:I

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 2
    iget v0, p0, Le/a/o2/q;->a:I

    div-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
