.class public final Lg/g/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lg/g/a/b/j1/m;

.field private b:Lg/g/a/b/j1/g;

.field private c:Lg/g/a/b/j1/k;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lg/g/a/a/a;-><init>(Lg/g/a/b/j1/m;Lg/g/a/b/j1/g;Lg/g/a/b/j1/k;ILkotlin/w/c/g;)V

    return-void
.end method

.method public constructor <init>(Lg/g/a/b/j1/m;Lg/g/a/b/j1/g;Lg/g/a/b/j1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/a;->a:Lg/g/a/b/j1/m;

    iput-object p2, p0, Lg/g/a/a/a;->b:Lg/g/a/b/j1/g;

    iput-object p3, p0, Lg/g/a/a/a;->c:Lg/g/a/b/j1/k;

    return-void
.end method

.method public synthetic constructor <init>(Lg/g/a/b/j1/m;Lg/g/a/b/j1/g;Lg/g/a/b/j1/k;ILkotlin/w/c/g;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 2
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lg/g/a/a/a;-><init>(Lg/g/a/b/j1/m;Lg/g/a/b/j1/g;Lg/g/a/b/j1/k;)V

    return-void
.end method


# virtual methods
.method public final a()Lg/g/a/b/j1/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/a;->b:Lg/g/a/b/j1/g;

    return-object v0
.end method

.method public final b()Lg/g/a/b/j1/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/a;->c:Lg/g/a/b/j1/k;

    return-object v0
.end method

.method public final c()Lg/g/a/b/j1/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/a;->a:Lg/g/a/b/j1/m;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lg/g/a/a/a;

    if-eqz v0, :cond_0

    check-cast p1, Lg/g/a/a/a;

    iget-object v0, p0, Lg/g/a/a/a;->a:Lg/g/a/b/j1/m;

    iget-object v1, p1, Lg/g/a/a/a;->a:Lg/g/a/b/j1/m;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/a/a/a;->b:Lg/g/a/b/j1/g;

    iget-object v1, p1, Lg/g/a/a/a;->b:Lg/g/a/b/j1/g;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/a/a/a;->c:Lg/g/a/b/j1/k;

    iget-object p1, p1, Lg/g/a/a/a;->c:Lg/g/a/b/j1/k;

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

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lg/g/a/a/a;->a:Lg/g/a/b/j1/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/g/a/a/a;->b:Lg/g/a/b/j1/g;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg/g/a/a/a;->c:Lg/g/a/b/j1/k;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientInfoManager(clientUserInfoProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/a;->a:Lg/g/a/b/j1/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientIdProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/a;->b:Lg/g/a/b/j1/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientTokenProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/a/a/a;->c:Lg/g/a/b/j1/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
