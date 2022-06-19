.class public Lg/f/c/a/h0/b;
.super Lg/f/c/a/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i<",
        "Lg/f/c/a/f0/o;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lg/f/c/a/f0/o;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/f/c/a/i$b;

    new-instance v2, Lg/f/c/a/h0/b$a;

    const-class v3, Lg/f/c/a/x;

    invoke-direct {v2, v3}, Lg/f/c/a/h0/b$a;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lg/f/c/a/i;-><init>(Ljava/lang/Class;[Lg/f/c/a/i$b;)V

    return-void
.end method

.method static synthetic j(Lg/f/c/a/f0/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lg/f/c/a/h0/b;->o(Lg/f/c/a/f0/q;)V

    return-void
.end method

.method public static m(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/h0/b;

    invoke-direct {v0}, Lg/f/c/a/h0/b;-><init>()V

    invoke-static {v0, p0}, Lg/f/c/a/w;->r(Lg/f/c/a/i;Z)V

    return-void
.end method

.method private static o(Lg/f/c/a/f0/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/q;->Z()I

    move-result v0

    invoke-static {v0}, Lg/f/c/a/i0/q0;->a(I)V

    .line 2
    invoke-virtual {p0}, Lg/f/c/a/f0/q;->a0()Lg/f/c/a/f0/o0;

    move-result-object v0

    sget-object v1, Lg/f/c/a/f0/o0;->UNKNOWN_HASH:Lg/f/c/a/f0/o0;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lg/f/c/a/f0/q;->X()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lg/f/c/a/f0/q;->Z()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    add-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, 0x2

    if-lt v0, p0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "ciphertext_segment_size must be at least (derived_key_size + NONCE_PREFIX_IN_BYTES + TAG_SIZE_IN_BYTES + 2)"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown HKDF hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmHkdfStreamingKey"

    return-object v0
.end method

.method public e()Lg/f/c/a/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/f/c/a/i$a<",
            "Lg/f/c/a/f0/p;",
            "Lg/f/c/a/f0/o;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/h0/b$b;

    const-class v1, Lg/f/c/a/f0/p;

    invoke-direct {v0, p0, v1}, Lg/f/c/a/h0/b$b;-><init>(Lg/f/c/a/h0/b;Ljava/lang/Class;)V

    return-object v0
.end method

.method public f()Lg/f/c/a/f0/s0$c;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/s0$c;->SYMMETRIC:Lg/f/c/a/f0/s0$c;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/h0/b;->l(Lcom/google/protobuf/i;)Lg/f/c/a/f0/o;

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
    check-cast p1, Lg/f/c/a/f0/o;

    invoke-virtual {p0, p1}, Lg/f/c/a/h0/b;->n(Lg/f/c/a/f0/o;)V

    return-void
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l(Lcom/google/protobuf/i;)Lg/f/c/a/f0/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/o;->e0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/o;

    move-result-object p1

    return-object p1
.end method

.method public n(Lg/f/c/a/f0/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/o;->c0()I

    move-result v0

    invoke-virtual {p0}, Lg/f/c/a/h0/b;->k()I

    move-result v1

    invoke-static {v0, v1}, Lg/f/c/a/i0/q0;->e(II)V

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/o;->b0()Lg/f/c/a/f0/q;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/h0/b;->o(Lg/f/c/a/f0/q;)V

    return-void
.end method
