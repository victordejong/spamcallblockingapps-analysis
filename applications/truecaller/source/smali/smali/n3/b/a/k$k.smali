.class public final Ln3/b/a/k$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/i/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/a/k;


# direct methods
.method public constructor <init>(Ln3/b/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/k$k;->a:Ln3/b/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/b/e/i/g;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ln3/b/e/i/g;->k()Ln3/b/e/i/g;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Ln3/b/a/k$k;->a:Ln3/b/a/k;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Ln3/b/a/k;->O(Landroid/view/Menu;)Ln3/b/a/k$j;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 3
    iget-object p2, p0, Ln3/b/a/k$k;->a:Ln3/b/a/k;

    iget v2, p1, Ln3/b/a/k$j;->a:I

    invoke-virtual {p2, v2, p1, v0}, Ln3/b/a/k;->F(ILn3/b/a/k$j;Landroid/view/Menu;)V

    .line 4
    iget-object p2, p0, Ln3/b/a/k$k;->a:Ln3/b/a/k;

    invoke-virtual {p2, p1, v1}, Ln3/b/a/k;->H(Ln3/b/a/k$j;Z)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Ln3/b/a/k$k;->a:Ln3/b/a/k;

    invoke-virtual {v0, p1, p2}, Ln3/b/a/k;->H(Ln3/b/a/k$j;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b(Ln3/b/e/i/g;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ln3/b/e/i/g;->k()Ln3/b/e/i/g;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ln3/b/a/k$k;->a:Ln3/b/a/k;

    iget-boolean v1, v0, Ln3/b/a/k;->y:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/a/k;->S()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Ln3/b/a/k$k;->a:Ln3/b/a/k;

    iget-boolean v1, v1, Ln3/b/a/k;->O:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
