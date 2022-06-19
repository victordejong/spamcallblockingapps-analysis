.class public final Le/a/d5/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/b;


# instance fields
.field public final a:Z

.field public final b:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final c:Le/a/z4/d;

.field public final d:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/z4/d;Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "generalSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/h/i;->c:Le/a/z4/d;

    iput-object p2, p0, Le/a/d5/h/i;->d:Le/a/b0/o/a;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/d5/h/i;->a:Z

    .line 3
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->TRUECALLER_ONBOARDING:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/i;->b:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1

    const-string v0, "fromActivity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/l4/k;->o(Landroid/app/Activity;)Landroid/content/Intent;

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lcom/truecaller/startup_dialogs/StartupDialogType;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d5/h/i;->b:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/d5/h/i;->c:Le/a/z4/d;

    const-string v0, "backupOnboardingAvailable"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d5/h/i;->c:Le/a/z4/d;

    const-string v1, "hasShownWelcome"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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
    iget-object p1, p0, Le/a/d5/h/i;->d:Le/a/b0/o/a;

    const-string v0, "core_isReturningUser"

    invoke-interface {p1, v0}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/d5/h/i;->c:Le/a/z4/d;

    const-string v2, "backupOnboardingAvailable"

    invoke-interface {p1, v2, v1}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/d5/h/i;->d:Le/a/b0/o/a;

    invoke-interface {p1, v0}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/d5/h/i;->c:Le/a/z4/d;

    const-string v0, "hasShownWelcome"

    invoke-interface {p1, v0}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    new-instance v0, Le/a/d5/g/j;

    invoke-direct {v0}, Le/a/d5/g/j;-><init>()V

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d5/h/i;->a:Z

    return v0
.end method

.method public h(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
