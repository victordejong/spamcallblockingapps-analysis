.class public Le/m/d/y/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/d/g;

.field public final b:Le/m/d/y/g0;

.field public final c:Lcom/google/android/gms/cloudmessaging/Rpc;

.field public final d:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/d/a0/h;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/d/t/f;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/m/d/w/i;


# direct methods
.method public constructor <init>(Le/m/d/g;Le/m/d/y/g0;Le/m/d/v/b;Le/m/d/v/b;Le/m/d/w/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/g;",
            "Le/m/d/y/g0;",
            "Le/m/d/v/b<",
            "Le/m/d/a0/h;",
            ">;",
            "Le/m/d/v/b<",
            "Le/m/d/t/f;",
            ">;",
            "Le/m/d/w/i;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 2
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 3
    iget-object v1, p1, Le/m/d/g;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/cloudmessaging/Rpc;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/y/c0;->a:Le/m/d/g;

    iput-object p2, p0, Le/m/d/y/c0;->b:Le/m/d/y/g0;

    iput-object v0, p0, Le/m/d/y/c0;->c:Lcom/google/android/gms/cloudmessaging/Rpc;

    iput-object p3, p0, Le/m/d/y/c0;->d:Le/m/d/v/b;

    iput-object p4, p0, Le/m/d/y/c0;->e:Le/m/d/v/b;

    iput-object p5, p0, Le/m/d/y/c0;->f:Le/m/d/w/i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/d/y/b0;->a:Le/m/d/y/b0;

    new-instance v1, Le/m/d/y/a0;

    invoke-direct {v1, p0}, Le/m/d/y/a0;-><init>(Le/m/d/y/c0;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "scope"

    .line 1
    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sender"

    .line 2
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "subtype"

    .line 3
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmp_app_id"

    iget-object p2, p0, Le/m/d/y/c0;->a:Le/m/d/g;

    .line 4
    invoke-virtual {p2}, Le/m/d/g;->a()V

    .line 5
    iget-object p2, p2, Le/m/d/g;->c:Le/m/d/i;

    .line 6
    iget-object p2, p2, Le/m/d/i;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmsv"

    iget-object p2, p0, Le/m/d/y/c0;->b:Le/m/d/y/g0;

    .line 8
    monitor-enter p2

    .line 9
    :try_start_0
    iget v0, p2, Le/m/d/y/g0;->d:I

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p2, v0}, Le/m/d/y/g0;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p2, Le/m/d/y/g0;->d:I

    :cond_0
    iget v0, p2, Le/m/d/y/g0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p2

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osv"

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver"

    iget-object p2, p0, Le/m/d/y/c0;->b:Le/m/d/y/g0;

    .line 13
    invoke-virtual {p2}, Le/m/d/y/g0;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver_name"

    iget-object p2, p0, Le/m/d/y/c0;->b:Le/m/d/y/g0;

    .line 14
    monitor-enter p2

    .line 15
    :try_start_1
    iget-object v0, p2, Le/m/d/y/g0;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Le/m/d/y/g0;->e()V

    :cond_1
    iget-object v0, p2, Le/m/d/y/g0;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    .line 16
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "firebase-app-name-hash"

    .line 17
    iget-object p2, p0, Le/m/d/y/c0;->a:Le/m/d/g;

    .line 18
    invoke-virtual {p2}, Le/m/d/g;->a()V

    .line 19
    iget-object p2, p2, Le/m/d/g;->b:Ljava/lang/String;

    const-string v0, "SHA-1"

    .line 20
    :try_start_2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    const/16 v0, 0xb

    .line 21
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "[HASH-ERROR]"

    .line 22
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object p1, p0, Le/m/d/y/c0;->f:Le/m/d/w/i;

    const/4 p2, 0x0

    .line 23
    invoke-interface {p1, p2}, Le/m/d/w/i;->a(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/d/w/m;

    invoke-virtual {p1}, Le/m/d/w/m;->a()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Goog-Firebase-Installations-Auth"

    .line 25
    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    const-string p1, "appid"

    iget-object p2, p0, Le/m/d/y/c0;->f:Le/m/d/w/i;

    .line 26
    invoke-interface {p2}, Le/m/d/w/i;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/tasks/Tasks;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cliv"

    const-string p2, "fcm-23.0.0"

    .line 27
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Le/m/d/y/c0;->e:Le/m/d/v/b;

    .line 28
    invoke-interface {p1}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/d/t/f;

    iget-object p2, p0, Le/m/d/y/c0;->d:Le/m/d/v/b;

    .line 29
    invoke-interface {p2}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/d/a0/h;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string v0, "fire-iid"

    .line 30
    invoke-interface {p1, v0}, Le/m/d/t/f;->a(Ljava/lang/String;)Le/m/d/t/f$a;

    move-result-object p1

    .line 31
    sget-object v0, Le/m/d/t/f$a;->b:Le/m/d/t/f$a;

    if-eq p1, v0, :cond_3

    const-string v0, "Firebase-Client-Log-Type"

    .line 32
    iget p1, p1, Le/m/d/t/f$a;->a:I

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Firebase-Client"

    .line 34
    invoke-interface {p2}, Le/m/d/a0/h;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p2

    throw p1

    :catchall_1
    move-exception p1

    .line 36
    monitor-exit p2

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Le/m/d/y/c0;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p1, p0, Le/m/d/y/c0;->c:Lcom/google/android/gms/cloudmessaging/Rpc;

    .line 2
    iget-object p2, p1, Lcom/google/android/gms/cloudmessaging/Rpc;->c:Lcom/google/android/gms/cloudmessaging/zzt;

    .line 3
    monitor-enter p2

    :try_start_1
    iget v0, p2, Lcom/google/android/gms/cloudmessaging/zzt;->b:I

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p2, Lcom/google/android/gms/cloudmessaging/zzt;->a:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    :try_start_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 7
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p2, Lcom/google/android/gms/cloudmessaging/zzt;->b:I

    :cond_0
    iget v0, p2, Lcom/google/android/gms/cloudmessaging/zzt;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p2

    const p2, 0xb71b00

    if-ge v0, p2, :cond_2

    .line 8
    iget-object p2, p1, Lcom/google/android/gms/cloudmessaging/Rpc;->c:Lcom/google/android/gms/cloudmessaging/zzt;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/cloudmessaging/zzt;->a()I

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p1, p3}, Lcom/google/android/gms/cloudmessaging/Rpc;->a(Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/cloudmessaging/Rpc;->j:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/cloudmessaging/zzu;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/cloudmessaging/zzu;-><init>(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/tasks/Task;->m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MISSING_INSTANCEID_SERVICE"

    .line 12
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/Rpc;->b:Landroid/content/Context;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/cloudmessaging/zzs;->a(Landroid/content/Context;)Lcom/google/android/gms/cloudmessaging/zzs;

    move-result-object p1

    .line 14
    new-instance p2, Le/m/a/f/d/g;

    .line 15
    monitor-enter p1

    :try_start_4
    iget v0, p1, Lcom/google/android/gms/cloudmessaging/zzs;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/android/gms/cloudmessaging/zzs;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p1

    .line 16
    invoke-direct {p2, v0, p3}, Le/m/a/f/d/g;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cloudmessaging/zzs;->b(Le/m/a/f/d/f;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 17
    sget-object p2, Lcom/google/android/gms/cloudmessaging/Rpc;->j:Ljava/util/concurrent/Executor;

    .line 18
    sget-object p3, Lcom/google/android/gms/cloudmessaging/zzv;->a:Lcom/google/android/gms/cloudmessaging/zzv;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_1
    return-object p1

    :catchall_0
    move-exception p2

    .line 19
    monitor-exit p1

    throw p2

    :catchall_1
    move-exception p1

    .line 20
    monitor-exit p2

    throw p1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 21
    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
