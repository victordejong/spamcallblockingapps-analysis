.class public Ln3/k/i/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public a:Ln3/k/i/d0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Ln3/k/i/n;


# direct methods
.method public constructor <init>(Landroid/view/View;Ln3/k/i/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/i/x;->b:Landroid/view/View;

    iput-object p2, p0, Ln3/k/i/x;->c:Ln3/k/i/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/k/i/x;->a:Ln3/k/i/d0;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 1
    invoke-static {p2, p1}, Ln3/k/i/d0;->l(Landroid/view/WindowInsets;Landroid/view/View;)Ln3/k/i/d0;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v3, p0, Ln3/k/i/x;->b:Landroid/view/View;

    .line 4
    sget v4, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v4, v3, p2}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 7
    :cond_0
    iget-object p2, p0, Ln3/k/i/x;->a:Ln3/k/i/d0;

    invoke-virtual {v0, p2}, Ln3/k/i/d0;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Ln3/k/i/x;->c:Ln3/k/i/n;

    invoke-interface {p2, p1, v0}, Ln3/k/i/n;->b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ln3/k/i/d0;->j()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    iput-object v0, p0, Ln3/k/i/x;->a:Ln3/k/i/d0;

    .line 11
    iget-object p2, p0, Ln3/k/i/x;->c:Ln3/k/i/n;

    invoke-interface {p2, p1, v0}, Ln3/k/i/n;->b(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;

    move-result-object p2

    if-lt v1, v2, :cond_2

    .line 12
    invoke-virtual {p2}, Ln3/k/i/d0;->j()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 15
    invoke-virtual {p2}, Ln3/k/i/d0;->j()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
