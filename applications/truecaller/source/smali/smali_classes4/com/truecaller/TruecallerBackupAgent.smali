.class public final Lcom/truecaller/TruecallerBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008 \u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J+\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J-\u0010\u0010\u001a\u00020\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\"\u0010\u001f\u001a\u00020\u00198\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/TruecallerBackupAgent;",
        "Landroid/app/backup/BackupAgent;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "Landroid/app/backup/BackupDataInput;",
        "data",
        "",
        "appVersionCode",
        "Landroid/os/ParcelFileDescriptor;",
        "newState",
        "onRestore",
        "(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V",
        "onRestoreFinished",
        "oldState",
        "Landroid/app/backup/BackupDataOutput;",
        "onBackup",
        "(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V",
        "Landroid/app/backup/FullBackupDataOutput;",
        "onFullBackup",
        "(Landroid/app/backup/FullBackupDataOutput;)V",
        "",
        "backupAction",
        "a",
        "(Ljava/lang/String;)V",
        "Le/a/b0/e/r/a;",
        "Le/a/b0/e/r/a;",
        "getSettings",
        "()Le/a/b0/e/r/a;",
        "setSettings",
        "(Le/a/b0/e/r/a;)V",
        "settings",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/b0/e/r/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "account.v2.bak"

    .line 1
    invoke-virtual {p0, v1}, Landroid/app/backup/BackupAgent;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "getFileStreamPath(\"account.v2.bak\")"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    const-string v2, "account"

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/backup/BackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.accounts.AccountManager"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AccountManager;

    const v3, 0x7f120878

    .line 4
    invoke-virtual {p0, v3}, Landroid/app/backup/BackupAgent;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    const-string v4, "accountManager.getAccoun\u2026henticator_account_type))"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    const-string v5, "installation_id_backup"

    .line 5
    invoke-virtual {v2, v3, v5}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "normalized_number_backup"

    .line 6
    invoke-virtual {v2, v3, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "country_code_backup"

    .line 7
    invoke-virtual {v2, v3, v7}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v4

    :goto_2
    if-nez v3, :cond_6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    move v3, v0

    goto :goto_4

    :cond_3
    :goto_3
    move v3, v4

    :goto_4
    if-nez v3, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    move v2, v0

    goto :goto_6

    :cond_5
    :goto_5
    move v2, v4

    :goto_6
    if-nez v2, :cond_6

    move v2, v4

    goto :goto_7

    :cond_6
    move v2, v0

    .line 9
    :goto_7
    iget-object v3, p0, Lcom/truecaller/TruecallerBackupAgent;->a:Le/a/b0/e/r/a;

    const-string v5, "settings"

    if-eqz v3, :cond_a

    .line 10
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "backupAction"

    .line 11
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ls1/k;

    .line 12
    new-instance v6, Ls1/k;

    const-string v7, "backup_action_key"

    invoke-direct {v6, v7, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v0

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v1, Ls1/k;

    const-string v6, "backup_file_exists_key"

    invoke-direct {v1, v6, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v4

    const/4 p1, 0x2

    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 16
    new-instance v2, Ls1/k;

    const-string v6, "account_state_valid"

    invoke-direct {v2, v6, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v5, p1

    .line 17
    invoke-static {v5}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const-string v6, ","

    invoke-static/range {v5 .. v12}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "accountAutobackupLogInfo"

    const-string v2, ""

    .line 21
    invoke-interface {v3, v1, v2}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "it"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    move v0, v4

    :cond_8
    if-eqz v0, :cond_9

    const-string v0, ";"

    invoke-static {v2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v1, p1}, Le/a/b0/e/r/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_a
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/TruecallerBackupAgent;->a:Le/a/b0/e/r/a;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const-string p3, "accountFileWasBackedUpByAutobackup"

    invoke-interface {p1, p3, p2}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "onBackup"

    .line 2
    invoke-virtual {p0, p1}, Lcom/truecaller/TruecallerBackupAgent;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "settings"

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/backup/BackupAgent;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/backup/BackupAgent;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v1, Le/a/u1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/a/u1;-><init>(Landroid/content/Context;Le/a/u1$a;)V

    .line 5
    iget-object v0, v1, Le/a/u1;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/r/a;

    .line 6
    iput-object v0, p0, Lcom/truecaller/TruecallerBackupAgent;->a:Le/a/b0/e/r/a;

    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/TruecallerBackupAgent;->a:Le/a/b0/e/r/a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "accountFileWasBackedUpByAutobackup"

    invoke-interface {p1, v1, v0}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "onFullBackup"

    .line 3
    invoke-virtual {p0, p1}, Lcom/truecaller/TruecallerBackupAgent;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "settings"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public onRestoreFinished()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/TruecallerBackupAgent;->a:Le/a/b0/e/r/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "accountFileWasRestoredByAutobackup"

    invoke-interface {v0, v2, v1}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "onRestore"

    .line 3
    invoke-virtual {p0, v0}, Lcom/truecaller/TruecallerBackupAgent;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "settings"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
