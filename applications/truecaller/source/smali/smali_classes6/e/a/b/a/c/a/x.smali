.class public final Le/a/b/a/c/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/c/a/x;->a:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b/a/c/a/x;->a:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    iget-object p1, p0, Le/a/b/a/c/a/x;->a:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
