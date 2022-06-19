.class public final Le/a/r/a0/e0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/a0/e0/d;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/b0/g/a;

.field public final c:Le/a/b0/e/r/a;

.field public final d:Le/a/q2/a;

.field public final e:Le/a/b0/e/l;

.field public final f:Le/a/n2/a/a;

.field public final g:Le/a/r/e/b;

.field public final h:Le/a/r/v/a;

.field public final i:Le/a/r/z/n;

.field public final j:Le/a/b0/b/f/a;

.field public final k:Le/a/b0/n/g;

.field public final l:Le/a/r/q/c;

.field public final m:Le/a/p5/q0/e;

.field public final n:J


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/b0/g/a;Le/a/b0/e/r/a;Le/a/q2/a;Le/a/b0/e/l;Le/a/n2/a/a;Le/a/r/e/b;Le/a/r/v/a;Le/a/r/z/n;Le/a/b0/b/f/a;Le/a/b0/n/g;Le/a/r/q/c;Le/a/p5/q0/e;J)V
    .locals 15
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    const-string v14, "ioContext"

    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "appBase"

    invoke-static {v2, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "accountSettings"

    invoke-static {v3, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "analytics"

    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "accountManager"

    invoke-static {v5, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "accountReqHelper"

    invoke-static {v6, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "wizardSettings"

    invoke-static {v7, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "wizardListener"

    invoke-static {v8, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "verificationHelper"

    invoke-static {v9, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "installationDetailsProvider"

    invoke-static {v10, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "profileRepository"

    invoke-static {v11, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "wizardErrorTracker"

    invoke-static {v12, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "retryHelper"

    invoke-static {v13, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/a/r/a0/e0/e;->a:Ls1/w/f;

    iput-object v2, v0, Le/a/r/a0/e0/e;->b:Le/a/b0/g/a;

    iput-object v3, v0, Le/a/r/a0/e0/e;->c:Le/a/b0/e/r/a;

    iput-object v4, v0, Le/a/r/a0/e0/e;->d:Le/a/q2/a;

    iput-object v5, v0, Le/a/r/a0/e0/e;->e:Le/a/b0/e/l;

    iput-object v6, v0, Le/a/r/a0/e0/e;->f:Le/a/n2/a/a;

    iput-object v7, v0, Le/a/r/a0/e0/e;->g:Le/a/r/e/b;

    iput-object v8, v0, Le/a/r/a0/e0/e;->h:Le/a/r/v/a;

    iput-object v9, v0, Le/a/r/a0/e0/e;->i:Le/a/r/z/n;

    iput-object v10, v0, Le/a/r/a0/e0/e;->j:Le/a/b0/b/f/a;

    iput-object v11, v0, Le/a/r/a0/e0/e;->k:Le/a/b0/n/g;

    iput-object v12, v0, Le/a/r/a0/e0/e;->l:Le/a/r/q/c;

    iput-object v13, v0, Le/a/r/a0/e0/e;->m:Le/a/p5/q0/e;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Le/a/r/a0/e0/e;->n:J

    return-void
.end method


# virtual methods
.method public final a(Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/a0/e0/e$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/a0/e0/e$a;

    iget v1, v0, Le/a/r/a0/e0/e$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/a0/e0/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/a0/e0/e$a;

    invoke-direct {v0, p0, p1}, Le/a/r/a0/e0/e$a;-><init>(Le/a/r/a0/e0/e;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/a0/e0/e$a;->d:Ljava/lang/Object;

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v0, Le/a/r/a0/e0/e$a;->e:I

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v1, v0, Le/a/r/a0/e0/e$a;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Le/a/r/a0/e0/e$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/r/a0/e0/e;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/a0/e0/e;->c:Le/a/b0/e/r/a;

    const-string v1, "accountRestorationSource"

    .line 5
    invoke-interface {p1, v1}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "restored_from_file"

    const-string v3, "restored_from_account_manager"

    const-string v4, "restored_from_autobackup"

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x3e0c52c3

    if-eq v5, v6, :cond_7

    const v4, 0x183ef20f

    if-eq v5, v4, :cond_6

    const v3, 0x6be74788

    if-eq v5, v3, :cond_5

    goto :goto_1

    .line 6
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move-object p1, v1

    goto :goto_2

    .line 7
    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move-object p1, v3

    goto :goto_2

    .line 8
    :cond_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move-object p1, v4

    goto :goto_2

    :cond_8
    :goto_1
    const-string p1, "Account was restored, but restoration source is unknown!"

    .line 9
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    move-object p1, v9

    :goto_2
    if-nez p1, :cond_9

    .line 10
    sget-object p1, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;->MISSING_SOURCE:Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;

    invoke-virtual {p0, p1}, Le/a/r/a0/e0/e;->d(Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;)V

    .line 11
    sget-object p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->LOGOUT:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    return-object p1

    .line 12
    :cond_9
    iget-object v1, p0, Le/a/r/a0/e0/e;->j:Le/a/b0/b/f/a;

    .line 13
    new-instance v3, Lcom/truecaller/account/network/CheckCredentialsDeviceDto;

    .line 14
    iget-object v1, v1, Le/a/b0/b/f/a;->a:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "android_id"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "DeviceInfoUtils.getDeviceId(context)"

    .line 16
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Le/a/b0/q/n;->b()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-static {}, Le/a/b0/q/n;->a()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-direct {v3, v1, v4, v5}, Lcom/truecaller/account/network/CheckCredentialsDeviceDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Le/a/r/a0/e0/e;->m:Le/a/p5/q0/e;

    const/4 v4, 0x3

    .line 21
    iget-wide v5, p0, Le/a/r/a0/e0/e;->n:J

    .line 22
    new-instance v10, Le/a/r/a0/e0/e$b;

    invoke-direct {v10, p0, p1, v3}, Le/a/r/a0/e0/e$b;-><init>(Le/a/r/a0/e0/e;Ljava/lang/String;Lcom/truecaller/account/network/CheckCredentialsDeviceDto;)V

    iput-object p0, v0, Le/a/r/a0/e0/e$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/r/a0/e0/e$a;->h:Ljava/lang/Object;

    iput v2, v0, Le/a/r/a0/e0/e$a;->e:I

    move v2, v4

    move-wide v3, v5

    move-object v5, v10

    move-object v6, v0

    .line 23
    invoke-virtual/range {v1 .. v6}, Le/a/p5/q0/e;->b(IJLs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_a

    return-object v7

    :cond_a
    move-object v2, p0

    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    .line 24
    :goto_3
    check-cast p1, Le/a/n2/a/e;

    .line 25
    iput-object v9, v0, Le/a/r/a0/e0/e$a;->g:Ljava/lang/Object;

    iput-object v9, v0, Le/a/r/a0/e0/e$a;->h:Ljava/lang/Object;

    iput v8, v0, Le/a/r/a0/e0/e$a;->e:I

    invoke-virtual {v2, p1, v1, v0}, Le/a/r/a0/e0/e;->e(Le/a/n2/a/e;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v7, :cond_b

    return-object v7

    :cond_b
    :goto_4
    return-object p1
.end method

.method public final synthetic b(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/a0/e0/e$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/a0/e0/e$c;

    iget v1, v0, Le/a/r/a0/e0/e$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/a0/e0/e$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/a0/e0/e$c;

    invoke-direct {v0, p0, p1}, Le/a/r/a0/e0/e$c;-><init>(Le/a/r/a0/e0/e;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/a0/e0/e$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/a0/e0/e$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/a0/e0/e;->e:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Le/a/r/a0/e0/e;->e:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->c()V

    .line 6
    sget-object p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->ERROR:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    goto :goto_2

    .line 7
    :cond_3
    iput v3, v0, Le/a/r/a0/e0/e$c;->e:I

    invoke-virtual {p0, v0}, Le/a/r/a0/e0/e;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 8
    :cond_4
    :goto_1
    sget-object p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->SUCCESS:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    :goto_2
    return-object p1
.end method

.method public final c(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/r/a0/e0/e$d;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/r/a0/e0/e$d;

    iget v2, v1, Le/a/r/a0/e0/e$d;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/r/a0/e0/e$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/r/a0/e0/e$d;

    invoke-direct {v1, p0, p1}, Le/a/r/a0/e0/e$d;-><init>(Le/a/r/a0/e0/e;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/r/a0/e0/e$d;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/r/a0/e0/e$d;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Le/a/r/a0/e0/e$d;->g:Ljava/lang/Object;

    check-cast v1, Le/a/r/a0/e0/e;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v1, Le/a/r/a0/e0/e$d;->g:Ljava/lang/Object;

    check-cast v3, Le/a/r/a0/e0/e;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/a0/e0/e;->k:Le/a/b0/n/g;

    iput-object p0, v1, Le/a/r/a0/e0/e$d;->g:Ljava/lang/Object;

    iput v5, v1, Le/a/r/a0/e0/e$d;->e:I

    invoke-interface {p1, v1}, Le/a/b0/n/g;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v3, p0

    .line 5
    :goto_1
    iget-object p1, v3, Le/a/r/a0/e0/e;->i:Le/a/r/z/n;

    invoke-interface {p1}, Le/a/r/z/n;->b()V

    .line 6
    iget-object p1, v3, Le/a/r/a0/e0/e;->h:Le/a/r/v/a;

    iput-object v3, v1, Le/a/r/a0/e0/e$d;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/r/a0/e0/e$d;->e:I

    check-cast p1, Le/a/r/o;

    .line 7
    invoke-virtual {p1, v1}, Le/a/r/o;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    if-ne p1, v2, :cond_6

    return-object v2

    :cond_6
    move-object v1, v3

    .line 8
    :goto_3
    iget-object p1, v1, Le/a/r/a0/e0/e;->c:Le/a/b0/e/r/a;

    const-string v2, "accountRestorationSource"

    .line 9
    invoke-interface {p1, v2}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 10
    iget-object p1, v1, Le/a/r/a0/e0/e;->g:Le/a/r/e/b;

    const-string v1, "AUTO_LOGIN_STATE"

    invoke-interface {p1, v1}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;

    invoke-direct {v0, p1}, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent;-><init>(Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;)V

    iget-object p1, p0, Le/a/r/a0/e0/e;->d:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 2
    iget-object p1, p0, Le/a/r/a0/e0/e;->g:Le/a/r/e/b;

    const-string v0, "AUTO_LOGIN_STATE"

    invoke-interface {p1, v0}, Le/a/r/e/b;->remove(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/r/a0/e0/e;->e:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->o()Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    iget-object v0, p0, Le/a/r/a0/e0/e;->b:Le/a/b0/g/a;

    const/4 v1, 0x0

    sget-object v2, Lcom/truecaller/common/account/analytics/LogoutContext;->AUTO_LOGIN:Lcom/truecaller/common/account/analytics/LogoutContext;

    invoke-virtual {v0, p1, v1, v2}, Le/a/b0/g/a;->Z(Ljava/lang/String;ZLcom/truecaller/common/account/analytics/LogoutContext;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final e(Le/a/n2/a/e;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/n2/a/e;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/r/a0/e0/e$e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/r/a0/e0/e$e;

    iget v1, v0, Le/a/r/a0/e0/e$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/a0/e0/e$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/a0/e0/e$e;

    invoke-direct {v0, p0, p3}, Le/a/r/a0/e0/e$e;-><init>(Le/a/r/a0/e0/e;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/r/a0/e0/e$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/a0/e0/e$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    instance-of p3, p1, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;

    if-eqz p3, :cond_9

    .line 5
    new-instance p3, Le/a/r/a0/e0/h/a;

    invoke-direct {p3, p2}, Le/a/r/a0/e0/h/a;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Le/a/r/a0/e0/e;->d:Le/a/q2/a;

    invoke-static {p3, p2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 6
    check-cast p1, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;

    invoke-virtual {p1}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getInstallationId()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_4

    .line 7
    iget-object p3, p0, Le/a/r/a0/e0/e;->e:Le/a/b0/e/l;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getTtl()Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    :cond_3
    move-wide v6, v4

    :goto_1
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-interface {p3, p2, v6, v7}, Le/a/b0/e/l;->r(Ljava/lang/String;J)V

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getDomain()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p2, :cond_5

    .line 9
    iget-object p2, p0, Le/a/r/a0/e0/e;->c:Le/a/b0/e/r/a;

    invoke-virtual {p1}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getDomain()Ljava/lang/String;

    move-result-object p3

    const-string v2, "networkDomain"

    invoke-interface {p2, v2, p3}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_5
    iget-object p2, p0, Le/a/r/a0/e0/e;->c:Le/a/b0/e/r/a;

    const-string p3, "restored_credentials_check_state"

    invoke-interface {p2, p3}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getSuspended()Ljava/lang/Boolean;

    move-result-object p2

    .line 12
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    invoke-static {p2, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 14
    iget-object p2, p0, Le/a/r/a0/e0/e;->g:Le/a/r/e/b;

    const-string p3, "AUTO_LOGIN_STATE"

    invoke-interface {p2, p3, v3}, Le/a/r/e/b;->putInt(Ljava/lang/String;I)V

    .line 15
    iget-object p2, p0, Le/a/r/a0/e0/e;->e:Le/a/b0/e/l;

    invoke-virtual {p1}, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->getNextSuspensionCheck()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_6
    invoke-interface {p2, v4, v5}, Le/a/b0/e/l;->h(J)V

    .line 16
    iget-object p1, p0, Le/a/r/a0/e0/e;->e:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->c()V

    .line 17
    sget-object p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->ERROR:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    return-object p1

    .line 18
    :cond_7
    iput v3, v0, Le/a/r/a0/e0/e$e;->e:I

    invoke-virtual {p0, v0}, Le/a/r/a0/e0/e;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 19
    :cond_8
    :goto_2
    sget-object p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->SUCCESS:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    return-object p1

    .line 20
    :cond_9
    instance-of p2, p1, Le/a/n2/a/f;

    if-eqz p2, :cond_a

    check-cast p1, Le/a/n2/a/f;

    invoke-virtual {p1}, Le/a/n2/a/f;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 21
    sget-object p1, Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;->STALE_CREDENTIALS:Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;

    invoke-virtual {p0, p1}, Le/a/r/a0/e0/e;->d(Lcom/truecaller/wizard/welcome/autologin/analyitcs/AutoLoginLogoutEvent$LogoutReason;)V

    .line 22
    sget-object p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->LOGOUT:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    return-object p1

    .line 23
    :cond_a
    sget-object p1, Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;->ERROR:Lcom/truecaller/wizard/welcome/autologin/AutoLoginResult;

    return-object p1
.end method
