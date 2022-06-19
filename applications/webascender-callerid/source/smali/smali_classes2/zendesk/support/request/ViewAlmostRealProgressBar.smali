.class public Lzendesk/support/request/ViewAlmostRealProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;,
        Lzendesk/support/request/ViewAlmostRealProgressBar$State;,
        Lzendesk/support/request/ViewAlmostRealProgressBar$Step;
    }
.end annotation


# static fields
.field public static final DONT_STOP_MOVING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/ViewAlmostRealProgressBar$Step;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIMPLE_PROGRESSBAR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/ViewAlmostRealProgressBar$Step;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private finishAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

.field private handler:Landroid/os/Handler;

.field private progressAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

.field private startDebounceRunnable:Ljava/lang/Runnable;

.field private steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/support/request/ViewAlmostRealProgressBar$Step;",
            ">;"
        }
    .end annotation
.end field

.field private stopDebounceRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    const/16 v1, 0x3c

    const-wide/16 v2, 0xfa0

    invoke-direct {v0, v1, v2, v3}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;-><init>(IJ)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzendesk/support/request/ViewAlmostRealProgressBar;->SIMPLE_PROGRESSBAR:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    .line 3
    new-instance v4, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    invoke-direct {v4, v1, v2, v3}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;-><init>(IJ)V

    const/4 v1, 0x0

    aput-object v4, v0, v1

    new-instance v1, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    const/16 v2, 0x5a

    const-wide/16 v3, 0x3a98

    invoke-direct {v1, v2, v3, v4}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;-><init>(IJ)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzendesk/support/request/ViewAlmostRealProgressBar;->DONT_STOP_MOVING:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lzendesk/support/request/ViewAlmostRealProgressBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->startDebounceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lzendesk/support/request/ViewAlmostRealProgressBar;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->steps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lzendesk/support/request/ViewAlmostRealProgressBar;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->steps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lzendesk/support/request/ViewAlmostRealProgressBar;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/ViewAlmostRealProgressBar;->kickOffAnimation(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$302(Lzendesk/support/request/ViewAlmostRealProgressBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lzendesk/support/request/ViewAlmostRealProgressBar;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/ViewAlmostRealProgressBar;->finishAnimation(J)V

    return-void
.end method

.method private adjustTime(IILzendesk/support/request/ViewAlmostRealProgressBar$Step;)Lzendesk/support/request/ViewAlmostRealProgressBar$Step;
    .locals 3

    .line 1
    invoke-static {p3}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;->access$500(Lzendesk/support/request/ViewAlmostRealProgressBar$Step;)I

    move-result v0

    sub-int/2addr v0, p2

    int-to-float v0, v0

    sub-int/2addr p1, p2

    int-to-float p1, p1

    .line 2
    invoke-static {p3}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;->access$600(Lzendesk/support/request/ViewAlmostRealProgressBar$Step;)J

    move-result-wide v1

    long-to-float p2, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float p2, p2, v0

    float-to-long p1, p2

    .line 3
    new-instance v0, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    invoke-static {p3}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;->access$500(Lzendesk/support/request/ViewAlmostRealProgressBar$Step;)I

    move-result p3

    invoke-direct {v0, p3, p1, p2}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;-><init>(IJ)V

    return-object v0
.end method

.method private endAnimation(J)Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1, p1, p2}, Lzendesk/support/request/ViewAlmostRealProgressBar;->progressAnimator(IIJ)Landroid/animation/Animator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x64

    .line 2
    invoke-direct {p0, v2, v3, v4, v5}, Lzendesk/support/request/ViewAlmostRealProgressBar;->progressBarAlphaAnimator(FFJ)Landroid/animation/Animator;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 3
    invoke-direct {p0, v1, v5, v6, v7}, Lzendesk/support/request/ViewAlmostRealProgressBar;->progressAnimator(IIJ)Landroid/animation/Animator;

    move-result-object v1

    .line 4
    invoke-direct {p0, v3, v2, v6, v7}, Lzendesk/support/request/ViewAlmostRealProgressBar;->progressBarAlphaAnimator(FFJ)Landroid/animation/Animator;

    move-result-object v2

    .line 5
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 8
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 11
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 12
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 13
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 15
    new-instance p1, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    invoke-direct {p1, v1}, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;-><init>(Landroid/animation/Animator;)V

    return-object p1
.end method

.method private finishAnimation(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->progressAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->get()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->progressAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    .line 4
    invoke-direct {p0, p1, p2}, Lzendesk/support/request/ViewAlmostRealProgressBar;->endAnimation(J)Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->finishAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    .line 5
    invoke-virtual {p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->get()Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_0
    return-void
.end method

.method private kickOffAnimation(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/ViewAlmostRealProgressBar$Step;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->progressAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 2
    iget-object v2, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->finishAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->finishAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    invoke-virtual {v2}, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->isEnded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->finishAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    invoke-virtual {v0}, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->get()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    :cond_0
    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->finishAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lzendesk/support/request/ViewAlmostRealProgressBar;->startAnimation(Ljava/util/List;IJ)Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->progressAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    .line 6
    invoke-virtual {p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;->get()Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method private progressAnimator(IIJ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "progress"

    .line 1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private progressBarAlphaAnimator(FFJ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const-string p1, "alpha"

    .line 1
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private restoreProgress(Lzendesk/support/request/ViewAlmostRealProgressBar$State;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$State;->access$700(Lzendesk/support/request/ViewAlmostRealProgressBar$State;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$State;->access$800(Lzendesk/support/request/ViewAlmostRealProgressBar$State;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$State;->access$800(Lzendesk/support/request/ViewAlmostRealProgressBar$State;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    .line 5
    invoke-static {p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$State;->access$700(Lzendesk/support/request/ViewAlmostRealProgressBar$State;)I

    move-result v6

    invoke-static {v5}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;->access$500(Lzendesk/support/request/ViewAlmostRealProgressBar$Step;)I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 6
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v5}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;->access$500(Lzendesk/support/request/ViewAlmostRealProgressBar$Step;)I

    move-result v4

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, Lg/k/d/a;->i(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    .line 10
    invoke-static {p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$State;->access$700(Lzendesk/support/request/ViewAlmostRealProgressBar$State;)I

    move-result v5

    invoke-direct {p0, v5, v4, v3}, Lzendesk/support/request/ViewAlmostRealProgressBar;->adjustTime(IILzendesk/support/request/ViewAlmostRealProgressBar$Step;)Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 11
    :cond_2
    invoke-static {p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$State;->access$700(Lzendesk/support/request/ViewAlmostRealProgressBar$State;)I

    move-result p1

    invoke-direct {p0, v2, p1}, Lzendesk/support/request/ViewAlmostRealProgressBar;->kickOffAnimation(Ljava/util/List;I)V

    .line 12
    iput-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->steps:Ljava/util/List;

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_1
    return-void
.end method

.method private startAnimation(Ljava/util/List;IJ)Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/ViewAlmostRealProgressBar$Step;",
            ">;IJ)",
            "Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;

    .line 3
    invoke-static {v1}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;->access$500(Lzendesk/support/request/ViewAlmostRealProgressBar$Step;)I

    move-result v2

    invoke-static {v1}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;->access$600(Lzendesk/support/request/ViewAlmostRealProgressBar$Step;)J

    move-result-wide v3

    invoke-direct {p0, p2, v2, v3, v4}, Lzendesk/support/request/ViewAlmostRealProgressBar;->progressAnimator(IIJ)Landroid/animation/Animator;

    move-result-object p2

    .line 4
    invoke-static {v1}, Lzendesk/support/request/ViewAlmostRealProgressBar$Step;->access$500(Lzendesk/support/request/ViewAlmostRealProgressBar$Step;)I

    move-result v1

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p2, v1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 8
    invoke-virtual {p1, p3, p4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 9
    new-instance p2, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    invoke-direct {p2, p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;-><init>(Landroid/animation/Animator;)V

    return-object p2
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lzendesk/support/request/ViewAlmostRealProgressBar$State;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lzendesk/support/request/ViewAlmostRealProgressBar$State;

    .line 3
    invoke-direct {p0, p1}, Lzendesk/support/request/ViewAlmostRealProgressBar;->restoreProgress(Lzendesk/support/request/ViewAlmostRealProgressBar$State;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->progressAnimator:Lzendesk/support/request/ViewAlmostRealProgressBar$StateAwareAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/ProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 3
    new-instance v1, Lzendesk/support/request/ViewAlmostRealProgressBar$State;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->steps:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3}, Lzendesk/support/request/ViewAlmostRealProgressBar$State;-><init>(Landroid/os/Parcelable;ILjava/util/List;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5
    invoke-super {p0}, Landroid/widget/ProgressBar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public start(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/ViewAlmostRealProgressBar$Step;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->startDebounceRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lzendesk/support/request/ViewAlmostRealProgressBar$1;

    invoke-direct {v0, p0, p1}, Lzendesk/support/request/ViewAlmostRealProgressBar$1;-><init>(Lzendesk/support/request/ViewAlmostRealProgressBar;Ljava/util/List;)V

    iput-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->startDebounceRunnable:Ljava/lang/Runnable;

    .line 6
    iget-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stop(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->startDebounceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->startDebounceRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lzendesk/support/request/ViewAlmostRealProgressBar$2;

    invoke-direct {v0, p0, p1, p2}, Lzendesk/support/request/ViewAlmostRealProgressBar$2;-><init>(Lzendesk/support/request/ViewAlmostRealProgressBar;J)V

    iput-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->stopDebounceRunnable:Ljava/lang/Runnable;

    .line 6
    iget-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
