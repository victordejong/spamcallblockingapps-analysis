.class public final Le/a/u/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/Integer;

.field public final m:I

.field public final n:I

.field public final o:I


# direct methods
.method public constructor <init>(IIIIIIIIIILjava/lang/String;Ljava/lang/Integer;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/u/m/a;->a:I

    iput p2, p0, Le/a/u/m/a;->b:I

    iput p3, p0, Le/a/u/m/a;->c:I

    iput p4, p0, Le/a/u/m/a;->d:I

    iput p5, p0, Le/a/u/m/a;->e:I

    iput p6, p0, Le/a/u/m/a;->f:I

    iput p7, p0, Le/a/u/m/a;->g:I

    iput p8, p0, Le/a/u/m/a;->h:I

    iput p9, p0, Le/a/u/m/a;->i:I

    iput p10, p0, Le/a/u/m/a;->j:I

    iput-object p11, p0, Le/a/u/m/a;->k:Ljava/lang/String;

    iput-object p12, p0, Le/a/u/m/a;->l:Ljava/lang/Integer;

    iput p13, p0, Le/a/u/m/a;->m:I

    iput p14, p0, Le/a/u/m/a;->n:I

    iput p15, p0, Le/a/u/m/a;->o:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/u/m/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/u/m/a;

    iget v0, p0, Le/a/u/m/a;->a:I

    iget v1, p1, Le/a/u/m/a;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->b:I

    iget v1, p1, Le/a/u/m/a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->c:I

    iget v1, p1, Le/a/u/m/a;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->d:I

    iget v1, p1, Le/a/u/m/a;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->e:I

    iget v1, p1, Le/a/u/m/a;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->f:I

    iget v1, p1, Le/a/u/m/a;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->g:I

    iget v1, p1, Le/a/u/m/a;->g:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->h:I

    iget v1, p1, Le/a/u/m/a;->h:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->i:I

    iget v1, p1, Le/a/u/m/a;->i:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->j:I

    iget v1, p1, Le/a/u/m/a;->j:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/u/m/a;->k:Ljava/lang/String;

    iget-object v1, p1, Le/a/u/m/a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u/m/a;->l:Ljava/lang/Integer;

    iget-object v1, p1, Le/a/u/m/a;->l:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/u/m/a;->m:I

    iget v1, p1, Le/a/u/m/a;->m:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->n:I

    iget v1, p1, Le/a/u/m/a;->n:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/u/m/a;->o:I

    iget p1, p1, Le/a/u/m/a;->o:I

    if-ne v0, p1, :cond_0

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

    iget v0, p0, Le/a/u/m/a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/u/m/a;->k:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/u/m/a;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/u/m/a;->o:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "StatsRawData(outgoingMessagesCount="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/u/m/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", incomingMessagesCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageTotalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messagesMovedToSpam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gifsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", importantMessagesIdentified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messagesAutomaticallyRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outgoingCallsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", incomingCallsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mostCalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/u/m/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mostCalledTimePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/u/m/a;->l:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identifiedSpamCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unknownCallsIdentified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percentageCallsIdentified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/u/m/a;->o:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
