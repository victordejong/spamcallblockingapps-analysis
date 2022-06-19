.class public Lg/f/c/a/h0/a;
.super Lg/f/c/a/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i<",
        "Lg/f/c/a/f0/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lg/f/c/a/f0/f;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/f/c/a/i$b;

    new-instance v2, Lg/f/c/a/h0/a$a;

    const-class v3, Lg/f/c/a/x;

    invoke-direct {v2, v3}, Lg/f/c/a/h0/a$a;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lg/f/c/a/i;-><init>(Ljava/lang/Class;[Lg/f/c/a/i$b;)V

    return-void
.end method

.method static synthetic j(Lg/f/c/a/f0/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lg/f/c/a/h0/a;->p(Lg/f/c/a/f0/h;)V

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
    new-instance v0, Lg/f/c/a/h0/a;

    invoke-direct {v0}, Lg/f/c/a/h0/a;-><init>()V

    invoke-static {v0, p0}, Lg/f/c/a/w;->r(Lg/f/c/a/i;Z)V

    return-void
.end method

.method private static n(Lg/f/c/a/f0/r0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/r0;->b0()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_6

    .line 2
    sget-object v0, Lg/f/c/a/h0/a$c;->a:[I

    invoke-virtual {p0}, Lg/f/c/a/f0/r0;->a0()Lg/f/c/a/f0/o0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lg/f/c/a/f0/r0;->b0()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lg/f/c/a/f0/r0;->b0()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lg/f/c/a/f0/r0;->b0()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_5

    :goto_0
    return-void

    .line 9
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static p(Lg/f/c/a/f0/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/h;->Z()I

    move-result v0

    invoke-static {v0}, Lg/f/c/a/i0/q0;->a(I)V

    .line 2
    invoke-virtual {p0}, Lg/f/c/a/f0/h;->a0()Lg/f/c/a/f0/o0;

    move-result-object v0

    sget-object v1, Lg/f/c/a/f0/o0;->UNKNOWN_HASH:Lg/f/c/a/f0/o0;

    if-eq v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lg/f/c/a/f0/h;->b0()Lg/f/c/a/f0/r0;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/r0;->a0()Lg/f/c/a/f0/o0;

    move-result-object v0

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lg/f/c/a/f0/h;->b0()Lg/f/c/a/f0/r0;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/h0/a;->n(Lg/f/c/a/f0/r0;)V

    .line 5
    invoke-virtual {p0}, Lg/f/c/a/f0/h;->X()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lg/f/c/a/f0/h;->Z()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Lg/f/c/a/f0/h;->b0()Lg/f/c/a/f0/r0;

    move-result-object p0

    invoke-virtual {p0}, Lg/f/c/a/f0/r0;->b0()I

    move-result p0

    add-int/2addr v1, p0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x7

    if-lt v0, v1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "ciphertext_segment_size must be at least (derived_key_size + tag_size + NONCE_PREFIX_IN_BYTES + 2)"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown HMAC hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown HKDF hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacStreamingKey"

    return-object v0
.end method

.method public e()Lg/f/c/a/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/f/c/a/i$a<",
            "Lg/f/c/a/f0/g;",
            "Lg/f/c/a/f0/f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/h0/a$b;

    const-class v1, Lg/f/c/a/f0/g;

    invoke-direct {v0, p0, v1}, Lg/f/c/a/h0/a$b;-><init>(Lg/f/c/a/h0/a;Ljava/lang/Class;)V

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
    invoke-virtual {p0, p1}, Lg/f/c/a/h0/a;->l(Lcom/google/protobuf/i;)Lg/f/c/a/f0/f;

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
    check-cast p1, Lg/f/c/a/f0/f;

    invoke-virtual {p0, p1}, Lg/f/c/a/h0/a;->o(Lg/f/c/a/f0/f;)V

    return-void
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l(Lcom/google/protobuf/i;)Lg/f/c/a/f0/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/f;->e0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/f;

    move-result-object p1

    return-object p1
.end method

.method public o(Lg/f/c/a/f0/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/f;->c0()I

    move-result v0

    invoke-virtual {p0}, Lg/f/c/a/h0/a;->k()I

    move-result v1

    invoke-static {v0, v1}, Lg/f/c/a/i0/q0;->e(II)V

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/f;->a0()Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/i;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/f;->a0()Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/i;->size()I

    move-result v0

    invoke-virtual {p1}, Lg/f/c/a/f0/f;->b0()Lg/f/c/a/f0/h;

    move-result-object v1

    invoke-virtual {v1}, Lg/f/c/a/f0/h;->Z()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/f0/f;->b0()Lg/f/c/a/f0/h;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/h0/a;->p(Lg/f/c/a/f0/h;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key_value must have at least as many bits as derived keys"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key_value must have at least 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
