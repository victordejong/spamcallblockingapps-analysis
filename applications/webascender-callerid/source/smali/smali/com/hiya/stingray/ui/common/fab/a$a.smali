.class Lcom/hiya/stingray/ui/common/fab/a$a;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/fab/a;->getIconDrawable()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:F

.field final synthetic g:F

.field final synthetic h:F

.field final synthetic i:F


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/fab/a;FFFF)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->f:F

    iput p3, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->g:F

    iput p4, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->h:F

    iput p5, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->i:F

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    .line 1
    iget v1, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->f:F

    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->g:F

    iget v2, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->h:F

    sub-float v3, v0, v2

    iget v4, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->i:F

    sub-float/2addr v4, v1

    add-float v5, v0, v2

    move-object v0, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2
    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->g:F

    iget v1, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->h:F

    sub-float v3, v0, v1

    iget v4, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->f:F

    add-float v5, v0, v1

    iget v0, p0, Lcom/hiya/stingray/ui/common/fab/a$a;->i:F

    sub-float v6, v0, v4

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
