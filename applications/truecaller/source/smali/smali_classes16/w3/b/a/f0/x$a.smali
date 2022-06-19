.class public final Lw3/b/a/f0/x$a;
.super Lw3/b/a/h0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/f0/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lw3/b/a/c;

.field public final c:Lw3/b/a/g;

.field public final d:Lw3/b/a/j;

.field public final e:Z

.field public final f:Lw3/b/a/j;

.field public final g:Lw3/b/a/j;


# direct methods
.method public constructor <init>(Lw3/b/a/c;Lw3/b/a/g;Lw3/b/a/j;Lw3/b/a/j;Lw3/b/a/j;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lw3/b/a/h0/b;-><init>(Lw3/b/a/d;)V

    .line 2
    invoke-virtual {p1}, Lw3/b/a/c;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iput-object p1, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    .line 4
    iput-object p2, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    .line 5
    iput-object p3, p0, Lw3/b/a/f0/x$a;->d:Lw3/b/a/j;

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Lw3/b/a/j;->g()J

    move-result-wide p1

    const-wide/32 v0, 0x2932e00

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-boolean p1, p0, Lw3/b/a/f0/x$a;->e:Z

    .line 8
    iput-object p4, p0, Lw3/b/a/f0/x$a;->f:Lw3/b/a/j;

    .line 9
    iput-object p5, p0, Lw3/b/a/f0/x$a;->g:Lw3/b/a/j;

    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public A(J)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lw3/b/a/f0/x$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/x$a;->G(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Lw3/b/a/c;->A(J)J

    move-result-wide p1

    sub-long/2addr p1, v2

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v2, v0, v1}, Lw3/b/a/c;->A(J)J

    move-result-wide v4

    .line 6
    iget-object v3, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lw3/b/a/g;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public B(J)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lw3/b/a/f0/x$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/x$a;->G(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    sub-long/2addr p1, v2

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v2, v0, v1}, Lw3/b/a/c;->B(J)J

    move-result-wide v4

    .line 6
    iget-object v3, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lw3/b/a/g;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(JI)J
    .locals 9

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v2, v0, v1, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide v0

    .line 3
    iget-object v3, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    const/4 v6, 0x0

    move-wide v4, v0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lw3/b/a/g;->b(JZJ)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/x$a;->c(J)I

    move-result v2

    if-ne v2, p3, :cond_0

    return-wide p1

    .line 5
    :cond_0
    new-instance p1, Lw3/b/a/m;

    iget-object p2, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    .line 6
    iget-object p2, p2, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 7
    invoke-direct {p1, v0, v1, p2}, Lw3/b/a/m;-><init>(JLjava/lang/String;)V

    .line 8
    new-instance p2, Lw3/b/a/l;

    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, p3, v1}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/Number;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw p2
.end method

.method public D(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lw3/b/a/c;->D(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v4

    .line 3
    iget-object v3, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lw3/b/a/g;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final G(J)I
    .locals 7

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->m(J)I

    move-result v0

    int-to-long v1, v0

    add-long v3, p1, v1

    xor-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    xor-long/2addr p1, v1

    cmp-long p1, p1, v5

    if-gez p1, :cond_0

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

.method public a(JI)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lw3/b/a/f0/x$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/x$a;->G(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {v1, p1, p2, p3}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    sub-long/2addr p1, v2

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v2, v0, v1, p3}, Lw3/b/a/c;->a(JI)J

    move-result-wide v4

    .line 6
    iget-object v3, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lw3/b/a/g;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lw3/b/a/f0/x$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/x$a;->G(J)I

    move-result v0

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lw3/b/a/c;->b(JJ)J

    move-result-wide p1

    sub-long/2addr p1, v2

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v2, v0, v1, p3, p4}, Lw3/b/a/c;->b(JJ)J

    move-result-wide v4

    .line 6
    iget-object v3, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-virtual/range {v3 .. v8}, Lw3/b/a/g;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->d(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->e(JLjava/util/Locale;)Ljava/lang/String;

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
    instance-of v1, p1, Lw3/b/a/f0/x$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lw3/b/a/f0/x$a;

    .line 3
    iget-object v1, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    iget-object v3, p1, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    iget-object v3, p1, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v1, v3}, Lw3/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw3/b/a/f0/x$a;->d:Lw3/b/a/j;

    iget-object v3, p1, Lw3/b/a/f0/x$a;->d:Lw3/b/a/j;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw3/b/a/f0/x$a;->f:Lw3/b/a/j;

    iget-object p1, p1, Lw3/b/a/f0/x$a;->f:Lw3/b/a/j;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v1}, Lw3/b/a/g;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public j(JJ)I
    .locals 4

    .line 1
    invoke-virtual {p0, p3, p4}, Lw3/b/a/f0/x$a;->G(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    iget-boolean v2, p0, Lw3/b/a/f0/x$a;->e:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/x$a;->G(J)I

    move-result v2

    :goto_0
    int-to-long v2, v2

    add-long/2addr p1, v2

    int-to-long v2, v0

    add-long/2addr p3, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 4

    .line 1
    invoke-virtual {p0, p3, p4}, Lw3/b/a/f0/x$a;->G(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    iget-boolean v2, p0, Lw3/b/a/f0/x$a;->e:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/x$a;->G(J)I

    move-result v2

    :goto_0
    int-to-long v2, v2

    add-long/2addr p1, v2

    int-to-long v2, v0

    add-long/2addr p3, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final l()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->d:Lw3/b/a/j;

    return-object v0
.end method

.method public final m()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->g:Lw3/b/a/j;

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1}, Lw3/b/a/c;->n(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->o()I

    move-result v0

    return v0
.end method

.method public p(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->p(J)I

    move-result p1

    return p1
.end method

.method public q(Lw3/b/a/b0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1}, Lw3/b/a/c;->q(Lw3/b/a/b0;)I

    move-result p1

    return p1
.end method

.method public r(Lw3/b/a/b0;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->r(Lw3/b/a/b0;[I)I

    move-result p1

    return p1
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->s()I

    move-result v0

    return v0
.end method

.method public t(Lw3/b/a/b0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1}, Lw3/b/a/c;->t(Lw3/b/a/b0;)I

    move-result p1

    return p1
.end method

.method public u(Lw3/b/a/b0;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->u(Lw3/b/a/b0;[I)I

    move-result p1

    return p1
.end method

.method public final v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->f:Lw3/b/a/j;

    return-object v0
.end method

.method public x(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->x(J)Z

    move-result p1

    return p1
.end method

.method public z(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/x$a;->c:Lw3/b/a/g;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/g;->c(J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/x$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->z(J)J

    move-result-wide p1

    return-wide p1
.end method
