.class public abstract Le/i/b/u2/g;
.super Le/i/b/u2/d0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Boolean;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Boolean;

.field public final g:Ljava/lang/Boolean;

.field public final h:Ljava/lang/Integer;

.field public final i:Ljava/lang/Boolean;

.field public final j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/i/b/u2/d0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/u2/g;->a:Ljava/lang/Boolean;

    .line 3
    iput-object p2, p0, Le/i/b/u2/g;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/i/b/u2/g;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Le/i/b/u2/g;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Le/i/b/u2/g;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Le/i/b/u2/g;->f:Ljava/lang/Boolean;

    .line 8
    iput-object p7, p0, Le/i/b/u2/g;->g:Ljava/lang/Boolean;

    .line 9
    iput-object p8, p0, Le/i/b/u2/g;->h:Ljava/lang/Integer;

    .line 10
    iput-object p9, p0, Le/i/b/u2/g;->i:Ljava/lang/Boolean;

    .line 11
    iput-object p10, p0, Le/i/b/u2/g;->j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation runtime Le/m/e/d0/b;
        value = "AndroidAdTagDataMacro"
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation runtime Le/m/e/d0/b;
        value = "AndroidAdTagDataMode"
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation runtime Le/m/e/d0/b;
        value = "AndroidAdTagUrlMode"
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/i/b/u2/d0;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 2
    check-cast p1, Le/i/b/u2/d0;

    .line 3
    iget-object v1, p0, Le/i/b/u2/g;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Le/i/b/u2/d0;->h()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le/i/b/u2/d0;->h()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_0
    iget-object v1, p0, Le/i/b/u2/g;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Le/i/b/u2/d0;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Le/i/b/u2/d0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_1
    iget-object v1, p0, Le/i/b/u2/g;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p1}, Le/i/b/u2/d0;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Le/i/b/u2/d0;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_2
    iget-object v1, p0, Le/i/b/u2/g;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 6
    invoke-virtual {p1}, Le/i/b/u2/d0;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Le/i/b/u2/d0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_3
    iget-object v1, p0, Le/i/b/u2/g;->e:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 7
    invoke-virtual {p1}, Le/i/b/u2/d0;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Le/i/b/u2/d0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_4
    iget-object v1, p0, Le/i/b/u2/g;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 8
    invoke-virtual {p1}, Le/i/b/u2/d0;->g()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Le/i/b/u2/d0;->g()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_5
    iget-object v1, p0, Le/i/b/u2/g;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 9
    invoke-virtual {p1}, Le/i/b/u2/d0;->i()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Le/i/b/u2/d0;->i()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_6
    iget-object v1, p0, Le/i/b/u2/g;->h:Ljava/lang/Integer;

    if-nez v1, :cond_8

    .line 10
    invoke-virtual {p1}, Le/i/b/u2/d0;->j()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Le/i/b/u2/d0;->j()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_7
    iget-object v1, p0, Le/i/b/u2/g;->i:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    .line 11
    invoke-virtual {p1}, Le/i/b/u2/d0;->k()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Le/i/b/u2/d0;->k()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_8
    iget-object v1, p0, Le/i/b/u2/g;->j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    if-nez v1, :cond_a

    .line 12
    invoke-virtual {p1}, Le/i/b/u2/d0;->l()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Le/i/b/u2/d0;->l()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    move v0, v2

    :goto_9
    return v0

    :cond_c
    return v2
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation runtime Le/m/e/d0/b;
        value = "AndroidDisplayUrlMacro"
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method public h()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->a:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 2
    iget-object v3, p0, Le/i/b/u2/g;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3
    iget-object v3, p0, Le/i/b/u2/g;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 4
    iget-object v3, p0, Le/i/b/u2/g;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5
    iget-object v3, p0, Le/i/b/u2/g;->e:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 6
    iget-object v3, p0, Le/i/b/u2/g;->f:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7
    iget-object v3, p0, Le/i/b/u2/g;->g:Ljava/lang/Boolean;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_6
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 8
    iget-object v3, p0, Le/i/b/u2/g;->h:Ljava/lang/Integer;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_7
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9
    iget-object v3, p0, Le/i/b/u2/g;->i:Ljava/lang/Boolean;

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_8
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 10
    iget-object v2, p0, Le/i/b/u2/g;->j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_9
    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method public j()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->h:Ljava/lang/Integer;

    return-object v0
.end method

.method public k()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method public l()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/g;->j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "RemoteConfigResponse{killSwitch="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/i/b/u2/g;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidDisplayUrlMacro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidAdTagUrlMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidAdTagDataMacro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", androidAdTagDataMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", csmEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/g;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", liveBiddingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/g;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", liveBiddingTimeBudgetInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/g;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prefetchOnInitEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/g;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteLogLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/g;->j:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
