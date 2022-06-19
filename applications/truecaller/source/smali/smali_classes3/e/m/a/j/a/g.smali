.class public final Le/m/a/j/a/g;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Le/m/a/j/a/c$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/j/a/g$a;,
        Le/m/a/j/a/g$b;
    }
.end annotation


# static fields
.field public static final synthetic m:I


# instance fields
.field public final a:Le/m/a/j/a/g$a;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/j/a/g$b;

.field public d:Le/m/a/j/a/h/c;

.field public e:Le/m/a/j/a/h/l;

.field public f:Landroid/view/View;

.field public g:Le/m/a/j/a/h/h;

.field public h:Le/m/a/j/a/c$c;

.field public i:Landroid/os/Bundle;

.field public j:Le/m/a/j/a/c$a;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILe/m/a/j/a/g$b;)V
    .locals 0

    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Ln3/g0/y;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "listener cannot be null"

    invoke-static {p4, p2}, Ln3/g0/y;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Le/m/a/j/a/g;->c:Le/m/a/j/a/g$b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_0

    const/high16 p2, -0x1000000

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Le/m/a/j/a/g;->setClipToPadding(Z)V

    new-instance p3, Le/m/a/j/a/h/h;

    invoke-direct {p3, p1}, Le/m/a/j/a/h/h;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Le/m/a/j/a/g;->g:Le/m/a/j/a/h/h;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->requestTransparentRegion(Landroid/view/View;)V

    iget-object p1, p0, Le/m/a/j/a/g;->g:Le/m/a/j/a/h/h;

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/j/a/g;->a(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Le/m/a/j/a/g;->b:Ljava/util/Set;

    new-instance p1, Le/m/a/j/a/g$a;

    invoke-direct {p1, p0, p2}, Le/m/a/j/a/g$a;-><init>(Le/m/a/j/a/g;B)V

    iput-object p1, p0, Le/m/a/j/a/g;->a:Le/m/a/j/a/g$a;

    return-void
.end method

.method public static c(Le/m/a/j/a/g;Landroid/app/Activity;)V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Le/m/a/j/a/h/a;->a:Le/m/a/j/a/h/a;

    .line 2
    iget-object v1, p0, Le/m/a/j/a/g;->d:Le/m/a/j/a/h/c;

    iget-boolean v2, p0, Le/m/a/j/a/g;->k:Z

    invoke-virtual {v0, p1, v1, v2}, Le/m/a/j/a/h/a;->b(Landroid/app/Activity;Le/m/a/j/a/h/c;Z)Le/m/a/j/a/h/e;

    move-result-object p1
    :try_end_0
    .catch Le/m/a/j/a/h/p$a; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v0, Le/m/a/j/a/h/l;

    iget-object v1, p0, Le/m/a/j/a/g;->d:Le/m/a/j/a/h/c;

    invoke-direct {v0, v1, p1}, Le/m/a/j/a/h/l;-><init>(Le/m/a/j/a/h/c;Le/m/a/j/a/h/e;)V

    iput-object v0, p0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    .line 3
    :try_start_1
    iget-object p1, v0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {p1}, Le/m/a/j/a/h/e;->N()Le/m/a/j/a/h/n;

    move-result-object p1

    invoke-static {p1}, Le/m/a/j/a/h/o;->m1(Le/m/a/j/a/h/n;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4
    iput-object p1, p0, Le/m/a/j/a/g;->f:Landroid/view/View;

    .line 5
    invoke-virtual {p0, p1}, Le/m/a/j/a/g;->a(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Le/m/a/j/a/g;->g:Le/m/a/j/a/h/h;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Le/m/a/j/a/g;->c:Le/m/a/j/a/g$b;

    invoke-interface {p1, p0}, Le/m/a/j/a/g$b;->a(Le/m/a/j/a/g;)V

    iget-object p1, p0, Le/m/a/j/a/g;->j:Le/m/a/j/a/c$a;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iget-object v0, p0, Le/m/a/j/a/g;->i:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    iget-object p1, p1, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {p1, v0}, Le/m/a/j/a/h/e;->f(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 8
    iput-object v1, p0, Le/m/a/j/a/g;->i:Landroid/os/Bundle;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Le/m/a/j/a/h/j;

    invoke-direct {p1, p0}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw p1

    .line 10
    :cond_0
    :goto_0
    iget-object v0, p0, Le/m/a/j/a/g;->j:Le/m/a/j/a/c$a;

    iget-object v2, p0, Le/m/a/j/a/g;->h:Le/m/a/j/a/c$c;

    iget-object v3, p0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    invoke-interface {v0, v2, v3, p1}, Le/m/a/j/a/c$a;->k1(Le/m/a/j/a/c$c;Le/m/a/j/a/c;Z)V

    iput-object v1, p0, Le/m/a/j/a/g;->j:Le/m/a/j/a/c$a;

    :cond_1
    return-void

    :catch_1
    move-exception p0

    .line 11
    new-instance p1, Le/m/a/j/a/h/j;

    invoke-direct {p1, p0}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw p1

    .line 12
    :catch_2
    sget-object p1, Le/m/a/j/a/b;->b:Le/m/a/j/a/b;

    invoke-virtual {p0, p1}, Le/m/a/j/a/g;->b(Le/m/a/j/a/b;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Le/m/a/j/a/g;->g:Le/m/a/j/a/h/h;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/j/a/g;->f:Landroid/view/View;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No views can be added on top of the player"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addFocusables(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Le/m/a/j/a/g;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Le/m/a/j/a/g;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, v0, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Le/m/a/j/a/g;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Le/m/a/j/a/g;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/m/a/j/a/g;->a(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Le/m/a/j/a/g;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p0, p1}, Le/m/a/j/a/g;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/m/a/j/a/g;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Le/m/a/j/a/g;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Le/m/a/j/a/b;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    iget-object v1, p0, Le/m/a/j/a/g;->g:Le/m/a/j/a/h/h;

    .line 1
    iget-object v2, v1, Le/m/a/j/a/h/h;->a:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, v1, Le/m/a/j/a/h/h;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v1, p0, Le/m/a/j/a/g;->j:Le/m/a/j/a/c$a;

    if-eqz v1, :cond_0

    iget-object v2, p0, Le/m/a/j/a/g;->h:Le/m/a/j/a/c$c;

    invoke-interface {v1, v2, p1}, Le/m/a/j/a/c$a;->G1(Le/m/a/j/a/c$c;Le/m/a/j/a/b;)V

    iput-object v0, p0, Le/m/a/j/a/g;->j:Le/m/a/j/a/c$a;

    :cond_0
    return-void
.end method

.method public final clearChildFocus(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v0, v3, p1}, Le/m/a/j/a/h/e;->Z0(ILandroid/view/KeyEvent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Le/m/a/j/a/h/j;

    invoke-direct {v0, p1}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    iget-object v0, v0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v0, v3, p1}, Le/m/a/j/a/h/e;->u(ILandroid/view/KeyEvent;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_4

    .line 6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2

    :catch_1
    move-exception p1

    .line 7
    new-instance v0, Le/m/a/j/a/h/j;

    invoke-direct {v0, p1}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v0

    .line 8
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final focusableViewAvailable(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    iget-object v0, p0, Le/m/a/j/a/g;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Le/m/a/j/a/g;->a:Le/m/a/j/a/g$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Le/m/a/j/a/g;->e:Le/m/a/j/a/h/l;

    if-eqz v0, :cond_0

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v0, Le/m/a/j/a/h/l;->b:Le/m/a/j/a/h/e;

    invoke-interface {v0, p1}, Le/m/a/j/a/h/e;->O(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Le/m/a/j/a/h/j;

    invoke-direct {v0, p1}, Le/m/a/j/a/h/j;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Le/m/a/j/a/g;->a:Le/m/a/j/a/g$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-virtual {v0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    iget-object p1, p0, Le/m/a/j/a/g;->b:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setClipToPadding(Z)V
    .locals 0

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    return-void
.end method
