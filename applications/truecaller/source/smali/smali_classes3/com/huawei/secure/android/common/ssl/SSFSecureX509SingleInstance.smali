.class public Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SSFSecureX509SingleInstance"

.field private static volatile b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "context is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/c;->a(Landroid/content/Context;)V

    .line 3
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    if-nez v0, :cond_2

    .line 4
    const-class v0, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    if-nez v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->getFilesBksIS(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7
    sget-object v1, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->a:Ljava/lang/String;

    const-string v2, "get assets bks"

    invoke-static {v1, v2}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "hmsrootcas.bks"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->a:Ljava/lang/String;

    const-string v3, "get files bks"

    invoke-static {v2, v3}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    new-instance v2, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {v2, v1, v3, v4}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    sput-object v2, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    .line 11
    new-instance v1, Lcom/huawei/secure/android/common/ssl/util/e;

    invoke-direct {v1}, Lcom/huawei/secure/android/common/ssl/util/e;-><init>()V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v4, [Landroid/content/Context;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 13
    :cond_2
    :goto_1
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    return-object p0
.end method

.method public static updateBks(Ljava/io/InputStream;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->a:Ljava/lang/String;

    const-string v1, "update bks"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, " ms"

    if-eqz p0, :cond_0

    .line 3
    sget-object v4, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    if-eqz v4, :cond_0

    .line 4
    new-instance v4, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    const/4 v5, 0x1

    const-string v6, ""

    invoke-direct {v4, p0, v6, v5}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    sput-object v4, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    const-string p0, "updateBks: new SecureX509TrustManager cost : "

    .line 5
    invoke-static {p0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a(Ljavax/net/ssl/X509TrustManager;)V

    .line 7
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/SASFCompatiableSystemCA;->a(Ljavax/net/ssl/X509TrustManager;)V

    :cond_0
    const-string p0, "update bks cost : "

    .line 8
    invoke-static {p0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
