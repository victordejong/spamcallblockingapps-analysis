.class public Ln3/k/i/d0$f;
.super Ln3/k/i/d0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/i/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public n:Ln3/k/c/b;


# direct methods
.method public constructor <init>(Ln3/k/i/d0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/k/i/d0$e;-><init>(Ln3/k/i/d0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/k/i/d0$f;->n:Ln3/k/c/b;

    return-void
.end method


# virtual methods
.method public b()Ln3/k/i/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ln3/k/i/d0;->k(Landroid/view/WindowInsets;)Ln3/k/i/d0;

    move-result-object v0

    return-object v0
.end method

.method public c()Ln3/k/i/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ln3/k/i/d0;->k(Landroid/view/WindowInsets;)Ln3/k/i/d0;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ln3/k/c/b;
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$f;->n:Ln3/k/c/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    .line 6
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 7
    invoke-static {v0, v1, v2, v3}, Ln3/k/c/b;->b(IIII)Ln3/k/c/b;

    move-result-object v0

    iput-object v0, p0, Ln3/k/i/d0$f;->n:Ln3/k/c/b;

    .line 8
    :cond_0
    iget-object v0, p0, Ln3/k/i/d0$f;->n:Ln3/k/c/b;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public q(Ln3/k/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/i/d0$f;->n:Ln3/k/c/b;

    return-void
.end method
