.class public final Lcom/truecaller/wizard/AccountHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;,
        Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;,
        Lcom/truecaller/wizard/AccountHelperImpl$a;,
        Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/b0/e/r/a;

.field public final d:Le/a/r/e/b;

.field public final e:Le/a/r/c/z;

.field public final f:Le/a/b0/e/l;

.field public final g:Le/a/r/v/a;

.field public final h:Le/a/r/q/h;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Le/a/b0/e/r/a;Le/a/r/e/b;Le/a/r/c/z;Le/a/b0/e/l;Le/a/r/v/a;Le/a/r/q/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardSettingsHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardListener"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardTracker"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/wizard/AccountHelperImpl;->b:Le/a/b0/o/a;

    iput-object p2, p0, Lcom/truecaller/wizard/AccountHelperImpl;->c:Le/a/b0/e/r/a;

    iput-object p3, p0, Lcom/truecaller/wizard/AccountHelperImpl;->d:Le/a/r/e/b;

    iput-object p4, p0, Lcom/truecaller/wizard/AccountHelperImpl;->e:Le/a/r/c/z;

    iput-object p5, p0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    iput-object p6, p0, Lcom/truecaller/wizard/AccountHelperImpl;->g:Le/a/r/v/a;

    iput-object p7, p0, Lcom/truecaller/wizard/AccountHelperImpl;->h:Le/a/r/q/h;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/wizard/AccountHelperImpl;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/wizard/AccountHelperImpl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->c:Le/a/b0/e/r/a;

    const-string v2, "restored_credentials_check_state"

    invoke-interface {v0, v2, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->c()V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    return v0
.end method

.method public e(JLe/a/b0/e/b;Le/a/b0/e/b;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/a/b0/e/b;",
            "Le/a/b0/e/b;",
            "Ljava/lang/String;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object v5, p3

    move-object/from16 v1, p8

    sget-object v7, Ls1/s;->a:Ls1/s;

    instance-of v2, v1, Lcom/truecaller/wizard/AccountHelperImpl$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/truecaller/wizard/AccountHelperImpl$b;

    iget v3, v2, Lcom/truecaller/wizard/AccountHelperImpl$b;->e:I

    const/high16 v4, -0x80000000

    and-int v6, v3, v4

    if-eqz v6, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/truecaller/wizard/AccountHelperImpl$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/truecaller/wizard/AccountHelperImpl$b;

    invoke-direct {v2, p0, v1}, Lcom/truecaller/wizard/AccountHelperImpl$b;-><init>(Lcom/truecaller/wizard/AccountHelperImpl;Ls1/w/d;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Lcom/truecaller/wizard/AccountHelperImpl$b;->d:Ljava/lang/Object;

    sget-object v9, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v8, Lcom/truecaller/wizard/AccountHelperImpl$b;->e:I

    const/4 v10, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v10, :cond_1

    iget-object v2, v8, Lcom/truecaller/wizard/AccountHelperImpl$b;->g:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/wizard/AccountHelperImpl;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lcom/truecaller/wizard/AccountHelperImpl;->b:Le/a/b0/o/a;

    const-string v2, "profileUserId"

    move-wide v3, p1

    invoke-interface {v1, v2, p1, p2}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 5
    iget-object v1, v0, Lcom/truecaller/wizard/AccountHelperImpl;->c:Le/a/b0/e/r/a;

    .line 6
    iget-object v2, v5, Le/a/b0/e/b;->b:Ljava/lang/String;

    const-string v3, "profileNumber"

    .line 7
    invoke-interface {v1, v3, v2}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Lcom/truecaller/wizard/AccountHelperImpl;->c:Le/a/b0/e/r/a;

    .line 9
    iget-object v2, v5, Le/a/b0/e/b;->a:Ljava/lang/String;

    const-string v3, "profileCountryIso"

    .line 10
    invoke-interface {v1, v3, v2}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, v0, Lcom/truecaller/wizard/AccountHelperImpl;->b:Le/a/b0/o/a;

    const-string v2, "profileSendRegistrationCompleteEvent"

    invoke-interface {v1, v2, v10}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    iget-object v1, v0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    .line 13
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v3, p6

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    move-object/from16 v2, p5

    move-object v5, p3

    move-object v6, p4

    .line 14
    invoke-interface/range {v1 .. v6}, Le/a/b0/e/l;->j(Ljava/lang/String;JLe/a/b0/e/b;Le/a/b0/e/b;)V

    .line 15
    iput-object v0, v8, Lcom/truecaller/wizard/AccountHelperImpl$b;->g:Ljava/lang/Object;

    iput v10, v8, Lcom/truecaller/wizard/AccountHelperImpl$b;->e:I

    .line 16
    iget-object v1, v0, Lcom/truecaller/wizard/AccountHelperImpl;->g:Le/a/r/v/a;

    check-cast v1, Le/a/r/o;

    .line 17
    invoke-virtual {v1, v8}, Le/a/r/o;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v7

    :goto_1
    if-ne v1, v9, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v7

    :goto_2
    if-ne v1, v9, :cond_5

    return-object v9

    :cond_5
    move-object v2, v0

    .line 18
    :goto_3
    invoke-virtual {v2}, Lcom/truecaller/wizard/AccountHelperImpl;->i()V

    .line 19
    iget-object v1, v2, Lcom/truecaller/wizard/AccountHelperImpl;->e:Le/a/r/c/z;

    invoke-interface {v1}, Le/a/r/c/z;->g()V

    .line 20
    iput-boolean v10, v2, Lcom/truecaller/wizard/AccountHelperImpl;->a:Z

    return-object v7
.end method

.method public f(Ljava/lang/String;J)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    invoke-interface {v0, p1}, Le/a/b0/e/l;->q(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    invoke-interface {p1, p2, p3}, Le/a/b0/e/l;->h(J)V

    return-void
.end method

.method public g(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->d:Le/a/r/e/b;

    const-string v1, "verified_number_params"

    invoke-interface {v0, v1}, Le/a/r/e/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 3
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    const-class v3, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;

    .line 4
    invoke-virtual {v1, v0, v3}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {v3}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Gson().fromJson(json, Ve\u2026NumberParams::class.java)"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;

    .line 7
    new-instance v6, Le/a/b0/e/b;

    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;->getNormalizedPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v1, v3}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;->getSecondaryCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;->getNormalizedSecondaryPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    new-instance v2, Le/a/b0/e/b;

    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;->getSecondaryCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;->getNormalizedSecondaryPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v7, v2

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;->getUserId()J

    move-result-wide v4

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;->getInstallationId()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;->getTtl()J

    move-result-wide v9

    move-object v3, p0

    move-object v11, p1

    .line 13
    invoke-virtual/range {v3 .. v11}, Lcom/truecaller/wizard/AccountHelperImpl;->e(JLe/a/b0/e/b;Le/a/b0/e/b;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_3

    return-object p1

    .line 14
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 15
    :cond_4
    new-instance p1, Lcom/truecaller/wizard/AccountHelperImpl$a;

    invoke-virtual {p0}, Lcom/truecaller/wizard/AccountHelperImpl;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/truecaller/wizard/AccountHelperImpl$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lcom/truecaller/wizard/AccountHelperImpl$VerifiedNumberParams;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    invoke-virtual {v0, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->d:Le/a/r/e/b;

    const-string v1, "verified_number_params"

    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->d:Le/a/r/e/b;

    const-string v1, "verified_number_params"

    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->d:Le/a/r/e/b;

    const-string v1, "account_recovery_params"

    invoke-interface {v0, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "normalizedPhoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryIso"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/b0/e/b;

    invoke-direct {v0, p2, p1}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->e()Le/a/b0/e/b;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    invoke-interface {p2, v0}, Le/a/b0/e/l;->k(Le/a/b0/e/b;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/wizard/AccountHelperImpl;->e:Le/a/r/c/z;

    invoke-interface {p2}, Le/a/r/c/z;->g()V

    :cond_0
    return p1
.end method

.method public k(Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    invoke-virtual {v0, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->d:Le/a/r/e/b;

    const-string v1, "account_recovery_params"

    invoke-interface {v0, v1, p1}, Le/a/r/e/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l()Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->d:Le/a/r/e/b;

    const-string v1, "account_recovery_params"

    invoke-interface {v0, v1}, Le/a/r/e/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    const-class v2, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    .line 4
    invoke-virtual {v1, v0, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {v2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Gson().fromJson(json, Ac\u2026coveryParams::class.java)"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lcom/truecaller/wizard/AccountHelperImpl$a;

    invoke-virtual {p0}, Lcom/truecaller/wizard/AccountHelperImpl;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/truecaller/wizard/AccountHelperImpl$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v9, Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;

    .line 2
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->d:Le/a/r/e/b;

    const-string v1, "wizard_StartContext"

    invoke-interface {v0, v1}, Le/a/r/e/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->d:Le/a/r/e/b;

    const-string v2, "wizard_StartPage"

    invoke-interface {v0, v2}, Le/a/r/e/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->h:Le/a/r/q/h;

    invoke-interface {v0}, Le/a/r/q/h;->b()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->d:Le/a/r/e/b;

    const-string v4, "wizard_FullyCompleted"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Le/a/r/e/b;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 6
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v6

    .line 7
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->b()Z

    move-result v7

    .line 8
    iget-object v0, p0, Lcom/truecaller/wizard/AccountHelperImpl;->c:Le/a/b0/e/r/a;

    const-string v8, "restored_credentials_check_state"

    invoke-interface {v0, v8, v5}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 9
    iget-boolean v10, p0, Lcom/truecaller/wizard/AccountHelperImpl;->a:Z

    move-object v0, v9

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v10

    .line 10
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    .line 11
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    invoke-virtual {v0, v9}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WizardAndAccountState(\n \u2026let { Gson().toJson(it) }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
