.class public final Lg/f/c/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lg/f/c/a/f0/w0;


# direct methods
.method private constructor <init>(Lg/f/c/a/f0/w0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/c/a/j;->a:Lg/f/c/a/f0/w0;

    return-void
.end method

.method public static a(Lg/f/c/a/f0/n0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/n0;->Z()Lcom/google/protobuf/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/i;->size()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lg/f/c/a/f0/w0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/w0;->b0()I

    move-result p0

    if-lez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Lg/f/c/a/f0/n0;Lg/f/c/a/a;)Lg/f/c/a/f0/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lg/f/c/a/f0/n0;->Z()Lcom/google/protobuf/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/i;->w()[B

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    invoke-interface {p1, p0, v0}, Lg/f/c/a/a;->b([B[B)[B

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lg/f/c/a/f0/w0;->f0([BLcom/google/protobuf/p;)Lg/f/c/a/f0/w0;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lg/f/c/a/j;->b(Lg/f/c/a/f0/w0;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Lg/f/c/a/f0/w0;Lg/f/c/a/a;)Lg/f/c/a/f0/n0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/a;->o()[B

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-interface {p1, v0, v2}, Lg/f/c/a/a;->a([B[B)[B

    move-result-object v0

    :try_start_0
    new-array v1, v1, [B

    .line 2
    invoke-interface {p1, v0, v1}, Lg/f/c/a/a;->b([B[B)[B

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v1

    .line 4
    invoke-static {p1, v1}, Lg/f/c/a/f0/w0;->f0([BLcom/google/protobuf/p;)Lg/f/c/a/f0/w0;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Lcom/google/protobuf/y;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lg/f/c/a/f0/n0;->a0()Lg/f/c/a/f0/n0$b;

    move-result-object p1

    .line 7
    invoke-static {v0}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/f/c/a/f0/n0$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/n0$b;

    .line 8
    invoke-static {p0}, Lg/f/c/a/y;->b(Lg/f/c/a/f0/w0;)Lg/f/c/a/f0/x0;

    move-result-object p0

    invoke-virtual {p1, p0}, Lg/f/c/a/f0/n0$b;->H(Lg/f/c/a/f0/x0;)Lg/f/c/a/f0/n0$b;

    .line 9
    invoke-virtual {p1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/n0;

    return-object p0

    .line 10
    :cond_0
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "cannot encrypt keyset"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static final e(Lg/f/c/a/f0/w0;)Lg/f/c/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lg/f/c/a/j;->b(Lg/f/c/a/f0/w0;)V

    .line 2
    new-instance v0, Lg/f/c/a/j;

    invoke-direct {v0, p0}, Lg/f/c/a/j;-><init>(Lg/f/c/a/f0/w0;)V

    return-object v0
.end method

.method public static final i(Lg/f/c/a/l;Lg/f/c/a/a;)Lg/f/c/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lg/f/c/a/l;->a()Lg/f/c/a/f0/n0;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lg/f/c/a/j;->a(Lg/f/c/a/f0/n0;)V

    .line 3
    new-instance v0, Lg/f/c/a/j;

    invoke-static {p0, p1}, Lg/f/c/a/j;->c(Lg/f/c/a/f0/n0;Lg/f/c/a/a;)Lg/f/c/a/f0/w0;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/f/c/a/j;-><init>(Lg/f/c/a/f0/w0;)V

    return-object v0
.end method


# virtual methods
.method f()Lg/f/c/a/f0/w0;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/j;->a:Lg/f/c/a/f0/w0;

    return-object v0
.end method

.method public g()Lg/f/c/a/f0/x0;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/c/a/j;->a:Lg/f/c/a/f0/w0;

    invoke-static {v0}, Lg/f/c/a/y;->b(Lg/f/c/a/f0/w0;)Lg/f/c/a/f0/x0;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lg/f/c/a/w;->l(Lg/f/c/a/j;Ljava/lang/Class;)Lg/f/c/a/q;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lg/f/c/a/w;->u(Lg/f/c/a/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Lg/f/c/a/m;Lg/f/c/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/j;->a:Lg/f/c/a/f0/w0;

    invoke-static {v0, p2}, Lg/f/c/a/j;->d(Lg/f/c/a/f0/w0;Lg/f/c/a/a;)Lg/f/c/a/f0/n0;

    move-result-object p2

    .line 2
    invoke-interface {p1, p2}, Lg/f/c/a/m;->b(Lg/f/c/a/f0/n0;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/j;->g()Lg/f/c/a/f0/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/y;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
