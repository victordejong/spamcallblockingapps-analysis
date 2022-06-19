.class public final Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;
.super Le/a/r3/a;
.source "SourceFile"

# interfaces
.implements Le/a/s/q/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\u0008\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;",
        "Le/a/r3/a;",
        "Le/a/s/q/b;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onDestroy",
        "()V",
        "Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;",
        "step",
        "i3",
        "(Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;)V",
        "Le/a/s/q/a;",
        "a",
        "Le/a/s/q/a;",
        "getPresenter",
        "()Le/a/s/q/a;",
        "setPresenter",
        "(Le/a/s/q/a;)V",
        "presenter",
        "<init>",
        "callhero_assistant_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/s/q/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i3(Lcom/truecaller/callhero_assistant/onboarding/OnboardingStep;)V
    .locals 3

    const-string v0, "step"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2
    new-instance p1, Le/a/s/q/f/b;

    invoke-direct {p1}, Le/a/s/q/f/b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Le/a/s/q/e/d;

    invoke-direct {p1}, Le/a/s/q/e/d;-><init>()V

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Le/a/s/q/g/b;

    invoke-direct {p1}, Le/a/s/q/g/b;-><init>()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "supportFragmentManager"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, v1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string v1, "beginTransaction()"

    .line 7
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-boolean v0, v2, Ln3/r/a/f0;->p:Z

    const v0, 0x1020002

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v2, v0, p1, v1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 10
    invoke-virtual {v2}, Ln3/r/a/a;->f()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    new-instance v0, Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity$a;

    invoke-direct {v0, p0}, Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity$a;-><init>(Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;)V

    const-string v1, "step_completed"

    invoke-virtual {p1, v1, p0, v0}, Landroidx/fragment/app/FragmentManager;->p0(Ljava/lang/String;Ln3/v/b0;Ln3/r/a/b0;)V

    const-string p1, "context"

    .line 4
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p1, Le/a/r3/j/b;->b:Le/a/r3/j/b;

    .line 6
    const-class p1, Le/a/s/e$a;

    .line 7
    sget-object v0, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->CALLHERO_ASSISTANT:Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    .line 8
    invoke-static {p0, p1, v0}, Le/a/r3/j/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)Le/a/r3/j/a;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.truecaller.callhero_assistant.CallAssistantComponent"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/s/b;

    .line 9
    const-class v0, Le/a/s/b;

    invoke-static {p1, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    new-instance v0, Le/a/s/q/d;

    invoke-interface {p1}, Le/a/s/e$a;->e()Ls1/w/f;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 11
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-interface {p1}, Le/a/s/b;->A()Le/a/s/s/a;

    move-result-object p1

    .line 13
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-direct {v0, v1, p1}, Le/a/s/q/d;-><init>(Ls1/w/f;Le/a/s/s/a;)V

    .line 15
    iput-object v0, p0, Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;->a:Le/a/s/q/a;

    .line 16
    invoke-virtual {v0, p0}, Le/a/s/q/d;->Y0(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/callhero_assistant/onboarding/AssistantOnboardingActivity;->a:Le/a/s/q/a;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/a;

    invoke-virtual {v0}, Le/a/u2/a/a;->c()V

    .line 2
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
