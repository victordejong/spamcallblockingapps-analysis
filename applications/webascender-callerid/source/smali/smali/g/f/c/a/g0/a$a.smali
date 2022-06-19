.class Lg/f/c/a/g0/a$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/g0/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/u;",
        "Lg/f/c/a/f0/a0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/i$b;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg/f/c/a/f0/a0;

    invoke-virtual {p0, p1}, Lg/f/c/a/g0/a$a;->c(Lg/f/c/a/f0/a0;)Lg/f/c/a/u;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/a0;)Lg/f/c/a/u;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/a0;->b0()Lg/f/c/a/f0/b0;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/b0;->c0()Lg/f/c/a/f0/z;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/z;->X()Lg/f/c/a/f0/m0;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/g0/k;->a(Lg/f/c/a/f0/m0;)Lg/f/c/a/i0/y$b;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/a0;->a0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lg/f/c/a/i0/y;->f(Lg/f/c/a/i0/y$b;[B)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v0

    .line 4
    new-instance v1, Lg/f/c/a/i0/p;

    .line 5
    invoke-virtual {p1}, Lg/f/c/a/f0/a0;->b0()Lg/f/c/a/f0/b0;

    move-result-object v2

    invoke-virtual {v2}, Lg/f/c/a/f0/b0;->c0()Lg/f/c/a/f0/z;

    move-result-object v2

    invoke-virtual {v2}, Lg/f/c/a/f0/z;->a0()Lg/f/c/a/f0/o0;

    move-result-object v2

    invoke-static {v2}, Lg/f/c/a/g0/k;->c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lg/f/c/a/f0/a0;->b0()Lg/f/c/a/f0/b0;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/b0;->c0()Lg/f/c/a/f0/z;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/z;->Z()Lg/f/c/a/f0/c0;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/g0/k;->b(Lg/f/c/a/f0/c0;)Lg/f/c/a/i0/y$c;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lg/f/c/a/i0/p;-><init>(Ljava/security/interfaces/ECPrivateKey;Lg/f/c/a/i0/c0;Lg/f/c/a/i0/y$c;)V

    return-object v1
.end method
