.class public final Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/r/a/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity$a;->a:Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity$a;->a:Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;->a:Le/a/s/q/a;

    if-eqz p1, :cond_4

    const-string v0, "step"

    .line 3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type com.truecaller.callhero_assistant.onboarding.OnboardingStep"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;

    check-cast p1, Le/a/s/q/d;

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/q/b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/s/q/b;->finish()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/q/b;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;->VALIDATION:Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;

    invoke-interface {p1, p2}, Le/a/s/q/b;->i3(Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/s/q/b;

    if-eqz p1, :cond_3

    sget-object p2, Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;->FORWARD:Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;

    invoke-interface {p1, p2}, Le/a/s/q/b;->i3(Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string p1, "presenter"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
