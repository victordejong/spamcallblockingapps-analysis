.class Lg/f/c/a/z/d$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/z/d;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/e;",
        "Lg/f/c/a/f0/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lg/f/c/a/z/d;


# direct methods
.method constructor <init>(Lg/f/c/a/z/d;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/z/d$b;->b:Lg/f/c/a/z/d;

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
    check-cast p1, Lg/f/c/a/f0/e;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/d$b;->e(Lg/f/c/a/f0/e;)Lg/f/c/a/f0/d;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/z/d$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/e;

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
    check-cast p1, Lg/f/c/a/f0/e;

    invoke-virtual {p0, p1}, Lg/f/c/a/z/d$b;->g(Lg/f/c/a/f0/e;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/e;)Lg/f/c/a/f0/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/z/e;

    invoke-direct {v0}, Lg/f/c/a/z/e;-><init>()V

    .line 2
    invoke-virtual {v0}, Lg/f/c/a/z/e;->e()Lg/f/c/a/i$a;

    move-result-object v0

    invoke-virtual {p1}, Lg/f/c/a/f0/e;->Z()Lg/f/c/a/f0/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/i$a;->a(Lcom/google/protobuf/r0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/f/c/a/f0/i;

    .line 3
    new-instance v1, Lg/f/c/a/e0/b;

    invoke-direct {v1}, Lg/f/c/a/e0/b;-><init>()V

    invoke-virtual {v1}, Lg/f/c/a/e0/b;->e()Lg/f/c/a/i$a;

    move-result-object v1

    invoke-virtual {p1}, Lg/f/c/a/f0/e;->a0()Lg/f/c/a/f0/q0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/f/c/a/i$a;->a(Lcom/google/protobuf/r0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/p0;

    .line 4
    invoke-static {}, Lg/f/c/a/f0/d;->d0()Lg/f/c/a/f0/d$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lg/f/c/a/f0/d$b;->G(Lg/f/c/a/f0/i;)Lg/f/c/a/f0/d$b;

    .line 6
    invoke-virtual {v1, p1}, Lg/f/c/a/f0/d$b;->H(Lg/f/c/a/f0/p0;)Lg/f/c/a/f0/d$b;

    iget-object p1, p0, Lg/f/c/a/z/d$b;->b:Lg/f/c/a/z/d;

    .line 7
    invoke-virtual {p1}, Lg/f/c/a/z/d;->j()I

    move-result p1

    invoke-virtual {v1, p1}, Lg/f/c/a/f0/d$b;->I(I)Lg/f/c/a/f0/d$b;

    .line 8
    invoke-virtual {v1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/d;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/e;
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
    invoke-static {p1, v0}, Lg/f/c/a/f0/e;->c0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/e;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/z/e;

    invoke-direct {v0}, Lg/f/c/a/z/e;-><init>()V

    invoke-virtual {v0}, Lg/f/c/a/z/e;->e()Lg/f/c/a/i$a;

    move-result-object v0

    invoke-virtual {p1}, Lg/f/c/a/f0/e;->Z()Lg/f/c/a/f0/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/i$a;->d(Lcom/google/protobuf/r0;)V

    .line 2
    new-instance v0, Lg/f/c/a/e0/b;

    invoke-direct {v0}, Lg/f/c/a/e0/b;-><init>()V

    invoke-virtual {v0}, Lg/f/c/a/e0/b;->e()Lg/f/c/a/i$a;

    move-result-object v0

    invoke-virtual {p1}, Lg/f/c/a/f0/e;->a0()Lg/f/c/a/f0/q0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/i$a;->d(Lcom/google/protobuf/r0;)V

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/e;->Z()Lg/f/c/a/f0/j;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/j;->a0()I

    move-result p1

    invoke-static {p1}, Lg/f/c/a/i0/q0;->a(I)V

    return-void
.end method
