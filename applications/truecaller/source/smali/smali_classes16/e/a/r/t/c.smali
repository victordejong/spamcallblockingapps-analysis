.class public abstract Le/a/r/t/c;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/t/c$d;,
        Le/a/r/t/c$c;,
        Le/a/r/t/c$b;,
        Le/a/r/t/c$a;
    }
.end annotation


# static fields
.field public static volatile f:Z


# instance fields
.field public final a:Le/a/r/t/c$c;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/r/t/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/r/t/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/r/t/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Le/a/r/t/c$c;

    invoke-direct {v0, p0}, Le/a/r/t/c$c;-><init>(Le/a/r/t/c;)V

    iput-object v0, p0, Le/a/r/t/c;->a:Le/a/r/t/c$c;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/a/r/t/c;->e:Ljava/util/Map;

    return-void
.end method

.method public static Ba()V
    .locals 2

    .line 1
    invoke-static {}, Le/a/r/t/d;->a()Le/a/r/t/c$d;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/t/c$d;->y5()Le/a/r/e/b;

    move-result-object v0

    const-string v1, "signUpOrigin"

    .line 2
    invoke-static {v1}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    const-string v1, "wizard_RequiredStepsCompleted"

    .line 3
    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    const-string v1, "wizard_FullyCompleted"

    .line 4
    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    const-string v1, "wizard_StartPage"

    .line 5
    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    const-string v1, "verification_mode"

    .line 6
    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    const-string v1, "country_iso"

    .line 7
    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    const-string v1, "wizardDialingCode"

    .line 8
    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    const-string v1, "wizard_EnteredNumber"

    .line 9
    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    const-string v1, "number_source"

    .line 10
    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    const-string v1, "verificationLastSequenceNumber"

    .line 11
    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Le/a/r/t/d;->a()Le/a/r/t/c$d;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/t/c$d;->d()Le/a/b0/o/a;

    move-result-object v0

    const-string v1, "isUserChangingNumber"

    .line 13
    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    const-string v1, "profileSendRegistrationCompleteEvent"

    .line 14
    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public static Ca(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/truecaller/wizard/framework/WizardStartContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Le/a/r/t/c;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/truecaller/wizard/framework/WizardStartContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/r/t/c;->ya()Z

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Wizard start. ResetAndStart "

    aput-object v3, v1, v2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string v4, ", isCompleted: "

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    invoke-static {v1}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, v2}, Le/a/r/t/c;->Da(Landroid/content/Context;Z)V

    :cond_0
    const-string v0, "signUpOrigin"

    .line 4
    invoke-static {v0, p2}, Le/a/n/g0;->B0(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1, p3}, Le/a/r/t/c;->Ga(Landroid/content/Context;Ljava/lang/Class;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    return-void
.end method

.method public static Da(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-static {}, Le/a/r/t/d;->a()Le/a/r/t/c$d;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/t/c$d;->y5()Le/a/r/e/b;

    move-result-object v0

    const-string v1, "wizard_RequiredStepsCompleted"

    .line 2
    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "wizard_FullyCompleted"

    .line 3
    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "wizard_StartPage"

    .line 4
    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 5
    sget-object p1, Lcom/truecaller/wizard/framework/WizardCompletionType;->BACKGROUND:Lcom/truecaller/wizard/framework/WizardCompletionType;

    invoke-static {p0, p1}, Le/a/p5/s0/g;->m1(Landroid/content/Context;Lcom/truecaller/wizard/framework/WizardCompletionType;)V

    :cond_0
    return-void
.end method

.method public static Fa(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;ZLcom/truecaller/wizard/framework/WizardStartContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Le/a/r/t/c;",
            ">;",
            "Landroid/os/Bundle;",
            "Z",
            "Lcom/truecaller/wizard/framework/WizardStartContext;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Wizard start. Class "

    aput-object v2, v0, v1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p4}, Lcom/truecaller/wizard/framework/WizardStartContext;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p4, "extraStartContext"

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x10000

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_1

    const p1, 0x8000

    .line 8
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static Ga(Landroid/content/Context;Ljava/lang/Class;Lcom/truecaller/wizard/framework/WizardStartContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Le/a/r/t/c;",
            ">;",
            "Lcom/truecaller/wizard/framework/WizardStartContext;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p1, v0, v1, p2}, Le/a/r/t/c;->Fa(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;ZLcom/truecaller/wizard/framework/WizardStartContext;)V

    return-void
.end method

.method public static Ha(Landroid/content/Context;Ljava/lang/Class;Lcom/truecaller/wizard/framework/WizardStartContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Le/a/r/t/c;",
            ">;",
            "Lcom/truecaller/wizard/framework/WizardStartContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/r/t/d;->a()Le/a/r/t/c$d;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/t/c$d;->d()Le/a/b0/o/a;

    move-result-object v0

    const-string v1, "isUserChangingNumber"

    const/4 v2, 0x1

    .line 2
    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0, v2, p2}, Le/a/r/t/c;->Fa(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;ZLcom/truecaller/wizard/framework/WizardStartContext;)V

    return-void
.end method

.method public static qa()Z
    .locals 3

    .line 1
    invoke-static {}, Le/a/r/t/d;->a()Le/a/r/t/c$d;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/t/c$d;->y5()Le/a/r/e/b;

    move-result-object v0

    const-string v1, "wizard_RequiredStepsCompleted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/r/e/b;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ua(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Le/a/r/t/c;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    sget-object p0, Lcom/truecaller/wizard/WizardVerificationMode;->SECONDARY_NUMBER:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-virtual {p0}, Lcom/truecaller/wizard/WizardVerificationMode;->getValue()I

    move-result p1

    const-string v1, "WizardVerificationMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/wizard/WizardVerificationMode;->getValue()I

    move-result p0

    const-string p1, "extraRequestCode"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static ya()Z
    .locals 3

    .line 1
    invoke-static {}, Le/a/r/t/d;->a()Le/a/r/t/c$d;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/t/c$d;->y5()Le/a/r/e/b;

    move-result-object v0

    const-string v1, "wizard_FullyCompleted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/r/e/b;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final Aa(Le/a/r/t/b;Landroid/os/Bundle;)Ln3/r/a/f0;
    .locals 2

    .line 1
    iget-object p1, p1, Le/a/r/t/b;->a:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 3
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p2}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 4
    sget p2, Lcom/truecaller/wizard/R$anim;->wizard_fragment_enter:I

    sget v1, Lcom/truecaller/wizard/R$anim;->wizard_fragment_exit:I

    .line 5
    invoke-virtual {v0, p2, v1}, Ln3/r/a/f0;->n(II)Ln3/r/a/f0;

    sget p2, Lcom/truecaller/wizard/R$id;->wizardPage:I

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p2, p1, v1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    return-object v0
.end method

.method public abstract Ea(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/r/t/b;",
            ">;)V"
        }
    .end annotation
.end method

.method public Ia(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/r/t/c;->wa()Le/a/r/q/h;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/r/q/h;->g(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/r/t/c;->a:Le/a/r/t/c$c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 5
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Ln3/r/a/l;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Le/a/r/t/c;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r/t/c$a;

    .line 4
    invoke-interface {v1, p1, p2, p3}, Le/a/r/t/c$a;->Wh(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/t/c;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/a/r/t/c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r/t/c$b;

    invoke-interface {v1}, Le/a/r/t/c$b;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/truecaller/wizard/WizardVerificationMode;->PRIMARY_NUMBER:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-virtual {v1}, Lcom/truecaller/wizard/WizardVerificationMode;->getValue()I

    move-result v1

    const-string v2, "WizardVerificationMode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Le/a/r/t/c;->va()Le/a/r/e/b;

    move-result-object v1

    const-string v2, "verification_mode"

    invoke-interface {v1, v2, v0}, Le/a/r/e/b;->putInt(Ljava/lang/String;I)V

    .line 5
    :cond_0
    sget v0, Lcom/truecaller/wizard/R$layout;->wizard_base:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(I)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Le/a/r/t/c;->d:Z

    .line 7
    iget-object v0, p0, Le/a/r/t/c;->e:Ljava/util/Map;

    invoke-virtual {p0, v0}, Le/a/r/t/c;->Ea(Ljava/util/Map;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraStartContext"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Le/a/r/t/c;->va()Le/a/r/e/b;

    move-result-object v1

    const-string v2, "wizard_StartContext"

    invoke-interface {v1, v2, v0}, Le/a/r/e/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Le/a/r/t/c;->ta()Le/a/r/c/u;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/c/u;->a()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "wizard_StartPage"

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Le/a/r/t/c;->va()Le/a/r/e/b;

    move-result-object p1

    invoke-interface {p1, v2}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Le/a/r/t/c;->wa()Le/a/r/q/h;

    move-result-object p1

    invoke-interface {p1}, Le/a/r/q/h;->a()V

    .line 13
    invoke-virtual {p0}, Le/a/r/t/c;->sa()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1, v1}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 15
    invoke-virtual {p0}, Le/a/r/t/c;->va()Le/a/r/e/b;

    move-result-object p1

    invoke-interface {p1, v2}, Le/a/r/e/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0}, Le/a/r/t/c;->sa()Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_2
    invoke-virtual {p0}, Le/a/r/t/c;->wa()Le/a/r/q/h;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/q/h;->a()V

    .line 19
    invoke-virtual {p0, p1, v1}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/a/r/t/c;->a:Le/a/r/t/c$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onPostResume()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/r/t/c;->d:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/r/t/c;->d:Z

    .line 2
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Le/a/r/t/c;->f:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Le/a/r/t/c;->f:Z

    return-void
.end method

.method public pa(Le/a/r/t/c$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/t/c;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Le/a/r/t/c;->c:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/r/t/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ra()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/r/t/c;->wa()Le/a/r/q/h;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/q/h;->e()V

    .line 2
    invoke-virtual {p0}, Le/a/r/t/c;->va()Le/a/r/e/b;

    move-result-object v0

    const-string v1, "wizard_RequiredStepsCompleted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/r/e/b;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/r/t/c;->za()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/r/t/c;->va()Le/a/r/e/b;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "wizard_FullyCompleted"

    invoke-interface {v0, v2, v1}, Le/a/r/e/b;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    invoke-virtual {p0}, Le/a/r/t/c;->va()Le/a/r/e/b;

    move-result-object v0

    const-string v1, "wizard_StartPage"

    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    const-string v0, "signUpOrigin"

    .line 6
    invoke-static {v0}, Le/a/n/g0;->n0(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Le/a/r/t/d;->a()Le/a/r/t/c$d;

    move-result-object v0

    invoke-interface {v0}, Le/a/r/t/c$d;->d()Le/a/b0/o/a;

    move-result-object v0

    const-string v1, "isUserChangingNumber"

    .line 8
    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Le/a/r/t/c;->xa()Lcom/truecaller/wizard/WizardVerificationMode;

    move-result-object v0

    sget-object v1, Lcom/truecaller/wizard/WizardVerificationMode;->SECONDARY_NUMBER:Lcom/truecaller/wizard/WizardVerificationMode;

    if-ne v0, v1, :cond_1

    .line 10
    sget-object v0, Lcom/truecaller/wizard/framework/WizardCompletionType;->SECONDARY_NUMBER:Lcom/truecaller/wizard/framework/WizardCompletionType;

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lcom/truecaller/wizard/framework/WizardCompletionType;->NORMAL:Lcom/truecaller/wizard/framework/WizardCompletionType;

    .line 12
    :goto_0
    invoke-static {p0, v0}, Le/a/p5/s0/g;->m1(Landroid/content/Context;Lcom/truecaller/wizard/framework/WizardCompletionType;)V

    return-void
.end method

.method public abstract sa()Ljava/lang/String;
.end method

.method public abstract ta()Le/a/r/c/u;
.end method

.method public abstract va()Le/a/r/e/b;
.end method

.method public abstract wa()Le/a/r/q/h;
.end method

.method public abstract xa()Lcom/truecaller/wizard/WizardVerificationMode;
.end method

.method public za()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/r/t/c;->va()Le/a/r/e/b;

    move-result-object v0

    const-string v1, "wizard_RequiredStepsCompleted"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/r/e/b;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
