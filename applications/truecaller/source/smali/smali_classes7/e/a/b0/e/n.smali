.class public final Le/a/b0/e/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/e/l;


# instance fields
.field public a:J

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Le/a/b0/e/r/a;

.field public final f:Le/a/p5/c;

.field public final g:Le/a/b0/e/k;

.field public final h:Le/a/q2/a;

.field public final i:Le/a/b0/e/q/a;

.field public final j:Le/a/n2/a/a;

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/g0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/g0/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b0/e/r/a;Le/a/p5/c;Le/a/b0/e/k;Le/a/q2/a;Le/a/b0/e/q/a;Le/a/n2/a/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/e/r/a;",
            "Le/a/p5/c;",
            "Le/a/b0/e/k;",
            "Le/a/q2/a;",
            "Le/a/b0/e/q/a;",
            "Le/a/n2/a/a;",
            "Lo3/a<",
            "Le/a/g0/d;",
            ">;",
            "Lo3/a<",
            "Le/a/g0/b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountBackupManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyTruecallerAccountManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRequestHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suspensionManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSuspensionListener"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    iput-object p2, p0, Le/a/b0/e/n;->f:Le/a/p5/c;

    iput-object p3, p0, Le/a/b0/e/n;->g:Le/a/b0/e/k;

    iput-object p4, p0, Le/a/b0/e/n;->h:Le/a/q2/a;

    iput-object p5, p0, Le/a/b0/e/n;->i:Le/a/b0/e/q/a;

    iput-object p6, p0, Le/a/b0/e/n;->j:Le/a/n2/a/a;

    iput-object p7, p0, Le/a/b0/e/n;->k:Lo3/a;

    iput-object p8, p0, Le/a/b0/e/n;->l:Lo3/a;

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/e/n;->c:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/e/n;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Le/a/b0/e/c;
    .locals 15

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->i:Le/a/b0/e/q/a;

    .line 2
    iget-object v1, v0, Le/a/b0/e/q/a;->a:Landroid/accounts/AccountManager;

    iget-object v2, v0, Le/a/b0/e/q/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "accountManager.getAccountsByType(accountType)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    const-string v3, "true"

    const-string v4, "isMigratedToSettings"

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 3
    iget-object v6, v0, Le/a/b0/e/q/a;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v6, v1, v4}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v6, v0, Le/a/b0/e/q/a;->a:Landroid/accounts/AccountManager;

    const-string v7, "country_code"

    invoke-virtual {v6, v1, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5
    iget-object v7, v0, Le/a/b0/e/q/a;->a:Landroid/accounts/AccountManager;

    const-string v8, "phone_number"

    invoke-virtual {v7, v1, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 6
    new-instance v8, Le/a/b0/e/c;

    .line 7
    iget-object v0, v0, Le/a/b0/e/q/a;->a:Landroid/accounts/AccountManager;

    const-string v9, "installation_id"

    invoke-virtual {v0, v1, v9}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v1, Le/a/b0/e/b;

    invoke-direct {v1, v6, v7}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {v8, v0, v1, v5}, Le/a/b0/e/c;-><init>(Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v8, v5

    :goto_1
    if-eqz v8, :cond_3

    .line 10
    iget-object v10, v8, Le/a/b0/e/c;->a:Ljava/lang/String;

    const-wide/16 v11, 0x0

    .line 11
    iget-object v13, v8, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    .line 12
    iget-object v14, v8, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    move-object v9, p0

    .line 13
    invoke-virtual/range {v9 .. v14}, Le/a/b0/e/n;->j(Ljava/lang/String;JLe/a/b0/e/b;Le/a/b0/e/b;)V

    .line 14
    iget-object v0, p0, Le/a/b0/e/n;->i:Le/a/b0/e/q/a;

    .line 15
    iget-object v1, v0, Le/a/b0/e/q/a;->a:Landroid/accounts/AccountManager;

    iget-object v5, v0, Le/a/b0/e/q/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    if-eqz v1, :cond_2

    .line 16
    iget-object v0, v0, Le/a/b0/e/q/a;->a:Landroid/accounts/AccountManager;

    invoke-virtual {v0, v1, v4, v3}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    iget-object v0, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v1, "accountRestorationSource"

    const-string v2, "restored_from_account_manager"

    invoke-interface {v0, v1, v2}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    :cond_3
    return-object v5
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->k:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g0/d;

    invoke-interface {v0}, Le/a/g0/d;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->l:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g0/b;

    invoke-interface {v0}, Le/a/g0/b;->c()V

    return-void
.end method

.method public d()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/b0/e/n;->v()Le/a/b0/e/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/b0/e/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v2, "restored_credentials_check_state"

    invoke-interface {v0, v2, v1}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e()Le/a/b0/e/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/b0/e/n;->v()Le/a/b0/e/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/b0/e/n;->v()Le/a/b0/e/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/a/b0/e/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g()Le/a/b0/e/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/b0/e/n;->v()Le/a/b0/e/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->k:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g0/d;

    invoke-interface {v0, p1, p2}, Le/a/g0/d;->h(J)V

    return-void
.end method

.method public i(Ljava/lang/String;Lcom/truecaller/common/account/analytics/LogoutContext;)Z
    .locals 5

    const-string v0, "installationId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v2, "installationId"

    invoke-interface {v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v3, "installationId"

    invoke-interface {v1, v3}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v3, "installationIdFetchTime"

    invoke-interface {v1, v3}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v3, "installationIdTtl"

    invoke-interface {v1, v3}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v3, "secondary_country_code"

    invoke-interface {v1, v3}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v3, "secondary_normalized_number"

    invoke-interface {v1, v3}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v3, "restored_credentials_check_state"

    invoke-interface {v1, v3}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Le/a/b0/e/n;->g:Le/a/b0/e/k;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "installationId"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, v1, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    iget-object v4, v1, Le/a/b0/e/k;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, v1, Le/a/b0/e/k;->c:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 13
    iget-object p1, v1, Le/a/b0/e/k;->e:Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 14
    iget-object p1, p0, Le/a/b0/e/n;->k:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/g0/d;

    invoke-interface {p1}, Le/a/g0/d;->l()V

    .line 15
    new-instance p1, Le/a/b0/e/p/a;

    invoke-direct {p1, p2}, Le/a/b0/e/p/a;-><init>(Lcom/truecaller/common/account/analytics/LogoutContext;)V

    iget-object p2, p0, Le/a/b0/e/n;->h:Le/a/q2/a;

    invoke-static {p1, p2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0

    throw p1
.end method

.method public j(Ljava/lang/String;JLe/a/b0/e/b;Le/a/b0/e/b;)V
    .locals 3

    const-string v0, "installationId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryPhoneNumber"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v2, "installationId"

    invoke-interface {v1, v2, p1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v2, "installationIdTtl"

    invoke-interface {v1, v2, p2, p3}, Le/a/b0/e/r/a;->putLong(Ljava/lang/String;J)V

    .line 4
    iget-object p2, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string p3, "installationIdFetchTime"

    iget-object v1, p0, Le/a/b0/e/n;->f:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-interface {p2, p3, v1, v2}, Le/a/b0/e/r/a;->putLong(Ljava/lang/String;J)V

    .line 5
    iget-object p2, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string p3, "profileCountryIso"

    .line 6
    iget-object v1, p4, Le/a/b0/e/b;->a:Ljava/lang/String;

    .line 7
    invoke-interface {p2, p3, v1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string p3, "profileNumber"

    .line 9
    iget-object v1, p4, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 10
    invoke-interface {p2, p3, v1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string p3, "secondary_country_code"

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    .line 12
    iget-object v2, p5, Le/a/b0/e/b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 13
    :goto_0
    invoke-interface {p2, p3, v2}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string p3, "secondary_normalized_number"

    if-eqz p5, :cond_1

    .line 15
    iget-object v1, p5, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 16
    :cond_1
    invoke-interface {p2, p3, v1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p2, p0, Le/a/b0/e/n;->g:Le/a/b0/e/k;

    .line 18
    new-instance p3, Le/a/b0/e/c;

    invoke-direct {p3, p1, p4, p5}, Le/a/b0/e/c;-><init>(Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;)V

    .line 19
    invoke-virtual {p2, p3}, Le/a/b0/e/k;->b(Le/a/b0/e/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public k(Le/a/b0/e/b;)V
    .locals 5

    const-string v0, "secondaryPhoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/a/b0/e/n;->v()Le/a/b0/e/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v3, "secondary_country_code"

    .line 4
    iget-object v4, p1, Le/a/b0/e/b;->a:Ljava/lang/String;

    .line 5
    invoke-interface {v2, v3, v4}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v3, "secondary_normalized_number"

    .line 7
    iget-object v4, p1, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 8
    invoke-interface {v2, v3, v4}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Le/a/b0/e/n;->g:Le/a/b0/e/k;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 10
    invoke-static {v1, v4, v4, p1, v3}, Le/a/b0/e/c;->a(Le/a/b0/e/c;Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;I)Le/a/b0/e/c;

    move-result-object p1

    .line 11
    invoke-virtual {v2, p1}, Le/a/b0/e/k;->b(Le/a/b0/e/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit v0

    return-void

    .line 13
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0

    throw p1
.end method

.method public l()Z
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v1, "refresh_phone_numbers_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Le/a/b0/e/r/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "accountSettings.getLong(\u2026NE_NUMBERS_TIMESTAMP, 0L)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Le/a/b0/e/n;->f:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v2

    .line 3
    sget-wide v4, Le/a/b0/e/o;->d:J

    add-long/2addr v4, v0

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/b0/e/n;->j:Le/a/n2/a/a;

    check-cast v0, Le/a/n2/a/b;

    :try_start_0
    invoke-virtual {v0}, Le/a/n2/a/b;->d()Lcom/truecaller/account/network/AccountPhoneNumbersResponseDto;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Ls1/l$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v0, v2

    .line 6
    :cond_1
    check-cast v0, Lcom/truecaller/account/network/AccountPhoneNumbersResponseDto;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    iget-object v3, p0, Le/a/b0/e/n;->f:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    const-string v6, "refresh_phone_numbers_timestamp"

    invoke-interface {v1, v6, v3, v4}, Le/a/b0/e/r/a;->putLong(Ljava/lang/String;J)V

    :cond_2
    if-eqz v0, :cond_7

    .line 8
    iget-object v1, p0, Le/a/b0/e/n;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_1
    invoke-virtual {p0}, Le/a/b0/e/n;->v()Le/a/b0/e/c;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/account/network/AccountPhoneNumbersResponseDto;->getPhones()Ljava/util/List;

    move-result-object v0

    .line 11
    new-instance v4, Le/a/b0/e/m;

    invoke-direct {v4}, Le/a/b0/e/m;-><init>()V

    invoke-static {v0, v4}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/account/network/AccountPhoneNumberDto;

    invoke-static {v4}, Le/a/b0/e/o;->a(Lcom/truecaller/account/network/AccountPhoneNumberDto;)Le/a/b0/e/b;

    move-result-object v4

    const/4 v6, 0x1

    .line 13
    invoke-static {v0, v6}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/account/network/AccountPhoneNumberDto;

    if-eqz v0, :cond_3

    invoke-static {v0}, Le/a/b0/e/o;->a(Lcom/truecaller/account/network/AccountPhoneNumberDto;)Le/a/b0/e/b;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 14
    :goto_1
    invoke-virtual {p0}, Le/a/b0/e/n;->g()Le/a/b0/e/b;

    move-result-object v7

    invoke-static {v4, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Le/a/b0/e/n;->e()Le/a/b0/e/b;

    move-result-object v7

    invoke-static {v0, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_4

    monitor-exit v1

    goto :goto_3

    .line 15
    :cond_4
    :try_start_2
    iget-object v5, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v7, "profileCountryIso"

    .line 16
    iget-object v8, v4, Le/a/b0/e/b;->a:Ljava/lang/String;

    .line 17
    invoke-interface {v5, v7, v8}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v5, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v7, "profileNumber"

    .line 19
    iget-object v8, v4, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 20
    invoke-interface {v5, v7, v8}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 21
    iget-object v5, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v7, "secondary_country_code"

    .line 22
    iget-object v8, v0, Le/a/b0/e/b;->a:Ljava/lang/String;

    .line 23
    invoke-interface {v5, v7, v8}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v5, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v7, "secondary_normalized_number"

    .line 25
    iget-object v8, v0, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 26
    invoke-interface {v5, v7, v8}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_5
    iget-object v5, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v7, "secondary_country_code"

    invoke-interface {v5, v7}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 28
    iget-object v5, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v7, "secondary_normalized_number"

    invoke-interface {v5, v7}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 29
    :goto_2
    iget-object v5, p0, Le/a/b0/e/n;->g:Le/a/b0/e/k;

    .line 30
    invoke-static {v3, v2, v4, v0, v6}, Le/a/b0/e/c;->a(Le/a/b0/e/c;Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;I)Le/a/b0/e/c;

    move-result-object v0

    .line 31
    invoke-virtual {v5, v0}, Le/a/b0/e/k;->b(Le/a/b0/e/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    monitor-exit v1

    move v5, v6

    goto :goto_3

    .line 33
    :cond_6
    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 34
    monitor-exit v1

    throw v0

    :cond_7
    :goto_3
    return v5
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/b0/e/n;->v()Le/a/b0/e/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/b0/e/c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/b0/e/n;->v()Le/a/b0/e/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/a/b0/e/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/a/b0/e/n;->v()Le/a/b0/e/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Le/a/b0/e/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Le/a/b0/e/n;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method

.method public p(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/b0/e/n;->e()Le/a/b0/e/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget v1, Le/a/b0/e/o;->e:I

    .line 3
    iget-object v1, v0, Le/a/b0/e/b;->b:Ljava/lang/String;

    const-string v2, "+"

    .line 4
    invoke-static {v1, v2}, Ls1/f0/v;->P(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Le/a/b0/e/n;->u(Le/a/b0/e/b;)Le/a/b0/e/d;

    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "installationId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->k:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g0/d;

    invoke-interface {v0, p1}, Le/a/g0/d;->f(Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;J)V
    .locals 6

    const-string v0, "newInstallationId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v2, "installationId"

    invoke-interface {v1, v2, p1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v2, "installationIdFetchTime"

    iget-object v3, p0, Le/a/b0/e/n;->f:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Le/a/b0/e/r/a;->putLong(Ljava/lang/String;J)V

    .line 4
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v2, "installationIdTtl"

    invoke-interface {v1, v2, p2, p3}, Le/a/b0/e/r/a;->putLong(Ljava/lang/String;J)V

    .line 5
    iget-object p2, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string p3, "profileNumber"

    invoke-interface {p2, p3}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p3, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v1, "profileCountryIso"

    invoke-interface {p3, v1}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 7
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v2, "secondary_country_code"

    invoke-interface {v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v3, "secondary_normalized_number"

    invoke-interface {v2, v3}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v3, p0, Le/a/b0/e/n;->g:Le/a/b0/e/k;

    .line 10
    new-instance v4, Le/a/b0/e/c;

    .line 11
    new-instance v5, Le/a/b0/e/b;

    invoke-direct {v5, p3, p2}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 12
    new-instance p2, Le/a/b0/e/b;

    invoke-direct {p2, v1, v2}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 13
    :goto_0
    invoke-direct {v4, p1, v5, p2}, Le/a/b0/e/c;-><init>(Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;)V

    .line 14
    invoke-virtual {v3, v4}, Le/a/b0/e/k;->b(Le/a/b0/e/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    return-void

    .line 16
    :cond_1
    monitor-exit v0

    return-void

    .line 17
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0

    throw p1
.end method

.method public s()Le/a/b0/e/d;
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/b0/e/n;->e()Le/a/b0/e/b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    sget v1, Le/a/b0/e/o;->e:I

    .line 3
    iget-object v1, v0, Le/a/b0/e/b;->b:Ljava/lang/String;

    const-string v2, "+"

    .line 4
    invoke-static {v1, v2}, Ls1/f0/v;->P(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 6
    :try_start_0
    iget-object v3, p0, Le/a/b0/e/n;->j:Le/a/n2/a/a;

    new-instance v4, Lcom/truecaller/account/network/DeleteSecondaryNumberRequestDto;

    invoke-direct {v4, v1, v2}, Lcom/truecaller/account/network/DeleteSecondaryNumberRequestDto;-><init>(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v3, Le/a/n2/a/b;

    :try_start_1
    invoke-virtual {v3, v4}, Le/a/n2/a/b;->b(Lcom/truecaller/account/network/DeleteSecondaryNumberRequestDto;)Le/a/n2/a/g;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    sget-object v2, Le/a/n2/a/h;->a:Le/a/n2/a/h;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8
    instance-of v2, v1, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;

    if-eqz v2, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;

    invoke-virtual {v3}, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;->getStatus()I

    move-result v3

    const v4, 0x9dd6

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    new-instance v0, Le/a/b0/e/d$a$a;

    check-cast v1, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;

    invoke-virtual {v1}, Lcom/truecaller/account/network/DeleteSecondaryNumberResponseError;->getStatus()I

    move-result v1

    invoke-direct {v0, v1}, Le/a/b0/e/d$a$a;-><init>(I)V

    goto :goto_3

    .line 10
    :cond_2
    sget-object v0, Le/a/b0/e/d$a$b;->a:Le/a/b0/e/d$a$b;

    goto :goto_3

    .line 11
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Le/a/b0/e/n;->u(Le/a/b0/e/b;)Le/a/b0/e/d;

    move-result-object v0

    :goto_3
    return-object v0

    .line 12
    :cond_4
    sget-object v0, Le/a/b0/e/d$a$c;->a:Le/a/b0/e/d$a$c;

    .line 13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid number format"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-object v0

    .line 14
    :cond_5
    sget-object v0, Le/a/b0/e/d$a$d;->a:Le/a/b0/e/d$a$d;

    return-object v0
.end method

.method public final t()Le/a/b0/e/c;
    .locals 15

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->g:Le/a/b0/e/k;

    .line 2
    invoke-virtual {v0}, Le/a/b0/e/k;->a()Landroid/accounts/Account;

    move-result-object v1

    const-string v2, "accountRestorationSource"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v4, v0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    const-string v5, "installation_id_backup"

    invoke-virtual {v4, v1, v5}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, v0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    const-string v6, "normalized_number_backup"

    invoke-virtual {v5, v1, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v6, v0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    const-string v7, "country_code_backup"

    invoke-virtual {v6, v1, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6
    iget-object v7, v0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    const-string v8, "secondary_normalized_number_backup"

    invoke-virtual {v7, v1, v8}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7
    iget-object v8, v0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    const-string v9, "secondary_country_code_backup"

    invoke-virtual {v8, v1, v9}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 8
    new-instance v8, Le/a/b0/e/c;

    .line 9
    new-instance v9, Le/a/b0/e/b;

    invoke-direct {v9, v6, v5}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 10
    new-instance v5, Le/a/b0/e/b;

    invoke-direct {v5, v1, v7}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v5, v3

    .line 11
    :goto_0
    invoke-direct {v8, v4, v9, v5}, Le/a/b0/e/c;-><init>(Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;)V

    goto :goto_1

    :cond_1
    move-object v8, v3

    :goto_1
    if-eqz v8, :cond_2

    .line 12
    iget-object v0, v0, Le/a/b0/e/k;->f:Le/a/b0/e/r/a;

    const-string v1, "restored_from_account_manager"

    invoke-interface {v0, v2, v1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 13
    :cond_2
    iget-object v1, v0, Le/a/b0/e/k;->c:Ljava/io/File;

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_4

    .line 15
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x2

    const-string v6, "it.readUTF()"

    if-eq v1, v5, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4

    move-object v1, v3

    goto :goto_3

    .line 17
    :cond_4
    :try_start_2
    new-instance v1, Le/a/b0/e/c;

    .line 18
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v7, Le/a/b0/e/b;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Le/a/b0/e/b;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9, v10}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v8, v3

    .line 21
    :goto_2
    invoke-direct {v1, v5, v7, v8}, Le/a/b0/e/c;-><init>(Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;)V

    goto :goto_3

    .line 22
    :cond_6
    new-instance v1, Le/a/b0/e/c;

    .line 23
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v7, Le/a/b0/e/b;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-direct {v1, v5, v7, v3}, Le/a/b0/e/c;-><init>(Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    :goto_3
    :try_start_3
    invoke-static {v4, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v1

    goto :goto_5

    :catchall_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v5

    :try_start_5
    invoke-static {v4, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    .line 27
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_4
    move-object v8, v3

    :goto_5
    if-eqz v8, :cond_8

    .line 28
    iget-object v1, v0, Le/a/b0/e/k;->f:Le/a/b0/e/r/a;

    const-string v4, "accountFileWasRestoredByAutobackup"

    invoke-interface {v1, v4}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29
    iget-object v1, v0, Le/a/b0/e/k;->f:Le/a/b0/e/r/a;

    const-string v5, "restored_from_autobackup"

    invoke-interface {v1, v2, v5}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, v0, Le/a/b0/e/k;->f:Le/a/b0/e/r/a;

    invoke-interface {v0, v4}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    goto :goto_6

    .line 31
    :cond_7
    iget-object v0, v0, Le/a/b0/e/k;->f:Le/a/b0/e/r/a;

    const-string v1, "restored_from_file"

    invoke-interface {v0, v2, v1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    move-object v8, v3

    :goto_6
    if-eqz v8, :cond_9

    .line 32
    iget-object v10, v8, Le/a/b0/e/c;->a:Ljava/lang/String;

    const-wide/16 v11, 0x0

    .line 33
    iget-object v13, v8, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    .line 34
    iget-object v14, v8, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    move-object v9, p0

    .line 35
    invoke-virtual/range {v9 .. v14}, Le/a/b0/e/n;->j(Ljava/lang/String;JLe/a/b0/e/b;Le/a/b0/e/b;)V

    .line 36
    iget-object v0, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const/4 v1, 0x1

    const-string v2, "restored_credentials_check_state"

    invoke-interface {v0, v2, v1}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    move-object v3, v8

    :cond_9
    return-object v3
.end method

.method public final u(Le/a/b0/e/b;)Le/a/b0/e/d;
    .locals 4

    .line 1
    sget-object v0, Le/a/b0/e/d$a$c;->a:Le/a/b0/e/d$a$c;

    iget-object v1, p0, Le/a/b0/e/n;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/a/b0/e/n;->v()Le/a/b0/e/c;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, v2, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    .line 4
    invoke-static {v3, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    monitor-exit v1

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    iget-object p1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v0, "secondary_country_code"

    invoke-interface {p1, v0}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v0, "secondary_normalized_number"

    invoke-interface {p1, v0}, Le/a/b0/e/r/a;->remove(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Le/a/b0/e/n;->g:Le/a/b0/e/k;

    const/4 v0, 0x3

    const/4 v3, 0x0

    .line 8
    invoke-static {v2, v3, v3, v3, v0}, Le/a/b0/e/c;->a(Le/a/b0/e/c;Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;I)Le/a/b0/e/c;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Le/a/b0/e/k;->b(Le/a/b0/e/c;)V

    .line 10
    sget-object p1, Le/a/b0/e/d$b;->a:Le/a/b0/e/d$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    .line 11
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v1

    throw p1
.end method

.method public final v()Le/a/b0/e/c;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v2, "installationId"

    invoke-interface {v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v3, "profileNumber"

    invoke-interface {v2, v3}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v4, "profileCountryIso"

    invoke-interface {v3, v4}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v5, "secondary_country_code"

    invoke-interface {v4, v5}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v6, "secondary_normalized_number"

    invoke-interface {v5, v6}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 7
    new-instance v6, Le/a/b0/e/c;

    .line 8
    new-instance v7, Le/a/b0/e/b;

    invoke-direct {v7, v3, v2}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 9
    new-instance v2, Le/a/b0/e/b;

    invoke-direct {v2, v4, v5}, Le/a/b0/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-direct {v6, v1, v7, v2}, Le/a/b0/e/c;-><init>(Ljava/lang/String;Le/a/b0/e/b;Le/a/b0/e/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v6

    .line 11
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Le/a/b0/e/n;->a()Le/a/b0/e/c;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Le/a/b0/e/n;->t()Le/a/b0/e/c;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method

.method public final w(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v1, "restored_credentials_check_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/b0/e/r/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-wide/16 v3, 0x0

    const-string v1, "installationIdFetchTime"

    invoke-interface {v0, v1, v3, v4}, Le/a/b0/e/r/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "accountSettings.getLong(\u2026LLATION_ID_FETCH_TIME, 0)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3
    iget-object v5, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v6, "installationIdTtl"

    invoke-interface {v5, v6, v3, v4}, Le/a/b0/e/r/a;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "accountSettings.getLong(\u2026s.INSTALLATION_ID_TTL, 0)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 4
    iget-object v7, p0, Le/a/b0/e/n;->f:Le/a/p5/c;

    invoke-interface {v7}, Le/a/p5/c;->c()J

    move-result-wide v7

    add-long/2addr v5, v0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    cmp-long v0, v0, v7

    if-gez v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    iget-wide v0, p0, Le/a/b0/e/n;->a:J

    iget-object v5, p0, Le/a/b0/e/n;->f:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->a()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    return-object p1

    .line 6
    :cond_2
    :try_start_0
    iget-object v0, p0, Le/a/b0/e/n;->j:Le/a/n2/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, Le/a/n2/a/b;

    :try_start_1
    invoke-virtual {v0, p1}, Le/a/n2/a/b;->c(Ljava/lang/String;)Lx3/a0;

    move-result-object v0

    .line 7
    iget-object v1, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 8
    check-cast v1, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;

    .line 9
    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    if-eqz v1, :cond_7

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v6, v2

    :cond_4
    :goto_0
    if-nez v6, :cond_5

    .line 11
    iget-object v0, p0, Le/a/b0/e/n;->e:Le/a/b0/e/r/a;

    const-string v5, "networkDomain"

    invoke-virtual {v1}, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->getDomain()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_5
    iput-wide v3, p0, Le/a/b0/e/n;->a:J

    .line 13
    iput v2, p0, Le/a/b0/e/n;->b:I

    .line 14
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->getTtl()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v1}, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->getState()Ljava/lang/String;

    move-result-object v1

    const-string v4, "exchanged"

    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {p0, v0, v2, v3}, Le/a/b0/e/n;->r(Ljava/lang/String;J)V

    move-object p1, v0

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p0, p1, v2, v3}, Le/a/b0/e/n;->r(Ljava/lang/String;J)V

    goto :goto_1

    .line 19
    :cond_7
    iget-object v0, v0, Lx3/a0;->a:Lu3/k0;

    .line 20
    iget v0, v0, Lu3/k0;->e:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_8

    .line 21
    sget-object v0, Lcom/truecaller/common/account/analytics/LogoutContext;->EXCHANGE_CREDENTIALS:Lcom/truecaller/common/account/analytics/LogoutContext;

    invoke-virtual {p0, p1, v0}, Le/a/b0/e/n;->i(Ljava/lang/String;Lcom/truecaller/common/account/analytics/LogoutContext;)Z

    const/4 p1, 0x0

    goto :goto_1

    .line 22
    :cond_8
    sget-wide v0, Le/a/b0/e/o;->b:J

    .line 23
    iget v2, p0, Le/a/b0/e/n;->b:I

    shl-long/2addr v0, v2

    .line 24
    sget-wide v2, Le/a/b0/e/o;->c:J

    .line 25
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 26
    iget-object v2, p0, Le/a/b0/e/n;->f:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->a()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Le/a/b0/e/n;->a:J

    .line 27
    iget v0, p0, Le/a/b0/e/n;->b:I

    add-int/2addr v0, v6

    iput v0, p0, Le/a/b0/e/n;->b:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 28
    :catch_0
    iget-object v0, p0, Le/a/b0/e/n;->f:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    .line 29
    sget-wide v2, Le/a/b0/e/o;->a:J

    add-long/2addr v0, v2

    .line 30
    iput-wide v0, p0, Le/a/b0/e/n;->a:J

    :goto_1
    return-object p1
.end method
