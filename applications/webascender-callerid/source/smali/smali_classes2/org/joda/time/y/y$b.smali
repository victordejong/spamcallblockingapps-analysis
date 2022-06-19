.class Lorg/joda/time/y/y$b;
.super Lorg/joda/time/a0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/y/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final g:Lorg/joda/time/h;

.field final h:Z

.field final i:Lorg/joda/time/f;


# direct methods
.method constructor <init>(Lorg/joda/time/h;Lorg/joda/time/f;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/joda/time/h;->k()Lorg/joda/time/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/a0/c;-><init>(Lorg/joda/time/i;)V

    .line 2
    invoke-virtual {p1}, Lorg/joda/time/h;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    .line 4
    invoke-static {p1}, Lorg/joda/time/y/y;->a0(Lorg/joda/time/h;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/joda/time/y/y$b;->h:Z

    .line 5
    iput-object p2, p0, Lorg/joda/time/y/y$b;->i:Lorg/joda/time/f;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private v(J)I
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$b;->i:Lorg/joda/time/f;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/f;->t(J)I

    move-result v0

    int-to-long v1, v0

    sub-long v3, p1, v1

    xor-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    xor-long/2addr p1, v1

    cmp-long v1, p1, v5

    if-ltz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Subtracting time zone offset caused overflow"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method private w(J)I
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$b;->i:Lorg/joda/time/f;

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
.method public c(JI)J
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$b;->w(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {v1, p1, p2, p3}, Lorg/joda/time/h;->c(JI)J

    move-result-wide p1

    .line 3
    iget-boolean p3, p0, Lorg/joda/time/y/y$b;->h:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$b;->v(J)I

    move-result v0

    :goto_0
    int-to-long v0, v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public d(JJ)J
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$b;->w(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    int-to-long v2, v0

    add-long/2addr p1, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/joda/time/h;->d(JJ)J

    move-result-wide p1

    .line 3
    iget-boolean p3, p0, Lorg/joda/time/y/y$b;->h:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$b;->v(J)I

    move-result v0

    :goto_0
    int-to-long p3, v0

    sub-long/2addr p1, p3

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/y/y$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/joda/time/y/y$b;

    .line 3
    iget-object v1, p0, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    iget-object v3, p1, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/joda/time/y/y$b;->i:Lorg/joda/time/f;

    iget-object p1, p1, Lorg/joda/time/y/y$b;->i:Lorg/joda/time/f;

    invoke-virtual {v1, p1}, Lorg/joda/time/f;->equals(Ljava/lang/Object;)Z

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

.method public h(JJ)I
    .locals 4

    .line 1
    invoke-direct {p0, p3, p4}, Lorg/joda/time/y/y$b;->w(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    iget-boolean v2, p0, Lorg/joda/time/y/y$b;->h:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$b;->w(J)I

    move-result v2

    :goto_0
    int-to-long v2, v2

    add-long/2addr p1, v2

    int-to-long v2, v0

    add-long/2addr p3, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/joda/time/h;->h(JJ)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/y/y$b;->i:Lorg/joda/time/f;

    invoke-virtual {v1}, Lorg/joda/time/f;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public j(JJ)J
    .locals 4

    .line 1
    invoke-direct {p0, p3, p4}, Lorg/joda/time/y/y$b;->w(J)I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    iget-boolean v2, p0, Lorg/joda/time/y/y$b;->h:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/y$b;->w(J)I

    move-result v2

    :goto_0
    int-to-long v2, v2

    add-long/2addr p1, v2

    int-to-long v2, v0

    add-long/2addr p3, v2

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/joda/time/h;->j(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public m()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    invoke-virtual {v0}, Lorg/joda/time/h;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/joda/time/y/y$b;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    invoke-virtual {v0}, Lorg/joda/time/h;->n()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/y$b;->g:Lorg/joda/time/h;

    invoke-virtual {v0}, Lorg/joda/time/h;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/joda/time/y/y$b;->i:Lorg/joda/time/f;

    invoke-virtual {v0}, Lorg/joda/time/f;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
