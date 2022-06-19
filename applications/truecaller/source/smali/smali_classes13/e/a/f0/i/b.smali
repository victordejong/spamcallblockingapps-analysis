.class public final Le/a/f0/i/b;
.super Ln3/b0/a/i;
.source "SourceFile"


# static fields
.field public static final i:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Ljava/lang/Integer;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Landroid/graphics/Rect;

.field public final f:I

.field public final g:Landroid/graphics/drawable/Drawable;

.field public final h:Ls1/z/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/p<",
            "Ljava/lang/Integer;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/a/f0/i/b$a;->b:Le/a/f0/i/b$a;

    sput-object v0, Le/a/f0/i/b;->i:Ls1/z/b/p;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;Ls1/z/b/p;I)V
    .locals 0

    and-int/lit8 p4, p5, 0x8

    if-eqz p4, :cond_0

    .line 1
    sget-object p4, Le/a/f0/i/b;->i:Ls1/z/b/p;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const-string p5, "context"

    .line 2
    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "divider"

    invoke-static {p3, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "itemDividerPredicate"

    invoke-static {p4, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Ln3/b0/a/i;-><init>(Landroid/content/Context;I)V

    iput p2, p0, Le/a/f0/i/b;->f:I

    iput-object p3, p0, Le/a/f0/i/b;->g:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Le/a/f0/i/b;->h:Ls1/z/b/p;

    .line 4
    invoke-virtual {p0, p3}, Ln3/b0/a/i;->d(Landroid/graphics/drawable/Drawable;)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Le/a/f0/i/b;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 7

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 2
    iget-object p3, p0, Ln3/b0/a/i;->a:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget p3, p0, Le/a/f0/i/b;->f:I

    const-string v0, "child"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    .line 7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 8
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 10
    invoke-virtual {p1, p3, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    move p3, v1

    .line 12
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_3

    .line 13
    iget-object v4, p0, Le/a/f0/i/b;->h:Ls1/z/b/p;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 15
    iget-object v5, p0, Le/a/f0/i/b;->e:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 16
    iget-object v5, p0, Le/a/f0/i/b;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Le/q/f/a/d/a;->J2(F)I

    move-result v4

    add-int/2addr v4, v5

    .line 17
    iget-object v5, p0, Le/a/f0/i/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v4, v5

    .line 18
    iget-object v6, p0, Le/a/f0/i/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p3, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    iget-object v4, p0, Le/a/f0/i/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 21
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 22
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 23
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 24
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 25
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 26
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 27
    invoke-virtual {p1, v3, p3, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2

    .line 28
    :cond_5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    move p3, v1

    .line 29
    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_3
    if-ge v1, v3, :cond_6

    .line 30
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 31
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v5

    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    iget-object v6, p0, Le/a/f0/i/b;->e:Landroid/graphics/Rect;

    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView$o;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 32
    iget-object v5, p0, Le/a/f0/i/b;->e:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Le/q/f/a/d/a;->J2(F)I

    move-result v4

    add-int/2addr v4, v5

    .line 33
    iget-object v5, p0, Le/a/f0/i/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int v5, v4, v5

    .line 34
    iget-object v6, p0, Le/a/f0/i/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5, p3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 35
    iget-object v4, p0, Le/a/f0/i/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 36
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_4
    return-void
.end method
