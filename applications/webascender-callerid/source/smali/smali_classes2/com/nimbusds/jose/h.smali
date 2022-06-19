.class public Lcom/nimbusds/jose/h;
.super Lcom/nimbusds/jose/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/h$a;
    }
.end annotation


# instance fields
.field private final g:Lcom/nimbusds/jose/g;

.field private final h:Ljava/lang/String;

.field private i:Lcom/nimbusds/jose/util/c;

.field private j:Lcom/nimbusds/jose/h$a;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/g;Lcom/nimbusds/jose/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/d;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Lcom/nimbusds/jose/h;->g:Lcom/nimbusds/jose/g;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/d;->b(Lcom/nimbusds/jose/k;)V

    .line 4
    invoke-virtual {p1}, Lcom/nimbusds/jose/c;->b()Lcom/nimbusds/jose/util/c;

    move-result-object p1

    invoke-virtual {p2}, Lcom/nimbusds/jose/k;->c()Lcom/nimbusds/jose/util/c;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nimbusds/jose/h;->c(Lcom/nimbusds/jose/util/c;Lcom/nimbusds/jose/util/c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/h;->h:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/nimbusds/jose/h;->i:Lcom/nimbusds/jose/util/c;

    .line 6
    sget-object p1, Lcom/nimbusds/jose/h$a;->UNSIGNED:Lcom/nimbusds/jose/h$a;

    iput-object p1, p0, Lcom/nimbusds/jose/h;->j:Lcom/nimbusds/jose/h$a;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The payload must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWS header must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static c(Lcom/nimbusds/jose/util/c;Lcom/nimbusds/jose/util/c;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/util/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nimbusds/jose/util/a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Lcom/nimbusds/jose/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/nimbusds/jose/i;->b()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/h;->g()Lcom/nimbusds/jose/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/g;->d()Lcom/nimbusds/jose/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nimbusds/jose/h;->g()Lcom/nimbusds/jose/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nimbusds/jose/g;->d()Lcom/nimbusds/jose/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" algorithm is not allowed or supported by the JWS signer: Supported algorithms: "

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/nimbusds/jose/i;->b()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {v0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/h;->j:Lcom/nimbusds/jose/h$a;

    sget-object v1, Lcom/nimbusds/jose/h$a;->SIGNED:Lcom/nimbusds/jose/h$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/nimbusds/jose/h$a;->VERIFIED:Lcom/nimbusds/jose/h$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The JWS object must be in a signed or verified state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/h;->j:Lcom/nimbusds/jose/h$a;

    sget-object v1, Lcom/nimbusds/jose/h$a;->UNSIGNED:Lcom/nimbusds/jose/h$a;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The JWS object must be in an unsigned state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public g()Lcom/nimbusds/jose/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/h;->g:Lcom/nimbusds/jose/g;

    return-object v0
.end method

.method public h()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/h;->h:Ljava/lang/String;

    sget-object v1, Lcom/nimbusds/jose/util/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/nimbusds/jose/h;->e()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nimbusds/jose/h;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nimbusds/jose/h;->i:Lcom/nimbusds/jose/util/c;

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized j(Lcom/nimbusds/jose/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/nimbusds/jose/h;->f()V

    .line 2
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/h;->d(Lcom/nimbusds/jose/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/h;->g()Lcom/nimbusds/jose/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/h;->h()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/nimbusds/jose/j;->a(Lcom/nimbusds/jose/g;[B)Lcom/nimbusds/jose/util/c;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/h;->i:Lcom/nimbusds/jose/util/c;
    :try_end_1
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    sget-object p1, Lcom/nimbusds/jose/h$a;->SIGNED:Lcom/nimbusds/jose/h$a;

    iput-object p1, p0, Lcom/nimbusds/jose/h;->j:Lcom/nimbusds/jose/h$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 6
    :try_start_3
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 7
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
