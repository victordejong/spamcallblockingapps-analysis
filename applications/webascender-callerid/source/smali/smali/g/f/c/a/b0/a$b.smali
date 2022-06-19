.class Lg/f/c/a/b0/a$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/b0/a;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/u;",
        "Lg/f/c/a/f0/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lg/f/c/a/b0/a;


# direct methods
.method constructor <init>(Lg/f/c/a/b0/a;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/b0/a$b;->b:Lg/f/c/a/b0/a;

    invoke-direct {p0, p2}, Lg/f/c/a/i$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/protobuf/r0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg/f/c/a/f0/u;

    invoke-virtual {p0, p1}, Lg/f/c/a/b0/a$b;->e(Lg/f/c/a/f0/u;)Lg/f/c/a/f0/t;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg/f/c/a/b0/a$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lcom/google/protobuf/r0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg/f/c/a/f0/u;

    invoke-virtual {p0, p1}, Lg/f/c/a/b0/a$b;->g(Lg/f/c/a/f0/u;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/u;)Lg/f/c/a/f0/t;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/f0/t;->b0()Lg/f/c/a/f0/t$b;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/u;->Y()I

    move-result p1

    invoke-static {p1}, Lg/f/c/a/i0/k0;->c(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/t$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/t$b;

    iget-object p1, p0, Lg/f/c/a/b0/a$b;->b:Lg/f/c/a/b0/a;

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/b0/a;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/t$b;->H(I)Lg/f/c/a/f0/t$b;

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/t;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/u;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/u;->a0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/u;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/u;->Y()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/u;->Y()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid keys must have 64 bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
