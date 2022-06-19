.class Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ViewAlmostRealProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateAwareAnimator"
.end annotation


# instance fields
.field private final animatorSet:Landroid/animation/Animator;

.field private ended:Z

.field private started:Z


# direct methods
.method constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->started:Z

    .line 3
    iput-boolean v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->ended:Z

    .line 4
    iput-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->animatorSet:Landroid/animation/Animator;

    .line 5
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method get()Landroid/animation/Animator;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->animatorSet:Landroid/animation/Animator;

    return-object v0
.end method

.method isEnded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->ended:Z

    return v0
.end method

.method isStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->started:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->started:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->ended:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->started:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->ended:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->started:Z

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->ended:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->started:Z

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->ended:Z

    return-void
.end method
