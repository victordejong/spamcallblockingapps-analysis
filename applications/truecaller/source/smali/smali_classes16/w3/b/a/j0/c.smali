.class public final Lw3/b/a/j0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:C

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:I


# direct methods
.method public constructor <init>(CIIIZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x75

    if-eq p1, v0, :cond_1

    const/16 v0, 0x77

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Unknown mode: "

    invoke-static {p3, p1}, Le/d/c/a/a;->g2(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    :goto_0
    iput-char p1, p0, Lw3/b/a/j0/c;->a:C

    .line 4
    iput p2, p0, Lw3/b/a/j0/c;->b:I

    .line 5
    iput p3, p0, Lw3/b/a/j0/c;->c:I

    .line 6
    iput p4, p0, Lw3/b/a/j0/c;->d:I

    .line 7
    iput-boolean p5, p0, Lw3/b/a/j0/c;->e:Z

    .line 8
    iput p6, p0, Lw3/b/a/j0/c;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lw3/b/a/a;J)J
    .locals 2

    .line 1
    iget v0, p0, Lw3/b/a/j0/c;->c:I

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object p1

    iget v0, p0, Lw3/b/a/j0/c;->c:I

    invoke-virtual {p1, p2, p3, v0}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lw3/b/a/c;->C(JI)J

    move-result-wide p2

    .line 4
    invoke-virtual {p1}, Lw3/b/a/a;->E()Lw3/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3, v1}, Lw3/b/a/c;->a(JI)J

    move-result-wide p2

    .line 5
    invoke-virtual {p1}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object p1

    iget v0, p0, Lw3/b/a/j0/c;->c:I

    invoke-virtual {p1, p2, p3, v0}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public final b(Lw3/b/a/a;J)J
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/j0/c;->a(Lw3/b/a/a;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2
    iget v1, p0, Lw3/b/a/j0/c;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lw3/b/a/j0/c;->c:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    .line 3
    :goto_0
    move-object v0, p1

    check-cast v0, Lw3/b/a/f0/a;

    .line 4
    iget-object v1, v0, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 5
    invoke-virtual {v1, p2, p3}, Lw3/b/a/c;->x(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v0, v0, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, p2, p3, v1}, Lw3/b/a/c;->a(JI)J

    move-result-wide p2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/j0/c;->a(Lw3/b/a/a;J)J

    move-result-wide p1

    :goto_1
    return-wide p1

    .line 9
    :cond_1
    throw v0
.end method

.method public final c(Lw3/b/a/a;J)J
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/j0/c;->a(Lw3/b/a/a;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2
    iget v1, p0, Lw3/b/a/j0/c;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lw3/b/a/j0/c;->c:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_1

    .line 3
    :goto_0
    move-object v0, p1

    check-cast v0, Lw3/b/a/f0/a;

    .line 4
    iget-object v1, v0, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 5
    invoke-virtual {v1, p2, p3}, Lw3/b/a/c;->x(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v0, v0, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, p2, p3, v1}, Lw3/b/a/c;->a(JI)J

    move-result-wide p2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/j0/c;->a(Lw3/b/a/a;J)J

    move-result-wide p1

    :goto_1
    return-wide p1

    .line 9
    :cond_1
    throw v0
.end method

.method public final d(Lw3/b/a/a;J)J
    .locals 2

    .line 1
    check-cast p1, Lw3/b/a/f0/a;

    .line 2
    iget-object v0, p1, Lw3/b/a/f0/a;->z:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p2, p3}, Lw3/b/a/c;->c(J)I

    move-result v0

    .line 4
    iget v1, p0, Lw3/b/a/j0/c;->d:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 5
    iget-boolean v0, p0, Lw3/b/a/j0/c;->e:Z

    if-eqz v0, :cond_0

    if-gez v1, :cond_1

    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x7

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p1, Lw3/b/a/f0/a;->z:Lw3/b/a/c;

    .line 7
    invoke-virtual {p1, p2, p3, v1}, Lw3/b/a/c;->a(JI)J

    move-result-wide p2

    :cond_2
    return-wide p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/j0/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lw3/b/a/j0/c;

    .line 3
    iget-char v1, p0, Lw3/b/a/j0/c;->a:C

    iget-char v3, p1, Lw3/b/a/j0/c;->a:C

    if-ne v1, v3, :cond_1

    iget v1, p0, Lw3/b/a/j0/c;->b:I

    iget v3, p1, Lw3/b/a/j0/c;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lw3/b/a/j0/c;->c:I

    iget v3, p1, Lw3/b/a/j0/c;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lw3/b/a/j0/c;->d:I

    iget v3, p1, Lw3/b/a/j0/c;->d:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lw3/b/a/j0/c;->e:Z

    iget-boolean v3, p1, Lw3/b/a/j0/c;->e:Z

    if-ne v1, v3, :cond_1

    iget v1, p0, Lw3/b/a/j0/c;->f:I

    iget p1, p1, Lw3/b/a/j0/c;->f:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "[OfYear]\nMode: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lw3/b/a/j0/c;->a:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "MonthOfYear: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lw3/b/a/j0/c;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "DayOfMonth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lw3/b/a/j0/c;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "DayOfWeek: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lw3/b/a/j0/c;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "AdvanceDayOfWeek: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lw3/b/a/j0/c;->e:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "MillisOfDay: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lw3/b/a/j0/c;->f:I

    invoke-static {v0, v2, v1}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
