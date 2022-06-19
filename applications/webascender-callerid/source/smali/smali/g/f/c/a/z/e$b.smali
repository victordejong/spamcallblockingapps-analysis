.class Lg/f/c/a/z/e$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/z/e;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/j;",
        "Lg/f/c/a/f0/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lg/f/c/a/z/e;


# direct methods
.method constructor <init>(Lg/f/c/a/z/e;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/z/e$b;->b:Lg/f/c/a/z/e;

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
    check-cast p1, Lg/f/c/a/f0/j;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/e$b;->e(Lg/f/c/a/f0/j;)Lg/f/c/a/f0/i;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/z/e$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/j;

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
    check-cast p1, Lg/f/c/a/f0/j;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/e$b;->g(Lg/f/c/a/f0/j;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/j;)Lg/f/c/a/f0/i;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/f0/i;->e0()Lg/f/c/a/f0/i$b;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/j;->b0()Lg/f/c/a/f0/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/i$b;->H(Lg/f/c/a/f0/k;)Lg/f/c/a/f0/i$b;

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/j;->a0()I

    move-result p1

    invoke-static {p1}, Lg/f/c/a/i0/k0;->c(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/i$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/i$b;

    iget-object p1, p0, Lg/f/c/a/z/e$b;->b:Lg/f/c/a/z/e;

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/z/e;->k()I

    move-result p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/i$b;->I(I)Lg/f/c/a/f0/i$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/i;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/j;->d0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/j;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/j;->a0()I

    move-result v0

    invoke-static {v0}, Lg/f/c/a/i0/q0;->a(I)V

    .line 2
    iget-object v0, p0, Lg/f/c/a/z/e$b;->b:Lg/f/c/a/z/e;

    invoke-virtual {p1}, Lg/f/c/a/f0/j;->b0()Lg/f/c/a/f0/k;

    move-result-object p1

    invoke-static {v0, p1}, Lg/f/c/a/z/e;->j(Lg/f/c/a/z/e;Lg/f/c/a/f0/k;)V

    return-void
.end method
