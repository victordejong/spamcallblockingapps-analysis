.class public abstract Lw3/b/a/f0/b;
.super Lw3/b/a/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->x:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->y()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public B()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->s:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->D()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public C()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->t:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->D()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public D()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->k:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public E()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->h:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->F()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public F()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->f:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public G()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->u:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->I()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public H()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->v:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->I()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public I()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->l:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public J(Lw3/b/a/b0;J)J
    .locals 4

    .line 1
    invoke-interface {p1}, Lw3/b/a/b0;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lw3/b/a/b0;->b(I)Lw3/b/a/d;

    move-result-object v2

    invoke-virtual {v2, p0}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object v2

    invoke-interface {p1, v1}, Lw3/b/a/b0;->getValue(I)I

    move-result v3

    invoke-virtual {v2, p2, p3, v3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide p2
.end method

.method public K(Lw3/b/a/b0;[I)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lw3/b/a/b0;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 2
    aget v4, p2, v2

    .line 3
    invoke-interface {p1, v2}, Lw3/b/a/b0;->getField(I)Lw3/b/a/c;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Lw3/b/a/c;->s()I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 5
    invoke-virtual {v5}, Lw3/b/a/c;->o()I

    move-result v6

    if-gt v4, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lw3/b/a/l;

    invoke-virtual {v5}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5}, Lw3/b/a/c;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p2, v0, v3, v1}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Lw3/b/a/l;

    invoke-virtual {v5}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5}, Lw3/b/a/c;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1, v3}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_2
    :goto_1
    if-ge v1, v0, :cond_5

    .line 8
    aget v2, p2, v1

    .line 9
    invoke-interface {p1, v1}, Lw3/b/a/b0;->getField(I)Lw3/b/a/c;

    move-result-object v4

    .line 10
    invoke-virtual {v4, p1, p2}, Lw3/b/a/c;->u(Lw3/b/a/b0;[I)I

    move-result v5

    if-lt v2, v5, :cond_4

    .line 11
    invoke-virtual {v4, p1, p2}, Lw3/b/a/c;->r(Lw3/b/a/b0;[I)I

    move-result v5

    if-gt v2, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_3
    new-instance v0, Lw3/b/a/l;

    invoke-virtual {v4}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, p1, p2}, Lw3/b/a/c;->r(Lw3/b/a/b0;[I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 13
    :cond_4
    new-instance v0, Lw3/b/a/l;

    invoke-virtual {v4}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, p1, p2}, Lw3/b/a/c;->u(Lw3/b/a/b0;[I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, v3}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_5
    return-void
.end method

.method public L()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->l:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->M()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public M()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->g:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public N()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->k:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->P()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public O()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->j:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->P()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public P()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->d:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public S()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->f:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->V()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public T()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->e:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->V()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public U()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->c:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->V()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public V()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->e:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public a(JJI)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p3, p4, p5}, Ls1/a/a/a/v0/f/d;->e3(JI)J

    move-result-wide p3

    .line 2
    invoke-static {p1, p2, p3, p4}, Ls1/a/a/a/v0/f/d;->d3(JJ)J

    move-result-wide p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public b(Lw3/b/a/c0;JI)J
    .locals 7

    if-eqz p4, :cond_1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1}, Lw3/b/a/c0;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Lw3/b/a/c0;->getValue(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lw3/b/a/c0;->b(I)Lw3/b/a/k;

    move-result-object v4

    invoke-virtual {v4, p0}, Lw3/b/a/k;->a(Lw3/b/a/a;)Lw3/b/a/j;

    move-result-object v4

    int-to-long v5, p4

    mul-long/2addr v2, v5

    invoke-virtual {v4, p2, p3, v2, v3}, Lw3/b/a/j;->c(JJ)J

    move-result-wide p2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide p2
.end method

.method public c()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->c:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public d()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->d:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->c()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public e()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->q:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->x()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public f()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->p:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->x()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public g()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->i:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->j()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public h()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->m:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->j()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public i()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->g:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->j()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public j()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->h:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public k()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->l()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public l()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->b:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public m(Lw3/b/a/b0;J)[I
    .locals 4

    .line 1
    invoke-interface {p1}, Lw3/b/a/b0;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-interface {p1, v2}, Lw3/b/a/b0;->b(I)Lw3/b/a/d;

    move-result-object v3

    invoke-virtual {v3, p0}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lw3/b/a/c;->c(J)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public n(Lw3/b/a/c0;J)[I
    .locals 7

    .line 1
    invoke-interface {p1}, Lw3/b/a/c0;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 3
    invoke-interface {p1, v4}, Lw3/b/a/c0;->b(I)Lw3/b/a/k;

    move-result-object v5

    invoke-virtual {v5, p0}, Lw3/b/a/k;->a(Lw3/b/a/a;)Lw3/b/a/j;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Lw3/b/a/j;->h()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v5, p2, p3, v2, v3}, Lw3/b/a/j;->d(JJ)I

    move-result v6

    .line 6
    invoke-virtual {v5, v2, v3, v6}, Lw3/b/a/j;->a(JI)J

    move-result-wide v2

    .line 7
    aput v6, v1, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public o(Lw3/b/a/c0;JJ)[I
    .locals 5

    .line 1
    invoke-interface {p1}, Lw3/b/a/c0;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    cmp-long v2, p2, p4

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-interface {p1, v2}, Lw3/b/a/c0;->b(I)Lw3/b/a/k;

    move-result-object v3

    invoke-virtual {v3, p0}, Lw3/b/a/k;->a(Lw3/b/a/a;)Lw3/b/a/j;

    move-result-object v3

    .line 4
    invoke-virtual {v3, p4, p5, p2, p3}, Lw3/b/a/j;->d(JJ)I

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3, p2, p3, v4}, Lw3/b/a/j;->a(JI)J

    move-result-wide p2

    .line 6
    :cond_0
    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public p(IIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw3/b/a/f0/b;->S()Lw3/b/a/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/c;->C(JI)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lw3/b/a/f0/b;->E()Lw3/b/a/c;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 3
    invoke-virtual {p0}, Lw3/b/a/f0/b;->g()Lw3/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0}, Lw3/b/a/f0/b;->z()Lw3/b/a/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public q(IIIIIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw3/b/a/f0/b;->S()Lw3/b/a/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/c;->C(JI)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lw3/b/a/f0/b;->E()Lw3/b/a/c;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 3
    invoke-virtual {p0}, Lw3/b/a/f0/b;->g()Lw3/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0}, Lw3/b/a/f0/b;->v()Lw3/b/a/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 5
    invoke-virtual {p0}, Lw3/b/a/f0/b;->C()Lw3/b/a/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p5}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 6
    invoke-virtual {p0}, Lw3/b/a/f0/b;->H()Lw3/b/a/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p6}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 7
    invoke-virtual {p0}, Lw3/b/a/f0/b;->A()Lw3/b/a/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p7}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public r(JIIII)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw3/b/a/f0/b;->v()Lw3/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 2
    invoke-virtual {p0}, Lw3/b/a/f0/b;->C()Lw3/b/a/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 3
    invoke-virtual {p0}, Lw3/b/a/f0/b;->H()Lw3/b/a/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p5}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0}, Lw3/b/a/f0/b;->A()Lw3/b/a/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p6}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public t()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->n:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->u()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public u()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->i:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public v()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->r:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->x()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public w()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->o:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->x()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method

.method public x()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->j:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public y()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->m:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public z()Lw3/b/a/c;
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->w:Lw3/b/a/d;

    invoke-virtual {p0}, Lw3/b/a/f0/b;->y()Lw3/b/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method
