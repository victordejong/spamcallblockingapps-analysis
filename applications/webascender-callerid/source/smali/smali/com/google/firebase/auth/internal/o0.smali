.class public final Lcom/google/firebase/auth/internal/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/google/firebase/auth/internal/o0;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/internal/firebase-auth-api/r5;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/auth/internal/o0;->a:Ljava/lang/String;

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()V

    new-instance p3, Lcom/google/android/gms/internal/firebase-auth-api/q5;

    .line 2
    invoke-direct {p3}, Lcom/google/android/gms/internal/firebase-auth-api/q5;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "GenericIdpKeyset"

    const-string v4, "com.google.firebase.auth.api.crypto.%s"

    .line 3
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p3, p1, v3, v1}, Lcom/google/android/gms/internal/firebase-auth-api/q5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/q5;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/l5;->b:Lcom/google/android/gms/internal/firebase-auth-api/la;

    .line 5
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q5;->c(Lcom/google/android/gms/internal/firebase-auth-api/la;)Lcom/google/android/gms/internal/firebase-auth-api/q5;

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p2, p1, v2

    const-string p2, "android-keystore://firebear_master_key_id.%s"

    .line 6
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/q5;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/q5;

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-auth-api/q5;->d()Lcom/google/android/gms/internal/firebase-auth-api/r5;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/o0;->b:Lcom/google/android/gms/internal/firebase-auth-api/r5;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception encountered during crypto setup:\n"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string p2, "FirebearCryptoHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/auth/internal/o0;
    .locals 2

    sget-object v0, Lcom/google/firebase/auth/internal/o0;->c:Lcom/google/firebase/auth/internal/o0;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lcom/google/firebase/auth/internal/o0;->a:Ljava/lang/String;

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google/firebase/auth/internal/o0;

    const/4 v1, 0x1

    .line 3
    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/auth/internal/o0;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/firebase/auth/internal/o0;->c:Lcom/google/firebase/auth/internal/o0;

    :cond_1
    sget-object p0, Lcom/google/firebase/auth/internal/o0;->c:Lcom/google/firebase/auth/internal/o0;

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/d2;->c(Ljava/io/OutputStream;)Lcom/google/android/gms/internal/firebase-auth-api/s2;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/auth/internal/o0;->b:Lcom/google/android/gms/internal/firebase-auth-api/r5;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/r5;->a()Lcom/google/android/gms/internal/firebase-auth-api/q2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/q2;->f()Lcom/google/android/gms/internal/firebase-auth-api/q2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/q2;->e(Lcom/google/android/gms/internal/firebase-auth-api/s2;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception encountered when attempting to get Public Key:\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v1, "FirebearCryptoHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/internal/o0;->b:Lcom/google/android/gms/internal/firebase-auth-api/r5;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/r5;->a()Lcom/google/android/gms/internal/firebase-auth-api/q2;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/h2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/q2;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/h2;

    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x8

    .line 2
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 3
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/h2;->a([B[B)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {v2, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Exception encountered while decrypting bytes:\n"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v1, "FirebearCryptoHelper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
