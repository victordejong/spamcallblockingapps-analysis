.class public final Ln3/e/b/e0;
.super Ln3/e/b/w0;
.source "SourceFile"


# instance fields
.field public final a:Ln3/e/b/j1/o1;

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(Ln3/e/b/j1/o1;JI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/e/b/w0;-><init>()V

    const-string v0, "Null tagBundle"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ln3/e/b/e0;->a:Ln3/e/b/j1/o1;

    .line 4
    iput-wide p2, p0, Ln3/e/b/e0;->b:J

    .line 5
    iput p4, p0, Ln3/e/b/e0;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/e/b/e0;->c:I

    return v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln3/e/b/e0;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln3/e/b/w0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Ln3/e/b/w0;

    .line 3
    iget-object v1, p0, Ln3/e/b/e0;->a:Ln3/e/b/j1/o1;

    invoke-virtual {p1}, Ln3/e/b/w0;->f()Ln3/e/b/j1/o1;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Ln3/e/b/e0;->b:J

    .line 4
    invoke-virtual {p1}, Ln3/e/b/w0;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Ln3/e/b/e0;->c:I

    .line 5
    invoke-virtual {p1}, Ln3/e/b/w0;->a()I

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()Ln3/e/b/j1/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/e0;->a:Ln3/e/b/j1/o1;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/e/b/e0;->a:Ln3/e/b/j1/o1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-wide v2, p0, Ln3/e/b/e0;->b:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget v1, p0, Ln3/e/b/e0;->c:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ImmutableImageInfo{tagBundle="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln3/e/b/e0;->a:Ln3/e/b/j1/o1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ln3/e/b/e0;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rotationDegrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ln3/e/b/e0;->c:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
