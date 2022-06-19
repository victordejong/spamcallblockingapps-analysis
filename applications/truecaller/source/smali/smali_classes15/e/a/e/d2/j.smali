.class public Le/a/e/d2/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/e/d2/l;


# direct methods
.method public constructor <init>(Le/a/e/d2/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/d2/j;->a:Le/a/e/d2/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/d2/j;->a:Le/a/e/d2/l;

    .line 2
    iget-object v0, p1, Le/a/e/d2/l;->d:[Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object v0, p1, Le/a/e/d2/l;->g:[Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/e/d2/j;->a:Le/a/e/d2/l;

    .line 2
    iget-object v0, p1, Le/a/e/d2/l;->f:[Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object v0, p1, Le/a/e/d2/l;->g:[Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object p1, p1, Le/a/e/d2/l;->d:[Landroid/graphics/drawable/Drawable;

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 6
    iget-object v3, p0, Le/a/e/d2/j;->a:Le/a/e/d2/l;

    .line 7
    iget v4, v3, Le/a/e/d2/l;->a:I

    .line 8
    iget-object v5, v3, Le/a/e/d2/l;->i:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 9
    iget-object v5, v3, Le/a/e/d2/l;->i:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10
    iget-object v3, v3, Le/a/e/d2/l;->i:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
