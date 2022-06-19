.class Lg/f/c/a/e0/b$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/e0/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/p;",
        "Lg/f/c/a/f0/p0;",
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
    check-cast p1, Lg/f/c/a/f0/p0;

    invoke-virtual {p0, p1}, Lg/f/c/a/e0/b$a;->c(Lg/f/c/a/f0/p0;)Lg/f/c/a/p;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/p0;)Lg/f/c/a/p;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/p0;->c0()Lg/f/c/a/f0/r0;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/r0;->a0()Lg/f/c/a/f0/o0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/p0;->b0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    .line 3
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/f0/p0;->c0()Lg/f/c/a/f0/r0;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/r0;->b0()I

    move-result p1

    .line 5
    sget-object v1, Lg/f/c/a/e0/b$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6
    new-instance v0, Lg/f/c/a/i0/h0;

    const-string v1, "HMACSHA512"

    invoke-direct {v0, v1, v2, p1}, Lg/f/c/a/i0/h0;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    .line 7
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance v0, Lg/f/c/a/i0/h0;

    const-string v1, "HMACSHA256"

    invoke-direct {v0, v1, v2, p1}, Lg/f/c/a/i0/h0;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    .line 9
    :cond_2
    new-instance v0, Lg/f/c/a/i0/h0;

    const-string v1, "HMACSHA1"

    invoke-direct {v0, v1, v2, p1}, Lg/f/c/a/i0/h0;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0
.end method
