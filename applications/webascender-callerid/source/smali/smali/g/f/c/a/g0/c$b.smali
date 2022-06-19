.class Lg/f/c/a/g0/c$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/g0/c;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/j0;",
        "Lg/f/c/a/f0/k0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lg/f/c/a/g0/c;


# direct methods
.method constructor <init>(Lg/f/c/a/g0/c;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/g0/c$b;->b:Lg/f/c/a/g0/c;

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
    check-cast p1, Lg/f/c/a/f0/j0;

    invoke-virtual {p0, p1}, Lg/f/c/a/g0/c$b;->e(Lg/f/c/a/f0/j0;)Lg/f/c/a/f0/k0;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/g0/c$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/j0;

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
    check-cast p1, Lg/f/c/a/f0/j0;

    invoke-virtual {p0, p1}, Lg/f/c/a/g0/c$b;->g(Lg/f/c/a/f0/j0;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/j0;)Lg/f/c/a/f0/k0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/i0/w$a;->c()Lg/f/c/a/i0/w$a;

    move-result-object p1

    .line 2
    invoke-static {}, Lg/f/c/a/f0/l0;->c0()Lg/f/c/a/f0/l0$b;

    move-result-object v0

    iget-object v1, p0, Lg/f/c/a/g0/c$b;->b:Lg/f/c/a/g0/c;

    .line 3
    invoke-virtual {v1}, Lg/f/c/a/g0/c;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/l0$b;->H(I)Lg/f/c/a/f0/l0$b;

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/i0/w$a;->b()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/l0$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/l0$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    check-cast v0, Lg/f/c/a/f0/l0;

    .line 6
    invoke-static {}, Lg/f/c/a/f0/k0;->d0()Lg/f/c/a/f0/k0$b;

    move-result-object v1

    iget-object v2, p0, Lg/f/c/a/g0/c$b;->b:Lg/f/c/a/g0/c;

    .line 7
    invoke-virtual {v2}, Lg/f/c/a/g0/c;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lg/f/c/a/f0/k0$b;->I(I)Lg/f/c/a/f0/k0$b;

    .line 8
    invoke-virtual {p1}, Lg/f/c/a/i0/w$a;->a()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/f/c/a/f0/k0$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/k0$b;

    .line 9
    invoke-virtual {v1, v0}, Lg/f/c/a/f0/k0$b;->H(Lg/f/c/a/f0/l0;)Lg/f/c/a/f0/k0$b;

    .line 10
    invoke-virtual {v1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/k0;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/j0;->X(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/j0;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/j0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    return-void
.end method
