.class public final Lg/g/a/e/e/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lg/g/a/e/e/o;

.field private b:Lg/g/a/e/e/o;

.field private c:Lg/g/a/e/e/o;

.field private d:Lg/g/a/e/e/o;

.field private e:Lg/g/a/e/e/o;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lg/g/a/e/e/k;-><init>(Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;ILkotlin/w/c/g;)V

    return-void
.end method

.method public constructor <init>(Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/e/e/k;->a:Lg/g/a/e/e/o;

    iput-object p2, p0, Lg/g/a/e/e/k;->b:Lg/g/a/e/e/o;

    iput-object p3, p0, Lg/g/a/e/e/k;->c:Lg/g/a/e/e/o;

    iput-object p4, p0, Lg/g/a/e/e/k;->d:Lg/g/a/e/e/o;

    iput-object p5, p0, Lg/g/a/e/e/k;->e:Lg/g/a/e/e/o;

    return-void
.end method

.method public synthetic constructor <init>(Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;ILkotlin/w/c/g;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    .line 2
    invoke-direct/range {p1 .. p6}, Lg/g/a/e/e/k;-><init>(Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;Lg/g/a/e/e/o;)V

    return-void
.end method


# virtual methods
.method public final a()Lg/g/a/e/e/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/e/e/k;->b:Lg/g/a/e/e/o;

    return-object v0
.end method

.method public final b()Lg/g/a/e/e/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/e/e/k;->e:Lg/g/a/e/e/o;

    return-object v0
.end method

.method public final c()Lg/g/a/e/e/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/e/e/k;->c:Lg/g/a/e/e/o;

    return-object v0
.end method

.method public final d()Lg/g/a/e/e/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/e/e/k;->d:Lg/g/a/e/e/o;

    return-object v0
.end method

.method public final e(Lg/g/a/e/e/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/e/e/k;->b:Lg/g/a/e/e/o;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lg/g/a/e/e/k;

    if-eqz v0, :cond_0

    check-cast p1, Lg/g/a/e/e/k;

    iget-object v0, p0, Lg/g/a/e/e/k;->a:Lg/g/a/e/e/o;

    iget-object v1, p1, Lg/g/a/e/e/k;->a:Lg/g/a/e/e/o;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/a/e/e/k;->b:Lg/g/a/e/e/o;

    iget-object v1, p1, Lg/g/a/e/e/k;->b:Lg/g/a/e/e/o;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/a/e/e/k;->c:Lg/g/a/e/e/o;

    iget-object v1, p1, Lg/g/a/e/e/k;->c:Lg/g/a/e/e/o;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/a/e/e/k;->d:Lg/g/a/e/e/o;

    iget-object v1, p1, Lg/g/a/e/e/k;->d:Lg/g/a/e/e/o;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/a/e/e/k;->e:Lg/g/a/e/e/o;

    iget-object p1, p1, Lg/g/a/e/e/k;->e:Lg/g/a/e/e/o;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f(Lg/g/a/e/e/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/e/e/k;->e:Lg/g/a/e/e/o;

    return-void
.end method

.method public final g(Lg/g/a/e/e/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/e/e/k;->c:Lg/g/a/e/e/o;

    return-void
.end method

.method public final h(Lg/g/a/e/e/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/g/a/e/e/k;->d:Lg/g/a/e/e/o;

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lg/g/a/e/e/k;->a:Lg/g/a/e/e/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/g/a/e/e/k;->b:Lg/g/a/e/e/o;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/g/a/e/e/k;->c:Lg/g/a/e/e/o;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/g/a/e/e/k;->d:Lg/g/a/e/e/o;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/g/a/e/e/k;->e:Lg/g/a/e/e/o;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnNetwork(rrcNegotiation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/e/e/k;->a:Lg/g/a/e/e/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dnsLookup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/e/e/k;->b:Lg/g/a/e/e/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tcpConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/e/e/k;->c:Lg/g/a/e/e/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tlsConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/e/e/k;->d:Lg/g/a/e/e/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpResp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/e/e/k;->e:Lg/g/a/e/e/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
