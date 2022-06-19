.class Lg/f/c/a/h0/b$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/h0/b;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/p;",
        "Lg/f/c/a/f0/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lg/f/c/a/h0/b;


# direct methods
.method constructor <init>(Lg/f/c/a/h0/b;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/h0/b$b;->b:Lg/f/c/a/h0/b;

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
    check-cast p1, Lg/f/c/a/f0/p;

    invoke-virtual {p0, p1}, Lg/f/c/a/h0/b$b;->e(Lg/f/c/a/f0/p;)Lg/f/c/a/f0/o;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/h0/b$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/p;

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
    check-cast p1, Lg/f/c/a/f0/p;

    invoke-virtual {p0, p1}, Lg/f/c/a/h0/b$b;->g(Lg/f/c/a/f0/p;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/p;)Lg/f/c/a/f0/o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/f0/o;->d0()Lg/f/c/a/f0/o$b;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/p;->X()I

    move-result v1

    invoke-static {v1}, Lg/f/c/a/i0/k0;->c(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/o$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/o$b;

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/p;->Y()Lg/f/c/a/f0/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/o$b;->H(Lg/f/c/a/f0/q;)Lg/f/c/a/f0/o$b;

    iget-object p1, p0, Lg/f/c/a/h0/b$b;->b:Lg/f/c/a/h0/b;

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/h0/b;->k()I

    move-result p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/o$b;->I(I)Lg/f/c/a/f0/o$b;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/o;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lg/f/c/a/f0/p;->Z(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/p;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/p;->X()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/p;->Y()Lg/f/c/a/f0/q;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/h0/b;->j(Lg/f/c/a/f0/q;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key_size must be at least 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
