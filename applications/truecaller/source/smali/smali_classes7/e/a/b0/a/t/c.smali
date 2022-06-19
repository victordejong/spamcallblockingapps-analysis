.class public final Le/a/b0/a/t/c;
.super Ln3/b/c/a/d;
.source "SourceFile"


# instance fields
.field public final n:I

.field public final o:I

.field public final p:Le/a/b0/a/t/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ln3/b/c/a/d;-><init>(Landroid/content/Context;)V

    .line 2
    sget v0, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Le/a/b0/a/t/c;->n:I

    .line 3
    sget v0, Lcom/truecaller/common/ui/R$attr;->tcx_alertBackgroundRed:I

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Le/a/b0/a/t/c;->o:I

    .line 4
    sget v0, Lcom/truecaller/common/ui/R$attr;->tcx_textSecondary:I

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    .line 5
    iget-object v1, p0, Ln3/b/c/a/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Ln3/b/c/a/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 9
    new-instance v11, Le/a/b0/a/t/a;

    .line 10
    sget v1, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_small_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 11
    sget v1, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_small_one_char_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 12
    sget v1, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_small_two_plus_chars_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v6, -0x1

    .line 13
    sget v1, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_text_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 14
    sget v1, Lcom/truecaller/common/ui/R$dimen;->badge_tcx_border_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 15
    sget v0, Lcom/truecaller/common/ui/R$attr;->tcx_backgroundTertiary:I

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v9

    const/4 v10, 0x1

    move-object v1, v11

    .line 16
    invoke-direct/range {v1 .. v10}, Le/a/b0/a/t/a;-><init>(IIIIIFIII)V

    iput-object v11, p0, Le/a/b0/a/t/c;->p:Le/a/b0/a/t/a;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ln3/b/c/a/d;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Le/a/b0/a/t/c;->p:Le/a/b0/a/t/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/a/b0/a/t/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method
