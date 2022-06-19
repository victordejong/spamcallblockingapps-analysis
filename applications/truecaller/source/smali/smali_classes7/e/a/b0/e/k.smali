.class public final Le/a/b0/e/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/io/File;

.field public final d:Landroid/accounts/AccountManager;

.field public final e:Landroid/app/backup/BackupManager;

.field public final f:Le/a/b0/e/r/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/accounts/AccountManager;Landroid/app/backup/BackupManager;Le/a/b0/e/r/a;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "account_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "account_type"
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation runtime Ljavax/inject/Named;
            value = "backup_file"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupFile"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/e/k;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/b0/e/k;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/b0/e/k;->c:Ljava/io/File;

    iput-object p4, p0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    iput-object p5, p0, Le/a/b0/e/k;->e:Landroid/app/backup/BackupManager;

    iput-object p6, p0, Le/a/b0/e/k;->f:Le/a/b0/e/r/a;

    return-void
.end method


# virtual methods
.method public final a()Landroid/accounts/Account;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    iget-object v1, p0, Le/a/b0/e/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "accountManager.getAccountsByType(accountType)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    return-object v0
.end method

.method public b(Le/a/b0/e/c;)V
    .locals 7

    const-string v0, "accountState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/b0/e/k;->a()Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v3, p0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    new-instance v4, Landroid/accounts/Account;

    iget-object v5, p0, Le/a/b0/e/k;->a:Ljava/lang/String;

    iget-object v6, p0, Le/a/b0/e/k;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v2, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 3
    invoke-static {v3}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    move v3, v1

    :goto_0
    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0}, Le/a/b0/e/k;->a()Landroid/accounts/Account;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    .line 5
    iget-object v3, p0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    .line 6
    iget-object v4, p1, Le/a/b0/e/c;->a:Ljava/lang/String;

    const-string v5, "installation_id_backup"

    .line 7
    invoke-virtual {v3, v0, v5, v4}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    .line 9
    iget-object v4, p1, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    .line 10
    iget-object v4, v4, Le/a/b0/e/b;->b:Ljava/lang/String;

    const-string v5, "normalized_number_backup"

    .line 11
    invoke-virtual {v3, v0, v5, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    .line 13
    iget-object v4, p1, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    .line 14
    iget-object v4, v4, Le/a/b0/e/b;->a:Ljava/lang/String;

    const-string v5, "country_code_backup"

    .line 15
    invoke-virtual {v3, v0, v5, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v3, p0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    .line 17
    iget-object v4, p1, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    if-eqz v4, :cond_1

    .line 18
    iget-object v4, v4, Le/a/b0/e/b;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    const-string v5, "secondary_normalized_number_backup"

    .line 19
    invoke-virtual {v3, v0, v5, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Le/a/b0/e/k;->d:Landroid/accounts/AccountManager;

    .line 21
    iget-object v4, p1, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    if-eqz v4, :cond_2

    .line 22
    iget-object v4, v4, Le/a/b0/e/b;->a:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    const-string v5, "secondary_country_code_backup"

    .line 23
    invoke-virtual {v3, v0, v5, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_3
    iget-object v0, p0, Le/a/b0/e/k;->c:Ljava/io/File;

    .line 25
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x3

    .line 26
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 27
    iget-object v0, p1, Le/a/b0/e/c;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 29
    iget-object v0, p1, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    .line 30
    iget-object v0, v0, Le/a/b0/e/b;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 32
    iget-object v0, p1, Le/a/b0/e/c;->b:Le/a/b0/e/b;

    .line 33
    iget-object v0, v0, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 35
    iget-object v0, p1, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    if-nez v0, :cond_4

    .line 36
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    .line 37
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 38
    iget-object v0, p1, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    .line 39
    iget-object v0, v0, Le/a/b0/e/b;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 41
    iget-object p1, p1, Le/a/b0/e/c;->c:Le/a/b0/e/b;

    .line 42
    iget-object p1, p1, Le/a/b0/e/b;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :goto_3
    :try_start_3
    invoke-static {v3, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catchall_0
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v3, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    .line 45
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 46
    :goto_4
    iget-object p1, p0, Le/a/b0/e/k;->e:Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method
