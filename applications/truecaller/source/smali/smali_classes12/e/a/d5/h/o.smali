.class public final Le/a/d5/h/o;
.super Le/a/d5/h/q;
.source "SourceFile"


# instance fields
.field public j:Landroid/app/Activity;

.field public final k:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final l:Z

.field public final m:Z

.field public final n:Le/a/l/p2/v0;

.field public final o:Le/a/o5/f0;

.field public final p:Le/a/u3/g;

.field public final q:Le/a/z4/d;

.field public final r:Le/a/w/b/b;

.field public final s:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/o5/f0;Le/a/u3/g;Le/a/z4/d;Le/a/w/b/b;Ls1/w/f;Le/a/b0/q/l0;Le/a/o5/b0;)V
    .locals 7
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referralSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p3, Le/a/u3/g;->k2:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0xa6

    aget-object v1, v1, v2

    invoke-virtual {v0, p3, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/a/u3/i;

    const-string v3, "feature_referral_promo_popup_last_time"

    move-object v1, p0

    move-object v4, p7

    move-object v5, p4

    move-object v6, p8

    .line 2
    invoke-direct/range {v1 .. v6}, Le/a/d5/h/q;-><init>(Le/a/u3/i;Ljava/lang/String;Le/a/b0/q/l0;Le/a/z4/d;Le/a/o5/b0;)V

    iput-object p1, p0, Le/a/d5/h/o;->n:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/d5/h/o;->o:Le/a/o5/f0;

    iput-object p3, p0, Le/a/d5/h/o;->p:Le/a/u3/g;

    iput-object p4, p0, Le/a/d5/h/o;->q:Le/a/z4/d;

    iput-object p5, p0, Le/a/d5/h/o;->r:Le/a/w/b/b;

    iput-object p6, p0, Le/a/d5/h/o;->s:Ls1/w/f;

    .line 3
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->REFERRAL_PROMO:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/o;->k:Lcom/truecaller/startup_dialogs/StartupDialogType;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Le/a/d5/h/o;->l:Z

    .line 5
    iput-boolean p1, p0, Le/a/d5/h/o;->m:Z

    return-void
.end method


# virtual methods
.method public b()Lcom/truecaller/startup_dialogs/StartupDialogType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/o;->k:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/d5/h/o$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d5/h/o$a;

    iget v1, v0, Le/a/d5/h/o$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d5/h/o$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d5/h/o$a;

    invoke-direct {v0, p0, p1}, Le/a/d5/h/o$a;-><init>(Le/a/d5/h/o;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d5/h/o$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d5/h/o$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Le/a/d5/h/o$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d5/h/o;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iput-object p0, v0, Le/a/d5/h/o$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/d5/h/o$a;->e:I

    invoke-super {p0, v0}, Le/a/d5/h/q;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    iput-object p1, v0, Le/a/d5/h/o$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d5/h/o$a;->e:I

    .line 2
    iget-object v3, v2, Le/a/d5/h/o;->s:Ls1/w/f;

    new-instance v5, Le/a/d5/h/n;

    invoke-direct {v5, v2, p1}, Le/a/d5/h/n;-><init>(Le/a/d5/h/o;Ls1/w/d;)V

    invoke-static {v3, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 3
    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    .line 4
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/d5/h/o;->j:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    check-cast v0, Ln3/r/a/l;

    .line 3
    sget v2, Le/a/q4/l0;->d:I

    .line 4
    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "ReferralManagerImpl"

    invoke-static {v0, v2}, Le/a/q4/l0;->OA(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    move-object v1, v0

    check-cast v1, Le/a/q4/s0;

    .line 6
    invoke-virtual {p0}, Le/a/d5/h/q;->p()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "bulksms"

    invoke-static {v4, v2, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "App Chooser"

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, p0, Le/a/d5/h/o;->r:Le/a/w/b/b;

    const-string v5, "smsReferralPrefetchBatch"

    invoke-interface {v2, v5}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 8
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PROMO_POPUP:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    check-cast v0, Le/a/q4/l0;

    invoke-virtual {v0, v2}, Le/a/q4/l0;->Ky(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    goto :goto_1

    :cond_2
    const-string v4, "Bulk Sms Single Screen"

    .line 9
    :cond_3
    :goto_1
    invoke-interface {v1, v4}, Le/a/q4/s0;->X6(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    move-object v1, v0

    :cond_4
    return-object v1
.end method

.method public n()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d5/h/o;->p:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->m2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xa8

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    const/4 v1, -0x1

    .line 3
    invoke-interface {v0, v1}, Le/a/u3/i;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d5/h/o;->q:Le/a/z4/d;

    const-string v1, "feature_referral_promo_popup_shown_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d5/h/o;->m:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d5/h/o;->l:Z

    return v0
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d5/h/o;->q:Le/a/z4/d;

    const-string v1, "feature_referral_promo_popup_shown_count"

    invoke-interface {v0, v1}, Le/a/z4/d;->l(Ljava/lang/String;)I

    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/o;->n:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/d5/h/o;->o:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d5/h/o;->p:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->l2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xa7

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 3
    invoke-interface {v0}, Le/a/u3/i;->isEnabled()Z

    move-result v0

    return v0
.end method
