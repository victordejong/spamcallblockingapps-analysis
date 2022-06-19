.class abstract Lcom/hiya/stingray/t/c;
.super Lcom/hiya/stingray/t/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/t/c$a;
    }
.end annotation


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:J

.field private final i:Lcom/hiya/stingray/t/f0;

.field private final j:Lcom/hiya/stingray/t/b0;

.field private final k:Z

.field private final l:Lcom/hiya/stingray/t/y0;

.field private final m:Lcom/hiya/stingray/t/n0;

.field private final n:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;IJLcom/hiya/stingray/t/f0;Lcom/hiya/stingray/t/b0;ZLcom/hiya/stingray/t/y0;Lcom/hiya/stingray/t/n0;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/t/d0;-><init>()V

    const-string v0, "Null phone"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/t/c;->f:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/hiya/stingray/t/c;->g:I

    .line 5
    iput-wide p3, p0, Lcom/hiya/stingray/t/c;->h:J

    const-string p1, "Null callState"

    .line 6
    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p5, p0, Lcom/hiya/stingray/t/c;->i:Lcom/hiya/stingray/t/f0;

    const-string p1, "Null blockStatus"

    .line 8
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p6, p0, Lcom/hiya/stingray/t/c;->j:Lcom/hiya/stingray/t/b0;

    .line 10
    iput-boolean p7, p0, Lcom/hiya/stingray/t/c;->k:Z

    const-string p1, "Null reputationDataItem"

    .line 11
    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iput-object p8, p0, Lcom/hiya/stingray/t/c;->l:Lcom/hiya/stingray/t/y0;

    const-string p1, "Null identityData"

    .line 13
    invoke-static {p9, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iput-object p9, p0, Lcom/hiya/stingray/t/c;->m:Lcom/hiya/stingray/t/n0;

    .line 15
    iput-object p10, p0, Lcom/hiya/stingray/t/c;->n:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public h()Lcom/hiya/stingray/t/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/c;->j:Lcom/hiya/stingray/t/b0;

    return-object v0
.end method

.method public j()Lcom/hiya/stingray/t/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/c;->i:Lcom/hiya/stingray/t/f0;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/t/c;->g:I

    return v0
.end method

.method public m()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/c;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public n()Lcom/hiya/stingray/t/n0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/c;->m:Lcom/hiya/stingray/t/n0;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/hiya/stingray/t/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/c;->l:Lcom/hiya/stingray/t/y0;

    return-object v0
.end method

.method public s()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/t/c;->h:J

    return-wide v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/t/c;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallLogItem{phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/hiya/stingray/t/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", utcTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/hiya/stingray/t/c;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/c;->i:Lcom/hiya/stingray/t/f0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blockStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/c;->j:Lcom/hiya/stingray/t/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/hiya/stingray/t/c;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reputationDataItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/c;->l:Lcom/hiya/stingray/t/y0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identityData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/c;->m:Lcom/hiya/stingray/t/n0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/t/c;->n:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
