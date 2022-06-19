.class public final Lq3/b/k/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/b/i/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq3/b/i/d;


# direct methods
.method public constructor <init>(Lq3/b/i/d;)V
    .locals 1

    const-string v0, "original"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/b/k/s;->b:Lq3/b/i/d;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq3/b/k/s;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq3/b/k/s;->b:Lq3/b/i/d;

    invoke-interface {v0, p1}, Lq3/b/i/d;->b(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c(I)Lq3/b/i/d;
    .locals 1

    iget-object v0, p0, Lq3/b/k/s;->b:Lq3/b/i/d;

    invoke-interface {v0, p1}, Lq3/b/i/d;->c(I)Lq3/b/i/d;

    move-result-object p1

    return-object p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lq3/b/k/s;->b:Lq3/b/i/d;

    invoke-interface {v0}, Lq3/b/i/d;->d()I

    move-result v0

    return v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq3/b/k/s;->b:Lq3/b/i/d;

    invoke-interface {v0, p1}, Lq3/b/i/d;->e(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lq3/b/k/s;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget-object v1, p0, Lq3/b/k/s;->b:Lq3/b/i/d;

    check-cast p1, Lq3/b/k/s;

    iget-object p1, p1, Lq3/b/k/s;->b:Lq3/b/i/d;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Lq3/b/i/h;
    .locals 1

    iget-object v0, p0, Lq3/b/k/s;->b:Lq3/b/i/d;

    invoke-interface {v0}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/k/s;->b:Lq3/b/i/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lq3/b/k/s;->b:Lq3/b/i/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
