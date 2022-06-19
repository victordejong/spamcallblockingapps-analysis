.class public final Ln3/b/e/i/d;
.super Ln3/b/e/i/k;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/i/m;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b/e/i/d$d;
    }
.end annotation


# static fields
.field public static final B:I


# instance fields
.field public A:Z

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/b/e/i/g;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/b/e/i/d$d;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final k:Landroid/view/View$OnAttachStateChangeListener;

.field public final l:Ln3/b/f/c0;

.field public m:I

.field public n:I

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Ln3/b/e/i/m$a;

.field public y:Landroid/view/ViewTreeObserver;

.field public z:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/R$layout;->abc_cascading_menu_item_layout:I

    sput v0, Ln3/b/e/i/d;->B:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/e/i/k;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/b/e/i/d;->h:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    .line 4
    new-instance v0, Ln3/b/e/i/d$a;

    invoke-direct {v0, p0}, Ln3/b/e/i/d$a;-><init>(Ln3/b/e/i/d;)V

    iput-object v0, p0, Ln3/b/e/i/d;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    new-instance v0, Ln3/b/e/i/d$b;

    invoke-direct {v0, p0}, Ln3/b/e/i/d$b;-><init>(Ln3/b/e/i/d;)V

    iput-object v0, p0, Ln3/b/e/i/d;->k:Landroid/view/View$OnAttachStateChangeListener;

    .line 6
    new-instance v0, Ln3/b/e/i/d$c;

    invoke-direct {v0, p0}, Ln3/b/e/i/d$c;-><init>(Ln3/b/e/i/d;)V

    iput-object v0, p0, Ln3/b/e/i/d;->l:Ln3/b/f/c0;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ln3/b/e/i/d;->m:I

    .line 8
    iput v0, p0, Ln3/b/e/i/d;->n:I

    .line 9
    iput-object p1, p0, Ln3/b/e/i/d;->b:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Ln3/b/e/i/d;->o:Landroid/view/View;

    .line 11
    iput p3, p0, Ln3/b/e/i/d;->d:I

    .line 12
    iput p4, p0, Ln3/b/e/i/d;->e:I

    .line 13
    iput-boolean p5, p0, Ln3/b/e/i/d;->f:Z

    .line 14
    iput-boolean v0, p0, Ln3/b/e/i/d;->v:Z

    .line 15
    sget-object p3, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    .line 17
    :goto_0
    iput v0, p0, Ln3/b/e/i/d;->q:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 20
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 21
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ln3/b/e/i/d;->c:I

    .line 22
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Ln3/b/e/i/d;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Ln3/b/e/i/g;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/b/e/i/d$d;

    .line 3
    iget-object v3, v3, Ln3/b/e/i/d$d;->b:Ln3/b/e/i/g;

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 4
    iget-object v3, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 5
    iget-object v3, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/b/e/i/d$d;

    .line 6
    iget-object v0, v0, Ln3/b/e/i/d$d;->b:Ln3/b/e/i/g;

    invoke-virtual {v0, v1}, Ln3/b/e/i/g;->c(Z)V

    .line 7
    :cond_3
    iget-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/b/e/i/d$d;

    .line 8
    iget-object v2, v0, Ln3/b/e/i/d$d;->b:Ln3/b/e/i/g;

    invoke-virtual {v2, p0}, Ln3/b/e/i/g;->u(Ln3/b/e/i/m;)V

    .line 9
    iget-boolean v2, p0, Ln3/b/e/i/d;->A:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, v0, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    .line 11
    iget-object v2, v2, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 12
    iget-object v2, v0, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    .line 13
    iget-object v2, v2, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 14
    :cond_4
    iget-object v0, v0, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    invoke-virtual {v0}, Ln3/b/f/b0;->dismiss()V

    .line 15
    iget-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_5

    .line 16
    iget-object v4, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/b/e/i/d$d;

    iget v4, v4, Ln3/b/e/i/d$d;->c:I

    iput v4, p0, Ln3/b/e/i/d;->q:I

    goto :goto_3

    .line 17
    :cond_5
    iget-object v4, p0, Ln3/b/e/i/d;->o:Landroid/view/View;

    .line 18
    sget-object v5, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v2

    .line 20
    :goto_2
    iput v4, p0, Ln3/b/e/i/d;->q:I

    :goto_3
    if-nez v0, :cond_a

    .line 21
    invoke-virtual {p0}, Ln3/b/e/i/d;->dismiss()V

    .line 22
    iget-object p2, p0, Ln3/b/e/i/d;->x:Ln3/b/e/i/m$a;

    if-eqz p2, :cond_7

    .line 23
    invoke-interface {p2, p1, v2}, Ln3/b/e/i/m$a;->a(Ln3/b/e/i/g;Z)V

    .line 24
    :cond_7
    iget-object p1, p0, Ln3/b/e/i/d;->y:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_9

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 26
    iget-object p1, p0, Ln3/b/e/i/d;->y:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Ln3/b/e/i/d;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 27
    :cond_8
    iput-object v3, p0, Ln3/b/e/i/d;->y:Landroid/view/ViewTreeObserver;

    .line 28
    :cond_9
    iget-object p1, p0, Ln3/b/e/i/d;->p:Landroid/view/View;

    iget-object p2, p0, Ln3/b/e/i/d;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 29
    iget-object p1, p0, Ln3/b/e/i/d;->z:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_4

    :cond_a
    if-eqz p2, :cond_b

    .line 30
    iget-object p1, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/b/e/i/d$d;

    .line 31
    iget-object p1, p1, Ln3/b/e/i/d$d;->b:Ln3/b/e/i/g;

    invoke-virtual {p1, v1}, Ln3/b/e/i/g;->c(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/b/e/i/d$d;

    .line 2
    iget-object v0, v0, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    .line 3
    iget-object v0, v0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Ln3/b/e/i/f;

    goto :goto_1

    .line 7
    :cond_0
    check-cast v0, Ln3/b/e/i/f;

    .line 8
    :goto_1
    invoke-virtual {v0}, Ln3/b/e/i/f;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    new-array v2, v0, [Ln3/b/e/i/d$d;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ln3/b/e/i/d$d;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget-object v2, v1, v0

    .line 5
    iget-object v3, v2, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    invoke-virtual {v3}, Ln3/b/f/b0;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, v2, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    invoke-virtual {v2}, Ln3/b/f/b0;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Landroid/widget/ListView;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Le/d/c/a/a;->F1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/b/e/i/d$d;

    .line 3
    iget-object v0, v0, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    .line 4
    iget-object v0, v0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    :goto_0
    return-object v0
.end method

.method public i(Ln3/b/e/i/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/e/i/d;->x:Ln3/b/e/i/m$a;

    return-void
.end method

.method public isShowing()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/b/e/i/d$d;

    iget-object v0, v0, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    invoke-virtual {v0}, Ln3/b/f/b0;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public j(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public k(Ln3/b/e/i/r;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/b/e/i/d$d;

    .line 2
    iget-object v3, v1, Ln3/b/e/i/d$d;->b:Ln3/b/e/i/g;

    if-ne p1, v3, :cond_0

    .line 3
    iget-object p1, v1, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    .line 4
    iget-object p1, p1, Ln3/b/f/b0;->c:Ln3/b/f/x;

    .line 5
    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    .line 6
    :cond_1
    invoke-virtual {p1}, Ln3/b/e/i/g;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Ln3/b/e/i/d;->b:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Ln3/b/e/i/g;->b(Ln3/b/e/i/m;Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Ln3/b/e/i/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Ln3/b/e/i/d;->w(Ln3/b/e/i/g;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Ln3/b/e/i/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_0
    iget-object v0, p0, Ln3/b/e/i/d;->x:Ln3/b/e/i/m$a;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0, p1}, Ln3/b/e/i/m$a;->b(Ln3/b/e/i/g;)Z

    :cond_3
    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public l(Ln3/b/e/i/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/i/d;->b:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Ln3/b/e/i/g;->b(Ln3/b/e/i/m;Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ln3/b/e/i/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Ln3/b/e/i/d;->w(Ln3/b/e/i/g;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/b/e/i/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/e/i/d;->o:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Ln3/b/e/i/d;->o:Landroid/view/View;

    .line 3
    iget v0, p0, Ln3/b/e/i/d;->m:I

    .line 4
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    .line 6
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 7
    iput p1, p0, Ln3/b/e/i/d;->n:I

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/b/e/i/d$d;

    .line 3
    iget-object v4, v3, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    invoke-virtual {v4}, Ln3/b/f/b0;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 4
    iget-object v0, v3, Ln3/b/e/i/d$d;->b:Ln3/b/e/i/g;

    invoke-virtual {v0, v1}, Ln3/b/e/i/g;->c(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/b/e/i/d;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ln3/b/e/i/d;->v:Z

    return-void
.end method

.method public q(I)V
    .locals 2

    .line 1
    iget v0, p0, Ln3/b/e/i/d;->m:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Ln3/b/e/i/d;->m:I

    .line 3
    iget-object v0, p0, Ln3/b/e/i/d;->o:Landroid/view/View;

    .line 4
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 6
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 7
    iput p1, p0, Ln3/b/e/i/d;->n:I

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/b/e/i/d;->r:Z

    .line 2
    iput p1, p0, Ln3/b/e/i/d;->t:I

    return-void
.end method

.method public s(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/e/i/d;->z:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/b/e/i/d;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/b/e/i/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/b/e/i/g;

    .line 3
    invoke-virtual {p0, v1}, Ln3/b/e/i/d;->w(Ln3/b/e/i/g;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/b/e/i/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Ln3/b/e/i/d;->o:Landroid/view/View;

    iput-object v0, p0, Ln3/b/e/i/d;->p:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 6
    iget-object v1, p0, Ln3/b/e/i/d;->y:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Ln3/b/e/i/d;->y:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Ln3/b/e/i/d;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9
    :cond_3
    iget-object v0, p0, Ln3/b/e/i/d;->p:Landroid/view/View;

    iget-object v1, p0, Ln3/b/e/i/d;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public t(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ln3/b/e/i/d;->w:Z

    return-void
.end method

.method public u(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/b/e/i/d;->s:Z

    .line 2
    iput p1, p0, Ln3/b/e/i/d;->u:I

    return-void
.end method

.method public final w(Ln3/b/e/i/g;)V
    .locals 14

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Ln3/b/e/i/d;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2
    new-instance v2, Ln3/b/e/i/f;

    iget-boolean v3, p0, Ln3/b/e/i/d;->f:Z

    sget v4, Ln3/b/e/i/d;->B:I

    invoke-direct {v2, p1, v1, v3, v4}, Ln3/b/e/i/f;-><init>(Ln3/b/e/i/g;Landroid/view/LayoutInflater;ZI)V

    .line 3
    invoke-virtual {p0}, Ln3/b/e/i/d;->isShowing()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-boolean v3, p0, Ln3/b/e/i/d;->v:Z

    if-eqz v3, :cond_0

    .line 4
    iput-boolean v4, v2, Ln3/b/e/i/f;->c:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ln3/b/e/i/d;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {p1}, Ln3/b/e/i/k;->v(Ln3/b/e/i/g;)Z

    move-result v3

    .line 7
    iput-boolean v3, v2, Ln3/b/e/i/f;->c:Z

    .line 8
    :cond_1
    :goto_0
    iget-object v3, p0, Ln3/b/e/i/d;->b:Landroid/content/Context;

    iget v5, p0, Ln3/b/e/i/d;->c:I

    const/4 v6, 0x0

    invoke-static {v2, v6, v3, v5}, Ln3/b/e/i/k;->n(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v3

    .line 9
    new-instance v5, Ln3/b/f/d0;

    iget-object v7, p0, Ln3/b/e/i/d;->b:Landroid/content/Context;

    iget v8, p0, Ln3/b/e/i/d;->d:I

    iget v9, p0, Ln3/b/e/i/d;->e:I

    invoke-direct {v5, v7, v6, v8, v9}, Ln3/b/f/d0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    iget-object v7, p0, Ln3/b/e/i/d;->l:Ln3/b/f/c0;

    .line 11
    iput-object v7, v5, Ln3/b/f/d0;->D:Ln3/b/f/c0;

    .line 12
    iput-object p0, v5, Ln3/b/f/b0;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 13
    iget-object v7, v5, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v7, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 14
    iget-object v7, p0, Ln3/b/e/i/d;->o:Landroid/view/View;

    .line 15
    iput-object v7, v5, Ln3/b/f/b0;->p:Landroid/view/View;

    .line 16
    iget v7, p0, Ln3/b/e/i/d;->n:I

    .line 17
    iput v7, v5, Ln3/b/f/b0;->l:I

    .line 18
    invoke-virtual {v5, v4}, Ln3/b/f/b0;->q(Z)V

    .line 19
    iget-object v7, v5, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 20
    invoke-virtual {v5, v2}, Ln3/b/f/b0;->m(Landroid/widget/ListAdapter;)V

    .line 21
    invoke-virtual {v5, v3}, Ln3/b/f/b0;->p(I)V

    .line 22
    iget v2, p0, Ln3/b/e/i/d;->n:I

    .line 23
    iput v2, v5, Ln3/b/f/b0;->l:I

    .line 24
    iget-object v2, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 25
    iget-object v2, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-static {v2, v4}, Le/d/c/a/a;->G1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/b/e/i/d$d;

    .line 26
    iget-object v7, v2, Ln3/b/e/i/d$d;->b:Ln3/b/e/i/g;

    .line 27
    invoke-virtual {v7}, Ln3/b/e/i/g;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    .line 28
    invoke-virtual {v7, v9}, Ln3/b/e/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 29
    invoke-interface {v10}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v11

    if-ne p1, v11, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move-object v10, v6

    :goto_2
    if-nez v10, :cond_4

    goto :goto_7

    .line 30
    :cond_4
    iget-object v6, v2, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    .line 31
    iget-object v6, v6, Ln3/b/f/b0;->c:Ln3/b/f/x;

    .line 32
    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    .line 33
    instance-of v8, v7, Landroid/widget/HeaderViewListAdapter;

    if-eqz v8, :cond_5

    .line 34
    check-cast v7, Landroid/widget/HeaderViewListAdapter;

    .line 35
    invoke-virtual {v7}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v8

    .line 36
    invoke-virtual {v7}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Ln3/b/e/i/f;

    goto :goto_3

    .line 37
    :cond_5
    check-cast v7, Ln3/b/e/i/f;

    const/4 v8, 0x0

    .line 38
    :goto_3
    invoke-virtual {v7}, Ln3/b/e/i/f;->getCount()I

    move-result v9

    const/4 v11, 0x0

    :goto_4
    const/4 v12, -0x1

    if-ge v11, v9, :cond_7

    .line 39
    invoke-virtual {v7, v11}, Ln3/b/e/i/f;->b(I)Ln3/b/e/i/i;

    move-result-object v13

    if-ne v10, v13, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    move v11, v12

    :goto_5
    if-ne v11, v12, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr v11, v8

    .line 40
    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v11, v7

    if-ltz v11, :cond_b

    .line 41
    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-lt v11, v7, :cond_9

    goto :goto_6

    .line 42
    :cond_9
    invoke-virtual {v6, v11}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :cond_b
    :goto_6
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_17

    const/16 v7, 0x1c

    if-gt v0, v7, :cond_c

    .line 43
    sget-object v7, Ln3/b/f/d0;->E:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_d

    .line 44
    :try_start_0
    iget-object v8, v5, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    new-array v9, v4, [Ljava/lang/Object;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 45
    :cond_c
    iget-object v7, v5, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    .line 46
    :catch_0
    :cond_d
    :goto_8
    iget-object v7, v5, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 47
    iget-object v7, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-static {v7, v4}, Le/d/c/a/a;->G1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/b/e/i/d$d;

    .line 48
    iget-object v7, v7, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    .line 49
    iget-object v7, v7, Ln3/b/f/b0;->c:Ln3/b/f/x;

    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 50
    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 51
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 52
    iget-object v10, p0, Ln3/b/e/i/d;->p:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 53
    iget v10, p0, Ln3/b/e/i/d;->q:I

    if-ne v10, v4, :cond_e

    const/4 v10, 0x0

    .line 54
    aget v8, v8, v10

    invoke-virtual {v7}, Landroid/widget/ListView;->getWidth()I

    move-result v7

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    .line 55
    iget v8, v9, Landroid/graphics/Rect;->right:I

    if-le v7, v8, :cond_f

    goto :goto_9

    :cond_e
    const/4 v7, 0x0

    .line 56
    aget v7, v8, v7

    sub-int/2addr v7, v3

    if-gez v7, :cond_10

    :cond_f
    move v10, v4

    goto :goto_9

    :cond_10
    const/4 v10, 0x0

    :goto_9
    if-ne v10, v4, :cond_11

    move v7, v4

    goto :goto_a

    :cond_11
    const/4 v7, 0x0

    .line 57
    :goto_a
    iput v10, p0, Ln3/b/e/i/d;->q:I

    const/16 v8, 0x1a

    const/4 v9, 0x5

    if-lt v0, v8, :cond_12

    .line 58
    iput-object v6, v5, Ln3/b/f/b0;->p:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_c

    :cond_12
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 59
    iget-object v10, p0, Ln3/b/e/i/d;->o:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v0, v0, [I

    .line 60
    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 61
    iget v10, p0, Ln3/b/e/i/d;->n:I

    and-int/lit8 v10, v10, 0x7

    if-ne v10, v9, :cond_13

    const/4 v10, 0x0

    .line 62
    aget v11, v8, v10

    iget-object v12, p0, Ln3/b/e/i/d;->o:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v11

    aput v12, v8, v10

    .line 63
    aget v11, v0, v10

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v11

    aput v12, v0, v10

    goto :goto_b

    :cond_13
    const/4 v10, 0x0

    .line 64
    :goto_b
    aget v11, v0, v10

    aget v10, v8, v10

    sub-int v10, v11, v10

    .line 65
    aget v0, v0, v4

    aget v8, v8, v4

    sub-int/2addr v0, v8

    move v8, v10

    .line 66
    :goto_c
    iget v10, p0, Ln3/b/e/i/d;->n:I

    and-int/2addr v10, v9

    if-ne v10, v9, :cond_15

    if-eqz v7, :cond_14

    goto :goto_d

    .line 67
    :cond_14
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_e

    :cond_15
    if-eqz v7, :cond_16

    .line 68
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    :goto_d
    add-int/2addr v8, v3

    goto :goto_f

    :cond_16
    :goto_e
    sub-int/2addr v8, v3

    .line 69
    :goto_f
    iput v8, v5, Ln3/b/f/b0;->f:I

    .line 70
    iput-boolean v4, v5, Ln3/b/f/b0;->k:Z

    .line 71
    iput-boolean v4, v5, Ln3/b/f/b0;->j:Z

    .line 72
    invoke-virtual {v5, v0}, Ln3/b/f/b0;->c(I)V

    goto :goto_11

    .line 73
    :cond_17
    iget-boolean v0, p0, Ln3/b/e/i/d;->r:Z

    if-eqz v0, :cond_18

    .line 74
    iget v0, p0, Ln3/b/e/i/d;->t:I

    .line 75
    iput v0, v5, Ln3/b/f/b0;->f:I

    .line 76
    :cond_18
    iget-boolean v0, p0, Ln3/b/e/i/d;->s:Z

    if-eqz v0, :cond_19

    .line 77
    iget v0, p0, Ln3/b/e/i/d;->u:I

    invoke-virtual {v5, v0}, Ln3/b/f/b0;->c(I)V

    .line 78
    :cond_19
    iget-object v0, p0, Ln3/b/e/i/k;->a:Landroid/graphics/Rect;

    if-eqz v0, :cond_1a

    .line 79
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_10

    :cond_1a
    const/4 v3, 0x0

    :goto_10
    iput-object v3, v5, Ln3/b/f/b0;->x:Landroid/graphics/Rect;

    .line 80
    :goto_11
    new-instance v0, Ln3/b/e/i/d$d;

    iget v3, p0, Ln3/b/e/i/d;->q:I

    invoke-direct {v0, v5, p1, v3}, Ln3/b/e/i/d$d;-><init>(Ln3/b/f/d0;Ln3/b/e/i/g;I)V

    .line 81
    iget-object v3, p0, Ln3/b/e/i/d;->i:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v5}, Ln3/b/f/b0;->show()V

    .line 83
    iget-object v0, v5, Ln3/b/f/b0;->c:Ln3/b/f/x;

    .line 84
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v2, :cond_1b

    .line 85
    iget-boolean v2, p0, Ln3/b/e/i/d;->w:Z

    if-eqz v2, :cond_1b

    .line 86
    iget-object v2, p1, Ln3/b/e/i/g;->m:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1b

    .line 87
    sget v2, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x1020016

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 89
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 90
    iget-object p1, p1, Ln3/b/e/i/g;->m:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 92
    invoke-virtual {v0, v1, p1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 93
    invoke-virtual {v5}, Ln3/b/f/b0;->show()V

    :cond_1b
    return-void
.end method
