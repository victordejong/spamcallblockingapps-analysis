.class Lg/f/c/a/c0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/i0/r;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I


# direct methods
.method constructor <init>(Lg/f/c/a/f0/u0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/u0;->c0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/f/c/a/c0/g;->a:Ljava/lang/String;

    .line 3
    sget-object v1, Lg/f/c/a/z/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lg/f/c/a/f0/u0;->d0()Lcom/google/protobuf/i;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lg/f/c/a/f0/s;->a0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/s;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lg/f/c/a/w;->o(Lg/f/c/a/f0/u0;)Lcom/google/protobuf/r0;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/r;

    .line 7
    invoke-virtual {v0}, Lg/f/c/a/f0/s;->Y()I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_0
    sget-object v1, Lg/f/c/a/z/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Lg/f/c/a/f0/u0;->d0()Lcom/google/protobuf/i;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lg/f/c/a/f0/e;->c0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/e;

    move-result-object v0

    .line 12
    invoke-static {p1}, Lg/f/c/a/w;->o(Lg/f/c/a/f0/u0;)Lcom/google/protobuf/r0;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/d;

    .line 13
    invoke-virtual {v0}, Lg/f/c/a/f0/e;->Z()Lg/f/c/a/f0/j;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/j;->a0()I

    move-result p1

    iput p1, p0, Lg/f/c/a/c0/g;->b:I

    .line 14
    invoke-virtual {v0}, Lg/f/c/a/f0/e;->a0()Lg/f/c/a/f0/q0;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/q0;->a0()I
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 15
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 16
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported AEAD DEM key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
