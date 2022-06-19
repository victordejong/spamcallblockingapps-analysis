.class Lg/f/c/a/e0/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/e0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lg/f/c/a/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/f/c/a/q<",
            "Lg/f/c/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[B


# direct methods
.method private constructor <init>(Lg/f/c/a/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/c/a/q<",
            "Lg/f/c/a/p;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 3
    iput-object v0, p0, Lg/f/c/a/e0/d$b;->b:[B

    .line 4
    iput-object p1, p0, Lg/f/c/a/e0/d$b;->a:Lg/f/c/a/q;

    return-void
.end method

.method synthetic constructor <init>(Lg/f/c/a/q;Lg/f/c/a/e0/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/e0/d$b;-><init>(Lg/f/c/a/q;)V

    return-void
.end method


# virtual methods
.method public a([B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 3
    array-length v3, p1

    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 4
    iget-object v3, p0, Lg/f/c/a/e0/d$b;->a:Lg/f/c/a/q;

    invoke-virtual {v3, v2}, Lg/f/c/a/q;->c([B)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/f/c/a/q$a;

    .line 6
    :try_start_0
    invoke-virtual {v3}, Lg/f/c/a/q$a;->b()Lg/f/c/a/f0/c1;

    move-result-object v4

    sget-object v5, Lg/f/c/a/f0/c1;->LEGACY:Lg/f/c/a/f0/c1;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Lg/f/c/a/q$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/f/c/a/p;

    const/4 v4, 0x2

    new-array v4, v4, [[B

    aput-object p2, v4, v0

    const/4 v5, 0x1

    iget-object v6, p0, Lg/f/c/a/e0/d$b;->b:[B

    aput-object v6, v4, v5

    invoke-static {v4}, Lg/f/c/a/i0/j;->a([[B)[B

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lg/f/c/a/p;->a([B[B)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v3}, Lg/f/c/a/q$a;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/f/c/a/p;

    invoke-interface {v3, v1, p2}, Lg/f/c/a/p;->a([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v3

    .line 9
    invoke-static {}, Lg/f/c/a/e0/d;->c()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tag prefix matches a key, but cannot verify: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lg/f/c/a/e0/d$b;->a:Lg/f/c/a/q;

    invoke-virtual {v0}, Lg/f/c/a/q;->e()Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/f/c/a/q$a;

    .line 12
    :try_start_1
    invoke-virtual {v1}, Lg/f/c/a/q$a;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/f/c/a/p;

    invoke-interface {v1, p1, p2}, Lg/f/c/a/p;->a([B[B)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    nop

    goto :goto_2

    .line 13
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "tag too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/e0/d$b;->a:Lg/f/c/a/q;

    invoke-virtual {v0}, Lg/f/c/a/q;->b()Lg/f/c/a/q$a;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/q$a;->b()Lg/f/c/a/f0/c1;

    move-result-object v0

    sget-object v1, Lg/f/c/a/f0/c1;->LEGACY:Lg/f/c/a/f0/c1;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array v0, v3, [[B

    .line 2
    iget-object v4, p0, Lg/f/c/a/e0/d$b;->a:Lg/f/c/a/q;

    .line 3
    invoke-virtual {v4}, Lg/f/c/a/q;->b()Lg/f/c/a/q$a;

    move-result-object v4

    invoke-virtual {v4}, Lg/f/c/a/q$a;->a()[B

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lg/f/c/a/e0/d$b;->a:Lg/f/c/a/q;

    .line 4
    invoke-virtual {v4}, Lg/f/c/a/q;->b()Lg/f/c/a/q$a;

    move-result-object v4

    invoke-virtual {v4}, Lg/f/c/a/q$a;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/f/c/a/p;

    new-array v3, v3, [[B

    aput-object p1, v3, v2

    iget-object p1, p0, Lg/f/c/a/e0/d$b;->b:[B

    aput-object p1, v3, v1

    invoke-static {v3}, Lg/f/c/a/i0/j;->a([[B)[B

    move-result-object p1

    invoke-interface {v4, p1}, Lg/f/c/a/p;->b([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 5
    invoke-static {v0}, Lg/f/c/a/i0/j;->a([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v3, [[B

    .line 6
    iget-object v3, p0, Lg/f/c/a/e0/d$b;->a:Lg/f/c/a/q;

    .line 7
    invoke-virtual {v3}, Lg/f/c/a/q;->b()Lg/f/c/a/q$a;

    move-result-object v3

    invoke-virtual {v3}, Lg/f/c/a/q$a;->a()[B

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lg/f/c/a/e0/d$b;->a:Lg/f/c/a/q;

    .line 8
    invoke-virtual {v2}, Lg/f/c/a/q;->b()Lg/f/c/a/q$a;

    move-result-object v2

    invoke-virtual {v2}, Lg/f/c/a/q$a;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/f/c/a/p;

    invoke-interface {v2, p1}, Lg/f/c/a/p;->b([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 9
    invoke-static {v0}, Lg/f/c/a/i0/j;->a([[B)[B

    move-result-object p1

    return-object p1
.end method
