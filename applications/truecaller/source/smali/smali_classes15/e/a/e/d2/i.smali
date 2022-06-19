.class public Le/a/e/d2/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/e/d2/l;


# direct methods
.method public constructor <init>(Le/a/e/d2/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/d2/i;->a:Le/a/e/d2/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    .line 1
    iget-object p1, p0, Le/a/e/d2/i;->a:Le/a/e/d2/l;

    .line 2
    iget-object v0, p1, Le/a/e/d2/l;->e:[Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object v0, p1, Le/a/e/d2/l;->g:[Landroid/graphics/drawable/Drawable;

    .line 4
    array-length p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    aget-object v3, v0, v2

    .line 5
    iget-object v4, p0, Le/a/e/d2/i;->a:Le/a/e/d2/l;

    .line 6
    iget v5, v4, Le/a/e/d2/l;->b:I

    .line 7
    iget-object v6, v4, Le/a/e/d2/l;->i:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 8
    iget-object v6, v4, Le/a/e/d2/l;->i:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 9
    iget-object v4, v4, Le/a/e/d2/l;->i:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
