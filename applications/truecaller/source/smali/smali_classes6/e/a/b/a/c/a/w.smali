.class public final Le/a/b/a/c/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/c/a/w;->a:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/b/a/c/a/w;->a:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;

    invoke-static {p1}, Lcom/truecaller/bizmon/newBusiness/profile/ui/BizProfileActivity$b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Le/a/b/a/c/a/w;->a:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
