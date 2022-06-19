.class Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/animation/ObjectAnimator;

.field private b:Landroid/animation/ObjectAnimator;

.field private c:Landroid/animation/ObjectAnimator;

.field private d:Landroid/animation/ObjectAnimator;

.field private e:Z

.field final synthetic f:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->f:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a:Landroid/animation/ObjectAnimator;

    .line 4
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->b:Landroid/animation/ObjectAnimator;

    .line 5
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->c:Landroid/animation/ObjectAnimator;

    .line 6
    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->d:Landroid/animation/ObjectAnimator;

    .line 7
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->k()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->b:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->c()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->c:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->d:Landroid/animation/ObjectAnimator;

    invoke-static {}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->d()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->d:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 12
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->d:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 13
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->b:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 14
    iget-object p2, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->b:Landroid/animation/ObjectAnimator;

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 15
    invoke-static {p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->e(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->c:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 17
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->c:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 19
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a:Landroid/animation/ObjectAnimator;

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->c:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic b(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private c(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d$a;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d$a;-><init>(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 5
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->e:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->c(Landroid/animation/Animator;Landroid/view/View;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->c:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->c(Landroid/animation/Animator;Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->f:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->j(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->f:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->j(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->c:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 10
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->f:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->i(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 11
    iget-object p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->f:Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;

    invoke-static {p1}, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;->i(Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/common/fab/FloatingActionsMenu$d;->e:Z

    :cond_0
    return-void
.end method
