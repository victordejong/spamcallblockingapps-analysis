.class public Ln3/b/a/o;
.super Ln3/k/i/b0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln3/b/a/k;


# direct methods
.method public constructor <init>(Ln3/b/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/o;->a:Ln3/b/a/k;

    invoke-direct {p0}, Ln3/k/i/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b/a/o;->a:Ln3/b/a/k;

    iget-object p1, p1, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 2
    iget-object p1, p0, Ln3/b/a/o;->a:Ln3/b/a/k;

    iget-object p1, p1, Ln3/b/a/k;->r:Ln3/k/i/z;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ln3/k/i/z;->d(Ln3/k/i/a0;)Ln3/k/i/z;

    .line 3
    iget-object p1, p0, Ln3/b/a/o;->a:Ln3/b/a/k;

    iput-object v0, p1, Ln3/b/a/k;->r:Ln3/k/i/z;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/b/a/o;->a:Ln3/b/a/k;

    iget-object p1, p1, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Ln3/b/a/o;->a:Ln3/b/a/k;

    iget-object p1, p1, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 3
    iget-object p1, p0, Ln3/b/a/o;->a:Ln3/b/a/k;

    iget-object p1, p1, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Ln3/b/a/o;->a:Ln3/b/a/k;

    iget-object p1, p1, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 5
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    return-void
.end method
