.class public abstract Lorg/joda/time/y/b;
.super Lorg/joda/time/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->O()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->B()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public B()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->j()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public C()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->P()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->E()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public D()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->Q()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->E()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public E()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->k()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public F(Lorg/joda/time/t;J)J
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/joda/time/t;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/joda/time/t;->i(I)I

    move-result v3

    invoke-virtual {v2, p2, p3, v3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide p2
.end method

.method public G(Lorg/joda/time/t;[I)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lorg/joda/time/t;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 2
    aget v4, p2, v2

    .line 3
    invoke-interface {p1, v2}, Lorg/joda/time/t;->L(I)Lorg/joda/time/c;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Lorg/joda/time/c;->s()I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 5
    invoke-virtual {v5}, Lorg/joda/time/c;->o()I

    move-result v6

    if-gt v4, v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lorg/joda/time/IllegalFieldValueException;

    invoke-virtual {v5}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5}, Lorg/joda/time/c;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p2, v0, v3, v1}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Lorg/joda/time/IllegalFieldValueException;

    invoke-virtual {v5}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5}, Lorg/joda/time/c;->s()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1, v3}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_2
    :goto_1
    if-ge v1, v0, :cond_5

    .line 8
    aget v2, p2, v1

    .line 9
    invoke-interface {p1, v1}, Lorg/joda/time/t;->L(I)Lorg/joda/time/c;

    move-result-object v4

    .line 10
    invoke-virtual {v4, p1, p2}, Lorg/joda/time/c;->u(Lorg/joda/time/t;[I)I

    move-result v5

    if-lt v2, v5, :cond_4

    .line 11
    invoke-virtual {v4, p1, p2}, Lorg/joda/time/c;->r(Lorg/joda/time/t;[I)I

    move-result v5

    if-gt v2, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_3
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-virtual {v4}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, p1, p2}, Lorg/joda/time/c;->r(Lorg/joda/time/t;[I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 13
    :cond_4
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-virtual {v4}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, p1, p2}, Lorg/joda/time/c;->u(Lorg/joda/time/t;[I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_5
    return-void
.end method

.method public H()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->R()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->I()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public I()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->l()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public J()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->S()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->L()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public K()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->T()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->L()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public L()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->m()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public O()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->R()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public P()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->V()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->R()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public Q()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->W()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->R()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public R()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->n()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public a()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->a()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public b()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->x()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->a()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->y()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->t()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->z()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->t()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->A()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->h()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->B()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->h()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->C()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->h()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public h()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->b()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public i()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->D()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->j()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->c()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public k(Lorg/joda/time/t;J)[I
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/joda/time/t;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-interface {p1, v2}, Lorg/joda/time/t;->g(I)Lorg/joda/time/d;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/joda/time/d;->F(Lorg/joda/time/a;)Lorg/joda/time/c;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lorg/joda/time/c;->c(J)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public l(Lorg/joda/time/u;JJ)[I
    .locals 5

    .line 1
    invoke-interface {p1}, Lorg/joda/time/u;->size()I

    move-result v0

    .line 2
    new-array v1, v0, [I

    cmp-long v2, p2, p4

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-interface {p1, v2}, Lorg/joda/time/u;->g(I)Lorg/joda/time/i;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/joda/time/i;->d(Lorg/joda/time/a;)Lorg/joda/time/h;

    move-result-object v3

    .line 4
    invoke-virtual {v3, p4, p5, p2, p3}, Lorg/joda/time/h;->h(JJ)I

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3, p2, p3, v4}, Lorg/joda/time/h;->c(JI)J

    move-result-wide p2

    .line 6
    :cond_0
    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public m(IIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/b;->O()Lorg/joda/time/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/c;->G(JI)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/y/b;->A()Lorg/joda/time/c;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/y/b;->e()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0}, Lorg/joda/time/y/b;->v()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public n(IIIIIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/b;->O()Lorg/joda/time/c;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/c;->G(JI)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/y/b;->A()Lorg/joda/time/c;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/y/b;->e()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    .line 4
    invoke-virtual {p0}, Lorg/joda/time/y/b;->r()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    .line 5
    invoke-virtual {p0}, Lorg/joda/time/y/b;->y()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p5}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    .line 6
    invoke-virtual {p0}, Lorg/joda/time/y/b;->D()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p6}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    .line 7
    invoke-virtual {p0}, Lorg/joda/time/y/b;->w()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p7}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public p()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->H()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->q()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public q()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->f()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public r()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->I()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->t()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public s()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->J()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->t()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public t()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->g()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public u()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->h()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method

.method public v()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->K()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->u()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public w()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->L()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->u()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public x()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->M()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->z()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public y()Lorg/joda/time/c;
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/d;->N()Lorg/joda/time/d;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/y/b;->z()Lorg/joda/time/h;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method

.method public z()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/i;->i()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    return-object v0
.end method
