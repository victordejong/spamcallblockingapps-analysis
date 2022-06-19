.class Lg/f/c/a/e0/a$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/e0/a;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/b;",
        "Lg/f/c/a/f0/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lg/f/c/a/e0/a;Ljava/lang/Class;)V
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
    check-cast p1, Lg/f/c/a/f0/b;

    invoke-virtual {p0, p1}, Lg/f/c/a/e0/a$b;->e(Lg/f/c/a/f0/b;)Lg/f/c/a/f0/a;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/e0/a$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/b;

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
    check-cast p1, Lg/f/c/a/f0/b;

    invoke-virtual {p0, p1}, Lg/f/c/a/e0/a$b;->g(Lg/f/c/a/f0/b;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/b;)Lg/f/c/a/f0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/f0/a;->d0()Lg/f/c/a/f0/a$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lg/f/c/a/f0/a$b;->I(I)Lg/f/c/a/f0/a$b;

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/b;->X()I

    move-result v1

    invoke-static {v1}, Lg/f/c/a/i0/k0;->c(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/a$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/a$b;

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/f0/b;->Y()Lg/f/c/a/f0/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/a$b;->H(Lg/f/c/a/f0/c;)Lg/f/c/a/f0/a$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/a;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/b;->Z(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/b;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/b;->Y()Lg/f/c/a/f0/c;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/e0/a;->j(Lg/f/c/a/f0/c;)V

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/b;->X()I

    move-result p1

    invoke-static {p1}, Lg/f/c/a/e0/a;->k(I)V

    return-void
.end method
