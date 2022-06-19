.class final Li/a/d/f/e;
.super Li/a/d/f/s;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/d/f/s;-><init>()V

    .line 2
    iput p1, p0, Li/a/d/f/e;->b:I

    .line 3
    iput p2, p0, Li/a/d/f/e;->c:I

    .line 4
    iput p3, p0, Li/a/d/f/e;->d:I

    .line 5
    iput p4, p0, Li/a/d/f/e;->e:I

    .line 6
    iput p5, p0, Li/a/d/f/e;->f:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Li/a/d/f/e;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Li/a/d/f/e;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Li/a/d/f/e;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Li/a/d/f/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Li/a/d/f/s;

    .line 3
    iget v1, p0, Li/a/d/f/e;->b:I

    invoke-virtual {p1}, Li/a/d/f/s;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Li/a/d/f/e;->c:I

    .line 4
    invoke-virtual {p1}, Li/a/d/f/s;->f()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Li/a/d/f/e;->d:I

    .line 5
    invoke-virtual {p1}, Li/a/d/f/s;->g()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Li/a/d/f/e;->e:I

    .line 6
    invoke-virtual {p1}, Li/a/d/f/s;->d()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Li/a/d/f/e;->f:I

    .line 7
    invoke-virtual {p1}, Li/a/d/f/s;->e()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Li/a/d/f/e;->c:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Li/a/d/f/e;->d:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Li/a/d/f/e;->b:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget v2, p0, Li/a/d/f/e;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget v2, p0, Li/a/d/f/e;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget v2, p0, Li/a/d/f/e;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget v1, p0, Li/a/d/f/e;->f:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpanLimits{maxNumberOfAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li/a/d/f/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumberOfEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li/a/d/f/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumberOfLinks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li/a/d/f/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumberOfAttributesPerEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li/a/d/f/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxNumberOfAttributesPerLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li/a/d/f/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
