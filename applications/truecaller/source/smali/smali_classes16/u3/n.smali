.class public final Lu3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/n$a;
    }
.end annotation


# static fields
.field public static final e:[Lu3/k;

.field public static final f:[Lu3/k;

.field public static final g:Lu3/n;

.field public static final h:Lu3/n;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    const/16 v0, 0x9

    new-array v1, v0, [Lu3/k;

    .line 1
    sget-object v2, Lu3/k;->q:Lu3/k;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    sget-object v4, Lu3/k;->r:Lu3/k;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    .line 3
    sget-object v6, Lu3/k;->s:Lu3/k;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    .line 4
    sget-object v8, Lu3/k;->k:Lu3/k;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    .line 5
    sget-object v10, Lu3/k;->m:Lu3/k;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    .line 6
    sget-object v12, Lu3/k;->l:Lu3/k;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    .line 7
    sget-object v14, Lu3/k;->n:Lu3/k;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    .line 8
    sget-object v16, Lu3/k;->p:Lu3/k;

    const/16 v17, 0x7

    aput-object v16, v1, v17

    .line 9
    sget-object v18, Lu3/k;->o:Lu3/k;

    const/16 v19, 0x8

    aput-object v18, v1, v19

    .line 10
    sput-object v1, Lu3/n;->e:[Lu3/k;

    const/16 v0, 0x10

    new-array v0, v0, [Lu3/k;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    aput-object v14, v0, v15

    aput-object v16, v0, v17

    aput-object v18, v0, v19

    .line 11
    sget-object v2, Lu3/k;->i:Lu3/k;

    const/16 v4, 0x9

    aput-object v2, v0, v4

    .line 12
    sget-object v2, Lu3/k;->j:Lu3/k;

    const/16 v4, 0xa

    aput-object v2, v0, v4

    .line 13
    sget-object v2, Lu3/k;->g:Lu3/k;

    const/16 v4, 0xb

    aput-object v2, v0, v4

    .line 14
    sget-object v2, Lu3/k;->h:Lu3/k;

    const/16 v4, 0xc

    aput-object v2, v0, v4

    .line 15
    sget-object v2, Lu3/k;->e:Lu3/k;

    const/16 v4, 0xd

    aput-object v2, v0, v4

    .line 16
    sget-object v2, Lu3/k;->f:Lu3/k;

    const/16 v4, 0xe

    aput-object v2, v0, v4

    .line 17
    sget-object v2, Lu3/k;->d:Lu3/k;

    const/16 v4, 0xf

    aput-object v2, v0, v4

    .line 18
    sput-object v0, Lu3/n;->f:[Lu3/k;

    .line 19
    new-instance v2, Lu3/n$a;

    invoke-direct {v2, v5}, Lu3/n$a;-><init>(Z)V

    .line 20
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lu3/k;

    invoke-virtual {v2, v1}, Lu3/n$a;->c([Lu3/k;)Lu3/n$a;

    new-array v1, v7, [Lu3/o0;

    .line 21
    sget-object v4, Lu3/o0;->b:Lu3/o0;

    aput-object v4, v1, v3

    sget-object v6, Lu3/o0;->c:Lu3/o0;

    aput-object v6, v1, v5

    invoke-virtual {v2, v1}, Lu3/n$a;->f([Lu3/o0;)Lu3/n$a;

    .line 22
    invoke-virtual {v2, v5}, Lu3/n$a;->d(Z)Lu3/n$a;

    .line 23
    invoke-virtual {v2}, Lu3/n$a;->a()Lu3/n;

    .line 24
    new-instance v1, Lu3/n$a;

    invoke-direct {v1, v5}, Lu3/n$a;-><init>(Z)V

    .line 25
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lu3/k;

    invoke-virtual {v1, v2}, Lu3/n$a;->c([Lu3/k;)Lu3/n$a;

    new-array v2, v7, [Lu3/o0;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    .line 26
    invoke-virtual {v1, v2}, Lu3/n$a;->f([Lu3/o0;)Lu3/n$a;

    .line 27
    invoke-virtual {v1, v5}, Lu3/n$a;->d(Z)Lu3/n$a;

    .line 28
    invoke-virtual {v1}, Lu3/n$a;->a()Lu3/n;

    move-result-object v1

    sput-object v1, Lu3/n;->g:Lu3/n;

    .line 29
    new-instance v1, Lu3/n$a;

    invoke-direct {v1, v5}, Lu3/n$a;-><init>(Z)V

    .line 30
    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu3/k;

    invoke-virtual {v1, v0}, Lu3/n$a;->c([Lu3/k;)Lu3/n$a;

    new-array v0, v11, [Lu3/o0;

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    .line 31
    sget-object v2, Lu3/o0;->d:Lu3/o0;

    aput-object v2, v0, v7

    sget-object v2, Lu3/o0;->e:Lu3/o0;

    aput-object v2, v0, v9

    invoke-virtual {v1, v0}, Lu3/n$a;->f([Lu3/o0;)Lu3/n$a;

    .line 32
    invoke-virtual {v1, v5}, Lu3/n$a;->d(Z)Lu3/n$a;

    .line 33
    invoke-virtual {v1}, Lu3/n$a;->a()Lu3/n;

    .line 34
    new-instance v0, Lu3/n;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v3, v1, v1}, Lu3/n;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    sput-object v0, Lu3/n;->h:Lu3/n;

    return-void
.end method

.method public constructor <init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lu3/n;->a:Z

    iput-boolean p2, p0, Lu3/n;->b:Z

    iput-object p3, p0, Lu3/n;->c:[Ljava/lang/String;

    iput-object p4, p0, Lu3/n;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu3/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/n;->c:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 4
    sget-object v5, Lu3/k;->t:Lu3/k$b;

    invoke-virtual {v5, v4}, Lu3/k$b;->b(Ljava/lang/String;)Lu3/k;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Z
    .locals 4

    const-string v0, "socket"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lu3/n;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/n;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ls1/v/a;->a:Ls1/v/a;

    invoke-static {v0, v2, v3}, Lu3/p0/c;->j([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lu3/n;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lu3/k;->t:Lu3/k$b;

    .line 5
    sget-object v2, Lu3/k;->b:Ljava/util/Comparator;

    sget-object v2, Lu3/k;->b:Ljava/util/Comparator;

    .line 6
    invoke-static {v0, p1, v2}, Lu3/p0/c;->j([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu3/o0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/n;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 4
    sget-object v5, Lu3/o0;->h:Lu3/o0$a;

    invoke-virtual {v5, v4}, Lu3/o0$a;->a(Ljava/lang/String;)Lu3/o0;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lu3/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    iget-boolean v2, p0, Lu3/n;->a:Z

    check-cast p1, Lu3/n;

    iget-boolean v3, p1, Lu3/n;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 3
    iget-object v2, p0, Lu3/n;->c:[Ljava/lang/String;

    iget-object v3, p1, Lu3/n;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 4
    :cond_3
    iget-object v2, p0, Lu3/n;->d:[Ljava/lang/String;

    iget-object v3, p1, Lu3/n;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 5
    :cond_4
    iget-boolean v2, p0, Lu3/n;->b:Z

    iget-boolean p1, p1, Lu3/n;->b:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lu3/n;->a:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lu3/n;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lu3/n;->d:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lu3/n;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/16 v0, 0x11

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lu3/n;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    :cond_0
    const-string v0, "ConnectionSpec("

    const-string v1, "cipherSuites="

    .line 2
    invoke-static {v0, v1}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lu3/n;->a()Ljava/util/List;

    move-result-object v1

    const-string v2, "[all enabled]"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "tlsVersions="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lu3/n;->c()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v1, p0, Lu3/n;->b:Z

    const/16 v2, 0x29

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
