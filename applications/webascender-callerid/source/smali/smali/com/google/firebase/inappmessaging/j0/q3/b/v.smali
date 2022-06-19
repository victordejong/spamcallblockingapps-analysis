.class public Lcom/google/firebase/inappmessaging/j0/q3/b/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/c;


# direct methods
.method public constructor <init>(Lcom/google/firebase/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/v;->a:Lcom/google/firebase/c;

    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_1

    array-length p1, p0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget-object v0, p0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/q3/b/v;->d(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static d(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    :try_start_0
    const-string v0, "SHA1"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->a()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->n()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->f([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public b()Lio/grpc/q0;
    .locals 6

    .line 1
    sget-object v0, Lio/grpc/q0;->c:Lio/grpc/q0$d;

    const-string v1, "X-Goog-Api-Key"

    .line 2
    invoke-static {v1, v0}, Lio/grpc/q0$f;->e(Ljava/lang/String;Lio/grpc/q0$d;)Lio/grpc/q0$f;

    move-result-object v1

    const-string v2, "X-Android-Package"

    .line 3
    invoke-static {v2, v0}, Lio/grpc/q0$f;->e(Ljava/lang/String;Lio/grpc/q0$d;)Lio/grpc/q0$f;

    move-result-object v2

    const-string v3, "X-Android-Cert"

    .line 4
    invoke-static {v3, v0}, Lio/grpc/q0$f;->e(Ljava/lang/String;Lio/grpc/q0$d;)Lio/grpc/q0$f;

    move-result-object v0

    .line 5
    new-instance v3, Lio/grpc/q0;

    invoke-direct {v3}, Lio/grpc/q0;-><init>()V

    .line 6
    iget-object v4, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/v;->a:Lcom/google/firebase/c;

    invoke-virtual {v4}, Lcom/google/firebase/c;->h()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/v;->a:Lcom/google/firebase/c;

    invoke-virtual {v5}, Lcom/google/firebase/c;->l()Lcom/google/firebase/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lio/grpc/q0;->n(Lio/grpc/q0$f;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v3, v2, v4}, Lio/grpc/q0;->n(Lio/grpc/q0$f;Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/q3/b/v;->a:Lcom/google/firebase/c;

    .line 10
    invoke-virtual {v1}, Lcom/google/firebase/c;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/google/firebase/inappmessaging/j0/q3/b/v;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v3, v0, v1}, Lio/grpc/q0;->n(Lio/grpc/q0$f;Ljava/lang/Object;)V

    :cond_0
    return-object v3
.end method

.method public c(Lio/grpc/e;Lio/grpc/q0;)Lg/f/e/a/a/a/e/g$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lio/grpc/h;

    .line 1
    invoke-static {p2}, Lio/grpc/i1/d;->a(Lio/grpc/q0;)Lio/grpc/h;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lio/grpc/j;->b(Lio/grpc/e;[Lio/grpc/h;)Lio/grpc/e;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lg/f/e/a/a/a/e/g;->b(Lio/grpc/e;)Lg/f/e/a/a/a/e/g$b;

    move-result-object p1

    return-object p1
.end method
