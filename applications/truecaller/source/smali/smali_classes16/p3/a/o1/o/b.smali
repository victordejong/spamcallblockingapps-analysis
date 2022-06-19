.class public final Lp3/a/o1/o/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o1/o/b$b;
    }
.end annotation


# static fields
.field public static final e:[Lp3/a/o1/o/a;

.field public static final f:Lp3/a/o1/o/b;


# instance fields
.field public final a:Z

.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xe

    new-array v0, v0, [Lp3/a/o1/o/a;

    .line 1
    sget-object v1, Lp3/a/o1/o/a;->V0:Lp3/a/o1/o/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lp3/a/o1/o/a;->Z0:Lp3/a/o1/o/a;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lp3/a/o1/o/a;->h0:Lp3/a/o1/o/a;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lp3/a/o1/o/a;->x0:Lp3/a/o1/o/a;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lp3/a/o1/o/a;->w0:Lp3/a/o1/o/a;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lp3/a/o1/o/a;->G0:Lp3/a/o1/o/a;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sget-object v1, Lp3/a/o1/o/a;->H0:Lp3/a/o1/o/a;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    sget-object v1, Lp3/a/o1/o/a;->K:Lp3/a/o1/o/a;

    const/4 v6, 0x7

    aput-object v1, v0, v6

    sget-object v1, Lp3/a/o1/o/a;->J:Lp3/a/o1/o/a;

    const/16 v6, 0x8

    aput-object v1, v0, v6

    sget-object v1, Lp3/a/o1/o/a;->O:Lp3/a/o1/o/a;

    const/16 v6, 0x9

    aput-object v1, v0, v6

    sget-object v1, Lp3/a/o1/o/a;->Z:Lp3/a/o1/o/a;

    const/16 v6, 0xa

    aput-object v1, v0, v6

    sget-object v1, Lp3/a/o1/o/a;->E:Lp3/a/o1/o/a;

    const/16 v6, 0xb

    aput-object v1, v0, v6

    sget-object v1, Lp3/a/o1/o/a;->M:Lp3/a/o1/o/a;

    const/16 v6, 0xc

    aput-object v1, v0, v6

    sget-object v1, Lp3/a/o1/o/a;->i:Lp3/a/o1/o/a;

    const/16 v6, 0xd

    aput-object v1, v0, v6

    sput-object v0, Lp3/a/o1/o/b;->e:[Lp3/a/o1/o/a;

    .line 2
    new-instance v1, Lp3/a/o1/o/b$b;

    invoke-direct {v1, v3}, Lp3/a/o1/o/b$b;-><init>(Z)V

    .line 3
    invoke-virtual {v1, v0}, Lp3/a/o1/o/b$b;->b([Lp3/a/o1/o/a;)Lp3/a/o1/o/b$b;

    new-array v0, v5, [Lp3/a/o1/o/k;

    sget-object v5, Lp3/a/o1/o/k;->b:Lp3/a/o1/o/k;

    aput-object v5, v0, v2

    sget-object v5, Lp3/a/o1/o/k;->c:Lp3/a/o1/o/k;

    aput-object v5, v0, v3

    sget-object v5, Lp3/a/o1/o/k;->d:Lp3/a/o1/o/k;

    aput-object v5, v0, v4

    .line 4
    invoke-virtual {v1, v0}, Lp3/a/o1/o/b$b;->d([Lp3/a/o1/o/k;)Lp3/a/o1/o/b$b;

    .line 5
    invoke-virtual {v1, v3}, Lp3/a/o1/o/b$b;->c(Z)Lp3/a/o1/o/b$b;

    .line 6
    invoke-virtual {v1}, Lp3/a/o1/o/b$b;->a()Lp3/a/o1/o/b;

    move-result-object v0

    sput-object v0, Lp3/a/o1/o/b;->f:Lp3/a/o1/o/b;

    .line 7
    new-instance v1, Lp3/a/o1/o/b$b;

    invoke-direct {v1, v0}, Lp3/a/o1/o/b$b;-><init>(Lp3/a/o1/o/b;)V

    new-array v0, v3, [Lp3/a/o1/o/k;

    aput-object v5, v0, v2

    .line 8
    invoke-virtual {v1, v0}, Lp3/a/o1/o/b$b;->d([Lp3/a/o1/o/k;)Lp3/a/o1/o/b$b;

    .line 9
    invoke-virtual {v1, v3}, Lp3/a/o1/o/b$b;->c(Z)Lp3/a/o1/o/b$b;

    .line 10
    invoke-virtual {v1}, Lp3/a/o1/o/b$b;->a()Lp3/a/o1/o/b;

    .line 11
    new-instance v0, Lp3/a/o1/o/b$b;

    invoke-direct {v0, v2}, Lp3/a/o1/o/b$b;-><init>(Z)V

    invoke-virtual {v0}, Lp3/a/o1/o/b$b;->a()Lp3/a/o1/o/b;

    return-void
.end method

.method public constructor <init>(Lp3/a/o1/o/b$b;Lp3/a/o1/o/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean p2, p1, Lp3/a/o1/o/b$b;->a:Z

    .line 3
    iput-boolean p2, p0, Lp3/a/o1/o/b;->a:Z

    .line 4
    iget-object p2, p1, Lp3/a/o1/o/b$b;->b:[Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lp3/a/o1/o/b;->b:[Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lp3/a/o1/o/b$b;->c:[Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lp3/a/o1/o/b;->c:[Ljava/lang/String;

    .line 8
    iget-boolean p1, p1, Lp3/a/o1/o/b$b;->d:Z

    .line 9
    iput-boolean p1, p0, Lp3/a/o1/o/b;->d:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lp3/a/o1/o/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lp3/a/o1/o/b;

    .line 3
    iget-boolean v2, p0, Lp3/a/o1/o/b;->a:Z

    iget-boolean v3, p1, Lp3/a/o1/o/b;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 4
    iget-object v2, p0, Lp3/a/o1/o/b;->b:[Ljava/lang/String;

    iget-object v3, p1, Lp3/a/o1/o/b;->b:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lp3/a/o1/o/b;->c:[Ljava/lang/String;

    iget-object v3, p1, Lp3/a/o1/o/b;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-boolean v2, p0, Lp3/a/o1/o/b;->d:Z

    iget-boolean p1, p1, Lp3/a/o1/o/b;->d:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp3/a/o1/o/b;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lp3/a/o1/o/b;->b:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lp3/a/o1/o/b;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lp3/a/o1/o/b;->d:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lp3/a/o1/o/b;->a:Z

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lp3/a/o1/o/b;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 3
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Lp3/a/o1/o/a;

    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lp3/a/o1/o/b;->b:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 5
    aget-object v3, v3, v2

    .line 6
    sget-object v4, Lp3/a/o1/o/a;->b:Lp3/a/o1/o/a;

    const-string v4, "SSL_"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "TLS_"

    .line 8
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lp3/a/o1/o/a;->valueOf(Ljava/lang/String;)Lp3/a/o1/o/a;

    move-result-object v3

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v3}, Lp3/a/o1/o/a;->valueOf(Ljava/lang/String;)Lp3/a/o1/o/a;

    move-result-object v3

    .line 10
    :goto_1
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    sget-object v2, Lp3/a/o1/o/l;->a:[Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_3

    const-string v0, "[use default]"

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v2, "ConnectionSpec(cipherSuites="

    const-string v3, ", tlsVersions="

    .line 14
    invoke-static {v2, v0, v3}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    iget-object v2, p0, Lp3/a/o1/o/b;->c:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Lp3/a/o1/o/k;

    .line 16
    :goto_4
    iget-object v3, p0, Lp3/a/o1/o/b;->c:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 17
    aget-object v3, v3, v1

    const-string v4, "TLSv1.2"

    .line 18
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 19
    sget-object v3, Lp3/a/o1/o/k;->b:Lp3/a/o1/o/k;

    goto :goto_5

    :cond_4
    const-string v4, "TLSv1.1"

    .line 20
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    sget-object v3, Lp3/a/o1/o/k;->c:Lp3/a/o1/o/k;

    goto :goto_5

    :cond_5
    const-string v4, "TLSv1"

    .line 22
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 23
    sget-object v3, Lp3/a/o1/o/k;->d:Lp3/a/o1/o/k;

    goto :goto_5

    :cond_6
    const-string v4, "SSLv3"

    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 25
    sget-object v3, Lp3/a/o1/o/k;->e:Lp3/a/o1/o/k;

    .line 26
    :goto_5
    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 27
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected TLS version: "

    invoke-static {v1, v3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_8
    sget-object v1, Lp3/a/o1/o/l;->a:[Ljava/lang/String;

    .line 29
    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportsTlsExtensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lp3/a/o1/o/b;->d:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "ConnectionSpec()"

    return-object v0
.end method
