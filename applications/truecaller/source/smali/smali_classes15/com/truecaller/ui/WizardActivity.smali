.class public Lcom/truecaller/ui/WizardActivity;
.super Le/a/e/f1;
.source "SourceFile"


# instance fields
.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/o/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Le/a/r/q/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public m:Le/a/r/e/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r/c/u;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/wizard/WizardVerificationMode;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/e/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public Ja()Le/a/b0/o/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/WizardActivity;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/wizard/TruecallerWizard;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 3
    sget p1, Le/a/q4/l0;->d:I

    .line 4
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "ReferralManagerImpl"

    invoke-static {p1, v0}, Le/a/q4/l0;->OA(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast p1, Le/a/q4/l0;

    .line 6
    iget-object p1, p1, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {p1, v0}, Le/a/q4/o0;->Hj(Landroid/content/Context;)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "EXTRA_REG_NUDGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "signUpOrigin"

    const-string v0, "notificationRegNudge"

    .line 8
    invoke-static {p1, v0}, Le/a/n/g0;->B0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public ra()V
    .locals 4

    .line 1
    invoke-super {p0}, Le/a/r/t/c;->ra()V

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    const-string v1, "EXTRA_REG_NUDGE"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "RegistrationNudge"

    if-eqz v0, :cond_0

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/truecaller/ui/WizardActivity;->j:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a0;

    invoke-static {}, Le/a/l5/a/l0;->a()Le/a/l5/a/l0$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Le/a/l5/a/l0$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l0$b;

    invoke-virtual {v3, v0}, Le/a/l5/a/l0$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l0$b;

    invoke-virtual {v3}, Le/a/l5/a/l0$b;->a()Le/a/l5/a/l0;

    move-result-object v0

    invoke-interface {v2, v0}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_0

    :cond_0
    const-string v0, "regNudgeBadgeSet"

    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v2}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0, v2}, Le/a/e/a2;->c0(Landroid/content/Context;I)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/ui/WizardActivity;->j:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-static {}, Le/a/l5/a/l0;->a()Le/a/l5/a/l0$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Le/a/l5/a/l0$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l0$b;

    const-string v1, "Badge"

    .line 10
    invoke-virtual {v2, v1}, Le/a/l5/a/l0$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l0$b;

    invoke-virtual {v2}, Le/a/l5/a/l0$b;->a()Le/a/l5/a/l0;

    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_1
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraRequestCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "calls"

    const-string v1, "wizard"

    .line 14
    invoke-static {p0, v0, v1}, Lcom/truecaller/ui/TruecallerInit;->Xa(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public ta()Le/a/r/c/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/WizardActivity;->n:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r/c/u;

    return-object v0
.end method

.method public va()Le/a/r/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/WizardActivity;->m:Le/a/r/e/b;

    return-object v0
.end method

.method public wa()Le/a/r/q/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/WizardActivity;->l:Le/a/r/q/h;

    return-object v0
.end method

.method public xa()Lcom/truecaller/wizard/WizardVerificationMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/WizardActivity;->o:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/wizard/WizardVerificationMode;

    return-object v0
.end method

.method public za()V
    .locals 4

    .line 1
    invoke-super {p0}, Le/a/r/t/c;->za()V

    .line 2
    sget v0, Lcom/truecaller/common/tag/TagService;->a:I

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/truecaller/common/tag/TagService;

    sget v3, Lcom/truecaller/common/R$id;->tag_service_job_id:I

    invoke-static {v1, v2, v3, v0}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 6
    new-instance v0, Ln3/k/a/x;

    invoke-direct {v0, p0}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0605

    .line 7
    invoke-virtual {v0, v1}, Ln3/k/a/x;->b(I)V

    return-void
.end method
