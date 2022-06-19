.class public final Le/a/d5/h/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/b;


# instance fields
.field public final a:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final b:Z

.field public final c:Le/a/l/p2/c0;

.field public final d:Le/a/z4/d;

.field public final e:Le/a/b0/q/l0;

.field public final f:Le/a/l/a2;

.field public final g:Le/a/l/a/y;

.field public final h:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/l/p2/c0;Le/a/z4/d;Le/a/b0/q/l0;Le/a/l/a2;Le/a/l/a/y;Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumDataPrefetcher"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumScreenNavigator"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/h/j;->c:Le/a/l/p2/c0;

    iput-object p2, p0, Le/a/d5/h/j;->d:Le/a/z4/d;

    iput-object p3, p0, Le/a/d5/h/j;->e:Le/a/b0/q/l0;

    iput-object p4, p0, Le/a/d5/h/j;->f:Le/a/l/a2;

    iput-object p5, p0, Le/a/d5/h/j;->g:Le/a/l/a/y;

    iput-object p6, p0, Le/a/d5/h/j;->h:Le/a/b0/o/a;

    .line 2
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->ONBOARDING_PREMIUM_POPUP:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/j;->a:Lcom/truecaller/startup_dialogs/StartupDialogType;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/a/d5/h/j;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 8

    const-string v0, "fromActivity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/d5/h/j;->f:Le/a/l/a2;

    .line 2
    iget-object v0, p0, Le/a/d5/h/j;->h:Le/a/b0/o/a;

    const-string v2, "core_isReturningUser"

    invoke-interface {v0, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/truecaller/premium/PremiumLaunchContext;->ONBOARDING_POPUP:Lcom/truecaller/premium/PremiumLaunchContext;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/premium/PremiumLaunchContext;->NEW_USER_ON_BOARDING:Lcom/truecaller/premium/PremiumLaunchContext;

    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p1

    .line 3
    invoke-static/range {v1 .. v7}, Le/a/c/p/a;->J(Le/a/l/a2;Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;ILjava/lang/Object;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/truecaller/startup_dialogs/StartupDialogType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/j;->a:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d5/h/j;->d:Le/a/z4/d;

    iget-object v1, p0, Le/a/d5/h/j;->e:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    const-string v3, "promo_popup_last_shown_timestamp"

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Le/a/d5/h/j;->d:Le/a/z4/d;

    const-string v1, "general_onboarding_premium_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    iget-object p1, p0, Le/a/d5/h/j;->d:Le/a/z4/d;

    const-string v0, "general_onboarding_premium_shown"

    invoke-interface {p1, v0}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/d5/h/j;->c:Le/a/l/p2/c0;

    invoke-interface {p1}, Le/a/l/p2/c0;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/d5/h/j;->g:Le/a/l/a/y;

    invoke-virtual {p1}, Le/a/l/a/y;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d5/h/j;->b:Z

    return v0
.end method

.method public h(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
