.class public final Le/m/a/g/q/g$a;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/q/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Le/m/a/g/q/g;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Le/m/a/g/q/g;

    .line 2
    iget p1, p1, Le/m/a/g/q/g;->i:F

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/m/a/g/q/g;

    check-cast p2, Ljava/lang/Float;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 3
    iput p2, p1, Le/m/a/g/q/g;->i:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 4
    iget-object v1, p1, Le/m/a/g/q/n;->b:[F

    const/high16 v2, 0x44be0000    # 1520.0f

    mul-float/2addr p2, v2

    const/high16 v2, -0x3e600000    # -20.0f

    add-float/2addr v2, p2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    .line 5
    aput p2, v1, v2

    move p2, v3

    :goto_0
    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 6
    sget-object v1, Le/m/a/g/q/g;->l:[I

    aget v1, v1, p2

    const/16 v4, 0x29b

    .line 7
    invoke-virtual {p1, v0, v1, v4}, Le/m/a/g/q/n;->b(III)F

    move-result v1

    .line 8
    iget-object v5, p1, Le/m/a/g/q/n;->b:[F

    aget v6, v5, v2

    iget-object v7, p1, Le/m/a/g/q/g;->f:Ln3/t/a/a/b;

    invoke-virtual {v7, v1}, Ln3/t/a/a/d;->getInterpolation(F)F

    move-result v1

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float/2addr v1, v7

    add-float/2addr v1, v6

    aput v1, v5, v2

    .line 9
    sget-object v1, Le/m/a/g/q/g;->m:[I

    aget v1, v1, p2

    .line 10
    invoke-virtual {p1, v0, v1, v4}, Le/m/a/g/q/n;->b(III)F

    move-result v1

    .line 11
    iget-object v4, p1, Le/m/a/g/q/n;->b:[F

    aget v5, v4, v3

    iget-object v6, p1, Le/m/a/g/q/g;->f:Ln3/t/a/a/b;

    invoke-virtual {v6, v1}, Ln3/t/a/a/d;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v7

    add-float/2addr v1, v5

    aput v1, v4, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p1, Le/m/a/g/q/n;->b:[F

    aget v4, p2, v3

    aget v5, p2, v2

    aget v6, p2, v3

    sub-float/2addr v5, v6

    iget v6, p1, Le/m/a/g/q/g;->j:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    aput v5, p2, v3

    .line 13
    aget v4, p2, v3

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v4, v5

    aput v4, p2, v3

    .line 14
    aget v4, p2, v2

    div-float/2addr v4, v5

    aput v4, p2, v2

    move p2, v3

    :goto_1
    if-ge p2, v1, :cond_2

    .line 15
    sget-object v2, Le/m/a/g/q/g;->n:[I

    aget v2, v2, p2

    const/16 v4, 0x14d

    .line 16
    invoke-virtual {p1, v0, v2, v4}, Le/m/a/g/q/n;->b(III)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    .line 17
    iget v0, p1, Le/m/a/g/q/g;->h:I

    add-int/2addr p2, v0

    iget-object v0, p1, Le/m/a/g/q/g;->g:Le/m/a/g/q/c;

    iget-object v0, v0, Le/m/a/g/q/c;->c:[I

    array-length v1, v0

    rem-int/2addr p2, v1

    add-int/lit8 v1, p2, 0x1

    .line 18
    array-length v4, v0

    rem-int/2addr v1, v4

    .line 19
    aget p2, v0, p2

    iget-object v0, p1, Le/m/a/g/q/n;->a:Le/m/a/g/q/o;

    .line 20
    iget v0, v0, Le/m/a/g/q/l;->j:I

    .line 21
    invoke-static {p2, v0}, Ln3/g0/y;->C(II)I

    move-result p2

    .line 22
    iget-object v0, p1, Le/m/a/g/q/g;->g:Le/m/a/g/q/c;

    iget-object v0, v0, Le/m/a/g/q/c;->c:[I

    aget v0, v0, v1

    iget-object v1, p1, Le/m/a/g/q/n;->a:Le/m/a/g/q/o;

    .line 23
    iget v1, v1, Le/m/a/g/q/l;->j:I

    .line 24
    invoke-static {v0, v1}, Ln3/g0/y;->C(II)I

    move-result v0

    .line 25
    iget-object v1, p1, Le/m/a/g/q/g;->f:Ln3/t/a/a/b;

    invoke-virtual {v1, v2}, Ln3/t/a/a/d;->getInterpolation(F)F

    move-result v1

    .line 26
    iget-object v2, p1, Le/m/a/g/q/n;->c:[I

    .line 27
    sget-object v4, Le/m/a/g/a/b;->a:Le/m/a/g/a/b;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, p2, v0}, Le/m/a/g/a/b;->a(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aput p2, v2, v3

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 28
    :cond_2
    :goto_2
    iget-object p1, p1, Le/m/a/g/q/n;->a:Le/m/a/g/q/o;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
