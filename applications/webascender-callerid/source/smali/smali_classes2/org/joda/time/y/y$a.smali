.class final Lorg/joda/time/y/y$a;
.super Lorg/joda/time/a0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/y/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final b:Lorg/joda/time/c;

.field final c:Lorg/joda/time/f;

.field final d:Lorg/joda/time/h;

.field final e:Z

.field final f:Lorg/joda/time/h;

.field final g:Lorg/joda/time/h;


# direct methods
.method constructor <init>(Lorg/joda/time/c;Lorg/joda/time/f;Lorg/joda/time/h;Lorg/joda/time/h;Lorg/joda/time/h;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/a0/b;-><init>(Lorg/joda/time/d;)V

    .line 2
    invoke-virtual {p1}, Lorg/joda/time/c;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    .line 4
    iput-object p2, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    .line 5
    iput-object p3, p0, Lorg/joda/time/y/y$a;->d:Lorg/joda/time/h;

    .line 6
    invoke-static {p3}, Lorg/joda/time/y/y;->a0(Lorg/joda/time/h;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/joda/time/y/y$a;->e:Z

    .line 7
    iput-object p4, p0, Lorg/joda/time/y/y$a;->f:Lorg/joda/time/h;

    .line 8
    iput-object p5, p0, Lorg/joda/time/y/y$a;->g:Lorg/joda/time/h;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private M(J)I
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->s(J)I

    move-result v0

    int-to-long v1, v0

    add-long v3, p1, v1

    xor-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    xor-long/2addr p1, v1

    cmp-long v1, p1, v5

    if-gez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Adding time zone offset caused overflow"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public A(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->A(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public B(J)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lorg/joda/time/y/y$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$a;->M(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/c;->B(J)J

    move-result-wide p1

    sub-long/2addr p1, v2

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->B(J)J

    move-result-wide v4

    .line 6
    iget-object v3, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lorg/joda/time/f;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(J)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lorg/joda/time/y/y$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$a;->M(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide p1

    sub-long/2addr p1, v2

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/c;->C(J)J

    move-result-wide v4

    .line 6
    iget-object v3, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lorg/joda/time/f;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public G(JI)J
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide v0

    .line 3
    iget-object v3, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    const/4 v6, 0x0

    move-wide v4, v0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lorg/joda/time/f;->b(JZJ)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/y$a;->c(J)I

    move-result v2

    if-ne v2, p3, :cond_0

    return-wide p1

    .line 5
    :cond_0
    new-instance p1, Lorg/joda/time/IllegalInstantException;

    iget-object p2, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {p2}, Lorg/joda/time/f;->n()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, v1, p2}, Lorg/joda/time/IllegalInstantException;-><init>(JLjava/lang/String;)V

    .line 6
    new-instance p2, Lorg/joda/time/IllegalFieldValueException;

    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, p3, v1}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/d;Ljava/lang/Number;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    throw p2
.end method

.method public H(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/c;->H(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v4

    .line 3
    iget-object v3, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lorg/joda/time/f;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lorg/joda/time/y/y$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$a;->M(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {v1, p1, p2, p3}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    sub-long/2addr p1, v2

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/c;->a(JI)J

    move-result-wide v4

    .line 6
    iget-object v3, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lorg/joda/time/f;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lorg/joda/time/y/y$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$a;->M(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/joda/time/c;->b(JJ)J

    move-result-wide p1

    sub-long/2addr p1, v2

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/c;->b(JJ)J

    move-result-wide v4

    .line 6
    iget-object v3, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lorg/joda/time/f;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p1

    return p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->d(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/y/y$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/joda/time/y/y$a;

    .line 3
    iget-object v1, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    iget-object v3, p1, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    iget-object v3, p1, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v1, v3}, Lorg/joda/time/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/joda/time/y/y$a;->d:Lorg/joda/time/h;

    iget-object v3, p1, Lorg/joda/time/y/y$a;->d:Lorg/joda/time/h;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/joda/time/y/y$a;->f:Lorg/joda/time/h;

    iget-object p1, p1, Lorg/joda/time/y/y$a;->f:Lorg/joda/time/h;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v1}, Lorg/joda/time/f;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public j(JJ)I
    .locals 4

    .line 1
    invoke-direct {p0, p3, p4}, Lorg/joda/time/y/y$a;->M(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    iget-boolean v2, p0, Lorg/joda/time/y/y$a;->e:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$a;->M(J)I

    move-result v2

    :goto_0
    int-to-long v2, v2

    add-long/2addr p1, v2

    int-to-long v2, v0

    add-long/2addr p3, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/joda/time/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 4

    .line 1
    invoke-direct {p0, p3, p4}, Lorg/joda/time/y/y$a;->M(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    iget-boolean v2, p0, Lorg/joda/time/y/y$a;->e:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$a;->M(J)I

    move-result v2

    :goto_0
    int-to-long v2, v2

    add-long/2addr p1, v2

    int-to-long v2, v0

    add-long/2addr p3, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/joda/time/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final l()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->d:Lorg/joda/time/h;

    return-object v0
.end method

.method public final m()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->g:Lorg/joda/time/h;

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->n(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->o()I

    move-result v0

    return v0
.end method

.method public p(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->p(J)I

    move-result p1

    return p1
.end method

.method public q(Lorg/joda/time/t;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->q(Lorg/joda/time/t;)I

    move-result p1

    return p1
.end method

.method public r(Lorg/joda/time/t;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->r(Lorg/joda/time/t;[I)I

    move-result p1

    return p1
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->s()I

    move-result v0

    return v0
.end method

.method public t(Lorg/joda/time/t;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->t(Lorg/joda/time/t;)I

    move-result p1

    return p1
.end method

.method public u(Lorg/joda/time/t;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->u(Lorg/joda/time/t;[I)I

    move-result p1

    return p1
.end method

.method public final w()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->f:Lorg/joda/time/h;

    return-object v0
.end method

.method public y(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$a;->c:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->d(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/y$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->y(J)Z

    move-result p1

    return p1
.end method
