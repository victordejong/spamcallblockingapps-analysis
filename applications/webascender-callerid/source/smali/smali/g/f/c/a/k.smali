.class public final Lg/f/c/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/f/c/a/f0/w0$b;


# direct methods
.method private constructor <init>(Lg/f/c/a/f0/w0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/c/a/k;->a:Lg/f/c/a/f0/w0$b;

    return-void
.end method

.method private declared-synchronized c(I)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/f/c/a/k;->a:Lg/f/c/a/f0/w0$b;

    invoke-virtual {v0}, Lg/f/c/a/f0/w0$b;->H()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/f/c/a/f0/w0$c;

    .line 2
    invoke-virtual {v1}, Lg/f/c/a/f0/w0$c;->c0()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    .line 3
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Lg/f/c/a/f0/u0;)Lg/f/c/a/f0/w0$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lg/f/c/a/w;->p(Lg/f/c/a/f0/u0;)Lg/f/c/a/f0/s0;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lg/f/c/a/k;->e()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/u0;->b0()Lg/f/c/a/f0/c1;

    move-result-object p1

    .line 4
    sget-object v2, Lg/f/c/a/f0/c1;->UNKNOWN_PREFIX:Lg/f/c/a/f0/c1;

    if-ne p1, v2, :cond_0

    .line 5
    sget-object p1, Lg/f/c/a/f0/c1;->TINK:Lg/f/c/a/f0/c1;

    .line 6
    :cond_0
    invoke-static {}, Lg/f/c/a/f0/w0$c;->g0()Lg/f/c/a/f0/w0$c$a;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0}, Lg/f/c/a/f0/w0$c$a;->G(Lg/f/c/a/f0/s0;)Lg/f/c/a/f0/w0$c$a;

    .line 8
    invoke-virtual {v2, v1}, Lg/f/c/a/f0/w0$c$a;->H(I)Lg/f/c/a/f0/w0$c$a;

    sget-object v0, Lg/f/c/a/f0/t0;->ENABLED:Lg/f/c/a/f0/t0;

    .line 9
    invoke-virtual {v2, v0}, Lg/f/c/a/f0/w0$c$a;->J(Lg/f/c/a/f0/t0;)Lg/f/c/a/f0/w0$c$a;

    .line 10
    invoke-virtual {v2, p1}, Lg/f/c/a/f0/w0$c$a;->I(Lg/f/c/a/f0/c1;)Lg/f/c/a/f0/w0$c$a;

    .line 11
    invoke-virtual {v2}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/w0$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lg/f/c/a/k;->f()I

    move-result v0

    .line 2
    :goto_0
    invoke-direct {p0, v0}, Lg/f/c/a/k;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lg/f/c/a/k;->f()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static f()I
    .locals 5

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3
    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return v3
.end method

.method public static h()Lg/f/c/a/k;
    .locals 2

    .line 1
    new-instance v0, Lg/f/c/a/k;

    invoke-static {}, Lg/f/c/a/f0/w0;->e0()Lg/f/c/a/f0/w0$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lg/f/c/a/k;-><init>(Lg/f/c/a/f0/w0$b;)V

    return-object v0
.end method

.method public static i(Lg/f/c/a/j;)Lg/f/c/a/k;
    .locals 1

    .line 1
    new-instance v0, Lg/f/c/a/k;

    invoke-virtual {p0}, Lg/f/c/a/j;->f()Lg/f/c/a/f0/w0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/y;->V()Lcom/google/protobuf/y$a;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/w0$b;

    invoke-direct {v0, p0}, Lg/f/c/a/k;-><init>(Lg/f/c/a/f0/w0$b;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lg/f/c/a/f0/u0;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lg/f/c/a/k;->d(Lg/f/c/a/f0/u0;)Lg/f/c/a/f0/w0$c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lg/f/c/a/k;->a:Lg/f/c/a/f0/w0$b;

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/w0$b;->G(Lg/f/c/a/f0/w0$c;)Lg/f/c/a/f0/w0$b;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lg/f/c/a/k;->a:Lg/f/c/a/f0/w0$b;

    invoke-virtual {p1}, Lg/f/c/a/f0/w0$c;->c0()I

    move-result v0

    invoke-virtual {p2, v0}, Lg/f/c/a/f0/w0$b;->I(I)Lg/f/c/a/f0/w0$b;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lg/f/c/a/f0/w0$c;->c0()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Lg/f/c/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/f/c/a/k;->a:Lg/f/c/a/f0/w0$b;

    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    check-cast v0, Lg/f/c/a/f0/w0;

    invoke-static {v0}, Lg/f/c/a/j;->e(Lg/f/c/a/f0/w0;)Lg/f/c/a/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(Lg/f/c/a/f0/u0;)Lg/f/c/a/k;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lg/f/c/a/k;->a(Lg/f/c/a/f0/u0;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
