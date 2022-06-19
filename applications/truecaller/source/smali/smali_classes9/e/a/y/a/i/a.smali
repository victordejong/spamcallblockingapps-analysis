.class public final Le/a/y/a/i/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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
    iput-object p1, p0, Le/a/y/a/i/a;->a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/y/a/i/a;->a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->j:Le/a/y/a/i/b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/y/a/i/b;->U0()V

    return-void

    :cond_0
    const-string p1, "onBoardingPresenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
