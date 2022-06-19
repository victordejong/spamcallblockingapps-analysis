.class Lg/f/c/a/c0/a$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/c0/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/e;",
        "Lg/f/c/a/f0/g0;",
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
    check-cast p1, Lg/f/c/a/f0/g0;

    invoke-virtual {p0, p1}, Lg/f/c/a/c0/a$a;->c(Lg/f/c/a/f0/g0;)Lg/f/c/a/e;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/g0;)Lg/f/c/a/e;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/g0;->b0()Lg/f/c/a/f0/h0;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/h0;->c0()Lg/f/c/a/f0/f0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lg/f/c/a/f0/f0;->a0()Lg/f/c/a/f0/i0;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lg/f/c/a/f0/i0;->X()Lg/f/c/a/f0/m0;

    move-result-object v2

    invoke-static {v2}, Lg/f/c/a/c0/f;->a(Lg/f/c/a/f0/m0;)Lg/f/c/a/i0/y$b;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/f0/g0;->a0()Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/i;->w()[B

    move-result-object p1

    .line 5
    invoke-static {v2, p1}, Lg/f/c/a/i0/y;->f(Lg/f/c/a/i0/y$b;[B)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v4

    .line 6
    new-instance v8, Lg/f/c/a/c0/g;

    .line 7
    invoke-virtual {v0}, Lg/f/c/a/f0/f0;->Y()Lg/f/c/a/f0/d0;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/d0;->X()Lg/f/c/a/f0/u0;

    move-result-object p1

    invoke-direct {v8, p1}, Lg/f/c/a/c0/g;-><init>(Lg/f/c/a/f0/u0;)V

    .line 8
    new-instance p1, Lg/f/c/a/i0/s;

    .line 9
    invoke-virtual {v1}, Lg/f/c/a/f0/i0;->a0()Lcom/google/protobuf/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/i;->w()[B

    move-result-object v5

    .line 10
    invoke-virtual {v1}, Lg/f/c/a/f0/i0;->Z()Lg/f/c/a/f0/o0;

    move-result-object v1

    invoke-static {v1}, Lg/f/c/a/c0/f;->b(Lg/f/c/a/f0/o0;)Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {v0}, Lg/f/c/a/f0/f0;->Z()Lg/f/c/a/f0/x;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/c0/f;->c(Lg/f/c/a/f0/x;)Lg/f/c/a/i0/y$d;

    move-result-object v7

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lg/f/c/a/i0/s;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lg/f/c/a/i0/y$d;Lg/f/c/a/i0/r;)V

    return-object p1
.end method
