.class public Ln3/b/f/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/f/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/f/b0;


# direct methods
.method public constructor <init>(Ln3/b/f/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/f/b0$c;->a:Ln3/b/f/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p2, p0, Ln3/b/f/b0$c;->a:Ln3/b/f/b0;

    .line 2
    iget-object p2, p2, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Ln3/b/f/b0$c;->a:Ln3/b/f/b0;

    iget-object p1, p1, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Ln3/b/f/b0$c;->a:Ln3/b/f/b0;

    iget-object p2, p1, Ln3/b/f/b0;->v:Landroid/os/Handler;

    iget-object p1, p1, Ln3/b/f/b0;->r:Ln3/b/f/b0$e;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Ln3/b/f/b0$c;->a:Ln3/b/f/b0;

    iget-object p1, p1, Ln3/b/f/b0;->r:Ln3/b/f/b0$e;

    invoke-virtual {p1}, Ln3/b/f/b0$e;->run()V

    :cond_1
    return-void
.end method
