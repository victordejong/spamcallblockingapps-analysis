.class Lg/f/c/a/e0/b$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/e0/b;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/q0;",
        "Lg/f/c/a/f0/p0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lg/f/c/a/e0/b;Ljava/lang/Class;)V
    .locals 0

    .line 1
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
    check-cast p1, Lg/f/c/a/f0/q0;

    invoke-virtual {p0, p1}, Lg/f/c/a/e0/b$b;->e(Lg/f/c/a/f0/q0;)Lg/f/c/a/f0/p0;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/e0/b$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/q0;

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
    check-cast p1, Lg/f/c/a/f0/q0;

    invoke-virtual {p0, p1}, Lg/f/c/a/e0/b$b;->g(Lg/f/c/a/f0/q0;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/q0;)Lg/f/c/a/f0/p0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/f0/p0;->e0()Lg/f/c/a/f0/p0$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lg/f/c/a/f0/p0$b;->I(I)Lg/f/c/a/f0/p0$b;

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/q0;->b0()Lg/f/c/a/f0/r0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/p0$b;->H(Lg/f/c/a/f0/r0;)Lg/f/c/a/f0/p0$b;

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/f0/q0;->a0()I

    move-result p1

    invoke-static {p1}, Lg/f/c/a/i0/k0;->c(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/p0$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/p0$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/p0;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/q0;->d0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/q0;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/q0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/q0;->a0()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/q0;->b0()Lg/f/c/a/f0/r0;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/e0/b;->j(Lg/f/c/a/f0/r0;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
