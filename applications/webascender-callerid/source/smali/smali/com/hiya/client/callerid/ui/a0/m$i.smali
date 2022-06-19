.class final Lcom/hiya/client/callerid/ui/a0/m$i;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/m;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/a0/m;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/m;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/a0/m$i;->invoke()V

    sget-object v0, Lkotlin/r;->a:Lkotlin/r;

    return-object v0
.end method

.method public final invoke()V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleY"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v2}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v2

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleX"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v3}, Lcom/hiya/client/callerid/ui/a0/m;->c(Lcom/hiya/client/callerid/ui/a0/m;)Landroid/view/View;

    move-result-object v3

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    const-string v5, "alpha"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 7
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v10, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x96

    .line 9
    invoke-virtual {v10, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10
    new-instance v11, Lcom/hiya/client/callerid/ui/a0/m$i$a;

    move-object v4, v11

    move-object v5, v10

    move-object v6, p0

    move-object v7, v2

    move-object v8, v0

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/hiya/client/callerid/ui/a0/m$i$a;-><init>(Landroid/animation/AnimatorSet;Lcom/hiya/client/callerid/ui/a0/m$i;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    aput-object v3, v4, v1

    .line 11
    invoke-virtual {v10, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 12
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/a0/m$i;->f:Lcom/hiya/client/callerid/ui/a0/m;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/a0/m;->f(Lcom/hiya/client/callerid/ui/a0/m;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method
