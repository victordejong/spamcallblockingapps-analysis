.class public final Le/m/a/h/a/g/h;
.super Le/m/a/h/a/g/d;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/app/PendingIntent;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIIJJLjava/util/List;Ljava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/m/a/h/a/g/d;-><init>()V

    iput p1, p0, Le/m/a/h/a/g/h;->a:I

    iput p2, p0, Le/m/a/h/a/g/h;->b:I

    iput p3, p0, Le/m/a/h/a/g/h;->c:I

    iput-wide p4, p0, Le/m/a/h/a/g/h;->d:J

    iput-wide p6, p0, Le/m/a/h/a/g/h;->e:J

    iput-object p8, p0, Le/m/a/h/a/g/h;->f:Ljava/util/List;

    iput-object p9, p0, Le/m/a/h/a/g/h;->g:Ljava/util/List;

    iput-object p10, p0, Le/m/a/h/a/g/h;->h:Landroid/app/PendingIntent;

    iput-object p11, p0, Le/m/a/h/a/g/h;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Le/m/a/h/a/g/h;->d:J

    return-wide v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Le/m/a/h/a/g/h;->c:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/m/a/h/a/g/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    check-cast p1, Le/m/a/h/a/g/d;

    iget v1, p0, Le/m/a/h/a/g/h;->a:I

    .line 3
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->g()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget v1, p0, Le/m/a/h/a/g/h;->b:I

    .line 4
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->h()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget v1, p0, Le/m/a/h/a/g/h;->c:I

    .line 5
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->c()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Le/m/a/h/a/g/h;->d:J

    .line 6
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->a()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Le/m/a/h/a/g/h;->e:J

    .line 7
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->i()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Le/m/a/h/a/g/h;->f:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->k()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Le/m/a/h/a/g/h;->g:Ljava/util/List;

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->j()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Le/m/a/h/a/g/h;->h:Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->f()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->f()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Le/m/a/h/a/g/h;->i:Ljava/util/List;

    if-nez v1, :cond_4

    .line 11
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->l()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    return v0

    :cond_6
    :goto_4
    return v2
.end method

.method public final f()Landroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/g/h;->h:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Le/m/a/h/a/g/h;->a:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Le/m/a/h/a/g/h;->b:I

    return v0
.end method

.method public final hashCode()I
    .locals 10

    iget v0, p0, Le/m/a/h/a/g/h;->a:I

    iget v1, p0, Le/m/a/h/a/g/h;->b:I

    iget v2, p0, Le/m/a/h/a/g/h;->c:I

    iget-wide v3, p0, Le/m/a/h/a/g/h;->d:J

    iget-wide v5, p0, Le/m/a/h/a/g/h;->e:J

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

    iget-object v1, p0, Le/m/a/h/a/g/h;->f:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_0
    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    .line 2
    iget-object v1, p0, Le/m/a/h/a/g/h;->g:Ljava/util/List;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    .line 4
    iget-object v1, p0, Le/m/a/h/a/g/h;->h:Landroid/app/PendingIntent;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    mul-int/2addr v0, v7

    .line 6
    iget-object v1, p0, Le/m/a/h/a/g/h;->i:Ljava/util/List;

    if-nez v1, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    return v0
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Le/m/a/h/a/g/h;->e:J

    return-wide v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/g/h;->g:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/g/h;->f:Ljava/util/List;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/g/h;->i:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Le/m/a/h/a/g/h;->a:I

    iget v2, v0, Le/m/a/h/a/g/h;->b:I

    iget v3, v0, Le/m/a/h/a/g/h;->c:I

    iget-wide v4, v0, Le/m/a/h/a/g/h;->d:J

    iget-wide v6, v0, Le/m/a/h/a/g/h;->e:J

    iget-object v8, v0, Le/m/a/h/a/g/h;->f:Ljava/util/List;

    .line 1
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Le/m/a/h/a/g/h;->g:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Le/m/a/h/a/g/h;->h:Landroid/app/PendingIntent;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Le/m/a/h/a/g/h;->i:Ljava/util/List;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit16 v12, v12, 0xfb

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    add-int/2addr v12, v15

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "SplitInstallSessionState{sessionId="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesDownloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalBytesToDownload="

    const-string v2, ", moduleNamesNullable="

    invoke-static {v0, v1, v6, v7, v2}, Le/d/c/a/a;->Q0(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v1, ", languagesNullable="

    const-string v2, ", resolutionIntent="

    invoke-static {v0, v8, v1, v9, v2}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", splitFileIntents="

    const-string v2, "}"

    invoke-static {v0, v10, v1, v11, v2}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
