.class public Le/l/a/e;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/l/a/d;


# direct methods
.method public constructor <init>(Le/l/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/e;->a:Le/l/a/d;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/l/a/e;->a:Le/l/a/d;

    iget-object v0, p1, Le/l/a/d;->V:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    aget v2, v0, v1

    int-to-float v2, v2

    iget p1, p1, Le/l/a/d;->T:F

    sub-float/2addr v2, p1

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v4, v0, v3

    int-to-float v4, v4

    sub-float/2addr v4, p1

    float-to-int v4, v4

    aget v5, v0, v1

    int-to-float v5, v5

    add-float/2addr v5, p1

    float-to-int v5, v5

    aget v0, v0, v3

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p2, v2, v4, v5, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 3
    iget-object p1, p0, Le/l/a/e;->a:Le/l/a/d;

    iget p1, p1, Le/l/a/d;->W:I

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 4
    iget-object p1, p0, Le/l/a/e;->a:Le/l/a/d;

    iget p1, p1, Le/l/a/d;->m:I

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Outline;->offset(II)V

    return-void
.end method
