.class Lorg/joda/time/y/n$a;
.super Lorg/joda/time/a0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/y/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final b:Lorg/joda/time/c;

.field final c:Lorg/joda/time/c;

.field final d:J

.field final e:Z

.field protected f:Lorg/joda/time/h;

.field protected g:Lorg/joda/time/h;

.field final synthetic h:Lorg/joda/time/y/n;


# direct methods
.method constructor <init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;JZ)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;JZ)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    move v7, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;JZ)V

    return-void
.end method

.method constructor <init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;JZ)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    .line 4
    invoke-virtual {p3}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/joda/time/a0/b;-><init>(Lorg/joda/time/d;)V

    .line 5
    iput-object p2, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    .line 6
    iput-object p3, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    .line 7
    iput-wide p5, p0, Lorg/joda/time/y/n$a;->d:J

    .line 8
    iput-boolean p7, p0, Lorg/joda/time/y/n$a;->e:Z

    .line 9
    invoke-virtual {p3}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/y/n$a;->f:Lorg/joda/time/h;

    if-nez p4, :cond_0

    .line 10
    invoke-virtual {p3}, Lorg/joda/time/c;->w()Lorg/joda/time/h;

    move-result-object p4

    if-nez p4, :cond_0

    .line 11
    invoke-virtual {p2}, Lorg/joda/time/c;->w()Lorg/joda/time/h;

    move-result-object p4

    .line 12
    :cond_0
    iput-object p4, p0, Lorg/joda/time/y/n$a;->g:Lorg/joda/time/h;

    return-void
.end method


# virtual methods
.method public B(J)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->B(J)J

    move-result-wide p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->B(J)J

    move-result-wide p1

    .line 4
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 5
    iget-object v0, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    invoke-static {v0}, Lorg/joda/time/y/n;->W(Lorg/joda/time/y/n;)J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-wide v2, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->N(J)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public C(J)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide p1

    .line 3
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 4
    iget-object v0, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    invoke-static {v0}, Lorg/joda/time/y/n;->W(Lorg/joda/time/y/n;)J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->M(J)J

    move-result-wide p1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public G(JI)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_2

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    .line 3
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v3, p1, v0

    if-gez v3, :cond_5

    .line 4
    iget-object v0, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    invoke-static {v0}, Lorg/joda/time/y/n;->W(Lorg/joda/time/y/n;)J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-wide v3, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->M(J)J

    move-result-wide p1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->c(J)I

    move-result v0

    if-ne v0, p3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lorg/joda/time/IllegalFieldValueException;

    iget-object p2, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {p2}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3, v2, v2}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    .line 9
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v3, p1, v0

    if-ltz v3, :cond_5

    .line 10
    iget-object v0, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    invoke-static {v0}, Lorg/joda/time/y/n;->W(Lorg/joda/time/y/n;)J

    move-result-wide v0

    sub-long v0, p1, v0

    iget-wide v3, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_3

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->N(J)J

    move-result-wide p1

    .line 12
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->c(J)I

    move-result v0

    if-ne v0, p3, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    new-instance p1, Lorg/joda/time/IllegalFieldValueException;

    iget-object p2, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {p2}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3, v2, v2}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_5
    :goto_0
    return-wide p1
.end method

.method public H(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->H(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    .line 3
    iget-wide p3, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 4
    iget-object p3, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->W(Lorg/joda/time/y/n;)J

    move-result-wide p3

    add-long/2addr p3, p1

    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->M(J)J

    move-result-wide p1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->H(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    .line 7
    iget-wide p3, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 8
    iget-object p3, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    invoke-static {p3}, Lorg/joda/time/y/n;->W(Lorg/joda/time/y/n;)J

    move-result-wide p3

    sub-long p3, p1, p3

    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/y/n$a;->N(J)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method protected M(J)J
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/joda/time/y/n$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/n;->f0(J)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/n;->g0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected N(J)J
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/joda/time/y/n$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/n;->h0(J)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->h:Lorg/joda/time/y/n;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/y/n;->i0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p1

    return p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->d(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public l()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->f:Lorg/joda/time/h;

    return-object v0
.end method

.method public m()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->m()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->n(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v1, p1}, Lorg/joda/time/c;->n(Ljava/util/Locale;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->o()I

    move-result v0

    return v0
.end method

.method public p(J)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->p(J)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->p(J)I

    move-result v0

    .line 4
    iget-object v1, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    .line 5
    iget-wide v1, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    .line 6
    iget-object p1, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    const/4 p2, -0x1

    invoke-virtual {p1, v1, v2, p2}, Lorg/joda/time/c;->a(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/c;->c(J)I

    move-result v0

    :cond_1
    return v0
.end method

.method public q(Lorg/joda/time/t;)I
    .locals 3

    .line 1
    invoke-static {}, Lorg/joda/time/y/n;->d0()Lorg/joda/time/y/n;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/y/b;->F(Lorg/joda/time/t;J)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/y/n$a;->p(J)I

    move-result p1

    return p1
.end method

.method public r(Lorg/joda/time/t;[I)I
    .locals 8

    .line 1
    invoke-static {}, Lorg/joda/time/y/n;->d0()Lorg/joda/time/y/n;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lorg/joda/time/t;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 3
    invoke-interface {p1, v4}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v5

    .line 4
    aget v6, p2, v4

    invoke-virtual {v5, v2, v3}, Lorg/joda/time/c;->p(J)I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 5
    aget v6, p2, v4

    invoke-virtual {v5, v2, v3, v6}, Lorg/joda/time/c;->G(JI)J

    move-result-wide v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/y/n$a;->p(J)I

    move-result p1

    return p1
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->s()I

    move-result v0

    return v0
.end method

.method public t(Lorg/joda/time/t;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->t(Lorg/joda/time/t;)I

    move-result p1

    return p1
.end method

.method public u(Lorg/joda/time/t;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->u(Lorg/joda/time/t;[I)I

    move-result p1

    return p1
.end method

.method public w()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n$a;->g:Lorg/joda/time/h;

    return-object v0
.end method

.method public y(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/joda/time/y/n$a;->c:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->y(J)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n$a;->b:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->y(J)Z

    move-result p1

    return p1
.end method
