.class public abstract Lcom/hiya/client/callerid/ui/a0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private f:Landroid/view/View;

.field private g:Z

.field private final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/p;->h:Landroid/content/Context;

    return-void
.end method

.method private final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/p;->h:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/WindowManager;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->d()I

    move-result v2

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    const/16 v1, 0x7f6

    const/16 v4, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v1, 0x7da

    const/16 v4, 0x7da

    :goto_0
    const v5, 0x14c0028

    .line 4
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 5
    invoke-virtual {p0, v7}, Lcom/hiya/client/callerid/ui/a0/p;->g(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/p;->h:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->c()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/hiya/client/callerid/ui/a0/p;->f:Landroid/view/View;

    .line 7
    invoke-interface {v0, v1, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/p;->h()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/p;->g:Z

    return-void

    .line 10
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/p;->h:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/WindowManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/p;->f:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unable to remove overlay."

    .line 3
    invoke-static {p0, v0, v3, v2}, Lcom/hiya/client/support/logging/d;->b(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/hiya/client/callerid/ui/a0/p;->g:Z

    return-void
.end method


# virtual methods
.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/p;->h:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract c()I
.end method

.method protected final d()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/p;->h:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/WindowManager;

    .line 2
    invoke-static {v0}, Lcom/hiya/client/callerid/ui/e0/k;->d(Landroid/view/WindowManager;)Landroid/graphics/Point;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    const-string v3, "windowManager.defaultDisplay"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    :goto_1
    return v0

    .line 6
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final e()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/p;->f:Landroid/view/View;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/p;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/p;->i()V

    return-void
.end method

.method protected abstract g(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method protected abstract h()V
.end method

.method public j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/a0/p;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/hiya/client/callerid/ui/a0/p;->a()V

    return-void
.end method

.method public final k(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    const-string v0, "layoutParams"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/p;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/p;->h:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/WindowManager;

    .line 3
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/a0/p;->f:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 4
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
