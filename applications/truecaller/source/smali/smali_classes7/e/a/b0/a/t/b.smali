.class public final Le/a/b0/a/t/b;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Le/a/b0/a/t/a;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZIIIIIIIIIII)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p14

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    :goto_0
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move/from16 v5, p3

    :goto_1
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_2

    .line 1
    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    goto :goto_2

    :cond_2
    move/from16 v6, p4

    :goto_2
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_4

    if-eqz v3, :cond_3

    .line 2
    sget v7, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_small_height:I

    goto :goto_3

    :cond_3
    sget v7, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_normal_height:I

    goto :goto_3

    :cond_4
    move/from16 v7, p5

    :goto_3
    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_6

    if-eqz v3, :cond_5

    .line 3
    sget v8, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_small_one_char_width:I

    goto :goto_4

    :cond_5
    sget v8, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_normal_one_char_width:I

    goto :goto_4

    :cond_6
    move/from16 v8, p6

    :goto_4
    and-int/lit8 v9, v2, 0x40

    if-eqz v9, :cond_8

    if-eqz v3, :cond_7

    .line 4
    sget v9, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_small_two_plus_chars_width:I

    goto :goto_5

    :cond_7
    sget v9, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_normal_two_plus_chars_width:I

    goto :goto_5

    :cond_8
    move/from16 v9, p7

    :goto_5
    and-int/lit16 v10, v2, 0x80

    if-eqz v10, :cond_a

    if-eqz v3, :cond_9

    .line 5
    sget v10, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_text_small:I

    goto :goto_6

    :cond_9
    sget v10, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_text_normal:I

    goto :goto_6

    :cond_a
    move/from16 v10, p8

    :goto_6
    and-int/lit16 v11, v2, 0x100

    if-eqz v11, :cond_b

    const/4 v11, -0x1

    goto :goto_7

    :cond_b
    move/from16 v11, p9

    :goto_7
    and-int/lit16 v12, v2, 0x200

    const/4 v13, 0x0

    if-eqz v12, :cond_d

    if-eqz v5, :cond_c

    .line 6
    sget v12, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_border_size:I

    goto :goto_8

    :cond_c
    move v12, v13

    goto :goto_8

    :cond_d
    move/from16 v12, p10

    :goto_8
    and-int/lit16 v14, v2, 0x400

    if-eqz v14, :cond_f

    if-eqz v5, :cond_e

    .line 7
    sget v5, Lcom/truecaller/common/ui/R$attr;->tcx_backgroundPrimary:I

    goto :goto_9

    :cond_e
    move v5, v13

    goto :goto_9

    :cond_f
    move/from16 v5, p11

    :goto_9
    and-int/lit16 v14, v2, 0x800

    if-eqz v14, :cond_10

    goto :goto_a

    :cond_10
    move/from16 v3, p12

    :goto_a
    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_11

    .line 8
    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_alertBackgroundRed:I

    goto :goto_b

    :cond_11
    move/from16 v2, p13

    :goto_b
    const-string v14, "context"

    .line 9
    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 11
    invoke-static {v1, v6}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v6

    iput v6, v0, Le/a/b0/a/t/b;->a:I

    .line 12
    invoke-static {v1, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Le/a/b0/a/t/b;->b:I

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v12, :cond_12

    if-eqz v5, :cond_12

    goto :goto_c

    :cond_12
    move v4, v13

    .line 14
    :goto_c
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    if-eqz v4, :cond_13

    .line 15
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_d

    :cond_13
    move v12, v13

    :goto_d
    if-eqz v4, :cond_14

    .line 16
    invoke-static {v1, v5}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    goto :goto_e

    :cond_14
    move v1, v13

    .line 17
    :goto_e
    new-instance v4, Le/a/b0/a/t/a;

    .line 18
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 19
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 20
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    move-object/from16 p1, v4

    move/from16 p2, v5

    move/from16 p3, v8

    move/from16 p4, v9

    move/from16 p5, v6

    move/from16 p6, v11

    move/from16 p7, v10

    move/from16 p8, v12

    move/from16 p9, v1

    move/from16 p10, v3

    .line 21
    invoke-direct/range {p1 .. p10}, Le/a/b0/a/t/a;-><init>(IIIIIFIII)V

    iput-object v4, v0, Le/a/b0/a/t/b;->c:Le/a/b0/a/t/a;

    .line 22
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Le/a/b0/a/t/b;->d:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v9

    .line 23
    iput v12, v0, Le/a/b0/a/t/b;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/a/t/b;->c:Le/a/b0/a/t/a;

    .line 2
    iget v1, v0, Le/a/b0/a/t/a;->j:I

    if-eq v1, p1, :cond_0

    .line 3
    iput p1, v0, Le/a/b0/a/t/a;->j:I

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/a/t/b;->c:Le/a/b0/a/t/a;

    .line 2
    iput-boolean p1, v0, Le/a/b0/a/t/a;->b:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/a/t/b;->c:Le/a/b0/a/t/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/a/b0/a/t/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/b0/a/t/b;->d:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/b0/a/t/b;->e:I

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
