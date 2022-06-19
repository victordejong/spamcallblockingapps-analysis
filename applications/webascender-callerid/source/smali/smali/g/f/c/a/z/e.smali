.class public Lg/f/c/a/z/e;
.super Lg/f/c/a/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i<",
        "Lg/f/c/a/f0/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lg/f/c/a/f0/i;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/f/c/a/i$b;

    new-instance v2, Lg/f/c/a/z/e$a;

    const-class v3, Lg/f/c/a/i0/g0;

    invoke-direct {v2, v3}, Lg/f/c/a/z/e$a;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lg/f/c/a/i;-><init>(Ljava/lang/Class;[Lg/f/c/a/i$b;)V

    return-void
.end method

.method static synthetic j(Lg/f/c/a/z/e;Lg/f/c/a/f0/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/z/e;->n(Lg/f/c/a/f0/k;)V

    return-void
.end method

.method private n(Lg/f/c/a/f0/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/k;->Z()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lg/f/c/a/f0/k;->Z()I

    move-result p1

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    return-object v0
.end method

.method public e()Lg/f/c/a/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/f/c/a/i$a<",
            "Lg/f/c/a/f0/j;",
            "Lg/f/c/a/f0/i;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/z/e$b;

    const-class v1, Lg/f/c/a/f0/j;

    invoke-direct {v0, p0, v1}, Lg/f/c/a/z/e$b;-><init>(Lg/f/c/a/z/e;Ljava/lang/Class;)V

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
    invoke-virtual {p0, p1}, Lg/f/c/a/z/e;->l(Lcom/google/protobuf/i;)Lg/f/c/a/f0/i;

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
    check-cast p1, Lg/f/c/a/f0/i;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/e;->m(Lg/f/c/a/f0/i;)V

    return-void
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l(Lcom/google/protobuf/i;)Lg/f/c/a/f0/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/i;->f0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/i;

    move-result-object p1

    return-object p1
.end method

.method public m(Lg/f/c/a/f0/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/i;->d0()I

    move-result v0

    invoke-virtual {p0}, Lg/f/c/a/z/e;->k()I

    move-result v1

    invoke-static {v0, v1}, Lg/f/c/a/i0/q0;->e(II)V

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/i;->b0()Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/i;->size()I

    move-result v0

    invoke-static {v0}, Lg/f/c/a/i0/q0;->a(I)V

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/i;->c0()Lg/f/c/a/f0/k;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/f/c/a/z/e;->n(Lg/f/c/a/f0/k;)V

    return-void
.end method
