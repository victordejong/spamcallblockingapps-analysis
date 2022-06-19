.class Lg/f/c/a/c0/b$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/c0/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/f;",
        "Lg/f/c/a/f0/h0;",
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
    check-cast p1, Lg/f/c/a/f0/h0;

    invoke-virtual {p0, p1}, Lg/f/c/a/c0/b$a;->c(Lg/f/c/a/f0/h0;)Lg/f/c/a/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/h0;)Lg/f/c/a/f;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/h0;->c0()Lg/f/c/a/f0/f0;

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
    invoke-virtual {p1}, Lg/f/c/a/f0/h0;->e0()Lcom/google/protobuf/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/i;->w()[B

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lg/f/c/a/f0/h0;->f0()Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/i;->w()[B

    move-result-object p1

    .line 6
    invoke-static {v2, v3, p1}, Lg/f/c/a/i0/y;->g(Lg/f/c/a/i0/y$b;[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    .line 7
    new-instance v9, Lg/f/c/a/c0/g;

    .line 8
    invoke-virtual {v0}, Lg/f/c/a/f0/f0;->Y()Lg/f/c/a/f0/d0;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/d0;->X()Lg/f/c/a/f0/u0;

    move-result-object p1

    invoke-direct {v9, p1}, Lg/f/c/a/c0/g;-><init>(Lg/f/c/a/f0/u0;)V

    .line 9
    new-instance p1, Lg/f/c/a/i0/t;

    .line 10
    invoke-virtual {v1}, Lg/f/c/a/f0/i0;->a0()Lcom/google/protobuf/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/i;->w()[B

    move-result-object v6

    .line 11
    invoke-virtual {v1}, Lg/f/c/a/f0/i0;->Z()Lg/f/c/a/f0/o0;

    move-result-object v1

    invoke-static {v1}, Lg/f/c/a/c0/f;->b(Lg/f/c/a/f0/o0;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-virtual {v0}, Lg/f/c/a/f0/f0;->Z()Lg/f/c/a/f0/x;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/c0/f;->c(Lg/f/c/a/f0/x;)Lg/f/c/a/i0/y$d;

    move-result-object v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lg/f/c/a/i0/t;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lg/f/c/a/i0/y$d;Lg/f/c/a/i0/r;)V

    return-object p1
.end method
