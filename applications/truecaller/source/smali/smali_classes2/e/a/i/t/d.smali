.class public Le/a/i/t/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/t/b;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/a/i/t/d;->a:I

    .line 3
    iput p1, p0, Le/a/i/t/d;->b:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/t/d;->a:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_1
    iget p1, p0, Le/a/i/t/d;->b:I

    return p1
.end method

.method public b(I)I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/t/d;->a:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public c(I)I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/t/d;->a:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public d(I)I
    .locals 3

    .line 1
    iget v0, p0, Le/a/i/t/d;->a:I

    sub-int v1, p1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ge p1, v0, :cond_2

    return p1

    :cond_2
    sub-int/2addr p1, v2

    return p1
.end method

.method public e(I)Z
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/t/d;->a:I

    sub-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
