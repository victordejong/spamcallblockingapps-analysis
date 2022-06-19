.class public Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SecureX509SingleInstance"

.field private static volatile b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "context is null"

    .line 2
    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/c;->a(Landroid/content/Context;)V

    .line 4
    sget-object v2, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    if-nez v2, :cond_2

    .line 5
    const-class v2, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;

    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    if-nez v3, :cond_1

    .line 7
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->getFilesBksIS(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_0

    .line 8
    sget-object v3, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->a:Ljava/lang/String;

    const-string v4, "get assets bks"

    invoke-static {v3, v4}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "hmsrootcas.bks"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 10
    :cond_0
    sget-object v4, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->a:Ljava/lang/String;

    const-string v5, "get files bks"

    invoke-static {v4, v5}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    new-instance v4, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    const-string v5, ""

    invoke-direct {v4, v3, v5}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    sput-object v4, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    .line 12
    new-instance v3, Lcom/huawei/secure/android/common/ssl/util/d;

    invoke-direct {v3}, Lcom/huawei/secure/android/common/ssl/util/d;-><init>()V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/Context;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 13
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 14
    :cond_2
    :goto_1
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->a:Ljava/lang/String;

    const-string v2, "SecureX509TrustManager getInstance: cost : "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    return-object p0
.end method

.method public static updateBks(Ljava/io/InputStream;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->a:Ljava/lang/String;

    const-string v1, "update bks"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p0, :cond_0

    .line 3
    sget-object v3, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    const-string v4, ""

    invoke-direct {v3, p0, v4}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    sput-object v3, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    .line 5
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/SecureSSLSocketFactory;->a(Ljavax/net/ssl/X509TrustManager;)V

    .line 6
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->b:Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a(Ljavax/net/ssl/X509TrustManager;)V

    :cond_0
    const-string p0, "SecureX509TrustManager update bks cost : "

    .line 7
    invoke-static {p0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
