.class public Ln3/b/a/k$e;
.super Ln3/b/e/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic b:Ln3/b/a/k;


# direct methods
.method public constructor <init>(Ln3/b/a/k;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/k$e;->b:Ln3/b/a/k;

    .line 2
    invoke-direct {p0, p2}, Ln3/b/e/h;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 1
    new-instance v0, Ln3/b/e/e$a;

    iget-object v1, p0, Ln3/b/a/k$e;->b:Ln3/b/a/k;

    iget-object v1, v1, Ln3/b/a/k;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ln3/b/e/e$a;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 2
    iget-object p1, p0, Ln3/b/a/k$e;->b:Ln3/b/a/k;

    .line 3
    invoke-virtual {p1, v0}, Ln3/b/a/k;->B(Ln3/b/e/a$a;)Ln3/b/e/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ln3/b/e/e$a;->a(Ln3/b/e/a;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k$e;->b:Ln3/b/a/k;

    invoke-virtual {v0, p1}, Ln3/b/a/k;->J(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Ln3/b/a/k$e;->b:Ln3/b/a/k;

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Ln3/b/a/k;->T()V

    .line 5
    iget-object v4, v0, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4, v3, p1}, Ln3/b/a/a;->j(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    move p1, v2

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, v0, Ln3/b/a/k;->J:Ln3/b/a/k$j;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v2}, Ln3/b/a/k;->X(Ln3/b/a/k$j;ILandroid/view/KeyEvent;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object p1, v0, Ln3/b/a/k;->J:Ln3/b/a/k$j;

    if-eqz p1, :cond_0

    .line 10
    iput-boolean v2, p1, Ln3/b/a/k$j;->l:Z

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, v0, Ln3/b/a/k;->J:Ln3/b/a/k$j;

    if-nez v3, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v3, p1}, Ln3/b/a/k;->Y(Ln3/b/a/k$j;Landroid/view/KeyEvent;)Z

    .line 14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1, v2}, Ln3/b/a/k;->X(Ln3/b/a/k$j;ILandroid/view/KeyEvent;I)Z

    move-result p1

    .line 15
    iput-boolean v1, v3, Ln3/b/a/k$j;->k:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_1
    if-eqz p1, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public onContentChanged()V
    .locals 0

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 1
    instance-of v0, p2, Ln3/b/e/i/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 2
    iget-object p2, p0, Ln3/b/a/k$e;->b:Ln3/b/a/k;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p2}, Ln3/b/a/k;->T()V

    .line 5
    iget-object p1, p2, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Ln3/b/a/a;->c(Z)V

    :cond_0
    return v1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 2
    iget-object p2, p0, Ln3/b/a/k$e;->b:Ln3/b/a/k;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 4
    invoke-virtual {p2}, Ln3/b/a/k;->T()V

    .line 5
    iget-object p1, p2, Ln3/b/a/k;->h:Ln3/b/a/a;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Ln3/b/a/a;->c(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p2, p1}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object p1

    .line 8
    iget-boolean v1, p1, Ln3/b/a/k$j;->m:Z

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p2, p1, v0}, Ln3/b/a/k;->H(Ln3/b/a/k$j;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    instance-of v0, p3, Ln3/b/e/i/g;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Ln3/b/e/i/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v0, Ln3/b/e/i/g;->x:Z

    .line 3
    :cond_2
    iget-object v2, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_3

    .line 4
    iput-boolean v1, v0, Ln3/b/e/i/g;->x:Z

    :cond_3
    return p1
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/b/a/k$e;->b:Ln3/b/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln3/b/a/k;->R(I)Ln3/b/a/k$j;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ln3/b/a/k$j;->h:Ln3/b/e/i/g;

    if-eqz v0, :cond_0

    .line 3
    iget-object p2, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {p2, p1, v0, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    :goto_0
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/a/k$e;->b:Ln3/b/a/k;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Ln3/b/a/k$e;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
