.class public Le/m/f/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/f/a/o$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Z

.field public d:J

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Le/m/f/a/o$a;

.field public o:Z

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/m/f/a/o;->b:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Le/m/f/a/o;->d:J

    const-string v1, ""

    .line 4
    iput-object v1, p0, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 5
    iput-boolean v0, p0, Le/m/f/a/o;->h:Z

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Le/m/f/a/o;->j:I

    .line 7
    iput-object v1, p0, Le/m/f/a/o;->l:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Le/m/f/a/o;->p:Ljava/lang/String;

    .line 9
    sget-object v0, Le/m/f/a/o$a;->e:Le/m/f/a/o$a;

    iput-object v0, p0, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    return-void
.end method


# virtual methods
.method public a()Le/m/f/a/o;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/m/f/a/o;->m:Z

    .line 2
    sget-object v0, Le/m/f/a/o$a;->e:Le/m/f/a/o$a;

    iput-object v0, p0, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    return-object p0
.end method

.method public b(Le/m/f/a/o;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    iget v2, p0, Le/m/f/a/o;->b:I

    iget v3, p1, Le/m/f/a/o;->b:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Le/m/f/a/o;->d:J

    iget-wide v4, p1, Le/m/f/a/o;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Le/m/f/a/o;->f:Ljava/lang/String;

    iget-object v3, p1, Le/m/f/a/o;->f:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Le/m/f/a/o;->h:Z

    iget-boolean v3, p1, Le/m/f/a/o;->h:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Le/m/f/a/o;->j:I

    iget v3, p1, Le/m/f/a/o;->j:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Le/m/f/a/o;->l:Ljava/lang/String;

    iget-object v3, p1, Le/m/f/a/o;->l:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    iget-object v3, p1, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Le/m/f/a/o;->p:Ljava/lang/String;

    iget-object v3, p1, Le/m/f/a/o;->p:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-boolean v2, p0, Le/m/f/a/o;->o:Z

    iget-boolean p1, p1, Le/m/f/a/o;->o:Z

    if-ne v2, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public c(I)Le/m/f/a/o;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/m/f/a/o;->a:Z

    .line 2
    iput p1, p0, Le/m/f/a/o;->b:I

    return-object p0
.end method

.method public d(Le/m/f/a/o$a;)Le/m/f/a/o;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/m/f/a/o;->m:Z

    .line 3
    iput-object p1, p0, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Le/m/f/a/o;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/m/f/a/o;->e:Z

    .line 3
    iput-object p1, p0, Le/m/f/a/o;->f:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Le/m/f/a/o;

    if-eqz v0, :cond_0

    check-cast p1, Le/m/f/a/o;

    invoke-virtual {p0, p1}, Le/m/f/a/o;->b(Le/m/f/a/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Z)Le/m/f/a/o;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/m/f/a/o;->g:Z

    .line 2
    iput-boolean p1, p0, Le/m/f/a/o;->h:Z

    return-object p0
.end method

.method public g(J)Le/m/f/a/o;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/m/f/a/o;->c:Z

    .line 2
    iput-wide p1, p0, Le/m/f/a/o;->d:J

    return-object p0
.end method

.method public h(I)Le/m/f/a/o;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/m/f/a/o;->i:Z

    .line 2
    iput p1, p0, Le/m/f/a/o;->j:I

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Le/m/f/a/o;->b:I

    add-int/lit16 v0, v0, 0x87d

    mul-int/lit8 v0, v0, 0x35

    .line 2
    iget-wide v1, p0, Le/m/f/a/o;->d:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 4
    iget-object v0, p0, Le/m/f/a/o;->f:Ljava/lang/String;

    const/16 v2, 0x35

    .line 5
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 6
    iget-boolean v1, p0, Le/m/f/a/o;->h:Z

    const/16 v2, 0x4cf

    const/16 v3, 0x4d5

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 7
    iget v1, p0, Le/m/f/a/o;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 8
    iget-object v1, p0, Le/m/f/a/o;->l:Ljava/lang/String;

    const/16 v4, 0x35

    .line 9
    invoke-static {v1, v0, v4}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 10
    iget-object v1, p0, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x35

    .line 12
    iget-object v0, p0, Le/m/f/a/o;->p:Ljava/lang/String;

    .line 13
    invoke-static {v0, v1, v4}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 14
    iget-boolean v1, p0, Le/m/f/a/o;->o:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Country Code: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget v1, p0, Le/m/f/a/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " National Number: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/m/f/a/o;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4
    iget-boolean v1, p0, Le/m/f/a/o;->g:Z

    if-eqz v1, :cond_0

    .line 5
    iget-boolean v1, p0, Le/m/f/a/o;->h:Z

    if-eqz v1, :cond_0

    const-string v1, " Leading Zero(s): true"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    iget-boolean v1, p0, Le/m/f/a/o;->i:Z

    if-eqz v1, :cond_1

    const-string v1, " Number of leading zeros: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/m/f/a/o;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    iget-boolean v1, p0, Le/m/f/a/o;->e:Z

    if-eqz v1, :cond_2

    const-string v1, " Extension: "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/f/a/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    iget-boolean v1, p0, Le/m/f/a/o;->m:Z

    if-eqz v1, :cond_3

    const-string v1, " Country Code Source: "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/f/a/o;->n:Le/m/f/a/o$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    :cond_3
    iget-boolean v1, p0, Le/m/f/a/o;->o:Z

    if-eqz v1, :cond_4

    const-string v1, " Preferred Domestic Carrier Code: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/f/a/o;->p:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
