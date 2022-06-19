.class public Ln3/b/f/d0$a;
.super Ln3/b/f/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/f/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final n:I

.field public final o:I

.field public p:Ln3/b/f/c0;

.field public q:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/b/f/x;-><init>(Landroid/content/Context;Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/16 v0, 0x15

    const/16 v1, 0x16

    if-ne p2, p1, :cond_0

    .line 5
    iput v0, p0, Ln3/b/f/d0$a;->n:I

    .line 6
    iput v1, p0, Ln3/b/f/d0$a;->o:I

    goto :goto_0

    .line 7
    :cond_0
    iput v1, p0, Ln3/b/f/d0$a;->n:I

    .line 8
    iput v0, p0, Ln3/b/f/d0$a;->o:I

    :goto_0
    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b/f/d0$a;->p:Ln3/b/f/c0;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 5
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Ln3/b/e/i/f;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    check-cast v0, Ln3/b/e/i/f;

    :goto_0
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    sub-int/2addr v3, v1

    if-ltz v3, :cond_1

    .line 10
    invoke-virtual {v0}, Ln3/b/e/i/f;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 11
    invoke-virtual {v0, v3}, Ln3/b/e/i/f;->b(I)Ln3/b/e/i/i;

    move-result-object v2

    .line 12
    :cond_1
    iget-object v1, p0, Ln3/b/f/d0$a;->q:Landroid/view/MenuItem;

    if-eq v1, v2, :cond_3

    .line 13
    iget-object v0, v0, Ln3/b/e/i/f;->a:Ln3/b/e/i/g;

    if-eqz v1, :cond_2

    .line 14
    iget-object v3, p0, Ln3/b/f/d0$a;->p:Ln3/b/f/c0;

    invoke-interface {v3, v0, v1}, Ln3/b/f/c0;->g(Ln3/b/e/i/g;Landroid/view/MenuItem;)V

    .line 15
    :cond_2
    iput-object v2, p0, Ln3/b/f/d0$a;->q:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    .line 16
    iget-object v1, p0, Ln3/b/f/d0$a;->p:Ln3/b/f/c0;

    invoke-interface {v1, v0, v2}, Ln3/b/f/c0;->a(Ln3/b/e/i/g;Landroid/view/MenuItem;)V

    .line 17
    :cond_3
    invoke-super {p0, p1}, Ln3/b/f/x;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget v2, p0, Ln3/b/f/d0$a;->n:I

    if-ne p1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Ln3/b/e/i/i;

    move-result-object p1

    invoke-virtual {p1}, Ln3/b/e/i/i;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v2

    .line 6
    invoke-virtual {p0, v0, p1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_3

    .line 7
    iget v0, p0, Ln3/b/f/d0$a;->o:I

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 10
    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz p2, :cond_2

    .line 11
    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    .line 12
    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Ln3/b/e/i/f;

    goto :goto_0

    .line 13
    :cond_2
    check-cast p1, Ln3/b/e/i/f;

    .line 14
    :goto_0
    iget-object p1, p1, Ln3/b/e/i/f;->a:Ln3/b/e/i/g;

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Ln3/b/e/i/g;->c(Z)V

    return v1

    .line 16
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setHoverListener(Ln3/b/f/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/f/d0$a;->p:Ln3/b/f/c0;

    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/b/f/x;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
