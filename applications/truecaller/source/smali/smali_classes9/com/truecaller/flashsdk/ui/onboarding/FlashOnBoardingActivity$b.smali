.class public final Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->L(ZLjava/lang/String;)V
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

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$b;->a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity$b;->a:Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/flashsdk/ui/onboarding/FlashOnBoardingActivity;->e:Landroid/animation/AnimatorSet;

    .line 3
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    const/4 p1, 0x0

    return p1
.end method
