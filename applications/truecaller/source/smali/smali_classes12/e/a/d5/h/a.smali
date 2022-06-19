.class public final Le/a/d5/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d5/b;


# instance fields
.field public final a:Z

.field public final b:Lcom/truecaller/startup_dialogs/StartupDialogType;

.field public final c:Ls1/g;

.field public d:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

.field public e:J

.field public final f:Le/a/b0/e/l;

.field public final g:Le/a/n/e;

.field public final h:Le/a/b0/o/a;

.field public final i:Le/a/z4/d;

.field public final j:Le/a/n/i0;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/n/e;Le/a/b0/o/a;Le/a/z4/d;Le/a/n/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupAvailabilityProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d5/h/a;->f:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/d5/h/a;->g:Le/a/n/e;

    iput-object p3, p0, Le/a/d5/h/a;->h:Le/a/b0/o/a;

    iput-object p4, p0, Le/a/d5/h/a;->i:Le/a/z4/d;

    iput-object p5, p0, Le/a/d5/h/a;->j:Le/a/n/i0;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/d5/h/a;->a:Z

    .line 3
    sget-object p1, Lcom/truecaller/startup_dialogs/StartupDialogType;->BACKUP_ONBOARDING:Lcom/truecaller/startup_dialogs/StartupDialogType;

    iput-object p1, p0, Le/a/d5/h/a;->b:Lcom/truecaller/startup_dialogs/StartupDialogType;

    .line 4
    new-instance p1, Le/a/d5/h/a$a;

    invoke-direct {p1, p0}, Le/a/d5/h/a$a;-><init>(Le/a/d5/h/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d5/h/a;->c:Ls1/g;

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
    iget-object v0, p0, Le/a/d5/h/a;->b:Lcom/truecaller/startup_dialogs/StartupDialogType;

    return-object v0
.end method

.method public c(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d5/h/a;->d:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d5/h/a;->i:Le/a/z4/d;

    const-string v1, "backupOnboardingShown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
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

    instance-of v0, p1, Le/a/d5/h/a$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d5/h/a$b;

    iget v1, v0, Le/a/d5/h/a$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d5/h/a$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d5/h/a$b;

    invoke-direct {v0, p0, p1}, Le/a/d5/h/a$b;-><init>(Le/a/d5/h/a;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d5/h/a$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d5/h/a$b;->e:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v6, :cond_1

    iget v1, v0, Le/a/d5/h/a$b;->i:I

    iget v2, v0, Le/a/d5/h/a$b;->h:I

    iget-object v0, v0, Le/a/d5/h/a$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d5/h/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

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
    iget-object p1, p0, Le/a/d5/h/a;->i:Le/a/z4/d;

    const-string v2, "backupOnboardingAvailable"

    invoke-interface {p1, v2}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Le/a/d5/h/a;->i:Le/a/z4/d;

    const-string v7, "backupOnboardingShown"

    invoke-interface {p1, v7}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Le/a/d5/h/a;->f:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/d5/h/a;->g:Le/a/n/e;

    invoke-interface {p1}, Le/a/n/e;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Le/a/d5/h/a;->c:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;

    .line 7
    sget-object v7, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;->SKIP:Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;

    if-eq p1, v7, :cond_3

    move p1, v6

    goto :goto_1

    :cond_3
    move p1, v5

    .line 8
    :goto_1
    iget-object v7, p0, Le/a/d5/h/a;->i:Le/a/z4/d;

    invoke-interface {v7, v2, v5}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    iget-object v2, p0, Le/a/d5/h/a;->d:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    sget-object v7, Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;->BACKUP_FOUND:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    if-ne v2, v7, :cond_4

    move v2, v6

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_2
    if-eqz v2, :cond_5

    .line 10
    iget-object v0, p0, Le/a/d5/h/a;->h:Le/a/b0/o/a;

    const-string v1, "key_drive_last_backup_timestamp"

    invoke-interface {v0, v1, v3, v4}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Le/a/d5/h/a;->e:J

    .line 11
    iget-object v0, p0, Le/a/d5/h/a;->h:Le/a/b0/o/a;

    invoke-interface {v0, v1}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_7

    .line 12
    iget-object v7, p0, Le/a/d5/h/a;->j:Le/a/n/i0;

    iput-object p0, v0, Le/a/d5/h/a$b;->g:Ljava/lang/Object;

    iput p1, v0, Le/a/d5/h/a$b;->h:I

    iput v2, v0, Le/a/d5/h/a$b;->i:I

    iput v6, v0, Le/a/d5/h/a$b;->e:I

    const/4 v8, 0x0

    .line 13
    invoke-interface {v7, v8, v0}, Le/a/n/i0;->e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, p0

    move v1, v2

    move v2, p1

    :goto_3
    move p1, v2

    move v2, v1

    goto :goto_5

    :cond_7
    :goto_4
    move-object v0, p0

    :goto_5
    if-nez p1, :cond_8

    if-eqz v2, :cond_9

    .line 14
    iget-wide v0, v0, Le/a/d5/h/a;->e:J

    cmp-long p1, v0, v3

    if-lez p1, :cond_9

    :cond_8
    move v5, v6

    .line 15
    :cond_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public f()Landroidx/fragment/app/Fragment;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/d5/h/a;->h:Le/a/b0/o/a;

    const-string v1, "key_backup_fetched_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    iget-object v4, p0, Le/a/d5/h/a;->d:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    sget-object v5, Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;->BACKUP_FOUND:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    .line 3
    new-instance v0, Le/a/n/c;

    invoke-direct {v0}, Le/a/n/c;-><init>()V

    goto :goto_2

    .line 4
    :cond_1
    new-instance v2, Le/a/n/b;

    invoke-direct {v2}, Le/a/n/b;-><init>()V

    .line 5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz v4, :cond_2

    .line 6
    iget-wide v0, p0, Le/a/d5/h/a;->e:J

    :cond_2
    const-string v5, "last_backup_time"

    invoke-virtual {v3, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "context"

    const-string v1, "wizard"

    .line 7
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    const-string v0, "enable_backup_if_skipped"

    .line 8
    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Le/a/d5/h/a;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;

    .line 10
    sget-object v1, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;->RESTORE:Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;

    if-ne v0, v1, :cond_4

    move v6, v7

    :cond_4
    const-string v0, "auto_restore"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    :goto_1
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v0, v2

    :goto_2
    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d5/h/a;->a:Z

    return v0
.end method

.method public h(Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;->BACKUP_RESTORED:Lcom/truecaller/startup_dialogs/StartupDialogDismissReason;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
