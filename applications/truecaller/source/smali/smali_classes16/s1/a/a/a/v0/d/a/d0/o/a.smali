.class public final Ls1/a/a/a/v0/d/a/d0/o/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/d/a/b0/k;

.field public final b:Ls1/a/a/a/v0/d/a/d0/o/b;

.field public final c:Z

.field public final d:Ls1/a/a/a/v0/b/w0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/b0/k;Ls1/a/a/a/v0/d/a/d0/o/b;ZLs1/a/a/a/v0/b/w0;)V
    .locals 1

    const-string v0, "howThisTypeIsUsed"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexibility"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    iput-boolean p3, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    iput-object p4, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->d:Ls1/a/a/a/v0/b/w0;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/d/a/b0/k;Ls1/a/a/a/v0/d/a/d0/o/b;ZLs1/a/a/a/v0/b/w0;I)V
    .locals 2

    and-int/lit8 p2, p5, 0x2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Ls1/a/a/a/v0/d/a/d0/o/b;->a:Ls1/a/a/a/v0/d/a/d0/o/b;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    const-string p5, "howThisTypeIsUsed"

    .line 3
    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "flexibility"

    invoke-static {p2, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    iput-boolean p3, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    iput-object p4, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->d:Ls1/a/a/a/v0/b/w0;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/d/a/d0/o/b;)Ls1/a/a/a/v0/d/a/d0/o/a;
    .locals 5

    const-string v0, "flexibility"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    iget-boolean v2, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->d:Ls1/a/a/a/v0/b/w0;

    const-string v4, "howThisTypeIsUsed"

    .line 2
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls1/a/a/a/v0/d/a/d0/o/a;

    invoke-direct {v0, v1, p1, v2, v3}, Ls1/a/a/a/v0/d/a/d0/o/a;-><init>(Ls1/a/a/a/v0/d/a/b0/k;Ls1/a/a/a/v0/d/a/d0/o/b;ZLs1/a/a/a/v0/b/w0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ls1/a/a/a/v0/d/a/d0/o/a;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/d/a/d0/o/a;

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/o/a;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    iget-boolean v1, p1, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->d:Ls1/a/a/a/v0/b/w0;

    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/o/a;->d:Ls1/a/a/a/v0/b/w0;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->d:Ls1/a/a/a/v0/b/w0;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "JavaTypeAttributes(howThisTypeIsUsed="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flexibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->b:Ls1/a/a/a/v0/d/a/d0/o/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isForAnnotationParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", upperBoundOfTypeParameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/o/a;->d:Ls1/a/a/a/v0/b/w0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
