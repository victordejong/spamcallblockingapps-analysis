.class public abstract Le/a/w4/s/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/w4/s/s;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Le/a/w4/s/e0;

.field public e:Z

.field public f:Le/a/w4/s/s;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/a/w4/s/w;->a:I

    .line 3
    iput p1, p0, Le/a/w4/s/w;->b:I

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Le/a/w4/s/w;->c:I

    return-void
.end method


# virtual methods
.method public a(Le/a/w4/s/r0;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Le/a/w4/s/w;->g(I)I

    move-result v0

    .line 2
    iget-boolean v1, p0, Le/a/w4/s/w;->e:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Le/a/w4/s/w;->d:Le/a/w4/s/e0;

    if-eqz v1, :cond_0

    const v1, 0x7f0a08a4

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/w4/s/w;->c()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_0

    .line 4
    iget-object v1, p0, Le/a/w4/s/w;->d:Le/a/w4/s/e0;

    invoke-interface {v1, p0}, Le/a/w4/s/s$a;->k2(Le/a/w4/s/s;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/a/w4/s/w;->c()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1, v2}, Le/a/e/z0$a;->Y3(Z)V

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p0}, Le/a/w4/s/w;->m()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1, v1}, Le/a/e/z0$a;->n(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Le/a/w4/s/w;->h()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 8
    invoke-virtual {p0}, Le/a/w4/s/w;->j()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 9
    invoke-virtual {p0}, Le/a/w4/s/w;->i()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 10
    invoke-virtual {p0}, Le/a/w4/s/w;->k()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 11
    invoke-virtual {p0}, Le/a/w4/s/w;->n()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0}, Le/a/w4/s/w;->l()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 13
    move-object v0, p1

    check-cast v0, Le/a/e/c2/t$b;

    invoke-virtual {p0, v0, p2}, Le/a/w4/s/w;->b(Le/a/e/c2/t$b;I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 14
    :cond_4
    iget-object v0, p0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0, p2}, Le/a/w4/s/w;->e(I)I

    move-result p2

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, p1, p2}, Le/a/w4/s/w;->a(Le/a/w4/s/r0;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public abstract b(Le/a/e/c2/t$b;I)Z
.end method

.method public c()I
    .locals 7

    .line 1
    iget v0, p0, Le/a/w4/s/w;->b:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 2
    iget-boolean v1, p0, Le/a/w4/s/w;->e:Z

    if-eqz v1, :cond_1

    return v3

    .line 3
    :cond_1
    iget-boolean v1, p0, Le/a/w4/s/w;->e:Z

    iget v4, p0, Le/a/w4/s/w;->c:I

    add-int v5, v1, v4

    .line 4
    iget v6, p0, Le/a/w4/s/w;->a:I

    if-le v6, v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    add-int/2addr v5, v0

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p0}, Le/a/w4/s/w;->k()I

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    add-int/2addr v5, v2

    return v5
.end method

.method public d(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/w4/s/w;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/a/w4/s/w;->c()I

    move-result v1

    sub-int/2addr p1, v1

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, p1}, Le/a/w4/s/w;->d(I)I

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position "

    const-string v2, "cannot be mapped as the delegate position."

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public e(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/w4/s/w;->c()I

    move-result v0

    sub-int v0, p1, v0

    if-gez v0, :cond_0

    .line 2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    invoke-virtual {p0}, Le/a/w4/s/w;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x3

    iget-boolean v3, p0, Le/a/w4/s/w;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, p1

    const-string p1, "::getInnerPos:: %s  Original Adapter pos: %d adapter count: %d  is loading shown: %s"

    .line 4
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, " Position is -1. "

    invoke-static {v2, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    new-array p1, v4, [Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public f()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/w4/s/w;->c()I

    move-result v0

    .line 2
    iget v1, p0, Le/a/w4/s/w;->b:I

    const v2, 0x7fffffff

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    if-eqz v1, :cond_2

    check-cast v1, Le/a/w4/s/w;

    invoke-virtual {v1}, Le/a/w4/s/w;->f()I

    move-result v3

    :cond_2
    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public g(I)I
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, " Position was "

    .line 1
    invoke-static {v4, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 2
    iget-boolean v2, p0, Le/a/w4/s/w;->h:Z

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Le/a/w4/s/w;->i()I

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-boolean v2, p0, Le/a/w4/s/w;->g:Z

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Le/a/w4/s/w;->j()I

    move-result p1

    return p1

    .line 6
    :cond_2
    iget-boolean v2, p0, Le/a/w4/s/w;->e:Z

    if-eqz v2, :cond_3

    iget v2, p0, Le/a/w4/s/w;->c:I

    if-ne p1, v2, :cond_3

    .line 7
    invoke-virtual {p0}, Le/a/w4/s/w;->h()I

    move-result p1

    return p1

    .line 8
    :cond_3
    invoke-virtual {p0}, Le/a/w4/s/w;->k()I

    move-result v2

    if-nez p1, :cond_4

    .line 9
    iget v3, p0, Le/a/w4/s/w;->c:I

    if-nez v3, :cond_4

    if-lez v2, :cond_4

    return v2

    .line 10
    :cond_4
    iget-boolean v2, p0, Le/a/w4/s/w;->e:Z

    if-eqz v2, :cond_5

    iget v2, p0, Le/a/w4/s/w;->c:I

    add-int/2addr v2, v0

    goto :goto_1

    :cond_5
    iget v2, p0, Le/a/w4/s/w;->c:I

    :goto_1
    if-ne p1, v2, :cond_7

    .line 11
    iget v2, p0, Le/a/w4/s/w;->a:I

    iget v3, p0, Le/a/w4/s/w;->b:I

    if-le v2, v3, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {p0}, Le/a/w4/s/w;->n()I

    move-result p1

    return p1

    .line 13
    :cond_7
    iget v0, p0, Le/a/w4/s/w;->c:I

    if-ge p1, v0, :cond_8

    .line 14
    invoke-virtual {p0}, Le/a/w4/s/w;->l()I

    move-result p1

    return p1

    .line 15
    :cond_8
    iget-object v0, p0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    if-eqz v0, :cond_9

    .line 16
    invoke-virtual {p0, p1}, Le/a/w4/s/w;->e(I)I

    move-result v2

    check-cast v0, Le/a/w4/s/w;

    invoke-virtual {v0, v2}, Le/a/w4/s/w;->g(I)I

    move-result v0

    if-lez v0, :cond_9

    return v0

    .line 17
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View type for position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not handled. In adapter: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-array p1, v1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return v1
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l()I
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()I
.end method

.method public o(I)V
    .locals 1

    .line 1
    iput p1, p0, Le/a/w4/s/w;->a:I

    .line 2
    iget v0, p0, Le/a/w4/s/w;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Le/a/w4/s/w;->c:I

    return-void
.end method

.method public p(Le/a/w4/s/s;)V
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "You cannot nest an adapter inside itself"

    .line 1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/truecaller/log/AssertionUtil;->isFalse(Z[Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Le/a/w4/s/w;->f:Le/a/w4/s/s;

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iput p1, p0, Le/a/w4/s/w;->b:I

    .line 2
    iget v0, p0, Le/a/w4/s/w;->a:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Le/a/w4/s/w;->c:I

    return-void
.end method
