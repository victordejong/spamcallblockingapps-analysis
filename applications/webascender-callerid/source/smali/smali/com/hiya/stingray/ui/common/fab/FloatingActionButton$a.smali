.class Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->d(IF)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;IIIII)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;->a:I

    iput p3, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;->b:I

    iput p4, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;->c:I

    iput p5, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;->d:I

    iput p6, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;->e:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 9

    .line 1
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v0, 0x2

    div-int/2addr p1, v0

    int-to-float v3, p1

    int-to-float v4, p2

    const/4 p1, 0x5

    new-array v5, p1, [I

    iget p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;->a:I

    const/4 v1, 0x0

    aput p2, v5, v1

    iget p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;->b:I

    const/4 v1, 0x1

    aput p2, v5, v1

    iget p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;->c:I

    aput p2, v5, v0

    iget p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;->d:I

    const/4 v0, 0x3

    aput p2, v5, v0

    iget p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton$a;->e:I

    const/4 v0, 0x4

    aput p2, v5, v0

    new-array v6, p1, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    move-object v0, v8

    move v1, v3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v8

    nop

    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method
