.class public final synthetic Le/a/o5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/b;->a:Landroid/view/View;

    iput p2, p0, Le/a/o5/b;->b:I

    iput p3, p0, Le/a/o5/b;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Le/a/o5/b;->a:Landroid/view/View;

    iget v1, p0, Le/a/o5/b;->b:I

    iget v2, p0, Le/a/o5/b;->c:I

    .line 1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 4
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-nez v5, :cond_0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 6
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v1, v4

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 7
    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 8
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 9
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v3, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 11
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 12
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_2
    :goto_1
    return-void
.end method
