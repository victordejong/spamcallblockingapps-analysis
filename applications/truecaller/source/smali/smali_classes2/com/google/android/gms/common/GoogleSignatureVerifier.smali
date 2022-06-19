.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field public static c:Lcom/google/android/gms/common/GoogleSignatureVerifier;


# instance fields
.field public final a:Landroid/content/Context;

.field public volatile b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const-string v0, "null reference"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->c:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Le/m/a/f/e/m;->a:Le/m/a/f/e/k;

    const-class v1, Le/m/a/f/e/m;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    sget-object v2, Le/m/a/f/e/m;->g:Landroid/content/Context;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Le/m/a/f/e/m;->g:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 5
    :cond_0
    monitor-exit v1

    .line 6
    :goto_0
    new-instance v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 7
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->c:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 8
    monitor-exit v1

    throw p0

    .line 9
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->c:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    return-object p0

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static final varargs c(Landroid/content/pm/PackageInfo;[Le/m/a/f/e/i;)Le/m/a/f/e/i;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return-object v1

    .line 3
    :cond_1
    new-instance v0, Le/m/a/f/e/j;

    .line 4
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Le/m/a/f/e/j;-><init>([B)V

    .line 5
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 6
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Le/m/a/f/e/i;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 7
    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static final d(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Le/m/a/f/e/l;->a:[Le/m/a/f/e/i;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->c(Landroid/content/pm/PackageInfo;[Le/m/a/f/e/i;)Le/m/a/f/e/i;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Le/m/a/f/e/i;

    .line 3
    sget-object v2, Le/m/a/f/e/l;->a:[Le/m/a/f/e/i;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->c(Landroid/content/pm/PackageInfo;[Le/m/a/f/e/i;)Le/m/a/f/e/i;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method public b(I)Z
    .locals 13
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "null reference"

    if-ge v3, v0, :cond_e

    .line 2
    aget-object v1, p1, v3

    .line 3
    sget-object v11, Le/m/a/f/e/o;->d:Le/m/a/f/e/o;

    const-string v5, "null pkg"

    if-nez v1, :cond_1

    invoke-static {v5}, Le/m/a/f/e/o;->b(Ljava/lang/String;)Le/m/a/f/e/o;

    move-result-object v1

    goto/16 :goto_8

    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 4
    sget-object v6, Le/m/a/f/e/m;->a:Le/m/a/f/e/k;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    .line 5
    :try_start_0
    invoke-static {}, Le/m/a/f/e/m;->b()V

    sget-object v7, Le/m/a/f/e/m;->e:Lcom/google/android/gms/common/internal/zzaf;

    .line 6
    invoke-interface {v7}, Lcom/google/android/gms/common/internal/zzaf;->zzg()Z

    move-result v7
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8
    throw p1

    .line 9
    :catch_0
    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move v7, v2

    :goto_1
    if-eqz v7, :cond_6

    .line 10
    iget-object v5, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    .line 11
    invoke-static {v5}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v7

    .line 12
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v12

    :try_start_1
    sget-object v5, Le/m/a/f/e/m;->g:Landroid/content/Context;

    .line 13
    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-static {}, Le/m/a/f/e/m;->b()V
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v4, Lcom/google/android/gms/common/zzn;

    const/4 v8, 0x0

    sget-object v5, Le/m/a/f/e/m;->g:Landroid/content/Context;

    .line 15
    new-instance v9, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v9, v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    move-object v5, v4

    move-object v6, v1

    .line 16
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/common/zzn;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v5, Le/m/a/f/e/m;->e:Lcom/google/android/gms/common/internal/zzaf;

    .line 17
    invoke-interface {v5, v4}, Lcom/google/android/gms/common/internal/zzaf;->b0(Lcom/google/android/gms/common/zzn;)Lcom/google/android/gms/common/zzq;

    move-result-object v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 18
    :try_start_5
    iget-boolean v5, v4, Lcom/google/android/gms/common/zzq;->a:Z

    if-eqz v5, :cond_2

    goto :goto_3

    .line 19
    :cond_2
    iget-object v5, v4, Lcom/google/android/gms/common/zzq;->b:Ljava/lang/String;

    const-string v6, "error checking package certificate"

    if-nez v5, :cond_3

    move-object v5, v6

    .line 20
    :cond_3
    iget v4, v4, Lcom/google/android/gms/common/zzq;->c:I

    invoke-static {v4}, Ln3/g0/y;->y2(I)I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_4

    .line 21
    new-instance v4, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    invoke-static {v5, v4}, Le/m/a/f/e/o;->c(Ljava/lang/String;Ljava/lang/Throwable;)Le/m/a/f/e/o;

    move-result-object v11

    goto :goto_3

    :cond_4
    invoke-static {v5}, Le/m/a/f/e/o;->b(Ljava/lang/String;)Le/m/a/f/e/o;

    move-result-object v11

    goto :goto_3

    :catch_1
    move-exception v4

    const-string v5, "module call"

    .line 22
    invoke-static {v5, v4}, Le/m/a/f/e/o;->c(Ljava/lang/String;Ljava/lang/Throwable;)Le/m/a/f/e/o;

    move-result-object v11

    goto :goto_3

    :catch_2
    move-exception v4

    const-string v5, "module init: "

    .line 23
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 24
    :cond_5
    new-instance v6, Ljava/lang/String;

    .line 25
    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_2
    invoke-static {v5, v4}, Le/m/a/f/e/o;->c(Ljava/lang/String;Ljava/lang/Throwable;)Le/m/a/f/e/o;

    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 26
    :goto_3
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 27
    throw p1

    .line 28
    :cond_6
    :try_start_6
    iget-object v4, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    .line 29
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v6, 0x40

    .line 30
    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    iget-object v6, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a:Landroid/content/Context;

    .line 31
    invoke-static {v6}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v6

    if-nez v4, :cond_7

    invoke-static {v5}, Le/m/a/f/e/o;->b(Ljava/lang/String;)Le/m/a/f/e/o;

    move-result-object v11

    goto :goto_5

    .line 32
    :cond_7
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_9

    array-length v5, v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_8

    goto :goto_4

    :cond_8
    new-instance v5, Le/m/a/f/e/j;

    .line 33
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-direct {v5, v8}, Le/m/a/f/e/j;-><init>([B)V

    .line 34
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 35
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    .line 36
    :try_start_7
    invoke-static {v8, v5, v6, v2}, Le/m/a/f/e/m;->a(Ljava/lang/String;Le/m/a/f/e/i;ZZ)Le/m/a/f/e/o;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 37
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 38
    iget-boolean v6, v11, Le/m/a/f/e/o;->a:Z

    if-eqz v6, :cond_a

    .line 39
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_a

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_a

    .line 40
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    .line 41
    :try_start_8
    invoke-static {v8, v5, v2, v7}, Le/m/a/f/e/m;->a(Ljava/lang/String;Le/m/a/f/e/i;ZZ)Le/m/a/f/e/o;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 42
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 43
    iget-boolean v4, v5, Le/m/a/f/e/o;->a:Z

    if-eqz v4, :cond_a

    const-string v4, "debuggable release cert app rejected"

    invoke-static {v4}, Le/m/a/f/e/o;->b(Ljava/lang/String;)Le/m/a/f/e/o;

    move-result-object v11

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 44
    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 45
    throw p1

    :catchall_3
    move-exception p1

    .line 46
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 47
    throw p1

    :cond_9
    :goto_4
    const-string v4, "single cert required"

    .line 48
    invoke-static {v4}, Le/m/a/f/e/o;->b(Ljava/lang/String;)Le/m/a/f/e/o;

    move-result-object v11

    .line 49
    :cond_a
    :goto_5
    iget-boolean v4, v11, Le/m/a/f/e/o;->a:Z

    if-eqz v4, :cond_c

    iput-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->b:Ljava/lang/String;

    goto :goto_7

    :catch_3
    move-exception v4

    const-string v5, "no pkg "

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    .line 51
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v1, v4}, Le/m/a/f/e/o;->c(Ljava/lang/String;Ljava/lang/Throwable;)Le/m/a/f/e/o;

    move-result-object v1

    goto :goto_8

    :cond_c
    :goto_7
    move-object v1, v11

    .line 52
    :goto_8
    iget-boolean v4, v1, Le/m/a/f/e/o;->a:Z

    if-eqz v4, :cond_d

    goto :goto_a

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 53
    :cond_e
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_a

    :cond_f
    :goto_9
    const-string p1, "no pkgs"

    .line 54
    invoke-static {p1}, Le/m/a/f/e/o;->b(Ljava/lang/String;)Le/m/a/f/e/o;

    move-result-object v1

    .line 55
    :goto_a
    iget-boolean p1, v1, Le/m/a/f/e/o;->a:Z

    if-nez p1, :cond_11

    const/4 p1, 0x3

    const-string v0, "GoogleCertificatesRslt"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, v1, Le/m/a/f/e/o;->c:Ljava/lang/Throwable;

    if-eqz p1, :cond_10

    .line 56
    invoke-virtual {v1}, Le/m/a/f/e/o;->a()Ljava/lang/String;

    goto :goto_b

    .line 57
    :cond_10
    invoke-virtual {v1}, Le/m/a/f/e/o;->a()Ljava/lang/String;

    .line 58
    :cond_11
    :goto_b
    iget-boolean p1, v1, Le/m/a/f/e/o;->a:Z

    return p1
.end method
