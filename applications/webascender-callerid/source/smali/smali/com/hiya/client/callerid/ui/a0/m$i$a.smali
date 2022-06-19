.class public final Lcom/hiya/client/callerid/ui/a0/m$i$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/m$i;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/AnimatorSet;

.field final synthetic b:Lcom/hiya/client/callerid/ui/a0/m$i;


# direct methods
.method constructor <init>(Landroid/animation/AnimatorSet;Lcom/hiya/client/callerid/ui/a0/m$i;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m$i$a;->a:Landroid/animation/AnimatorSet;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/m$i$a;->b:Lcom/hiya/client/callerid/ui/a0/m$i;

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m$i$a;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m$i$a;->b:Lcom/hiya/client/callerid/ui/a0/m$i;

    iget-object p1, p1, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/a0/m;->b(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m$i$a;->b:Lcom/hiya/client/callerid/ui/a0/m$i;

    iget-object p1, p1, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/a0/m;->d(Lcom/hiya/client/callerid/ui/a0/m;)Lcom/hiya/client/callerid/ui/a0/r;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$i$a;->b:Lcom/hiya/client/callerid/ui/a0/m$i;

    iget-object v0, v0, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->e(Lcom/hiya/client/callerid/ui/a0/m;)Z

    move-result v0

    .line 5
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/m$i$a;->b:Lcom/hiya/client/callerid/ui/a0/m$i;

    iget-object v3, v3, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v3}, Lcom/hiya/client/callerid/ui/a0/m;->b(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/hiya/client/callerid/ui/a0/r;->d(ZLandroid/graphics/Point;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m$i$a;->b:Lcom/hiya/client/callerid/ui/a0/m$i;

    iget-object p1, p1, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/a0/m;->f(Lcom/hiya/client/callerid/ui/a0/m;)V

    .line 9
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m$i$a;->b:Lcom/hiya/client/callerid/ui/a0/m$i;

    iget-object p1, p1, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
