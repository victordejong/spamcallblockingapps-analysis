.class public final Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c$a;->a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c$a;->a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;

    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$c;->a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;

    .line 2
    iget-object v0, v0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->h:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    return-void

    :cond_0
    const-string v0, "logoLottieView"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
