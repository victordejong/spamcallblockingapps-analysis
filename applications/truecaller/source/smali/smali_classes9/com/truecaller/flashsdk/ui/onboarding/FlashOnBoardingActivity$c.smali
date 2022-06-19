.class public final Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->T8()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;->a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;->a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->h:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c$a;

    invoke-direct {v0, p0}, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c$a;-><init>(Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-string p1, "logoLottieView"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
