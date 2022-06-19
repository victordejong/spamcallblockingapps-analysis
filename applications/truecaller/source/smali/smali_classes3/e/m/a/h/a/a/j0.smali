.class public final Le/m/a/h/a/a/j0;
.super Le/m/a/h/a/a/c;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Le/m/a/h/a/a/c;-><init>()V

    const-string v0, "Null name"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Le/m/a/h/a/a/j0;->a:Ljava/lang/String;

    iput p2, p0, Le/m/a/h/a/a/j0;->b:I

    iput p3, p0, Le/m/a/h/a/a/j0;->c:I

    iput-wide p4, p0, Le/m/a/h/a/a/j0;->d:J

    iput-wide p6, p0, Le/m/a/h/a/a/j0;->e:J

    iput p8, p0, Le/m/a/h/a/a/j0;->f:I

    iput p9, p0, Le/m/a/h/a/a/j0;->g:I

    const-string p1, "Null availableVersionTag"

    .line 2
    invoke-static {p10, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p10, p0, Le/m/a/h/a/a/j0;->h:Ljava/lang/String;

    const-string p1, "Null installedVersionTag"

    .line 3
    invoke-static {p11, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p11, p0, Le/m/a/h/a/a/j0;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Le/m/a/h/a/a/j0;->d:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Le/m/a/h/a/a/j0;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/m/a/h/a/a/j0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Le/m/a/h/a/a/j0;->b:I

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Le/m/a/h/a/a/j0;->e:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/m/a/h/a/a/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Le/m/a/h/a/a/c;

    iget-object v1, p0, Le/m/a/h/a/a/j0;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Le/m/a/h/a/a/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Le/m/a/h/a/a/j0;->b:I

    .line 4
    invoke-virtual {p1}, Le/m/a/h/a/a/c;->d()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Le/m/a/h/a/a/j0;->c:I

    .line 5
    invoke-virtual {p1}, Le/m/a/h/a/a/c;->b()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Le/m/a/h/a/a/j0;->d:J

    .line 6
    invoke-virtual {p1}, Le/m/a/h/a/a/c;->a()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Le/m/a/h/a/a/j0;->e:J

    .line 7
    invoke-virtual {p1}, Le/m/a/h/a/a/c;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Le/m/a/h/a/a/j0;->f:I

    .line 8
    invoke-virtual {p1}, Le/m/a/h/a/a/c;->f()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Le/m/a/h/a/a/j0;->g:I

    .line 9
    invoke-virtual {p1}, Le/m/a/h/a/a/c;->g()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Le/m/a/h/a/a/j0;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Le/m/a/h/a/a/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/m/a/h/a/a/j0;->i:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Le/m/a/h/a/a/c;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Le/m/a/h/a/a/j0;->f:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Le/m/a/h/a/a/j0;->g:I

    return v0
.end method

.method public final hashCode()I
    .locals 10

    iget-object v0, p0, Le/m/a/h/a/a/j0;->a:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Le/m/a/h/a/a/j0;->b:I

    iget v2, p0, Le/m/a/h/a/a/j0;->c:I

    iget-wide v3, p0, Le/m/a/h/a/a/j0;->d:J

    iget-wide v5, p0, Le/m/a/h/a/a/j0;->e:J

    const v7, 0xf4243

    xor-int/2addr v0, v7

    mul-int/2addr v0, v7

    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    const/16 v1, 0x20

    ushr-long v8, v3, v1

    xor-long v2, v8, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v7

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    iget v1, p0, Le/m/a/h/a/a/j0;->f:I

    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    iget v1, p0, Le/m/a/h/a/a/j0;->g:I

    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    iget-object v1, p0, Le/m/a/h/a/a/j0;->h:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    iget-object v1, p0, Le/m/a/h/a/a/j0;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/m/a/h/a/a/j0;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/m/a/h/a/a/j0;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Le/m/a/h/a/a/j0;->a:Ljava/lang/String;

    iget v2, v0, Le/m/a/h/a/a/j0;->b:I

    iget v3, v0, Le/m/a/h/a/a/j0;->c:I

    iget-wide v4, v0, Le/m/a/h/a/a/j0;->d:J

    iget-wide v6, v0, Le/m/a/h/a/a/j0;->e:J

    iget v8, v0, Le/m/a/h/a/a/j0;->f:I

    iget v9, v0, Le/m/a/h/a/a/j0;->g:I

    iget-object v10, v0, Le/m/a/h/a/a/j0;->h:Ljava/lang/String;

    iget-object v11, v0, Le/m/a/h/a/a/j0;->i:Ljava/lang/String;

    .line 1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v0, 0x105

    invoke-static {v12, v0, v13, v14}, Le/d/c/a/a;->b(IIII)I

    move-result v0

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AssetPackState{name="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorCode="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bytesDownloaded="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalBytesToDownload="

    const-string v1, ", transferProgressPercentage="

    invoke-static {v15, v0, v6, v7, v1}, Le/d/c/a/a;->Q0(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", updateAvailability="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", availableVersionTag="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", installedVersionTag="

    const-string v1, "}"

    invoke-static {v15, v10, v0, v11, v1}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
