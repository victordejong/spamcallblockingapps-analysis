.class public Lg/f/c/a/c0/a;
.super Lg/f/c/a/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/t<",
        "Lg/f/c/a/f0/g0;",
        "Lg/f/c/a/f0/h0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 1
    const-class v0, Lg/f/c/a/f0/g0;

    const-class v1, Lg/f/c/a/f0/h0;

    const/4 v2, 0x1

    new-array v2, v2, [Lg/f/c/a/i$b;

    new-instance v3, Lg/f/c/a/c0/a$a;

    const-class v4, Lg/f/c/a/e;

    invoke-direct {v3, v4}, Lg/f/c/a/c0/a$a;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lg/f/c/a/t;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lg/f/c/a/i$b;)V

    return-void
.end method

.method public static l(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/c0/a;

    invoke-direct {v0}, Lg/f/c/a/c0/a;-><init>()V

    new-instance v1, Lg/f/c/a/c0/b;

    invoke-direct {v1}, Lg/f/c/a/c0/b;-><init>()V

    invoke-static {v0, v1, p0}, Lg/f/c/a/w;->q(Lg/f/c/a/t;Lg/f/c/a/i;Z)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public e()Lg/f/c/a/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/f/c/a/i$a<",
            "Lg/f/c/a/f0/e0;",
            "Lg/f/c/a/f0/g0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/c0/a$b;

    const-class v1, Lg/f/c/a/f0/e0;

    invoke-direct {v0, p0, v1}, Lg/f/c/a/c0/a$b;-><init>(Lg/f/c/a/c0/a;Ljava/lang/Class;)V

    return-object v0
.end method

.method public f()Lg/f/c/a/f0/s0$c;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/s0$c;->ASYMMETRIC_PRIVATE:Lg/f/c/a/f0/s0$c;

    return-object v0
.end method

.method public bridge synthetic g(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg/f/c/a/c0/a;->k(Lcom/google/protobuf/i;)Lg/f/c/a/f0/g0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/r0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg/f/c/a/f0/g0;

    invoke-virtual {p0, p1}, Lg/f/c/a/c0/a;->m(Lg/f/c/a/f0/g0;)V

    return-void
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Lcom/google/protobuf/i;)Lg/f/c/a/f0/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/g0;->e0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/g0;

    move-result-object p1

    return-object p1
.end method

.method public m(Lg/f/c/a/f0/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/g0;->a0()Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/i;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/g0;->c0()I

    move-result v0

    invoke-virtual {p0}, Lg/f/c/a/c0/a;->j()I

    move-result v1

    invoke-static {v0, v1}, Lg/f/c/a/i0/q0;->e(II)V

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/g0;->b0()Lg/f/c/a/f0/h0;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/h0;->c0()Lg/f/c/a/f0/f0;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/c0/f;->d(Lg/f/c/a/f0/f0;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
