.class Lg/f/c/a/z/h$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/z/h;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/w;",
        "Lg/f/c/a/f0/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lg/f/c/a/z/h;


# direct methods
.method constructor <init>(Lg/f/c/a/z/h;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/z/h$b;->b:Lg/f/c/a/z/h;

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
    check-cast p1, Lg/f/c/a/f0/w;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/h$b;->e(Lg/f/c/a/f0/w;)Lg/f/c/a/f0/v;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/z/h$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/w;

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
    check-cast p1, Lg/f/c/a/f0/w;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/h$b;->g(Lg/f/c/a/f0/w;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/w;)Lg/f/c/a/f0/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/f/c/a/f0/v;->b0()Lg/f/c/a/f0/v$b;

    move-result-object p1

    iget-object v0, p0, Lg/f/c/a/z/h$b;->b:Lg/f/c/a/z/h;

    .line 2
    invoke-virtual {v0}, Lg/f/c/a/z/h;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Lg/f/c/a/f0/v$b;->H(I)Lg/f/c/a/f0/v$b;

    const/16 v0, 0x20

    .line 3
    invoke-static {v0}, Lg/f/c/a/i0/k0;->c(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/f/c/a/f0/v$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/v$b;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/v;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/w;
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
    invoke-static {p1, v0}, Lg/f/c/a/f0/w;->X(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/w;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    return-void
.end method
