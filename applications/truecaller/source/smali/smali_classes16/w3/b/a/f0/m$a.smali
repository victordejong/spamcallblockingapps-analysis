.class public Lw3/b/a/f0/m$a;
.super Lw3/b/a/h0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/f0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lw3/b/a/c;

.field public final c:Lw3/b/a/c;

.field public final d:J

.field public final e:Z

.field public f:Lw3/b/a/j;

.field public g:Lw3/b/a/j;

.field public final synthetic h:Lw3/b/a/f0/m;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V

    return-void
.end method

.method public constructor <init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V
    .locals 0

    .line 2
    iput-object p1, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 3
    invoke-virtual {p3}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lw3/b/a/h0/b;-><init>(Lw3/b/a/d;)V

    .line 4
    iput-object p2, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    .line 5
    iput-object p3, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    .line 6
    iput-wide p5, p0, Lw3/b/a/f0/m$a;->d:J

    .line 7
    iput-boolean p7, p0, Lw3/b/a/f0/m$a;->e:Z

    .line 8
    invoke-virtual {p3}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object p1

    iput-object p1, p0, Lw3/b/a/f0/m$a;->f:Lw3/b/a/j;

    if-nez p4, :cond_0

    .line 9
    invoke-virtual {p3}, Lw3/b/a/c;->v()Lw3/b/a/j;

    move-result-object p4

    if-nez p4, :cond_0

    .line 10
    invoke-virtual {p2}, Lw3/b/a/c;->v()Lw3/b/a/j;

    move-result-object p4

    .line 11
    :cond_0
    iput-object p4, p0, Lw3/b/a/f0/m$a;->g:Lw3/b/a/j;

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->A(J)J

    move-result-wide p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->A(J)J

    move-result-wide p1

    .line 4
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 5
    iget-object v2, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 6
    iget-wide v2, v2, Lw3/b/a/f0/m;->U:J

    sub-long v2, p1, v2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    .line 7
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->H(J)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public B(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    .line 3
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 4
    iget-object v2, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 5
    iget-wide v2, v2, Lw3/b/a/f0/m;->U:J

    add-long/2addr v2, p1

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->G(J)J

    move-result-wide p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public C(JI)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 3
    iget-wide v2, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_5

    .line 4
    iget-object v0, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 5
    iget-wide v4, v0, Lw3/b/a/f0/m;->U:J

    add-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->G(J)J

    move-result-wide p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->c(J)I

    move-result v0

    if-ne v0, p3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lw3/b/a/l;

    iget-object p2, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {p2}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3, v1, v1}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 9
    :cond_2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 10
    iget-wide v2, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_5

    .line 11
    iget-object v0, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 12
    iget-wide v4, v0, Lw3/b/a/f0/m;->U:J

    sub-long v4, p1, v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_3

    .line 13
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->H(J)J

    move-result-wide p1

    .line 14
    :cond_3
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->c(J)I

    move-result v0

    if-ne v0, p3, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    new-instance p1, Lw3/b/a/l;

    iget-object p2, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {p2}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3, v1, v1}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_5
    :goto_0
    return-wide p1
.end method

.method public D(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->D(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    .line 3
    iget-wide p3, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 4
    iget-object v0, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 5
    iget-wide v0, v0, Lw3/b/a/f0/m;->U:J

    add-long/2addr v0, p1

    cmp-long p3, v0, p3

    if-gez p3, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->G(J)J

    move-result-wide p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->D(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    .line 8
    iget-wide p3, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    .line 9
    iget-object v0, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 10
    iget-wide v0, v0, Lw3/b/a/f0/m;->U:J

    sub-long v0, p1, v0

    cmp-long p3, v0, p3

    if-ltz p3, :cond_1

    .line 11
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/m$a;->H(J)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public G(J)J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lw3/b/a/f0/m$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 3
    iget-object v1, v0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    iget-object v0, v0, Lw3/b/a/f0/m;->Q:Lw3/b/a/f0/v;

    invoke-static {p1, p2, v1, v0}, Lw3/b/a/f0/m;->Y(JLw3/b/a/a;Lw3/b/a/a;)J

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 5
    iget-object v1, v0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    iget-object v0, v0, Lw3/b/a/f0/m;->Q:Lw3/b/a/f0/v;

    invoke-static {p1, p2, v1, v0}, Lw3/b/a/f0/m;->Z(JLw3/b/a/a;Lw3/b/a/a;)J

    move-result-wide p1

    return-wide p1
.end method

.method public H(J)J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lw3/b/a/f0/m$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 3
    iget-object v1, v0, Lw3/b/a/f0/m;->Q:Lw3/b/a/f0/v;

    iget-object v0, v0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    invoke-static {p1, p2, v1, v0}, Lw3/b/a/f0/m;->Y(JLw3/b/a/a;Lw3/b/a/a;)J

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->h:Lw3/b/a/f0/m;

    .line 5
    iget-object v1, v0, Lw3/b/a/f0/m;->Q:Lw3/b/a/f0/v;

    iget-object v0, v0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    invoke-static {p1, p2, v1, v0}, Lw3/b/a/f0/m;->Z(JLw3/b/a/a;Lw3/b/a/a;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->d(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public l()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->f:Lw3/b/a/j;

    return-object v0
.end method

.method public m()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->m()Lw3/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1}, Lw3/b/a/c;->n(Ljava/util/Locale;)I

    move-result v0

    iget-object v1, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v1, p1}, Lw3/b/a/c;->n(Ljava/util/Locale;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->o()I

    move-result v0

    return v0
.end method

.method public p(J)I
    .locals 3

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->p(J)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->p(J)I

    move-result v0

    .line 4
    iget-object v1, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v1, p1, p2, v0}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 5
    iget-wide v1, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long p1, p1, v1

    if-ltz p1, :cond_1

    .line 6
    iget-object p1, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    const/4 p2, -0x1

    invoke-virtual {p1, v1, v2, p2}, Lw3/b/a/c;->a(JI)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result v0

    :cond_1
    return v0
.end method

.method public q(Lw3/b/a/b0;)I
    .locals 3

    .line 1
    sget-object v0, Lw3/b/a/f0/m;->V:Lw3/b/a/n;

    sget-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    sget-object v1, Lw3/b/a/f0/m;->V:Lw3/b/a/n;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lw3/b/a/f0/m;->a0(Lw3/b/a/g;Lw3/b/a/z;I)Lw3/b/a/f0/m;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lw3/b/a/f0/b;->J(Lw3/b/a/b0;J)J

    move-result-wide v0

    .line 3
    invoke-virtual {p0, v0, v1}, Lw3/b/a/f0/m$a;->p(J)I

    move-result p1

    return p1
.end method

.method public r(Lw3/b/a/b0;[I)I
    .locals 8

    .line 1
    sget-object v0, Lw3/b/a/f0/m;->V:Lw3/b/a/n;

    sget-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    sget-object v1, Lw3/b/a/f0/m;->V:Lw3/b/a/n;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lw3/b/a/f0/m;->a0(Lw3/b/a/g;Lw3/b/a/z;I)Lw3/b/a/f0/m;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lw3/b/a/b0;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 3
    invoke-interface {p1, v4}, Lw3/b/a/b0;->b(I)Lw3/b/a/d;

    move-result-object v5

    invoke-virtual {v5, v0}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object v5

    .line 4
    aget v6, p2, v4

    invoke-virtual {v5, v2, v3}, Lw3/b/a/c;->p(J)I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 5
    aget v6, p2, v4

    invoke-virtual {v5, v2, v3, v6}, Lw3/b/a/c;->C(JI)J

    move-result-wide v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v2, v3}, Lw3/b/a/f0/m$a;->p(J)I

    move-result p1

    return p1
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->s()I

    move-result v0

    return v0
.end method

.method public t(Lw3/b/a/b0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1}, Lw3/b/a/c;->t(Lw3/b/a/b0;)I

    move-result p1

    return p1
.end method

.method public u(Lw3/b/a/b0;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->u(Lw3/b/a/b0;[I)I

    move-result p1

    return p1
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/m$a;->g:Lw3/b/a/j;

    return-object v0
.end method

.method public x(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/f0/m$a;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/f0/m$a;->c:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->x(J)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m$a;->b:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->x(J)Z

    move-result p1

    return p1
.end method
