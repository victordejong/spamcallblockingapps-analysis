.class public Ln3/i/b/h/m/i;
.super Ln3/i/b/h/m/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ln3/i/b/h/d;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ln3/i/b/h/m/o;-><init>(Ln3/i/b/h/d;)V

    .line 2
    iget-object v0, p1, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    invoke-virtual {v0}, Ln3/i/b/h/m/k;->f()V

    .line 3
    iget-object v0, p1, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    invoke-virtual {v0}, Ln3/i/b/h/m/m;->f()V

    .line 4
    check-cast p1, Ln3/i/b/h/g;

    .line 5
    iget p1, p1, Ln3/i/b/h/g;->L0:I

    .line 6
    iput p1, p0, Ln3/i/b/h/m/o;->f:I

    return-void
.end method


# virtual methods
.method public a(Ln3/i/b/h/m/d;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-boolean v0, p1, Ln3/i/b/h/m/f;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p1, Ln3/i/b/h/m/f;->j:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p1, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/i/b/h/m/f;

    .line 4
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    check-cast v0, Ln3/i/b/h/g;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    iget p1, p1, Ln3/i/b/h/m/f;->g:I

    int-to-float p1, p1

    .line 6
    iget v0, v0, Ln3/i/b/h/g;->H0:F

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 7
    iget-object v0, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {v0, p1}, Ln3/i/b/h/m/f;->c(I)V

    return-void
.end method

.method public d()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    move-object v1, v0

    check-cast v1, Ln3/i/b/h/g;

    .line 2
    iget v2, v1, Ln3/i/b/h/g;->I0:I

    .line 3
    iget v3, v1, Ln3/i/b/h/g;->J0:I

    .line 4
    iget v1, v1, Ln3/i/b/h/g;->L0:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v1, v4, :cond_2

    if-eq v2, v5, :cond_0

    .line 5
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v1, v1, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v0, v0, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iput v2, v0, Ln3/i/b/h/m/f;->f:I

    goto :goto_0

    :cond_0
    if-eq v3, v5, :cond_1

    .line 8
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v1, v1, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    iget-object v0, v0, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    neg-int v1, v3

    iput v1, v0, Ln3/i/b/h/m/f;->f:I

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iput-boolean v4, v1, Ln3/i/b/h/m/f;->b:Z

    .line 12
    iget-object v1, v1, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    iget-object v0, v0, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_0
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/i;->m(Ln3/i/b/h/m/f;)V

    .line 15
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/i;->m(Ln3/i/b/h/m/f;)V

    goto/16 :goto_2

    :cond_2
    if-eq v2, v5, :cond_3

    .line 16
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v1, v1, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v0, v0, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iput v2, v0, Ln3/i/b/h/m/f;->f:I

    goto :goto_1

    :cond_3
    if-eq v3, v5, :cond_4

    .line 19
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-object v1, v1, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    iget-object v0, v0, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    neg-int v1, v3

    iput v1, v0, Ln3/i/b/h/m/f;->f:I

    goto :goto_1

    .line 22
    :cond_4
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iput-boolean v4, v1, Ln3/i/b/h/m/f;->b:Z

    .line 23
    iget-object v1, v1, Ln3/i/b/h/m/f;->l:Ljava/util/List;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    iget-object v0, v0, Ln3/i/b/h/m/f;->k:Ljava/util/List;

    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :goto_1
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/i;->m(Ln3/i/b/h/m/f;)V

    .line 26
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v0, v0, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v0, v0, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-virtual {p0, v0}, Ln3/i/b/h/m/i;->m(Ln3/i/b/h/m/f;)V

    :goto_2
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    move-object v1, v0

    check-cast v1, Ln3/i/b/h/g;

    .line 2
    iget v1, v1, Ln3/i/b/h/g;->L0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget v1, v1, Ln3/i/b/h/m/f;->g:I

    .line 4
    iput v1, v0, Ln3/i/b/h/d;->W:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget v1, v1, Ln3/i/b/h/m/f;->g:I

    .line 6
    iput v1, v0, Ln3/i/b/h/d;->X:I

    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
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
