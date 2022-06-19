.class public final Le/a/r/a/i;
.super Le/a/r/a/g;
.source "SourceFile"


# instance fields
.field public final d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

.field public final e:Ls1/w/f;

.field public final f:Ls1/w/f;

.field public final g:Le/a/n/m;

.field public final h:Ljava/text/DateFormat;

.field public final i:Ljava/text/DateFormat;

.field public final j:Le/a/n/e;

.field public final k:Le/a/n/i0;

.field public final l:Le/a/r/h;

.field public final m:Le/a/r/a/d;

.field public final n:Le/a/p5/q0/e;

.field public final o:Le/a/r/a/b;

.field public final p:Le/a/b0/o/a;

.field public final q:Le/a/r/z/n;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/n/m;Ljava/text/DateFormat;Ljava/text/DateFormat;Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;Le/a/n/e;Le/a/n/i0;Le/a/r/h;Le/a/r/a/d;Le/a/p5/q0/e;Le/a/r/a/b;Le/a/b0/o/a;Le/a/r/z/n;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p3    # Le/a/n/m;
        .annotation runtime Ljavax/inject/Named;
            value = "V2"
        .end annotation
    .end param
    .param p4    # Ljava/text/DateFormat;
        .annotation runtime Ljavax/inject/Named;
            value = "wizardRestoreDateFormat"
        .end annotation
    .end param
    .param p5    # Ljava/text/DateFormat;
        .annotation runtime Ljavax/inject/Named;
            value = "wizardRestoreTimeFormat"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateFormat"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeFormat"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupAvailabilityProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryHelper"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRecoveryRequestHelper"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationHelper"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/r/a/g;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/r/a/i;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/r/a/i;->f:Ls1/w/f;

    iput-object p3, p0, Le/a/r/a/i;->g:Le/a/n/m;

    iput-object p4, p0, Le/a/r/a/i;->h:Ljava/text/DateFormat;

    iput-object p5, p0, Le/a/r/a/i;->i:Ljava/text/DateFormat;

    iput-object p7, p0, Le/a/r/a/i;->j:Le/a/n/e;

    iput-object p8, p0, Le/a/r/a/i;->k:Le/a/n/i0;

    iput-object p9, p0, Le/a/r/a/i;->l:Le/a/r/h;

    iput-object p10, p0, Le/a/r/a/i;->m:Le/a/r/a/d;

    iput-object p11, p0, Le/a/r/a/i;->n:Le/a/p5/q0/e;

    iput-object p12, p0, Le/a/r/a/i;->o:Le/a/r/a/b;

    iput-object p13, p0, Le/a/r/a/i;->p:Le/a/b0/o/a;

    iput-object p14, p0, Le/a/r/a/i;->q:Le/a/r/z/n;

    if-eqz p6, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p9}, Le/a/r/h;->l()Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    move-result-object p6

    :goto_0
    iput-object p6, p0, Le/a/r/a/i;->d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    return-void
.end method


# virtual methods
.method public Ij(Landroidx/fragment/app/Fragment;)V
    .locals 7

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/r/a/i;->e:Ls1/w/f;

    new-instance v4, Le/a/r/a/i$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/r/a/i$d;-><init>(Le/a/r/a/i;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public Jj(Landroidx/fragment/app/Fragment;)V
    .locals 7

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/a/i;->m:Le/a/r/a/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;->ACTION_RESTORE_CLICKED:Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;

    invoke-virtual {v0, v1}, Le/a/r/a/d;->a(Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;)V

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r/a/h;->i()V

    .line 5
    :cond_0
    iget-object v2, p0, Le/a/r/a/i;->f:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/r/a/i$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/r/a/i$f;-><init>(Le/a/r/a/i;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Kj(Ljava/lang/String;)V
    .locals 13

    .line 1
    new-instance v6, Lcom/truecaller/account/network/CompleteOnboardingDto;

    .line 2
    iget-object v0, p0, Le/a/r/a/i;->d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v0, p0, Le/a/r/a/i;->d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v0, p0, Le/a/r/a/i;->d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->getCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v0, p0, Le/a/r/a/i;->d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->getDialingCode()Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v6

    move-object v5, p1

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/truecaller/account/network/CompleteOnboardingDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 7
    new-instance v10, Le/a/r/a/i$a;

    const/4 p1, 0x0

    invoke-direct {v10, p0, v6, p1}, Le/a/r/a/i$a;-><init>(Le/a/r/a/i;Lcom/truecaller/account/network/CompleteOnboardingDto;Ls1/w/d;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Lj(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p2, Le/a/r/a/i$b;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/r/a/i$b;

    iget v2, v1, Le/a/r/a/i$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/r/a/i$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/r/a/i$b;

    invoke-direct {v1, p0, p2}, Le/a/r/a/i$b;-><init>(Le/a/r/a/i;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/r/a/i$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/r/a/i$b;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/r/a/i$b;->h:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Le/a/r/a/i$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/r/a/i;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/r/a/i$b;->h:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Le/a/r/a/i$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/r/a/i;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p2, p0

    .line 4
    :goto_1
    iget-object v3, p2, Le/a/r/a/i;->k:Le/a/n/i0;

    invoke-interface {v3}, Le/a/n/i0;->O0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 5
    iput-object p2, v1, Le/a/r/a/i$b;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/r/a/i$b;->h:Ljava/lang/Object;

    iput v5, v1, Le/a/r/a/i$b;->e:I

    invoke-virtual {p2, p1, v3, v1}, Le/a/r/a/i;->Mj(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    return-object v2

    :cond_4
    move-object v10, v3

    move-object v3, p2

    move-object p2, v10

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    return-object v0

    .line 6
    :cond_5
    iget-object p2, v3, Le/a/r/a/i;->g:Le/a/n/m;

    iget-object v6, v3, Le/a/r/a/i;->d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    invoke-virtual {v6}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->getUserId()J

    move-result-wide v6

    iput-object v3, v1, Le/a/r/a/i$b;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/r/a/i$b;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/r/a/i$b;->e:I

    invoke-interface {p2, v6, v7, v1}, Le/a/n/m;->h(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_6

    return-object v2

    :cond_6
    :goto_3
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p2, v6, v8

    if-eqz p2, :cond_7

    move p2, v5

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_8

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_8
    move-object p2, v3

    goto :goto_1

    :cond_9
    return-object v0
.end method

.method public final Mj(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v1, p3, Le/a/r/a/i$c;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/r/a/i$c;

    iget v2, v1, Le/a/r/a/i$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/r/a/i$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/r/a/i$c;

    invoke-direct {v1, p0, p3}, Le/a/r/a/i$c;-><init>(Le/a/r/a/i;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/r/a/i$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/r/a/i$c;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/r/a/i$c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v1, Le/a/r/a/i$c;->h:Ljava/lang/Object;

    check-cast p2, Landroidx/fragment/app/Fragment;

    iget-object v3, v1, Le/a/r/a/i$c;->g:Ljava/lang/Object;

    check-cast v3, Le/a/r/a/i;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, p0

    .line 4
    :cond_3
    iget-object p3, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/r/a/h;

    if-eqz p3, :cond_4

    invoke-interface {p3, p2}, Le/a/r/a/h;->I1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    :goto_1
    invoke-static {p3, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 5
    iget-object p3, v3, Le/a/r/a/i;->g:Le/a/n/m;

    iput-object v3, v1, Le/a/r/a/i$c;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/r/a/i$c;->h:Ljava/lang/Object;

    iput-object p2, v1, Le/a/r/a/i$c;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/r/a/i$c;->e:I

    invoke-interface {p3, p1, v1}, Le/a/n/m;->c(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_5

    return-object v2

    :cond_5
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6
    iget-object p1, v3, Le/a/r/a/i;->m:Le/a/r/a/d;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p2, Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;->ACTION_ACCOUNT_CHANCED:Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;

    invoke-virtual {p1, p2}, Le/a/r/a/d;->a(Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;)V

    return-object v0

    .line 9
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final Nj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/a/i;->l:Le/a/r/h;

    invoke-interface {v0}, Le/a/r/h;->i()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/r/a/h;->yk()V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/a/h;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/r/a/h;->d0()V

    :cond_1
    return-void
.end method

.method public final Oj(Lcom/truecaller/account/network/TokenResponseDto;Z)Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/r/a/i$e;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, p2, v0}, Le/a/r/a/i$e;-><init>(Le/a/r/a/i;Lcom/truecaller/account/network/TokenResponseDto;ZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/r/a/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/r/a/i;->j:Le/a/n/e;

    invoke-interface {v0}, Le/a/n/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1}, Le/a/r/a/h;->Nu()V

    .line 6
    invoke-interface {p1}, Le/a/r/a/h;->i()V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Le/a/r/a/i;->Kj(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/a/r/a/i;->h:Ljava/text/DateFormat;

    iget-object v1, p0, Le/a/r/a/i;->d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    invoke-virtual {v1}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->getBackupTimeStamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dateFormat.format(accoun\u2026ryParams.backupTimeStamp)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Le/a/r/a/i;->i:Ljava/text/DateFormat;

    iget-object v2, p0, Le/a/r/a/i;->d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    invoke-virtual {v2}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->getBackupTimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeFormat.format(accoun\u2026ryParams.backupTimeStamp)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1, v0, v1}, Le/a/r/a/h;->Dx(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Le/a/r/a/i;->m:Le/a/r/a/d;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;->ACTION_SHOWN:Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;

    invoke-virtual {p1, v0}, Le/a/r/a/d;->a(Lcom/truecaller/wizard/backup/analyitcs/WizardGDriveAccountRecoveryEvent$Action;)V

    :goto_0
    return-void
.end method
