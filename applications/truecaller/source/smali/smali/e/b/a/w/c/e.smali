.class public Le/b/a/w/c/e;
.super Le/b/a/w/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/b/a/w/c/f<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/b/a/c0/a<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/b/a/w/c/f;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public g(Le/b/a/c0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/b/a/w/c/e;->j(Le/b/a/c0/a;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/b/a/c0/a;F)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/b/a/c0/a<",
            "Ljava/lang/Integer;",
            ">;F)I"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/b/a/c0/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p1, Le/b/a/c0/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    if-eqz v1, :cond_0

    .line 3
    iget v2, p1, Le/b/a/c0/a;->e:F

    iget-object v0, p1, Le/b/a/c0/a;->f:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Le/b/a/c0/a;->b:Ljava/lang/Object;

    iget-object v5, p1, Le/b/a/c0/a;->c:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/b/a/w/c/a;->d()F

    move-result v7

    .line 5
    iget v8, p0, Le/b/a/w/c/a;->d:F

    move v6, p2

    .line 6
    invoke-virtual/range {v1 .. v8}, Le/b/a/c0/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 8
    :cond_0
    iget v0, p1, Le/b/a/c0/a;->i:I

    const v1, 0x2ec8fb09

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p1, Le/b/a/c0/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Le/b/a/c0/a;->i:I

    .line 10
    :cond_1
    iget v0, p1, Le/b/a/c0/a;->i:I

    .line 11
    iget v2, p1, Le/b/a/c0/a;->j:I

    if-ne v2, v1, :cond_2

    .line 12
    iget-object v1, p1, Le/b/a/c0/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Le/b/a/c0/a;->j:I

    .line 13
    :cond_2
    iget p1, p1, Le/b/a/c0/a;->j:I

    .line 14
    sget-object v1, Le/b/a/b0/d;->a:Landroid/graphics/PointF;

    int-to-float v1, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p2, p1

    add-float/2addr p2, v1

    float-to-int p1, p2

    return p1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
