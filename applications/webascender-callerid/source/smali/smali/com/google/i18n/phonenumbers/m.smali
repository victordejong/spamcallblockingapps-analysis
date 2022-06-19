.class public Lcom/google/i18n/phonenumbers/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/m$a;
    }
.end annotation


# instance fields
.field private f:Z

.field private g:I

.field private h:Z

.field private i:J

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Lcom/google/i18n/phonenumbers/m$a;

.field private t:Z

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/i18n/phonenumbers/m;->g:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/google/i18n/phonenumbers/m;->i:J

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/m;->k:Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->m:Z

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/google/i18n/phonenumbers/m;->o:I

    .line 7
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/m;->q:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/google/i18n/phonenumbers/m;->u:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/google/i18n/phonenumbers/m$a;->UNSPECIFIED:Lcom/google/i18n/phonenumbers/m$a;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/m;->s:Lcom/google/i18n/phonenumbers/m$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/i18n/phonenumbers/m;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->r:Z

    .line 2
    sget-object v0, Lcom/google/i18n/phonenumbers/m$a;->UNSPECIFIED:Lcom/google/i18n/phonenumbers/m$a;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/m;->s:Lcom/google/i18n/phonenumbers/m$a;

    return-object p0
.end method

.method public b(Lcom/google/i18n/phonenumbers/m;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    iget v2, p0, Lcom/google/i18n/phonenumbers/m;->g:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/m;->g:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/i18n/phonenumbers/m;->i:J

    iget-wide v4, p1, Lcom/google/i18n/phonenumbers/m;->i:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/m;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/m;->k:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/m;->m:Z

    iget-boolean v3, p1, Lcom/google/i18n/phonenumbers/m;->m:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/i18n/phonenumbers/m;->o:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/m;->o:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/m;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/m;->q:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/m;->s:Lcom/google/i18n/phonenumbers/m$a;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/m;->s:Lcom/google/i18n/phonenumbers/m$a;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/m;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/m;->u:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->p()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/m;->p()Z

    move-result p1

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/i18n/phonenumbers/m;->g:I

    return v0
.end method

.method public d()Lcom/google/i18n/phonenumbers/m$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/m;->s:Lcom/google/i18n/phonenumbers/m$a;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/m;->k:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/i18n/phonenumbers/m;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/i18n/phonenumbers/m;

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/m;->b(Lcom/google/i18n/phonenumbers/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/i18n/phonenumbers/m;->i:J

    return-wide v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/i18n/phonenumbers/m;->o:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/m;->u:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->c()I

    move-result v0

    const/16 v1, 0x87d

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 2
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 3
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 4
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->r()Z

    move-result v0

    const/16 v2, 0x4cf

    const/16 v3, 0x4d5

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 5
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->g()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 6
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 7
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->d()Lcom/google/i18n/phonenumbers/m$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 8
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 9
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/m;->q:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->f:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->r:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->j:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->l:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->h:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->n:Z

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->t:Z

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->p:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->m:Z

    return v0
.end method

.method public s(I)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->f:Z

    .line 2
    iput p1, p0, Lcom/google/i18n/phonenumbers/m;->g:I

    return-object p0
.end method

.method public t(Lcom/google/i18n/phonenumbers/m$a;)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->r:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/m;->s:Lcom/google/i18n/phonenumbers/m$a;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country Code: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/i18n/phonenumbers/m;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " National Number: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/i18n/phonenumbers/m;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " Leading Zero(s): true"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " Number of leading zeros: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/i18n/phonenumbers/m;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " Extension: "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/m;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " Country Code Source: "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/m;->s:Lcom/google/i18n/phonenumbers/m$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/m;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " Preferred Domestic Carrier Code: "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/m;->u:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->j:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/m;->k:Ljava/lang/String;

    return-object p0
.end method

.method public v(Z)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->l:Z

    .line 2
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/m;->m:Z

    return-object p0
.end method

.method public w(J)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->h:Z

    .line 2
    iput-wide p1, p0, Lcom/google/i18n/phonenumbers/m;->i:J

    return-object p0
.end method

.method public x(I)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->n:Z

    .line 2
    iput p1, p0, Lcom/google/i18n/phonenumbers/m;->o:I

    return-object p0
.end method

.method public y(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->t:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/m;->u:Ljava/lang/String;

    return-object p0
.end method

.method public z(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/m;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/m;->p:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/m;->q:Ljava/lang/String;

    return-object p0
.end method
