.class public final Le/a/c/c0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Le/a/c/c0/a0;->a:Landroid/view/View;

    iput p2, p0, Le/a/c/c0/a0;->b:I

    iput p3, p0, Le/a/c/c0/a0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/c/c0/a0;->a:Landroid/view/View;

    iget v1, p0, Le/a/c/c0/a0;->b:I

    iget v2, p0, Le/a/c/c0/a0;->c:I

    .line 2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v1, v4

    const/4 v4, 0x0

    if-gez v1, :cond_0

    move v1, v4

    :cond_0
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 5
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v2, v5

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    const/4 v4, 0x0

    cmpg-float v5, v1, v4

    if-nez v5, :cond_2

    cmpg-float v4, v2, v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_2
    iget v4, v3, Landroid/graphics/Rect;->left:I

    float-to-int v1, v1

    sub-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 7
    iget v4, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 8
    iget v1, v3, Landroid/graphics/Rect;->top:I

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 9
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 10
    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v3, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Le/a/c/c0/a0;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 12
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_3

    .line 13
    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_3
    return-void
.end method
