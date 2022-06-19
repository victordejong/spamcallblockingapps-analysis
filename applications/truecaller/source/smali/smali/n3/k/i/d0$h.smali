.class public Ln3/k/i/d0$h;
.super Ln3/k/i/d0$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/i/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public o:Ln3/k/c/b;

.field public p:Ln3/k/c/b;

.field public q:Ln3/k/c/b;


# direct methods
.method public constructor <init>(Ln3/k/i/d0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/k/i/d0$g;-><init>(Ln3/k/i/d0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/k/i/d0$h;->o:Ln3/k/c/b;

    .line 3
    iput-object p1, p0, Ln3/k/i/d0$h;->p:Ln3/k/c/b;

    .line 4
    iput-object p1, p0, Ln3/k/i/d0$h;->q:Ln3/k/c/b;

    return-void
.end method


# virtual methods
.method public g()Ln3/k/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$h;->p:Ln3/k/c/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ln3/k/c/b;->c(Landroid/graphics/Insets;)Ln3/k/c/b;

    move-result-object v0

    iput-object v0, p0, Ln3/k/i/d0$h;->p:Ln3/k/c/b;

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/k/i/d0$h;->p:Ln3/k/c/b;

    return-object v0
.end method

.method public i()Ln3/k/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$h;->o:Ln3/k/c/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ln3/k/c/b;->c(Landroid/graphics/Insets;)Ln3/k/c/b;

    move-result-object v0

    iput-object v0, p0, Ln3/k/i/d0$h;->o:Ln3/k/c/b;

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/k/i/d0$h;->o:Ln3/k/c/b;

    return-object v0
.end method

.method public k()Ln3/k/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$h;->q:Ln3/k/c/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ln3/k/c/b;->c(Landroid/graphics/Insets;)Ln3/k/c/b;

    move-result-object v0

    iput-object v0, p0, Ln3/k/i/d0$h;->q:Ln3/k/c/b;

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/k/i/d0$h;->q:Ln3/k/c/b;

    return-object v0
.end method

.method public l(IIII)Ln3/k/i/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k/i/d0$e;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Ln3/k/i/d0;->k(Landroid/view/WindowInsets;)Ln3/k/i/d0;

    move-result-object p1

    return-object p1
.end method

.method public q(Ln3/k/c/b;)V
    .locals 0

    return-void
.end method
