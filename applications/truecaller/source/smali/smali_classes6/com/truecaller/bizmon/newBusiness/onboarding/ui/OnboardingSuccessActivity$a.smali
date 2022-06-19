.class public final Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/animation/Animator;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/m/g;


# direct methods
.method public constructor <init>(Le/a/b/m/g;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity$a;->b:Le/a/b/m/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/animation/Animator;

    .line 2
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity$a;->b:Le/a/b/m/g;

    iget-object p1, p1, Le/a/b/m/g;->f:Landroidx/constraintlayout/widget/Group;

    const-string v0, "informationGroup"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity$a;->b:Le/a/b/m/g;

    iget-object p1, p1, Le/a/b/m/g;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "animationView"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
