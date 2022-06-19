.class public final Le/m/a/b/j/c0/i/x;
.super Le/m/a/b/j/c0/i/b0;
.source "SourceFile"


# instance fields
.field public final b:J

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:I


# direct methods
.method public constructor <init>(JIIJILe/m/a/b/j/c0/i/x$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/b/j/c0/i/b0;-><init>()V

    .line 2
    iput-wide p1, p0, Le/m/a/b/j/c0/i/x;->b:J

    .line 3
    iput p3, p0, Le/m/a/b/j/c0/i/x;->c:I

    .line 4
    iput p4, p0, Le/m/a/b/j/c0/i/x;->d:I

    .line 5
    iput-wide p5, p0, Le/m/a/b/j/c0/i/x;->e:J

    .line 6
    iput p7, p0, Le/m/a/b/j/c0/i/x;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/b/j/c0/i/x;->d:I

    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/b/j/c0/i/x;->e:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/b/j/c0/i/x;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Le/m/a/b/j/c0/i/x;->f:I

    return v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/b/j/c0/i/x;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/m/a/b/j/c0/i/b0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Le/m/a/b/j/c0/i/b0;

    .line 3
    iget-wide v3, p0, Le/m/a/b/j/c0/i/x;->b:J

    invoke-virtual {p1}, Le/m/a/b/j/c0/i/b0;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Le/m/a/b/j/c0/i/x;->c:I

    .line 4
    invoke-virtual {p1}, Le/m/a/b/j/c0/i/b0;->c()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Le/m/a/b/j/c0/i/x;->d:I

    .line 5
    invoke-virtual {p1}, Le/m/a/b/j/c0/i/b0;->a()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Le/m/a/b/j/c0/i/x;->e:J

    .line 6
    invoke-virtual {p1}, Le/m/a/b/j/c0/i/b0;->b()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Le/m/a/b/j/c0/i/x;->f:I

    .line 7
    invoke-virtual {p1}, Le/m/a/b/j/c0/i/b0;->d()I

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

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Le/m/a/b/j/c0/i/x;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget v3, p0, Le/m/a/b/j/c0/i/x;->c:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 3
    iget v3, p0, Le/m/a/b/j/c0/i/x;->d:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 4
    iget-wide v3, p0, Le/m/a/b/j/c0/i/x;->e:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 5
    iget v1, p0, Le/m/a/b/j/c0/i/x;->f:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "EventStoreConfig{maxStorageSizeInBytes="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/m/a/b/j/c0/i/x;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loadBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/m/a/b/j/c0/i/x;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", criticalSectionEnterTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/m/a/b/j/c0/i/x;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventCleanUpAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/m/a/b/j/c0/i/x;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxBlobByteSizePerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/m/a/b/j/c0/i/x;->f:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
