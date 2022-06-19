.class public final Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/i/d;
.implements Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 N2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001%B\u0007\u00a2\u0006\u0004\u0008M\u0010\u0011J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0011J\u000f\u0010\u0015\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0011J\u0017\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0011J\u001f\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0011J\u000f\u0010\"\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0011J\u000f\u0010#\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008#\u0010\u0011R\u0016\u0010\'\u001a\u00020$8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00102\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u0016\u0010<\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008;\u00101R\"\u0010D\u001a\u00020=8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u0016\u0010H\u001a\u00020E8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u0016\u0010L\u001a\u00020I8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008J\u0010K\u00a8\u0006O"
    }
    d2 = {
        "Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;",
        "Ln3/b/a/h;",
        "Le/a/y/a/i/d;",
        "Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "canTryFlashWithYourself",
        "",
        "footerText",
        "L",
        "(ZLjava/lang/String;)V",
        "onStart",
        "()V",
        "K5",
        "G5",
        "onStop",
        "W7",
        "L7",
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "N3",
        "yourName",
        "",
        "yourPhone",
        "u8",
        "(Ljava/lang/String;J)V",
        "T8",
        "Y1",
        "close",
        "Lcom/truecaller/flashsdk/ui/customviews/BouncingView;",
        "a",
        "Lcom/truecaller/flashsdk/ui/customviews/BouncingView;",
        "bouncingView",
        "Landroid/widget/Button;",
        "f",
        "Landroid/widget/Button;",
        "sendButton",
        "Lcom/truecaller/flashsdk/ui/customviews/ArrowView;",
        "i",
        "Lcom/truecaller/flashsdk/ui/customviews/ArrowView;",
        "arrowView",
        "d",
        "Landroid/view/View;",
        "layerView",
        "Landroid/widget/ImageView;",
        "b",
        "Landroid/widget/ImageView;",
        "bottomImage",
        "Landroid/widget/TextView;",
        "g",
        "Landroid/widget/TextView;",
        "tryFlashWithYourself",
        "c",
        "flashIntroContainer",
        "Le/a/y/a/i/b;",
        "j",
        "Le/a/y/a/i/b;",
        "getOnBoardingPresenter",
        "()Le/a/y/a/i/b;",
        "setOnBoardingPresenter",
        "(Le/a/y/a/i/b;)V",
        "onBoardingPresenter",
        "Landroid/animation/AnimatorSet;",
        "e",
        "Landroid/animation/AnimatorSet;",
        "animSet",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "h",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "logoLottieView",
        "<init>",
        "k",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final k:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$a;


# instance fields
.field public a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public final e:Landroid/animation/AnimatorSet;

.field public f:Landroid/widget/Button;

.field public g:Landroid/widget/TextView;

.field public h:Lcom/airbnb/lottie/LottieAnimationView;

.field public i:Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

.field public j:Le/a/y/a/i/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->k:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->e:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public G5()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->j:Le/a/y/a/i/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/i/b;->S0()V

    return-void

    :cond_0
    const-string v0, "onBoardingPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public K5()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public L(ZLjava/lang/String;)V
    .locals 13

    const-string v0, "footerText"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/flashsdk/R$id;->bouncingView:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.bouncingView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    .line 2
    sget v0, Lcom/truecaller/flashsdk/R$id;->overLayViewContainer:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.overLayViewContainer)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->d:Landroid/view/View;

    .line 3
    sget v1, Lcom/truecaller/flashsdk/R$id;->imageContentBottom:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.imageContentBottom)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->b:Landroid/widget/ImageView;

    .line 4
    sget v1, Lcom/truecaller/flashsdk/R$id;->imageContainerBottom:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.imageContainerBottom)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/cardview/widget/CardView;

    .line 5
    sget v1, Lcom/truecaller/flashsdk/R$id;->flashIntroContainer:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.flashIntroContainer)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->c:Landroid/view/View;

    .line 6
    sget v1, Lcom/truecaller/flashsdk/R$id;->btnSend:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.btnSend)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->f:Landroid/widget/Button;

    .line 7
    sget v1, Lcom/truecaller/flashsdk/R$id;->tryFlashYourself:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.tryFlashYourself)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->g:Landroid/widget/TextView;

    .line 8
    sget v1, Lcom/truecaller/flashsdk/R$id;->imageOverlayBackground:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.imageOverlayBackground)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->h:Lcom/airbnb/lottie/LottieAnimationView;

    .line 9
    sget v1, Lcom/truecaller/flashsdk/R$id;->arrowView:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.arrowView)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

    iput-object v1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->i:Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

    .line 10
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->f:Landroid/widget/Button;

    const/4 v2, 0x0

    const-string v3, "sendButton"

    if-eqz v1, :cond_9

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->a:Lcom/truecaller/flashsdk/ui/customviews/BouncingView;

    if-eqz p2, :cond_8

    .line 12
    iput-object p0, p2, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->c:Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;

    .line 13
    invoke-virtual {p2, v0}, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->setDragViewResId(I)V

    .line 14
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->d:Landroid/view/View;

    const-string v0, "layerView"

    if-eqz p2, :cond_7

    new-instance v1, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$b;

    invoke-direct {v1, p0}, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$b;-><init>(Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->d:Landroid/view/View;

    if-eqz p2, :cond_6

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 16
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/truecaller/flashsdk/R$dimen;->bouncing_view_jump:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    neg-float v8, v8

    const/4 v10, 0x1

    aput v8, v5, v10

    .line 17
    invoke-static {p2, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "animator"

    .line 18
    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x190

    int-to-long v11, v1

    invoke-virtual {p2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v1, 0x2bc

    int-to-long v11, v1

    .line 19
    invoke-virtual {p2, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 20
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 21
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->d:Landroid/view/View;

    if-eqz v1, :cond_5

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v4, [F

    .line 22
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    neg-float v8, v8

    aput v8, v5, v6

    aput v7, v5, v10

    .line 23
    invoke-static {v1, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "animator1"

    .line 24
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x320

    int-to-long v7, v1

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/16 v1, 0x32

    int-to-long v7, v1

    .line 25
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 26
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 27
    iget-object v1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->e:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p2, v4, v6

    aput-object v0, v4, v10

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 28
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->e:Landroid/animation/AnimatorSet;

    new-instance v0, Le/a/y/a/i/a;

    invoke-direct {v0, p0}, Le/a/y/a/i/a;-><init>(Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;)V

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 29
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->f:Landroid/widget/Button;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object p2, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->g:Landroid/widget/TextView;

    const-string v0, "tryFlashWithYourself"

    if-eqz p2, :cond_3

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->h:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    return-void

    :cond_2
    const-string p1, "logoLottieView"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_4
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 35
    :cond_5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string p1, "bouncingView"

    .line 38
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_9
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public L7()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    :cond_0
    const-string v0, "bottomImage"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public N3()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.Intent"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 2
    const-class v1, Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public T8()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->h:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    const-string v2, "logoLottieView"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->h:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;

    invoke-direct {v2, p0}, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;-><init>(Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;)V

    .line 3
    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->e:Le/b/a/k;

    .line 4
    iget-object v0, v0, Le/b/a/k;->c:Le/b/a/b0/b;

    .line 5
    iget-object v0, v0, Le/b/a/b0/a;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->i:Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

    const-string v2, "arrowView"

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->i:Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->f()V

    return-void

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public W7()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->e:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method

.method public Y1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->h:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->i:Lcom/truecaller/flashsdk/ui/customviews/ArrowView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/ui/customviews/ArrowView;->d()V

    return-void

    :cond_0
    const-string v0, "arrowView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "logoLottieView"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->j:Le/a/y/a/i/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/y/a/i/b;->R0(I)V

    return-void

    :cond_0
    const-string p1, "onBoardingPresenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/y/c/b;->A()I

    move-result v0

    invoke-virtual {p0, v0}, Ln3/b/a/h;->setTheme(I)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget p1, Lcom/truecaller/flashsdk/R$layout;->layout_onbaording_v2:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 4
    sget-object p1, Le/a/y/c/c;->b:Le/a/y/c/c;

    invoke-static {}, Le/a/y/c/c;->a()Le/a/y/c/x/a/a;

    move-result-object p1

    .line 5
    new-instance v0, Le/a/y/a/i/e/c;

    invoke-direct {v0, p0}, Le/a/y/a/i/e/c;-><init>(Le/a/y/a/i/d;)V

    .line 6
    const-class v1, Le/a/y/a/i/e/c;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    const-class v1, Le/a/y/c/x/a/a;

    invoke-static {p1, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    new-instance v1, Le/a/y/a/i/e/d;

    invoke-direct {v1, v0}, Le/a/y/a/i/e/d;-><init>(Le/a/y/a/i/e/c;)V

    .line 9
    sget-object v2, Lo3/c/b;->c:Ljava/lang/Object;

    .line 10
    instance-of v2, v1, Lo3/c/b;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Lo3/c/b;

    invoke-direct {v2, v1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object v1, v2

    .line 12
    :goto_0
    new-instance v2, Le/a/y/a/i/e/a;

    invoke-direct {v2, p1}, Le/a/y/a/i/e/a;-><init>(Le/a/y/c/x/a/a;)V

    .line 13
    new-instance v3, Le/a/y/a/i/e/b;

    invoke-direct {v3, p1}, Le/a/y/a/i/e/b;-><init>(Le/a/y/c/x/a/a;)V

    .line 14
    new-instance p1, Le/a/y/a/i/e/e;

    invoke-direct {p1, v0, v1, v2, v3}, Le/a/y/a/i/e/e;-><init>(Le/a/y/a/i/e/c;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 15
    instance-of v0, p1, Lo3/c/b;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, v0

    .line 17
    :goto_1
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/y/a/i/b;

    .line 18
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->j:Le/a/y/a/i/b;

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/y/a/i/b;->T0(Landroid/os/Bundle;)V

    return-void

    :cond_2
    const-string p1, "onBoardingPresenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->j:Le/a/y/a/i/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/i/b;->onStart()V

    return-void

    :cond_0
    const-string v0, "onBoardingPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->j:Le/a/y/a/i/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/i/b;->onStop()V

    return-void

    :cond_0
    const-string v0, "onBoardingPresenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public u8(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "yourName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.Intent"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const-string v1, "to_phone"

    .line 2
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "to_name"

    .line 3
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    const-class p1, Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
