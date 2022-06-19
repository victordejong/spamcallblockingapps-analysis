.class public final Ls1/a/a/a/v0/d/a/g0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/m/e0;

.field public final b:Ls1/a/a/a/v0/d/a/g0/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/d/a/g0/e;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/u;->a:Ls1/a/a/a/v0/m/e0;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/g0/u;->b:Ls1/a/a/a/v0/d/a/g0/e;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ls1/a/a/a/v0/d/a/g0/u;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/d/a/g0/u;

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/u;->a:Ls1/a/a/a/v0/m/e0;

    iget-object v1, p1, Ls1/a/a/a/v0/d/a/g0/u;->a:Ls1/a/a/a/v0/m/e0;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/u;->b:Ls1/a/a/a/v0/d/a/g0/e;

    iget-object p1, p1, Ls1/a/a/a/v0/d/a/g0/u;->b:Ls1/a/a/a/v0/d/a/g0/e;

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

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/u;->a:Ls1/a/a/a/v0/m/e0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/g0/u;->b:Ls1/a/a/a/v0/d/a/g0/e;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "TypeAndDefaultQualifiers(type="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/g0/u;->a:Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultQualifiers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/g0/u;->b:Ls1/a/a/a/v0/d/a/g0/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
