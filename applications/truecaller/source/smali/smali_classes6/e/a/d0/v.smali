.class public Le/a/d0/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/data/entity/Number;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Z

.field public final g:Ljava/lang/String;

.field public final h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Lcom/truecaller/data/entity/Contact;

.field public final m:Lcom/truecaller/blocking/FilterMatch;

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:J


# direct methods
.method public constructor <init>(IILcom/truecaller/data/entity/Number;IZJLcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/blocking/FilterMatch;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/d0/v;->p:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/a/d0/v;->a:Lcom/truecaller/data/entity/Number;

    .line 4
    iput p4, p0, Le/a/d0/v;->b:I

    .line 5
    iput-boolean p5, p0, Le/a/d0/v;->f:Z

    .line 6
    iput-object p8, p0, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    .line 7
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    invoke-virtual {p3}, Ljava/util/Random;->nextLong()J

    move-result-wide p3

    iput-wide p3, p0, Le/a/d0/v;->c:J

    .line 8
    iput-wide p6, p0, Le/a/d0/v;->d:J

    if-eqz p1, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    iput-boolean p3, p0, Le/a/d0/v;->e:Z

    .line 10
    iput-object p9, p0, Le/a/d0/v;->g:Ljava/lang/String;

    .line 11
    iput p2, p0, Le/a/d0/v;->h:I

    .line 12
    iput p1, p0, Le/a/d0/v;->i:I

    .line 13
    iput-object p10, p0, Le/a/d0/v;->m:Lcom/truecaller/blocking/FilterMatch;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/d0/v;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Le/a/d0/v;->e:Z

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Le/a/d0/v;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Le/a/d0/v;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x6

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 3

    .line 1
    iget v0, p0, Le/a/d0/v;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    iget-object v1, p0, Le/a/d0/v;->m:Lcom/truecaller/blocking/FilterMatch;

    .line 2
    invoke-virtual {v1}, Lcom/truecaller/blocking/FilterMatch;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/truecaller/blocking/FilterMatch;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/blocking/FilterMatch;->b()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    iget-object v1, p0, Le/a/d0/v;->m:Lcom/truecaller/blocking/FilterMatch;

    invoke-static {v0, v1}, Le/a/o5/t;->j(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/blocking/FilterMatch;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "CallState{simSlotIndex="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/d0/v;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/d0/v;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/d0/v;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isIncoming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d0/v;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFromTrueCaller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d0/v;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d0/v;->g:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", action="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Le/a/d0/v;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/d0/v;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wasConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d0/v;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wasSearchSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d0/v;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSearching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d0/v;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Le/a/d0/v;->l:Lcom/truecaller/data/entity/Contact;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "<non-null contact>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filter action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d0/v;->m:Lcom/truecaller/blocking/FilterMatch;

    .line 3
    iget-object v1, v1, Lcom/truecaller/blocking/FilterMatch;->b:Lcom/truecaller/blocking/FilterAction;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wasSearchPerformed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/d0/v;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", noSearchReason=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d0/v;->p:Ljava/lang/String;

    const/16 v3, 0x7d

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
