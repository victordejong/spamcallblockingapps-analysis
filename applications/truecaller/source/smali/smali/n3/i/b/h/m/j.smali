.class public Ln3/i/b/h/m/j;
.super Ln3/i/b/h/m/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ln3/i/b/h/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/i/b/h/m/o;-><init>(Ln3/i/b/h/d;)V

    return-void
.end method


# virtual methods
.method public a(Ln3/i/b/h/m/d;)V
    .locals 6

    .line 1
    iget-object p1, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    check-cast p1, Ln3/i/b/h/a;

    .line 2
    iget v0, p1, Ln3/i/b/h/a;->J0:I

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v2, v2, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/i/b/h/m/f;

    .line 4
    iget v5, v5, Ln3/i/b/h/m/f;->g:I

    if-eq v4, v3, :cond_1

    if-ge v5, v4, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    if-ge v1, v5, :cond_0

    move v1, v5

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    goto :goto_1

    .line 5
    :cond_4
    iget-object v0, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    .line 6
    iget p1, p1, Ln3/i/b/h/a;->L0:I

    add-int/2addr v1, p1

    .line 7
    invoke-virtual {v0, v1}, Ln3/i/b/h/m/f;->c(I)V

    goto :goto_2

    .line 8
    :cond_5
    :goto_1
    iget-object v0, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    .line 9
    iget p1, p1, Ln3/i/b/h/a;->L0:I

    add-int/2addr v4, p1

    .line 10
    invoke-virtual {v0, v4}, Ln3/i/b/h/m/f;->c(I)V

    :goto_2
    return-void
.end method

.method public d()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    instance-of v1, v0, Ln3/i/b/h/a;

    if-eqz v1, :cond_c

    .line 2
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ln3/i/b/h/m/f;->b:Z

    .line 3
    check-cast v0, Ln3/i/b/h/a;

    .line 4
    iget v3, v0, Ln3/i/b/h/a;->J0:I

    .line 5
    iget-boolean v4, v0, Ln3/i/b/h/a;->K0:Z

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    if-eq v3, v2, :cond_6

    const/4 v2, 0x2

    if-eq v3, v2, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    goto/16 :goto_8

    .line 6
    :cond_0
    sget-object v2, Ln3/i/b/h/m/f$a;->g:Ln3/i/b/h/m/f$a;

    iput-object v2, v1, Ln3/i/b/h/m/f;->e:Ln3/i/b/h/m/f$a;

    .line 7
    :goto_0
    iget v1, v0, Ln3/i/b/h/i;->I0:I

    if-ge v6, v1, :cond_2

    .line 8
    iget-object v1, v0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    aget-object v1, v1, v6

    if-nez v4, :cond_1

    .line 9
    iget v2, v1, Ln3/i/b/h/d;->j0:I

    if-ne v2, v5, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, v1, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v1, v1, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    .line 11
    iget-object v2, v1, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    iget-object v3, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v2, v2, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/j;->m(Ln3/i/b/h/m/f;)V

    .line 14
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/j;->m(Ln3/i/b/h/m/f;)V

    goto/16 :goto_8

    .line 15
    :cond_3
    sget-object v2, Ln3/i/b/h/m/f$a;->f:Ln3/i/b/h/m/f$a;

    iput-object v2, v1, Ln3/i/b/h/m/f;->e:Ln3/i/b/h/m/f$a;

    .line 16
    :goto_2
    iget v1, v0, Ln3/i/b/h/i;->I0:I

    if-ge v6, v1, :cond_5

    .line 17
    iget-object v1, v0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    aget-object v1, v1, v6

    if-nez v4, :cond_4

    .line 18
    iget v2, v1, Ln3/i/b/h/d;->j0:I

    if-ne v2, v5, :cond_4

    goto :goto_3

    .line 19
    :cond_4
    iget-object v1, v1, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v1, v1, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    .line 20
    iget-object v2, v1, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    iget-object v3, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v2, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v2, v2, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 22
    :cond_5
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/j;->m(Ln3/i/b/h/m/f;)V

    .line 23
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/j;->m(Ln3/i/b/h/m/f;)V

    goto/16 :goto_8

    .line 24
    :cond_6
    sget-object v2, Ln3/i/b/h/m/f$a;->e:Ln3/i/b/h/m/f$a;

    iput-object v2, v1, Ln3/i/b/h/m/f;->e:Ln3/i/b/h/m/f$a;

    .line 25
    :goto_4
    iget v1, v0, Ln3/i/b/h/i;->I0:I

    if-ge v6, v1, :cond_8

    .line 26
    iget-object v1, v0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    aget-object v1, v1, v6

    if-nez v4, :cond_7

    .line 27
    iget v2, v1, Ln3/i/b/h/d;->j0:I

    if-ne v2, v5, :cond_7

    goto :goto_5

    .line 28
    :cond_7
    iget-object v1, v1, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v1, v1, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    .line 29
    iget-object v2, v1, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    iget-object v3, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v2, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v2, v2, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 31
    :cond_8
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/j;->m(Ln3/i/b/h/m/f;)V

    .line 32
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/j;->m(Ln3/i/b/h/m/f;)V

    goto :goto_8

    .line 33
    :cond_9
    sget-object v2, Ln3/i/b/h/m/f$a;->d:Ln3/i/b/h/m/f$a;

    iput-object v2, v1, Ln3/i/b/h/m/f;->e:Ln3/i/b/h/m/f$a;

    .line 34
    :goto_6
    iget v1, v0, Ln3/i/b/h/i;->I0:I

    if-ge v6, v1, :cond_b

    .line 35
    iget-object v1, v0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    aget-object v1, v1, v6

    if-nez v4, :cond_a

    .line 36
    iget v2, v1, Ln3/i/b/h/d;->j0:I

    if-ne v2, v5, :cond_a

    goto :goto_7

    .line 37
    :cond_a
    iget-object v1, v1, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v1, v1, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    .line 38
    iget-object v2, v1, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    iget-object v3, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v2, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v2, v2, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 40
    :cond_b
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/j;->m(Ln3/i/b/h/m/f;)V

    .line 41
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/j;->m(Ln3/i/b/h/m/f;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    instance-of v1, v0, Ln3/i/b/h/a;

    if-eqz v1, :cond_2

    .line 2
    move-object v1, v0

    check-cast v1, Ln3/i/b/h/a;

    .line 3
    iget v1, v1, Ln3/i/b/h/a;->J0:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget v1, v1, Ln3/i/b/h/m/f;->g:I

    .line 5
    iput v1, v0, Ln3/i/b/h/d;->X:I

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget v1, v1, Ln3/i/b/h/m/f;->g:I

    .line 7
    iput v1, v0, Ln3/i/b/h/d;->W:I

    :cond_2
    :goto_1
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ln3/i/b/h/m/o;->c:Ln3/i/b/h/m/l;

    .line 2
    iget-object v0, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {v0}, Ln3/i/b/h/m/f;->b()V

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m(Ln3/i/b/h/m/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v0, v0, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p1, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    iget-object v0, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
