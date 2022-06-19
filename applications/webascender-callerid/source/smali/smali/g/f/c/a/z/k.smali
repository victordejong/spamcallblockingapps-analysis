.class public Lg/f/c/a/z/k;
.super Lg/f/c/a/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i<",
        "Lg/f/c/a/f0/a1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lg/f/c/a/f0/a1;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/f/c/a/i$b;

    new-instance v2, Lg/f/c/a/z/k$a;

    const-class v3, Lg/f/c/a/a;

    invoke-direct {v2, v3}, Lg/f/c/a/z/k$a;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lg/f/c/a/i;-><init>(Ljava/lang/Class;[Lg/f/c/a/i$b;)V

    return-void
.end method

.method public static l(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/z/k;

    invoke-direct {v0}, Lg/f/c/a/z/k;-><init>()V

    invoke-static {v0, p0}, Lg/f/c/a/w;->r(Lg/f/c/a/i;Z)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    return-object v0
.end method

.method public e()Lg/f/c/a/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/f/c/a/i$a<",
            "Lg/f/c/a/f0/b1;",
            "Lg/f/c/a/f0/a1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/z/k$b;

    const-class v1, Lg/f/c/a/f0/b1;

    invoke-direct {v0, p0, v1}, Lg/f/c/a/z/k$b;-><init>(Lg/f/c/a/z/k;Ljava/lang/Class;)V

    return-object v0
.end method

.method public f()Lg/f/c/a/f0/s0$c;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/s0$c;->REMOTE:Lg/f/c/a/f0/s0$c;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/z/k;->k(Lcom/google/protobuf/i;)Lg/f/c/a/f0/a1;

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
    check-cast p1, Lg/f/c/a/f0/a1;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/k;->m(Lg/f/c/a/f0/a1;)V

    return-void
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Lcom/google/protobuf/i;)Lg/f/c/a/f0/a1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/a1;->c0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/a1;

    move-result-object p1

    return-object p1
.end method

.method public m(Lg/f/c/a/f0/a1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/a1;->a0()I

    move-result p1

    invoke-virtual {p0}, Lg/f/c/a/z/k;->j()I

    move-result v0

    invoke-static {p1, v0}, Lg/f/c/a/i0/q0;->e(II)V

    return-void
.end method
