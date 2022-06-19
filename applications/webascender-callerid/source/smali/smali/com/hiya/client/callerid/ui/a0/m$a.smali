.class final Lcom/hiya/client/callerid/ui/a0/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/m;->h(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/m;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/m;Z)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m$a;->f:Lcom/hiya/client/callerid/ui/a0/m;

    iput-boolean p2, p0, Lcom/hiya/client/callerid/ui/a0/m$a;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$a;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$a;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$a;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "scaleY"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/m$a;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v3}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v3

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleX"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/hiya/client/callerid/ui/a0/m$a;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v4}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v4

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    const-string v6, "alpha"

    invoke-static {v4, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 6
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    new-instance v6, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v6}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v0, v6, v1

    aput-object v4, v6, v2

    .line 8
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x12c

    .line 9
    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 11
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$a;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/hiya/client/callerid/ui/p;->l0:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;

    iget-boolean v1, p0, Lcom/hiya/client/callerid/ui/a0/m$a;->g:Z

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/overlay/RippleLayout;->setEnableRipple(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
