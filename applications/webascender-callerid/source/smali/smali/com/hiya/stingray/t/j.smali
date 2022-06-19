.class abstract Lcom/hiya/stingray/t/j;
.super Lcom/hiya/stingray/t/s0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/j$a;
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Lcom/hiya/stingray/t/n0;

.field private final h:Lcom/hiya/stingray/t/y0;

.field private final i:Ljava/lang/Integer;

.field private final j:Lcom/hiya/stingray/util/i$a;

.field private final k:Ljava/lang/Integer;

.field private final l:Lcom/hiya/stingray/util/i$b;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Ljava/lang/Integer;Lcom/hiya/stingray/util/i$a;Ljava/lang/Integer;Lcom/hiya/stingray/util/i$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/t/s0;-><init>()V

    const-string v0, "Null phone"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/t/j;->f:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/hiya/stingray/t/j;->g:Lcom/hiya/stingray/t/n0;

    .line 5
    iput-object p3, p0, Lcom/hiya/stingray/t/j;->h:Lcom/hiya/stingray/t/y0;

    .line 6
    iput-object p4, p0, Lcom/hiya/stingray/t/j;->i:Ljava/lang/Integer;

    .line 7
    iput-object p5, p0, Lcom/hiya/stingray/t/j;->j:Lcom/hiya/stingray/util/i$a;

    .line 8
    iput-object p6, p0, Lcom/hiya/stingray/t/j;->k:Ljava/lang/Integer;

    .line 9
    iput-object p7, p0, Lcom/hiya/stingray/t/j;->l:Lcom/hiya/stingray/util/i$b;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/j;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public c()Lcom/hiya/stingray/util/i$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/j;->j:Lcom/hiya/stingray/util/i$a;

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/j;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public e()Lcom/hiya/stingray/t/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/j;->g:Lcom/hiya/stingray/t/n0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/hiya/stingray/t/s0;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 2
    check-cast p1, Lcom/hiya/stingray/t/s0;

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/t/j;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/hiya/stingray/t/j;->g:Lcom/hiya/stingray/t/n0;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->e()Lcom/hiya/stingray/t/n0;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->e()Lcom/hiya/stingray/t/n0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lcom/hiya/stingray/t/j;->h:Lcom/hiya/stingray/t/y0;

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->g()Lcom/hiya/stingray/t/y0;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->g()Lcom/hiya/stingray/t/y0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lcom/hiya/stingray/t/j;->i:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->d()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-object v1, p0, Lcom/hiya/stingray/t/j;->j:Lcom/hiya/stingray/util/i$a;

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->c()Lcom/hiya/stingray/util/i$a;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->c()Lcom/hiya/stingray/util/i$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lcom/hiya/stingray/t/j;->k:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->b()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    iget-object v1, p0, Lcom/hiya/stingray/t/j;->l:Lcom/hiya/stingray/util/i$b;

    if-nez v1, :cond_6

    .line 9
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->h()Lcom/hiya/stingray/util/i$b;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->h()Lcom/hiya/stingray/util/i$b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_8
    return v2
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/hiya/stingray/t/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/j;->h:Lcom/hiya/stingray/t/y0;

    return-object v0
.end method

.method public h()Lcom/hiya/stingray/util/i$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/j;->l:Lcom/hiya/stingray/util/i$b;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/j;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/t/j;->g:Lcom/hiya/stingray/t/n0;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/t/j;->h:Lcom/hiya/stingray/t/y0;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/t/j;->i:Ljava/lang/Integer;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget-object v2, p0, Lcom/hiya/stingray/t/j;->j:Lcom/hiya/stingray/util/i$a;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget-object v2, p0, Lcom/hiya/stingray/t/j;->k:Ljava/lang/Integer;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/t/j;->l:Lcom/hiya/stingray/util/i$b;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalNotificationItem{phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identityData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/j;->g:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reputationDataItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/j;->h:Lcom/hiya/stingray/t/y0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/j;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/j;->j:Lcom/hiya/stingray/util/i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callLogItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/j;->k:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", termination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/j;->l:Lcom/hiya/stingray/util/i$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
