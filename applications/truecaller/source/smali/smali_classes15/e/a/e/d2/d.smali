.class public Le/a/e/d2/d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/a/t/a;

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070099

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4
    invoke-static/range {p1 .. p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v8

    iput v8, v0, Le/a/e/d2/d;->d:I

    .line 5
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v4, 0x7f0606cb

    .line 6
    invoke-static {v1, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    .line 7
    new-instance v14, Le/a/b0/a/t/a;

    const v15, 0x7f070097

    .line 8
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v4, 0x7f070098

    .line 9
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move/from16 v4, p3

    .line 10
    invoke-static {v1, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v9

    const v1, 0x7f0700a6

    .line 11
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v14

    move v7, v3

    invoke-direct/range {v4 .. v13}, Le/a/b0/a/t/a;-><init>(IIIIIFIII)V

    iput-object v14, v0, Le/a/e/d2/d;->a:Le/a/b0/a/t/a;

    .line 12
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Le/a/e/d2/d;->b:I

    add-int/lit8 v3, v3, 0x0

    .line 13
    iput v3, v0, Le/a/e/d2/d;->c:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/d2/d;->a:Le/a/b0/a/t/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/a/b0/a/t/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e/d2/d;->b:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e/d2/d;->c:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
