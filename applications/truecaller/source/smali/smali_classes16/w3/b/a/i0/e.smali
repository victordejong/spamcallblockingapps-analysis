.class public Lw3/b/a/i0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/i0/e$a;,
        Lw3/b/a/i0/e$b;
    }
.end annotation


# instance fields
.field public final a:Lw3/b/a/a;

.field public final b:J

.field public final c:Ljava/util/Locale;

.field public final d:I

.field public final e:Lw3/b/a/g;

.field public final f:Ljava/lang/Integer;

.field public g:Lw3/b/a/g;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;

.field public j:[Lw3/b/a/i0/e$a;

.field public k:I

.field public l:Z

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLw3/b/a/a;Ljava/util/Locale;Ljava/lang/Integer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p3}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p3

    .line 3
    iput-wide p1, p0, Lw3/b/a/i0/e;->b:J

    .line 4
    invoke-virtual {p3}, Lw3/b/a/a;->s()Lw3/b/a/g;

    move-result-object p1

    iput-object p1, p0, Lw3/b/a/i0/e;->e:Lw3/b/a/g;

    .line 5
    invoke-virtual {p3}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object p2

    iput-object p2, p0, Lw3/b/a/i0/e;->a:Lw3/b/a/a;

    if-nez p4, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lw3/b/a/i0/e;->c:Ljava/util/Locale;

    .line 7
    iput p6, p0, Lw3/b/a/i0/e;->d:I

    .line 8
    iput-object p5, p0, Lw3/b/a/i0/e;->f:Ljava/lang/Integer;

    .line 9
    iput-object p1, p0, Lw3/b/a/i0/e;->g:Lw3/b/a/g;

    .line 10
    iput-object p5, p0, Lw3/b/a/i0/e;->i:Ljava/lang/Integer;

    const/16 p1, 0x8

    new-array p1, p1, [Lw3/b/a/i0/e$a;

    .line 11
    iput-object p1, p0, Lw3/b/a/i0/e;->j:[Lw3/b/a/i0/e$a;

    return-void
.end method

.method public static a(Lw3/b/a/j;Lw3/b/a/j;)I
    .locals 1

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Lw3/b/a/j;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lw3/b/a/j;->i()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    neg-int p0, p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p1}, Lw3/b/a/j;->i()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, -0x1

    return p0

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public b(ZLjava/lang/CharSequence;)J
    .locals 8

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/e;->j:[Lw3/b/a/i0/e$a;

    .line 2
    iget v1, p0, Lw3/b/a/i0/e;->k:I

    .line 3
    iget-boolean v2, p0, Lw3/b/a/i0/e;->l:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0}, [Lw3/b/a/i0/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw3/b/a/i0/e$a;

    iput-object v0, p0, Lw3/b/a/i0/e;->j:[Lw3/b/a/i0/e$a;

    .line 5
    iput-boolean v3, p0, Lw3/b/a/i0/e;->l:Z

    :cond_0
    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 6
    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    goto :goto_2

    :cond_1
    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    move v4, v2

    :goto_1
    if-lez v4, :cond_2

    add-int/lit8 v5, v4, -0x1

    .line 7
    aget-object v6, v0, v5

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Lw3/b/a/i0/e$a;->a(Lw3/b/a/i0/e$a;)I

    move-result v6

    if-lez v6, :cond_2

    .line 8
    aget-object v6, v0, v4

    .line 9
    aget-object v7, v0, v5

    aput-object v7, v0, v4

    .line 10
    aput-object v6, v0, v5

    move v4, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-lez v1, :cond_4

    .line 11
    sget-object v2, Lw3/b/a/k;->f:Lw3/b/a/k;

    iget-object v4, p0, Lw3/b/a/i0/e;->a:Lw3/b/a/a;

    invoke-virtual {v2, v4}, Lw3/b/a/k;->a(Lw3/b/a/a;)Lw3/b/a/j;

    move-result-object v2

    .line 12
    sget-object v4, Lw3/b/a/k;->h:Lw3/b/a/k;

    iget-object v5, p0, Lw3/b/a/i0/e;->a:Lw3/b/a/a;

    invoke-virtual {v4, v5}, Lw3/b/a/k;->a(Lw3/b/a/a;)Lw3/b/a/j;

    move-result-object v4

    .line 13
    aget-object v5, v0, v3

    iget-object v5, v5, Lw3/b/a/i0/e$a;->a:Lw3/b/a/c;

    invoke-virtual {v5}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v5

    .line 14
    invoke-static {v5, v2}, Lw3/b/a/i0/e;->a(Lw3/b/a/j;Lw3/b/a/j;)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-static {v5, v4}, Lw3/b/a/i0/e;->a(Lw3/b/a/j;Lw3/b/a/j;)I

    move-result v2

    if-gtz v2, :cond_4

    .line 15
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->f:Lw3/b/a/d;

    iget v1, p0, Lw3/b/a/i0/e;->d:I

    invoke-virtual {p0, v0, v1}, Lw3/b/a/i0/e;->e(Lw3/b/a/d;I)V

    .line 16
    invoke-virtual {p0, p1, p2}, Lw3/b/a/i0/e;->b(ZLjava/lang/CharSequence;)J

    move-result-wide p1

    return-wide p1

    .line 17
    :cond_4
    iget-wide v4, p0, Lw3/b/a/i0/e;->b:J

    move v2, v3

    :goto_3
    const-string v6, "Cannot parse \""

    if-ge v2, v1, :cond_5

    .line 18
    :try_start_0
    aget-object v7, v0, v2

    invoke-virtual {v7, v4, v5, p1}, Lw3/b/a/i0/e$a;->c(JZ)J

    move-result-wide v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_5
    if-eqz p1, :cond_9

    move p1, v3

    :goto_4
    if-ge p1, v1, :cond_9

    .line 19
    aget-object v2, v0, p1

    add-int/lit8 v7, v1, -0x1

    if-ne p1, v7, :cond_6

    const/4 v7, 0x1

    goto :goto_5

    :cond_6
    move v7, v3

    :goto_5
    invoke-virtual {v2, v4, v5, v7}, Lw3/b/a/i0/e$a;->c(JZ)J

    move-result-wide v4
    :try_end_0
    .catch Lw3/b/a/l; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :goto_6
    if-eqz p2, :cond_8

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 21
    iget-object v0, p1, Lw3/b/a/l;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    if-eqz p2, :cond_8

    const-string v0, ": "

    .line 22
    invoke-static {p2, v0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p1, Lw3/b/a/l;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lw3/b/a/l;->a:Ljava/lang/String;

    goto :goto_7

    .line 23
    :cond_7
    iput-object p2, p1, Lw3/b/a/l;->a:Ljava/lang/String;

    .line 24
    :cond_8
    :goto_7
    throw p1

    .line 25
    :cond_9
    iget-object p1, p0, Lw3/b/a/i0/e;->h:Ljava/lang/Integer;

    if-eqz p1, :cond_a

    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    sub-long/2addr v4, p1

    goto :goto_8

    .line 27
    :cond_a
    iget-object p1, p0, Lw3/b/a/i0/e;->g:Lw3/b/a/g;

    if-eqz p1, :cond_c

    .line 28
    invoke-virtual {p1, v4, v5}, Lw3/b/a/g;->n(J)I

    move-result p1

    int-to-long v0, p1

    sub-long/2addr v4, v0

    .line 29
    iget-object v0, p0, Lw3/b/a/i0/e;->g:Lw3/b/a/g;

    invoke-virtual {v0, v4, v5}, Lw3/b/a/g;->m(J)I

    move-result v0

    if-eq p1, v0, :cond_c

    const-string p1, "Illegal instant due to time zone offset transition ("

    .line 30
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lw3/b/a/i0/e;->g:Lw3/b/a/g;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_b

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    :cond_b
    new-instance p2, Lw3/b/a/m;

    invoke-direct {p2, p1}, Lw3/b/a/m;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_c
    :goto_8
    return-wide v4
.end method

.method public final c()Lw3/b/a/i0/e$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/e;->j:[Lw3/b/a/i0/e$a;

    .line 2
    iget v1, p0, Lw3/b/a/i0/e;->k:I

    .line 3
    array-length v2, v0

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lw3/b/a/i0/e;->l:Z

    if-eqz v2, :cond_2

    .line 4
    :cond_0
    array-length v2, v0

    if-ne v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    new-array v2, v2, [Lw3/b/a/i0/e$a;

    const/4 v3, 0x0

    .line 5
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v2, p0, Lw3/b/a/i0/e;->j:[Lw3/b/a/i0/e$a;

    .line 7
    iput-boolean v3, p0, Lw3/b/a/i0/e;->l:Z

    move-object v0, v2

    :cond_2
    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lw3/b/a/i0/e;->m:Ljava/lang/Object;

    .line 9
    aget-object v2, v0, v1

    if-nez v2, :cond_3

    .line 10
    new-instance v2, Lw3/b/a/i0/e$a;

    invoke-direct {v2}, Lw3/b/a/i0/e$a;-><init>()V

    aput-object v2, v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 11
    iput v1, p0, Lw3/b/a/i0/e;->k:I

    return-object v2
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lw3/b/a/i0/e$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Lw3/b/a/i0/e$b;

    .line 3
    iget-object v2, v0, Lw3/b/a/i0/e$b;->e:Lw3/b/a/i0/e;

    const/4 v3, 0x1

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Lw3/b/a/i0/e$b;->a:Lw3/b/a/g;

    .line 5
    iput-object v2, p0, Lw3/b/a/i0/e;->g:Lw3/b/a/g;

    .line 6
    iget-object v2, v0, Lw3/b/a/i0/e$b;->b:Ljava/lang/Integer;

    .line 7
    iput-object v2, p0, Lw3/b/a/i0/e;->h:Ljava/lang/Integer;

    .line 8
    iget-object v2, v0, Lw3/b/a/i0/e$b;->c:[Lw3/b/a/i0/e$a;

    .line 9
    iput-object v2, p0, Lw3/b/a/i0/e;->j:[Lw3/b/a/i0/e$a;

    .line 10
    iget v0, v0, Lw3/b/a/i0/e$b;->d:I

    .line 11
    iget v2, p0, Lw3/b/a/i0/e;->k:I

    if-ge v0, v2, :cond_1

    .line 12
    iput-boolean v3, p0, Lw3/b/a/i0/e;->l:Z

    .line 13
    :cond_1
    iput v0, p0, Lw3/b/a/i0/e;->k:I

    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 14
    iput-object p1, p0, Lw3/b/a/i0/e;->m:Ljava/lang/Object;

    return v3

    :cond_2
    return v1
.end method

.method public e(Lw3/b/a/d;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/i0/e;->c()Lw3/b/a/i0/e$a;

    move-result-object v0

    iget-object v1, p0, Lw3/b/a/i0/e;->a:Lw3/b/a/a;

    invoke-virtual {p1, v1}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object p1

    .line 2
    iput-object p1, v0, Lw3/b/a/i0/e$a;->a:Lw3/b/a/c;

    .line 3
    iput p2, v0, Lw3/b/a/i0/e$a;->b:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, v0, Lw3/b/a/i0/e$a;->c:Ljava/lang/String;

    .line 5
    iput-object p1, v0, Lw3/b/a/i0/e$a;->d:Ljava/util/Locale;

    return-void
.end method

.method public f(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lw3/b/a/i0/e;->m:Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/e;->h:Ljava/lang/Integer;

    return-void
.end method
