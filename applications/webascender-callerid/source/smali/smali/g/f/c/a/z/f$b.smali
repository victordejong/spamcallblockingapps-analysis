.class Lg/f/c/a/z/f$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/z/f;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/m;",
        "Lg/f/c/a/f0/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lg/f/c/a/z/f;


# direct methods
.method constructor <init>(Lg/f/c/a/z/f;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/z/f$b;->b:Lg/f/c/a/z/f;

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
    check-cast p1, Lg/f/c/a/f0/m;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/f$b;->e(Lg/f/c/a/f0/m;)Lg/f/c/a/f0/l;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/z/f$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/m;

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
    check-cast p1, Lg/f/c/a/f0/m;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/f$b;->g(Lg/f/c/a/f0/m;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/m;)Lg/f/c/a/f0/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/f0/l;->d0()Lg/f/c/a/f0/l$b;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/m;->Z()I

    move-result v1

    invoke-static {v1}, Lg/f/c/a/i0/k0;->c(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/l$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/l$b;

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/m;->a0()Lg/f/c/a/f0/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/l$b;->H(Lg/f/c/a/f0/n;)Lg/f/c/a/f0/l$b;

    iget-object p1, p0, Lg/f/c/a/z/f$b;->b:Lg/f/c/a/z/f;

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/z/f;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/l$b;->I(I)Lg/f/c/a/f0/l$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/l;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/m;->c0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/m;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/m;->Z()I

    move-result v0

    invoke-static {v0}, Lg/f/c/a/i0/q0;->a(I)V

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/m;->a0()Lg/f/c/a/f0/n;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/n;->Z()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lg/f/c/a/f0/m;->a0()Lg/f/c/a/f0/n;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/n;->Z()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
