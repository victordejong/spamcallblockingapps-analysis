.class Lg/f/c/a/z/k$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/z/k;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/b1;",
        "Lg/f/c/a/f0/a1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lg/f/c/a/z/k;


# direct methods
.method constructor <init>(Lg/f/c/a/z/k;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/z/k$b;->b:Lg/f/c/a/z/k;

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
    check-cast p1, Lg/f/c/a/f0/b1;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/k$b;->e(Lg/f/c/a/f0/b1;)Lg/f/c/a/f0/a1;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/z/k$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/b1;

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
    check-cast p1, Lg/f/c/a/f0/b1;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/k$b;->g(Lg/f/c/a/f0/b1;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/b1;)Lg/f/c/a/f0/a1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/f0/a1;->b0()Lg/f/c/a/f0/a1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/a1$b;->G(Lg/f/c/a/f0/b1;)Lg/f/c/a/f0/a1$b;

    iget-object p1, p0, Lg/f/c/a/z/k$b;->b:Lg/f/c/a/z/k;

    invoke-virtual {p1}, Lg/f/c/a/z/k;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Lg/f/c/a/f0/a1$b;->H(I)Lg/f/c/a/f0/a1$b;

    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/a1;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/b1;
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
    invoke-static {p1, v0}, Lg/f/c/a/f0/b1;->a0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/b1;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    return-void
.end method
