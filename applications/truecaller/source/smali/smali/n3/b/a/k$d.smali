.class public Ln3/b/a/k$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ln3/b/e/a$a;

.field public final synthetic b:Ln3/b/a/k;


# direct methods
.method public constructor <init>(Ln3/b/a/k;Ln3/b/e/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/k$d;->b:Ln3/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln3/b/a/k$d;->a:Ln3/b/e/a$a;

    return-void
.end method


# virtual methods
.method public c9(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k$d;->a:Ln3/b/e/a$a;

    invoke-interface {v0, p1, p2}, Ln3/b/e/a$a;->c9(Ln3/b/e/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public gi(Ln3/b/e/a;Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/k$d;->b:Ln3/b/a/k;

    iget-object v0, v0, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    .line 2
    sget-object v1, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 4
    iget-object v0, p0, Ln3/b/a/k$d;->a:Ln3/b/e/a$a;

    invoke-interface {v0, p1, p2}, Ln3/b/e/a$a;->gi(Ln3/b/e/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public sd(Ln3/b/e/a;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k$d;->a:Ln3/b/e/a$a;

    invoke-interface {v0, p1, p2}, Ln3/b/e/a$a;->sd(Ln3/b/e/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public zn(Ln3/b/e/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/a/k$d;->a:Ln3/b/e/a$a;

    invoke-interface {v0, p1}, Ln3/b/e/a$a;->zn(Ln3/b/e/a;)V

    .line 2
    iget-object p1, p0, Ln3/b/a/k$d;->b:Ln3/b/a/k;

    iget-object v0, p1, Ln3/b/a/k;->p:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Ln3/b/a/k;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ln3/b/a/k$d;->b:Ln3/b/a/k;

    iget-object v0, v0, Ln3/b/a/k;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Ln3/b/a/k$d;->b:Ln3/b/a/k;

    iget-object v0, p1, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ln3/b/a/k;->L()V

    .line 6
    iget-object p1, p0, Ln3/b/a/k$d;->b:Ln3/b/a/k;

    iget-object v0, p1, Ln3/b/a/k;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Ln3/k/i/s;->b(Landroid/view/View;)Ln3/k/i/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/k/i/z;->a(F)Ln3/k/i/z;

    iput-object v0, p1, Ln3/b/a/k;->r:Ln3/k/i/z;

    .line 7
    iget-object p1, p0, Ln3/b/a/k$d;->b:Ln3/b/a/k;

    iget-object p1, p1, Ln3/b/a/k;->r:Ln3/k/i/z;

    new-instance v0, Ln3/b/a/k$d$a;

    invoke-direct {v0, p0}, Ln3/b/a/k$d$a;-><init>(Ln3/b/a/k$d;)V

    .line 8
    iget-object v1, p1, Ln3/k/i/z;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v1, v0}, Ln3/k/i/z;->e(Landroid/view/View;Ln3/k/i/a0;)V

    .line 10
    :cond_1
    iget-object p1, p0, Ln3/b/a/k$d;->b:Ln3/b/a/k;

    iget-object v0, p1, Ln3/b/a/k;->g:Ln3/b/a/i;

    if-eqz v0, :cond_2

    .line 11
    iget-object p1, p1, Ln3/b/a/k;->n:Ln3/b/e/a;

    invoke-interface {v0, p1}, Ln3/b/a/i;->onSupportActionModeFinished(Ln3/b/e/a;)V

    .line 12
    :cond_2
    iget-object p1, p0, Ln3/b/a/k$d;->b:Ln3/b/a/k;

    const/4 v0, 0x0

    iput-object v0, p1, Ln3/b/a/k;->n:Ln3/b/e/a;

    .line 13
    iget-object p1, p1, Ln3/b/a/k;->t:Landroid/view/ViewGroup;

    .line 14
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method
