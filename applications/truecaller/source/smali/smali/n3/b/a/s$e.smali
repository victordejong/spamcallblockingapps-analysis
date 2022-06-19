.class public Ln3/b/a/s$e;
.super Ln3/b/e/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic b:Ln3/b/a/s;


# direct methods
.method public constructor <init>(Ln3/b/a/s;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/s$e;->b:Ln3/b/a/s;

    .line 2
    invoke-direct {p0, p2}, Ln3/b/e/h;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Ln3/b/a/s$e;->b:Ln3/b/a/s;

    iget-object v0, v0, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {v0}, Ln3/b/f/v;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/e/h;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Ln3/b/a/s$e;->b:Ln3/b/a/s;

    iget-boolean p3, p2, Ln3/b/a/s;->b:Z

    if-nez p3, :cond_0

    .line 3
    iget-object p2, p2, Ln3/b/a/s;->a:Ln3/b/f/v;

    invoke-interface {p2}, Ln3/b/f/v;->f()V

    .line 4
    iget-object p2, p0, Ln3/b/a/s$e;->b:Ln3/b/a/s;

    const/4 p3, 0x1

    iput-boolean p3, p2, Ln3/b/a/s;->b:Z

    :cond_0
    return p1
.end method
