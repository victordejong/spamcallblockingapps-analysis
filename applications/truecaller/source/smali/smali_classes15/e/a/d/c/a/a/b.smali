.class public final Le/a/d/c/a/a/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Landroid/graphics/Path;

.field public final d:Ls1/g;

.field public e:Le/a/d/c/a/a/c;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Le/a/d/c/a/a/b;->h:Landroid/content/Context;

    .line 2
    new-instance p1, Le/a/d/c/a/a/b$d;

    invoke-direct {p1, p0}, Le/a/d/c/a/a/b$d;-><init>(Le/a/d/c/a/a/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c/a/a/b;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/d/c/a/a/b$c;

    invoke-direct {p1, p0}, Le/a/d/c/a/a/b$c;-><init>(Le/a/d/c/a/a/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c/a/a/b;->b:Ls1/g;

    .line 4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Le/a/d/c/a/a/b;->c:Landroid/graphics/Path;

    .line 5
    new-instance p1, Le/a/d/c/a/a/b$b;

    invoke-direct {p1, p0}, Le/a/d/c/a/a/b$b;-><init>(Le/a/d/c/a/a/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c/a/a/b;->d:Ls1/g;

    .line 6
    new-instance p1, Le/a/d/c/a/a/c$a;

    sget v0, Lcom/truecaller/voip/R$color;->voip_header_color:I

    invoke-direct {p1, v0}, Le/a/d/c/a/a/c$a;-><init>(I)V

    iput-object p1, p0, Le/a/d/c/a/a/b;->e:Le/a/d/c/a/a/c;

    .line 7
    new-instance p1, Le/a/d/c/a/a/b$a;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Le/a/d/c/a/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c/a/a/b;->f:Ls1/g;

    .line 8
    new-instance p1, Le/a/d/c/a/a/b$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Le/a/d/c/a/a/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c/a/a/b;->g:Ls1/g;

    return-void
.end method

.method public static final a(Le/a/d/c/a/a/b;)Le/a/p5/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/d/c/a/a/b;->a:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/p5/i0;

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->e()F

    move-result v0

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Le/a/d/c/a/a/b;->c()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final c()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final d()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Le/a/d/c/a/a/b;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/c/a/a/b;->c:Landroid/graphics/Path;

    invoke-virtual {p0}, Le/a/d/c/a/a/b;->d()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final e()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final f()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->d()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 2
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->d()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/d/c/a/a/b;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 5
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->c()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->c()F

    move-result v0

    .line 7
    iget-object v2, p0, Le/a/d/c/a/a/b;->d:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    .line 8
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->c()F

    move-result v2

    sub-float/2addr v2, v0

    .line 9
    iget-object v3, p0, Le/a/d/c/a/a/b;->c:Landroid/graphics/Path;

    .line 10
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->e()F

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->e()F

    move-result v5

    invoke-virtual {v3, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->e()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0}, Le/a/d/c/a/a/b;->c()F

    move-result v6

    add-float/2addr v6, v2

    invoke-virtual {v3, v5, v6, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 15
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 16
    :cond_1
    :goto_0
    iget-object v0, p0, Le/a/d/c/a/a/b;->e:Le/a/d/c/a/a/c;

    .line 17
    instance-of v2, v0, Le/a/d/c/a/a/c$a;

    if-eqz v2, :cond_2

    check-cast v0, Le/a/d/c/a/a/c$a;

    .line 18
    iget v0, v0, Le/a/d/c/a/a/c$a;->a:I

    .line 19
    iget-object v1, p0, Le/a/d/c/a/a/b;->h:Landroid/content/Context;

    .line 20
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 21
    invoke-static {v1, v0}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 22
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->d()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 23
    :cond_2
    instance-of v2, v0, Le/a/d/c/a/a/c$b;

    const/4 v3, 0x4

    if-eqz v2, :cond_4

    .line 24
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 25
    :cond_3
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->d()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 26
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->e()F

    move-result v7

    invoke-virtual {p0}, Le/a/d/c/a/a/b;->c()F

    move-result v8

    .line 27
    iget-object v4, p0, Le/a/d/c/a/a/b;->g:Ls1/g;

    invoke-interface {v4}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, [I

    new-array v10, v3, [F

    .line 28
    fill-array-data v10, :array_0

    .line 29
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v2

    .line 30
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 31
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 32
    :cond_4
    instance-of v0, v0, Le/a/d/c/a/a/c$c;

    if-eqz v0, :cond_6

    .line 33
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 34
    :cond_5
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->d()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 35
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->e()F

    move-result v7

    invoke-virtual {p0}, Le/a/d/c/a/a/b;->c()F

    move-result v8

    .line 36
    iget-object v2, p0, Le/a/d/c/a/a/b;->f:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [I

    new-array v10, v3, [F

    .line 37
    fill-array-data v10, :array_1

    .line 38
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v1

    .line 39
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 40
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->d()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0xe6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_6
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f2147ae    # 0.63f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3eb33333    # 0.35f
        0x3f2147ae    # 0.63f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->f()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/c/a/a/b;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
