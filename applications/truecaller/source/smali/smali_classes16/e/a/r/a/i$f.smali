.class public final Le/a/r/a/i$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/a/i;->Jj(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.backup.WizardRestoreBackupPresenter$onRestoreClicked$1"
    f = "WizardRestoreBackupPresenter.kt"
    l = {
        0x51,
        0x52,
        0x57,
        0x5a,
        0x5b,
        0x61,
        0x6c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/a/i;

.field public final synthetic g:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Le/a/r/a/i;Landroidx/fragment/app/Fragment;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    iput-object p2, p0, Le/a/r/a/i$f;->g:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a/i$f;

    iget-object v0, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    iget-object v1, p0, Le/a/r/a/i$f;->g:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a/i$f;-><init>(Le/a/r/a/i;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/a/i$f;

    iget-object v0, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    iget-object v1, p0, Le/a/r/a/i$f;->g:Landroidx/fragment/app/Fragment;

    invoke-direct {p1, v0, v1, p2}, Le/a/r/a/i$f;-><init>(Le/a/r/a/i;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/a/i$f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/r/a/i$f;->e:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    .line 5
    iget-object p1, p1, Le/a/r/a/i;->g:Le/a/n/m;

    .line 6
    iget-object v2, p0, Le/a/r/a/i$f;->g:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x1

    iput v4, p0, Le/a/r/a/i$f;->e:I

    invoke-interface {p1, v2, p0}, Le/a/n/m;->b(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_0

    return-object v1

    :cond_0
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    .line 8
    iget-object p1, p1, Le/a/r/a/i;->e:Ls1/w/f;

    .line 9
    new-instance v2, Le/a/r/a/i$f$a;

    invoke-direct {v2, p0, v3}, Le/a/r/a/i$f$a;-><init>(Le/a/r/a/i$f;Ls1/w/d;)V

    const/4 v3, 0x2

    iput v3, p0, Le/a/r/a/i$f;->e:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    return-object v1

    :cond_1
    :goto_1
    return-object v0

    .line 10
    :cond_2
    iget-object p1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    .line 11
    iget-object v2, p1, Le/a/r/a/i;->g:Le/a/n/m;

    .line 12
    iget-object p1, p1, Le/a/r/a/i;->d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->getUserId()J

    move-result-wide v4

    const/4 p1, 0x3

    iput p1, p0, Le/a/r/a/i$f;->e:I

    invoke-interface {v2, v4, v5, p0}, Le/a/n/m;->h(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_6

    .line 14
    iget-object p1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    iget-object v2, p0, Le/a/r/a/i$f;->g:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x4

    iput v4, p0, Le/a/r/a/i$f;->e:I

    invoke-virtual {p1, v2, p0}, Le/a/r/a/i;->Lj(Landroidx/fragment/app/Fragment;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    .line 15
    iget-object p1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    .line 16
    iget-object p1, p1, Le/a/r/a/i;->e:Ls1/w/f;

    .line 17
    new-instance v2, Le/a/r/a/i$f$b;

    invoke-direct {v2, p0, v3}, Le/a/r/a/i$f$b;-><init>(Le/a/r/a/i$f;Ls1/w/d;)V

    const/4 v3, 0x5

    iput v3, p0, Le/a/r/a/i$f;->e:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_4
    return-object v0

    .line 18
    :cond_6
    iget-object p1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    .line 19
    iget-object v2, p1, Le/a/r/a/i;->g:Le/a/n/m;

    .line 20
    iget-object p1, p1, Le/a/r/a/i;->d:Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;

    .line 21
    invoke-virtual {p1}, Lcom/truecaller/wizard/AccountHelperImpl$AccountRecoveryParams;->getUserId()J

    move-result-wide v4

    const/4 p1, 0x6

    iput p1, p0, Le/a/r/a/i$f;->e:I

    invoke-interface {v2, v4, v5, p0}, Le/a/n/m;->f(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_5
    check-cast p1, Ls1/k;

    .line 22
    iget-object v2, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 23
    check-cast v2, Lcom/truecaller/backup/BackupResult;

    .line 24
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 25
    check-cast p1, Lcom/truecaller/backup/account/BackedUpAccountData;

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore completed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    sget-object v4, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-ne v2, v4, :cond_8

    if-eqz p1, :cond_8

    .line 28
    iget-object v1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    .line 29
    iget-object v1, v1, Le/a/r/a/i;->p:Le/a/b0/o/a;

    .line 30
    sget-object v2, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;->RESTORE:Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;

    invoke-virtual {v2}, Lcom/truecaller/wizard/backup/RestoreDataBackupPendingAction;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "restoreDataBackupPendingAction"

    invoke-interface {v1, v3, v2}, Le/a/b0/o/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    invoke-virtual {p1}, Lcom/truecaller/backup/account/BackedUpAccountData;->getInstallationId()Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Le/a/r/a/i;->Kj(Ljava/lang/String;)V

    goto :goto_6

    .line 33
    :cond_8
    iget-object p1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    .line 34
    iget-object p1, p1, Le/a/r/a/i;->m:Le/a/r/a/d;

    .line 35
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "result"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Le/a/r/a/d;->b(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Le/a/r/a/i$f;->f:Le/a/r/a/i;

    .line 38
    iget-object p1, p1, Le/a/r/a/i;->e:Ls1/w/f;

    .line 39
    new-instance v2, Le/a/r/a/i$f$c;

    invoke-direct {v2, p0, v3}, Le/a/r/a/i$f$c;-><init>(Le/a/r/a/i$f;Ls1/w/d;)V

    const/4 v3, 0x7

    iput v3, p0, Le/a/r/a/i$f;->e:I

    invoke-static {p1, v2, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
