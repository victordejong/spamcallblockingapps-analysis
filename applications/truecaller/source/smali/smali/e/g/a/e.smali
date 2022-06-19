.class public Le/g/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/g/a/f;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/g/a/e$a;
    }
.end annotation


# instance fields
.field public a:[C

.field public b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:D

.field public i:Le/g/a/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/g/a/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    const/4 v2, 0x4

    .line 1
    invoke-direct {p0, v2, v0, v1}, Le/g/a/e;-><init>(ID)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 7

    .line 2
    invoke-static {}, Le/g/a/l;->a()Le/g/a/n;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Le/g/a/e;->i:Le/g/a/n;

    const-wide v3, 0x3f847ae140000000L    # 0.009999999776482582

    const-wide v5, 0x3fefae1480000000L    # 0.9900000095367432

    move-wide v1, p2

    .line 5
    invoke-static/range {v1 .. v6}, Le/g/a/k;->a(DDD)V

    .line 6
    iput-wide p2, p0, Le/g/a/e;->h:D

    .line 7
    iget v0, p0, Le/g/a/e;->f:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Le/g/a/e;->a:[C

    if-nez v0, :cond_2

    .line 8
    :cond_0
    iget-object v0, p0, Le/g/a/e;->a:[C

    .line 9
    iget-object v1, p0, Le/g/a/e;->b:[I

    .line 10
    invoke-static {p1, p2, p3}, Le/g/a/k;->c(ID)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/e;->a(I)V

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Le/g/a/e;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 12
    invoke-virtual {p0, v0, v1}, Le/g/a/e;->e([C[I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/g/a/e;->i:Le/g/a/n;

    invoke-interface {v0, p1}, Le/g/a/n;->d(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Le/g/a/e;->a:[C

    .line 3
    iget-object v2, p0, Le/g/a/e;->b:[I

    add-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    .line 4
    :try_start_0
    new-array v5, v3, [C

    iput-object v5, p0, Le/g/a/e;->a:[C

    .line 5
    new-array v3, v3, [I

    iput-object v3, p0, Le/g/a/e;->b:[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-wide v1, p0, Le/g/a/e;->h:D

    invoke-static {p1, v1, v2}, Le/g/a/k;->b(ID)I

    move-result v1

    iput v1, p0, Le/g/a/e;->f:I

    .line 7
    iput v0, p0, Le/g/a/e;->c:I

    sub-int/2addr p1, v4

    .line 8
    iput p1, p0, Le/g/a/e;->e:I

    return-void

    :catch_0
    move-exception v0

    .line 9
    iput-object v1, p0, Le/g/a/e;->a:[C

    .line 10
    iput-object v2, p0, Le/g/a/e;->b:[I

    .line 11
    new-instance v1, Le/g/a/b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v5, p0, Le/g/a/e;->e:I

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "Not enough memory to allocate buffers for rehashing: %,d -> %,d"

    invoke-direct {v1, p1, v0, v2}, Le/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public b(C)I
    .locals 1

    .line 1
    iget v0, p0, Le/g/a/e;->c:I

    invoke-static {p1, v0}, Ln3/g0/y;->i1(CI)I

    move-result p1

    return p1
.end method

.method public c(CI)I
    .locals 8

    .line 1
    iget v0, p0, Le/g/a/e;->e:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 2
    iput-boolean v1, p0, Le/g/a/e;->g:Z

    .line 3
    iget-object p1, p0, Le/g/a/e;->b:[I

    add-int/2addr v0, v1

    aget v1, p1, v0

    .line 4
    aput p2, p1, v0

    return v1

    .line 5
    :cond_0
    iget-object v2, p0, Le/g/a/e;->a:[C

    .line 6
    iget v3, p0, Le/g/a/e;->c:I

    invoke-static {p1, v3}, Ln3/g0/y;->i1(CI)I

    move-result v3

    :goto_0
    and-int/2addr v3, v0

    .line 7
    aget-char v4, v2, v3

    if-eqz v4, :cond_2

    if-ne v4, p1, :cond_1

    .line 8
    iget-object p1, p0, Le/g/a/e;->b:[I

    aget v0, p1, v3

    .line 9
    aput p2, p1, v3

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget v0, p0, Le/g/a/e;->d:I

    iget v4, p0, Le/g/a/e;->f:I

    if-ne v0, v4, :cond_3

    .line 11
    iget-object v0, p0, Le/g/a/e;->a:[C

    .line 12
    iget-object v2, p0, Le/g/a/e;->b:[I

    .line 13
    iget v4, p0, Le/g/a/e;->e:I

    add-int/2addr v4, v1

    invoke-virtual {p0}, Le/g/a/e;->size()I

    move-result v5

    iget-wide v6, p0, Le/g/a/e;->h:D

    invoke-static {v4, v5, v6, v7}, Le/g/a/k;->d(IID)I

    move-result v4

    invoke-virtual {p0, v4}, Le/g/a/e;->a(I)V

    .line 14
    aput-char p1, v0, v3

    .line 15
    aput p2, v2, v3

    .line 16
    invoke-virtual {p0, v0, v2}, Le/g/a/e;->e([C[I)V

    goto :goto_1

    .line 17
    :cond_3
    aput-char p1, v2, v3

    .line 18
    iget-object p1, p0, Le/g/a/e;->b:[I

    aput p2, p1, v3

    .line 19
    :goto_1
    iget p1, p0, Le/g/a/e;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Le/g/a/e;->d:I

    const/4 p1, 0x0

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/g/a/e;

    .line 2
    iget-object v1, p0, Le/g/a/e;->a:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Le/g/a/e;->a:[C

    .line 3
    iget-object v1, p0, Le/g/a/e;->b:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Le/g/a/e;->b:[I

    .line 4
    iget-boolean v1, v0, Le/g/a/e;->g:Z

    iput-boolean v1, v0, Le/g/a/e;->g:Z

    .line 5
    iget-object v1, p0, Le/g/a/e;->i:Le/g/a/n;

    invoke-interface {v1}, Le/g/a/n;->clone()Le/g/a/n;

    move-result-object v1

    iput-object v1, v0, Le/g/a/e;->i:Le/g/a/n;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e([C[I)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/g/a/e;->a:[C

    .line 2
    iget-object v1, p0, Le/g/a/e;->b:[I

    .line 3
    iget v2, p0, Le/g/a/e;->e:I

    .line 4
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 5
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-char v5, p1, v3

    aput-char v5, v0, v4

    .line 6
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v5, p2, v3

    aput v5, v1, v4

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 7
    aget-char v4, p1, v3

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {p0, v4}, Le/g/a/e;->b(C)I

    move-result v5

    :goto_1
    and-int/2addr v5, v2

    .line 9
    aget-char v6, v0, v5

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_1
    aput-char v4, v0, v5

    .line 11
    aget v4, p2, v3

    aput v4, v1, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    .line 1
    const-class v2, Le/g/a/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_a

    const-class v2, Le/g/a/e;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/g/a/e;

    .line 2
    invoke-virtual {p1}, Le/g/a/e;->size()I

    move-result v2

    invoke-virtual {p0}, Le/g/a/e;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    move p1, v0

    goto/16 :goto_5

    .line 3
    :cond_1
    new-instance v2, Le/g/a/e$a;

    invoke-direct {v2, p1}, Le/g/a/e$a;-><init>(Le/g/a/e;)V

    .line 4
    :cond_2
    invoke-virtual {v2}, Le/g/a/a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Le/g/a/a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/g/a/r/b;

    .line 5
    iget-char v3, p1, Le/g/a/r/b;->b:C

    if-nez v3, :cond_3

    .line 6
    iget-boolean v4, p0, Le/g/a/e;->g:Z

    goto :goto_2

    .line 7
    :cond_3
    iget-object v4, p0, Le/g/a/e;->a:[C

    .line 8
    iget v5, p0, Le/g/a/e;->e:I

    .line 9
    iget v6, p0, Le/g/a/e;->c:I

    invoke-static {v3, v6}, Ln3/g0/y;->i1(CI)I

    move-result v6

    :goto_1
    and-int/2addr v6, v5

    .line 10
    aget-char v7, v4, v6

    if-eqz v7, :cond_5

    if-ne v7, v3, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move v4, v0

    :goto_2
    if-eqz v4, :cond_0

    if-nez v3, :cond_6

    .line 11
    iget-boolean v3, p0, Le/g/a/e;->g:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Le/g/a/e;->b:[I

    iget v4, p0, Le/g/a/e;->e:I

    add-int/2addr v4, v1

    aget v3, v3, v4

    goto :goto_4

    .line 12
    :cond_6
    iget-object v4, p0, Le/g/a/e;->a:[C

    .line 13
    iget v5, p0, Le/g/a/e;->e:I

    .line 14
    iget v6, p0, Le/g/a/e;->c:I

    invoke-static {v3, v6}, Ln3/g0/y;->i1(CI)I

    move-result v6

    :goto_3
    and-int/2addr v6, v5

    .line 15
    aget-char v7, v4, v6

    if-eqz v7, :cond_8

    if-ne v7, v3, :cond_7

    .line 16
    iget-object v3, p0, Le/g/a/e;->b:[I

    aget v3, v3, v6

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    move v3, v0

    .line 17
    :goto_4
    iget p1, p1, Le/g/a/r/b;->c:I

    if-eq v3, p1, :cond_2

    goto :goto_0

    :cond_9
    move p1, v1

    :goto_5
    if-eqz p1, :cond_a

    move v0, v1

    :cond_a
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/g/a/e;->g:Z

    if-eqz v0, :cond_0

    const v0, -0x21524111

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Le/g/a/e$a;

    invoke-direct {v1, p0}, Le/g/a/e$a;-><init>(Le/g/a/e;)V

    .line 3
    :goto_1
    invoke-virtual {v1}, Le/g/a/a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Le/g/a/a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/g/a/r/b;

    .line 4
    iget-char v3, v2, Le/g/a/r/b;->b:C

    invoke-static {v3}, Ln3/g0/y;->h1(C)I

    move-result v3

    iget v2, v2, Le/g/a/r/b;->c:I

    .line 5
    invoke-static {v2}, Ln3/g0/y;->j1(I)I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    goto :goto_1

    :cond_1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/g/a/r/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/g/a/e$a;

    invoke-direct {v0, p0}, Le/g/a/e$a;-><init>(Le/g/a/e;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget v0, p0, Le/g/a/e;->d:I

    iget-boolean v1, p0, Le/g/a/e;->g:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    new-instance v1, Le/g/a/e$a;

    invoke-direct {v1, p0}, Le/g/a/e$a;-><init>(Le/g/a/e;)V

    const/4 v2, 0x1

    .line 3
    :goto_0
    invoke-virtual {v1}, Le/g/a/a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Le/g/a/a;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/g/a/r/b;

    if-nez v2, :cond_0

    const-string v2, ", "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-char v2, v3, Le/g/a/r/b;->b:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "=>"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v2, v3, Le/g/a/r/b;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
