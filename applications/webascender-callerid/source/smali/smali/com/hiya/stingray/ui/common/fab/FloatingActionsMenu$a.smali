.class Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;
.super Lcom/hiya/stingray/ui/common/fab/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->p(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic u:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;->u:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-direct {p0, p2}, Lcom/hiya/stingray/ui/common/fab/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/fab/a;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;->u:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {v1, v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->h(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;)Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$f;

    .line 3
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 4
    fill-array-data v3, :array_0

    const-string v4, "rotation"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v2, v2, [F

    .line 5
    fill-array-data v2, :array_1

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6
    invoke-virtual {v3, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;->u:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {v1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->i(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 9
    iget-object v1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;->u:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {v1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->j(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x43070000    # 135.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43070000    # 135.0f
    .end array-data
.end method

.method n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;->u:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->a(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/a;->t:I

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;->u:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->b(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->h:I

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;->u:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->f(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->i:I

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$a;->u:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {v0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->g(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->s:Z

    .line 5
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/fab/FloatingActionButton;->n()V

    return-void
.end method
