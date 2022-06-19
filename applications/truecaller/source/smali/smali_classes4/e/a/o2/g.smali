.class public final Le/a/o2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o2/t;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    and-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p1, v0

    .line 1
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    move v0, p1

    .line 2
    :cond_1
    iput v0, p0, Le/a/o2/g;->a:I

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 0

    .line 1
    iget p2, p0, Le/a/o2/g;->a:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, p1

    return p2
.end method

.method public b(III)I
    .locals 0

    .line 1
    iget p3, p0, Le/a/o2/g;->a:I

    if-ge p1, p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method public c(III)Z
    .locals 0

    .line 1
    iget p3, p0, Le/a/o2/g;->a:I

    add-int/2addr p2, p3

    if-le p3, p1, :cond_0

    goto :goto_0

    :cond_0
    if-le p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public d(II)I
    .locals 1

    .line 1
    iget v0, p0, Le/a/o2/g;->a:I

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr p2, p1

    return p2
.end method

.method public e(III)I
    .locals 0

    .line 1
    iget p2, p0, Le/a/o2/g;->a:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public f(III)I
    .locals 0

    .line 1
    iget p3, p0, Le/a/o2/g;->a:I

    if-ge p1, p3, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    :goto_0
    return p1
.end method
