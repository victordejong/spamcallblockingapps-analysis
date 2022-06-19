.class public final Le/p/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/a/i$b;
    }
.end annotation


# static fields
.field public static final e:[Le/p/a/g;

.field public static final f:Le/p/a/i;

.field public static final g:Le/p/a/i;

.field public static final h:Le/p/a/i;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xd

    new-array v1, v0, [Le/p/a/g;

    .line 1
    sget-object v2, Le/p/a/g;->V0:Le/p/a/g;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Le/p/a/g;->Z0:Le/p/a/g;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Le/p/a/g;->h0:Le/p/a/g;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Le/p/a/g;->x0:Le/p/a/g;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Le/p/a/g;->w0:Le/p/a/g;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Le/p/a/g;->G0:Le/p/a/g;

    const/4 v7, 0x5

    aput-object v2, v1, v7

    sget-object v2, Le/p/a/g;->H0:Le/p/a/g;

    const/4 v7, 0x6

    aput-object v2, v1, v7

    sget-object v2, Le/p/a/g;->K:Le/p/a/g;

    const/4 v7, 0x7

    aput-object v2, v1, v7

    sget-object v2, Le/p/a/g;->O:Le/p/a/g;

    const/16 v7, 0x8

    aput-object v2, v1, v7

    sget-object v2, Le/p/a/g;->Z:Le/p/a/g;

    const/16 v7, 0x9

    aput-object v2, v1, v7

    sget-object v2, Le/p/a/g;->E:Le/p/a/g;

    const/16 v7, 0xa

    aput-object v2, v1, v7

    sget-object v2, Le/p/a/g;->M:Le/p/a/g;

    const/16 v7, 0xb

    aput-object v2, v1, v7

    sget-object v2, Le/p/a/g;->i:Le/p/a/g;

    const/16 v7, 0xc

    aput-object v2, v1, v7

    sput-object v1, Le/p/a/i;->e:[Le/p/a/g;

    .line 2
    new-instance v2, Le/p/a/i$b;

    invoke-direct {v2, v4}, Le/p/a/i$b;-><init>(Z)V

    new-array v7, v0, [Ljava/lang/String;

    move v8, v3

    :goto_0
    if-ge v8, v0, :cond_0

    .line 3
    aget-object v9, v1, v8

    iget-object v9, v9, Le/p/a/g;->a:Ljava/lang/String;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2, v7}, Le/p/a/i$b;->b([Ljava/lang/String;)Le/p/a/i$b;

    new-array v0, v6, [Le/p/a/x;

    .line 5
    sget-object v1, Le/p/a/x;->b:Le/p/a/x;

    aput-object v1, v0, v3

    sget-object v1, Le/p/a/x;->c:Le/p/a/x;

    aput-object v1, v0, v4

    sget-object v1, Le/p/a/x;->d:Le/p/a/x;

    aput-object v1, v0, v5

    invoke-virtual {v2, v0}, Le/p/a/i$b;->c([Le/p/a/x;)Le/p/a/i$b;

    .line 6
    iget-boolean v0, v2, Le/p/a/i$b;->a:Z

    const-string v5, "no TLS extensions for cleartext connections"

    if-eqz v0, :cond_2

    .line 7
    iput-boolean v4, v2, Le/p/a/i$b;->d:Z

    .line 8
    invoke-virtual {v2}, Le/p/a/i$b;->a()Le/p/a/i;

    move-result-object v0

    sput-object v0, Le/p/a/i;->f:Le/p/a/i;

    .line 9
    new-instance v2, Le/p/a/i$b;

    invoke-direct {v2, v0}, Le/p/a/i$b;-><init>(Le/p/a/i;)V

    new-array v0, v4, [Le/p/a/x;

    aput-object v1, v0, v3

    invoke-virtual {v2, v0}, Le/p/a/i$b;->c([Le/p/a/x;)Le/p/a/i$b;

    .line 10
    iget-boolean v0, v2, Le/p/a/i$b;->a:Z

    if-eqz v0, :cond_1

    .line 11
    iput-boolean v4, v2, Le/p/a/i$b;->d:Z

    .line 12
    invoke-virtual {v2}, Le/p/a/i$b;->a()Le/p/a/i;

    move-result-object v0

    sput-object v0, Le/p/a/i;->g:Le/p/a/i;

    .line 13
    new-instance v0, Le/p/a/i$b;

    invoke-direct {v0, v3}, Le/p/a/i$b;-><init>(Z)V

    invoke-virtual {v0}, Le/p/a/i$b;->a()Le/p/a/i;

    move-result-object v0

    sput-object v0, Le/p/a/i;->h:Le/p/a/i;

    return-void

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Le/p/a/i$b;Le/p/a/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Le/p/a/i$b;->a:Z

    .line 3
    iput-boolean p2, p0, Le/p/a/i;->a:Z

    .line 4
    iget-object p2, p1, Le/p/a/i$b;->b:[Ljava/lang/String;

    .line 5
    iput-object p2, p0, Le/p/a/i;->c:[Ljava/lang/String;

    .line 6
    iget-object p2, p1, Le/p/a/i$b;->c:[Ljava/lang/String;

    .line 7
    iput-object p2, p0, Le/p/a/i;->d:[Ljava/lang/String;

    .line 8
    iget-boolean p1, p1, Le/p/a/i$b;->d:Z

    .line 9
    iput-boolean p1, p0, Le/p/a/i;->b:Z

    return-void
.end method

.method public static c([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1
    array-length v1, p0

    if-eqz v1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 3
    sget-object v4, Le/p/a/y/i;->a:[B

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/p/a/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/i;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Le/p/a/g;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Le/p/a/i;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 4
    aget-object v2, v2, v1

    .line 5
    sget-object v3, Le/p/a/g;->b:Le/p/a/g;

    const-string v3, "SSL_"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TLS_"

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Le/p/a/g;->valueOf(Ljava/lang/String;)Le/p/a/g;

    move-result-object v2

    .line 7
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {v0}, Le/p/a/y/i;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/p/a/i;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/i;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Le/p/a/i;->c([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Le/p/a/i;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Le/p/a/i;->c([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/p/a/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/i;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Le/p/a/x;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Le/p/a/i;->d:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 4
    aget-object v2, v2, v1

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "TLSv1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "SSLv3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "TLSv1.2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v4, "TLSv1.1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected TLS version: "

    invoke-static {v1, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :pswitch_0
    sget-object v2, Le/p/a/x;->d:Le/p/a/x;

    goto :goto_2

    .line 8
    :pswitch_1
    sget-object v2, Le/p/a/x;->e:Le/p/a/x;

    goto :goto_2

    .line 9
    :pswitch_2
    sget-object v2, Le/p/a/x;->b:Le/p/a/x;

    goto :goto_2

    .line 10
    :pswitch_3
    sget-object v2, Le/p/a/x;->c:Le/p/a/x;

    .line 11
    :goto_2
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_5
    invoke-static {v0}, Le/p/a/y/i;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_3
        -0x1dfc3f26 -> :sswitch_2
        0x4b88569 -> :sswitch_1
        0x4c38896 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Le/p/a/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Le/p/a/i;

    .line 3
    iget-boolean v2, p0, Le/p/a/i;->a:Z

    iget-boolean v3, p1, Le/p/a/i;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 4
    iget-object v2, p0, Le/p/a/i;->c:[Ljava/lang/String;

    iget-object v3, p1, Le/p/a/i;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Le/p/a/i;->d:[Ljava/lang/String;

    iget-object v3, p1, Le/p/a/i;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-boolean v2, p0, Le/p/a/i;->b:Z

    iget-boolean p1, p1, Le/p/a/i;->b:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/p/a/i;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Le/p/a/i;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Le/p/a/i;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Le/p/a/i;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/p/a/i;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/a/i;->c:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/p/a/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Le/p/a/i;->d:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Le/p/a/i;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "ConnectionSpec(cipherSuites="

    const-string v3, ", tlsVersions="

    const-string v4, ", supportsTlsExtensions="

    .line 4
    invoke-static {v2, v0, v3, v1, v4}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/p/a/i;->b:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
