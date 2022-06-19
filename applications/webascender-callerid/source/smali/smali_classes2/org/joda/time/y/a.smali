.class public abstract Lorg/joda/time/y/a;
.super Lorg/joda/time/y/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/y/a$a;
    }
.end annotation


# instance fields
.field private transient A:Lorg/joda/time/c;

.field private transient B:Lorg/joda/time/c;

.field private transient C:Lorg/joda/time/c;

.field private transient D:Lorg/joda/time/c;

.field private transient E:Lorg/joda/time/c;

.field private transient F:Lorg/joda/time/c;

.field private transient G:Lorg/joda/time/c;

.field private transient H:Lorg/joda/time/c;

.field private transient I:Lorg/joda/time/c;

.field private transient J:Lorg/joda/time/c;

.field private transient K:Lorg/joda/time/c;

.field private transient L:Lorg/joda/time/c;

.field private transient M:Lorg/joda/time/c;

.field private transient N:Lorg/joda/time/c;

.field private transient O:Lorg/joda/time/c;

.field private transient P:Lorg/joda/time/c;

.field private transient Q:I

.field private final f:Lorg/joda/time/a;

.field private final g:Ljava/lang/Object;

.field private transient h:Lorg/joda/time/h;

.field private transient i:Lorg/joda/time/h;

.field private transient j:Lorg/joda/time/h;

.field private transient k:Lorg/joda/time/h;

.field private transient l:Lorg/joda/time/h;

.field private transient m:Lorg/joda/time/h;

.field private transient n:Lorg/joda/time/h;

.field private transient o:Lorg/joda/time/h;

.field private transient p:Lorg/joda/time/h;

.field private transient q:Lorg/joda/time/h;

.field private transient r:Lorg/joda/time/h;

.field private transient s:Lorg/joda/time/h;

.field private transient t:Lorg/joda/time/c;

.field private transient u:Lorg/joda/time/c;

.field private transient v:Lorg/joda/time/c;

.field private transient w:Lorg/joda/time/c;

.field private transient x:Lorg/joda/time/c;

.field private transient y:Lorg/joda/time/c;

.field private transient z:Lorg/joda/time/c;


# direct methods
.method protected constructor <init>(Lorg/joda/time/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/y/b;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    .line 3
    iput-object p2, p0, Lorg/joda/time/y/a;->g:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lorg/joda/time/y/a;->V()V

    return-void
.end method

.method private V()V
    .locals 4

    .line 1
    new-instance v0, Lorg/joda/time/y/a$a;

    invoke-direct {v0}, Lorg/joda/time/y/a$a;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lorg/joda/time/y/a$a;->a(Lorg/joda/time/a;)V

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lorg/joda/time/y/a;->S(Lorg/joda/time/y/a$a;)V

    .line 5
    iget-object v1, v0, Lorg/joda/time/y/a$a;->a:Lorg/joda/time/h;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lorg/joda/time/y/b;->u()Lorg/joda/time/h;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/joda/time/y/a;->h:Lorg/joda/time/h;

    .line 6
    iget-object v1, v0, Lorg/joda/time/y/a$a;->b:Lorg/joda/time/h;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-super {p0}, Lorg/joda/time/y/b;->E()Lorg/joda/time/h;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lorg/joda/time/y/a;->i:Lorg/joda/time/h;

    .line 7
    iget-object v1, v0, Lorg/joda/time/y/a$a;->c:Lorg/joda/time/h;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-super {p0}, Lorg/joda/time/y/b;->z()Lorg/joda/time/h;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/joda/time/y/a;->j:Lorg/joda/time/h;

    .line 8
    iget-object v1, v0, Lorg/joda/time/y/a$a;->d:Lorg/joda/time/h;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-super {p0}, Lorg/joda/time/y/b;->t()Lorg/joda/time/h;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lorg/joda/time/y/a;->k:Lorg/joda/time/h;

    .line 9
    iget-object v1, v0, Lorg/joda/time/y/a$a;->e:Lorg/joda/time/h;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-super {p0}, Lorg/joda/time/y/b;->q()Lorg/joda/time/h;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lorg/joda/time/y/a;->l:Lorg/joda/time/h;

    .line 10
    iget-object v1, v0, Lorg/joda/time/y/a$a;->f:Lorg/joda/time/h;

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-super {p0}, Lorg/joda/time/y/b;->h()Lorg/joda/time/h;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lorg/joda/time/y/a;->m:Lorg/joda/time/h;

    .line 11
    iget-object v1, v0, Lorg/joda/time/y/a$a;->g:Lorg/joda/time/h;

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-super {p0}, Lorg/joda/time/y/b;->I()Lorg/joda/time/h;

    move-result-object v1

    :goto_6
    iput-object v1, p0, Lorg/joda/time/y/a;->n:Lorg/joda/time/h;

    .line 12
    iget-object v1, v0, Lorg/joda/time/y/a$a;->h:Lorg/joda/time/h;

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    invoke-super {p0}, Lorg/joda/time/y/b;->L()Lorg/joda/time/h;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lorg/joda/time/y/a;->o:Lorg/joda/time/h;

    .line 13
    iget-object v1, v0, Lorg/joda/time/y/a$a;->i:Lorg/joda/time/h;

    if-eqz v1, :cond_9

    goto :goto_8

    :cond_9
    invoke-super {p0}, Lorg/joda/time/y/b;->B()Lorg/joda/time/h;

    move-result-object v1

    :goto_8
    iput-object v1, p0, Lorg/joda/time/y/a;->p:Lorg/joda/time/h;

    .line 14
    iget-object v1, v0, Lorg/joda/time/y/a$a;->j:Lorg/joda/time/h;

    if-eqz v1, :cond_a

    goto :goto_9

    :cond_a
    invoke-super {p0}, Lorg/joda/time/y/b;->R()Lorg/joda/time/h;

    move-result-object v1

    :goto_9
    iput-object v1, p0, Lorg/joda/time/y/a;->q:Lorg/joda/time/h;

    .line 15
    iget-object v1, v0, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    invoke-super {p0}, Lorg/joda/time/y/b;->a()Lorg/joda/time/h;

    move-result-object v1

    :goto_a
    iput-object v1, p0, Lorg/joda/time/y/a;->r:Lorg/joda/time/h;

    .line 16
    iget-object v1, v0, Lorg/joda/time/y/a$a;->l:Lorg/joda/time/h;

    if-eqz v1, :cond_c

    goto :goto_b

    :cond_c
    invoke-super {p0}, Lorg/joda/time/y/b;->j()Lorg/joda/time/h;

    move-result-object v1

    :goto_b
    iput-object v1, p0, Lorg/joda/time/y/a;->s:Lorg/joda/time/h;

    .line 17
    iget-object v1, v0, Lorg/joda/time/y/a$a;->m:Lorg/joda/time/c;

    if-eqz v1, :cond_d

    goto :goto_c

    :cond_d
    invoke-super {p0}, Lorg/joda/time/y/b;->w()Lorg/joda/time/c;

    move-result-object v1

    :goto_c
    iput-object v1, p0, Lorg/joda/time/y/a;->t:Lorg/joda/time/c;

    .line 18
    iget-object v1, v0, Lorg/joda/time/y/a$a;->n:Lorg/joda/time/c;

    if-eqz v1, :cond_e

    goto :goto_d

    :cond_e
    invoke-super {p0}, Lorg/joda/time/y/b;->v()Lorg/joda/time/c;

    move-result-object v1

    :goto_d
    iput-object v1, p0, Lorg/joda/time/y/a;->u:Lorg/joda/time/c;

    .line 19
    iget-object v1, v0, Lorg/joda/time/y/a$a;->o:Lorg/joda/time/c;

    if-eqz v1, :cond_f

    goto :goto_e

    :cond_f
    invoke-super {p0}, Lorg/joda/time/y/b;->D()Lorg/joda/time/c;

    move-result-object v1

    :goto_e
    iput-object v1, p0, Lorg/joda/time/y/a;->v:Lorg/joda/time/c;

    .line 20
    iget-object v1, v0, Lorg/joda/time/y/a$a;->p:Lorg/joda/time/c;

    if-eqz v1, :cond_10

    goto :goto_f

    :cond_10
    invoke-super {p0}, Lorg/joda/time/y/b;->C()Lorg/joda/time/c;

    move-result-object v1

    :goto_f
    iput-object v1, p0, Lorg/joda/time/y/a;->w:Lorg/joda/time/c;

    .line 21
    iget-object v1, v0, Lorg/joda/time/y/a$a;->q:Lorg/joda/time/c;

    if-eqz v1, :cond_11

    goto :goto_10

    :cond_11
    invoke-super {p0}, Lorg/joda/time/y/b;->y()Lorg/joda/time/c;

    move-result-object v1

    :goto_10
    iput-object v1, p0, Lorg/joda/time/y/a;->x:Lorg/joda/time/c;

    .line 22
    iget-object v1, v0, Lorg/joda/time/y/a$a;->r:Lorg/joda/time/c;

    if-eqz v1, :cond_12

    goto :goto_11

    :cond_12
    invoke-super {p0}, Lorg/joda/time/y/b;->x()Lorg/joda/time/c;

    move-result-object v1

    :goto_11
    iput-object v1, p0, Lorg/joda/time/y/a;->y:Lorg/joda/time/c;

    .line 23
    iget-object v1, v0, Lorg/joda/time/y/a$a;->s:Lorg/joda/time/c;

    if-eqz v1, :cond_13

    goto :goto_12

    :cond_13
    invoke-super {p0}, Lorg/joda/time/y/b;->r()Lorg/joda/time/c;

    move-result-object v1

    :goto_12
    iput-object v1, p0, Lorg/joda/time/y/a;->z:Lorg/joda/time/c;

    .line 24
    iget-object v1, v0, Lorg/joda/time/y/a$a;->t:Lorg/joda/time/c;

    if-eqz v1, :cond_14

    goto :goto_13

    :cond_14
    invoke-super {p0}, Lorg/joda/time/y/b;->c()Lorg/joda/time/c;

    move-result-object v1

    :goto_13
    iput-object v1, p0, Lorg/joda/time/y/a;->A:Lorg/joda/time/c;

    .line 25
    iget-object v1, v0, Lorg/joda/time/y/a$a;->u:Lorg/joda/time/c;

    if-eqz v1, :cond_15

    goto :goto_14

    :cond_15
    invoke-super {p0}, Lorg/joda/time/y/b;->s()Lorg/joda/time/c;

    move-result-object v1

    :goto_14
    iput-object v1, p0, Lorg/joda/time/y/a;->B:Lorg/joda/time/c;

    .line 26
    iget-object v1, v0, Lorg/joda/time/y/a$a;->v:Lorg/joda/time/c;

    if-eqz v1, :cond_16

    goto :goto_15

    :cond_16
    invoke-super {p0}, Lorg/joda/time/y/b;->d()Lorg/joda/time/c;

    move-result-object v1

    :goto_15
    iput-object v1, p0, Lorg/joda/time/y/a;->C:Lorg/joda/time/c;

    .line 27
    iget-object v1, v0, Lorg/joda/time/y/a$a;->w:Lorg/joda/time/c;

    if-eqz v1, :cond_17

    goto :goto_16

    :cond_17
    invoke-super {p0}, Lorg/joda/time/y/b;->p()Lorg/joda/time/c;

    move-result-object v1

    :goto_16
    iput-object v1, p0, Lorg/joda/time/y/a;->D:Lorg/joda/time/c;

    .line 28
    iget-object v1, v0, Lorg/joda/time/y/a$a;->x:Lorg/joda/time/c;

    if-eqz v1, :cond_18

    goto :goto_17

    :cond_18
    invoke-super {p0}, Lorg/joda/time/y/b;->f()Lorg/joda/time/c;

    move-result-object v1

    :goto_17
    iput-object v1, p0, Lorg/joda/time/y/a;->E:Lorg/joda/time/c;

    .line 29
    iget-object v1, v0, Lorg/joda/time/y/a$a;->y:Lorg/joda/time/c;

    if-eqz v1, :cond_19

    goto :goto_18

    :cond_19
    invoke-super {p0}, Lorg/joda/time/y/b;->e()Lorg/joda/time/c;

    move-result-object v1

    :goto_18
    iput-object v1, p0, Lorg/joda/time/y/a;->F:Lorg/joda/time/c;

    .line 30
    iget-object v1, v0, Lorg/joda/time/y/a$a;->z:Lorg/joda/time/c;

    if-eqz v1, :cond_1a

    goto :goto_19

    :cond_1a
    invoke-super {p0}, Lorg/joda/time/y/b;->g()Lorg/joda/time/c;

    move-result-object v1

    :goto_19
    iput-object v1, p0, Lorg/joda/time/y/a;->G:Lorg/joda/time/c;

    .line 31
    iget-object v1, v0, Lorg/joda/time/y/a$a;->A:Lorg/joda/time/c;

    if-eqz v1, :cond_1b

    goto :goto_1a

    :cond_1b
    invoke-super {p0}, Lorg/joda/time/y/b;->H()Lorg/joda/time/c;

    move-result-object v1

    :goto_1a
    iput-object v1, p0, Lorg/joda/time/y/a;->H:Lorg/joda/time/c;

    .line 32
    iget-object v1, v0, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    if-eqz v1, :cond_1c

    goto :goto_1b

    :cond_1c
    invoke-super {p0}, Lorg/joda/time/y/b;->J()Lorg/joda/time/c;

    move-result-object v1

    :goto_1b
    iput-object v1, p0, Lorg/joda/time/y/a;->I:Lorg/joda/time/c;

    .line 33
    iget-object v1, v0, Lorg/joda/time/y/a$a;->C:Lorg/joda/time/c;

    if-eqz v1, :cond_1d

    goto :goto_1c

    :cond_1d
    invoke-super {p0}, Lorg/joda/time/y/b;->K()Lorg/joda/time/c;

    move-result-object v1

    :goto_1c
    iput-object v1, p0, Lorg/joda/time/y/a;->J:Lorg/joda/time/c;

    .line 34
    iget-object v1, v0, Lorg/joda/time/y/a$a;->D:Lorg/joda/time/c;

    if-eqz v1, :cond_1e

    goto :goto_1d

    :cond_1e
    invoke-super {p0}, Lorg/joda/time/y/b;->A()Lorg/joda/time/c;

    move-result-object v1

    :goto_1d
    iput-object v1, p0, Lorg/joda/time/y/a;->K:Lorg/joda/time/c;

    .line 35
    iget-object v1, v0, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    if-eqz v1, :cond_1f

    goto :goto_1e

    :cond_1f
    invoke-super {p0}, Lorg/joda/time/y/b;->O()Lorg/joda/time/c;

    move-result-object v1

    :goto_1e
    iput-object v1, p0, Lorg/joda/time/y/a;->L:Lorg/joda/time/c;

    .line 36
    iget-object v1, v0, Lorg/joda/time/y/a$a;->F:Lorg/joda/time/c;

    if-eqz v1, :cond_20

    goto :goto_1f

    :cond_20
    invoke-super {p0}, Lorg/joda/time/y/b;->Q()Lorg/joda/time/c;

    move-result-object v1

    :goto_1f
    iput-object v1, p0, Lorg/joda/time/y/a;->M:Lorg/joda/time/c;

    .line 37
    iget-object v1, v0, Lorg/joda/time/y/a$a;->G:Lorg/joda/time/c;

    if-eqz v1, :cond_21

    goto :goto_20

    :cond_21
    invoke-super {p0}, Lorg/joda/time/y/b;->P()Lorg/joda/time/c;

    move-result-object v1

    :goto_20
    iput-object v1, p0, Lorg/joda/time/y/a;->N:Lorg/joda/time/c;

    .line 38
    iget-object v1, v0, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    if-eqz v1, :cond_22

    goto :goto_21

    :cond_22
    invoke-super {p0}, Lorg/joda/time/y/b;->b()Lorg/joda/time/c;

    move-result-object v1

    :goto_21
    iput-object v1, p0, Lorg/joda/time/y/a;->O:Lorg/joda/time/c;

    .line 39
    iget-object v0, v0, Lorg/joda/time/y/a$a;->I:Lorg/joda/time/c;

    if-eqz v0, :cond_23

    goto :goto_22

    :cond_23
    invoke-super {p0}, Lorg/joda/time/y/b;->i()Lorg/joda/time/c;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Lorg/joda/time/y/a;->P:Lorg/joda/time/c;

    .line 40
    iget-object v0, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    goto :goto_25

    .line 41
    :cond_24
    iget-object v2, p0, Lorg/joda/time/y/a;->z:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/a;->r()Lorg/joda/time/c;

    move-result-object v0

    if-ne v2, v0, :cond_25

    iget-object v0, p0, Lorg/joda/time/y/a;->x:Lorg/joda/time/c;

    iget-object v2, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    invoke-virtual {v2}, Lorg/joda/time/a;->y()Lorg/joda/time/c;

    move-result-object v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lorg/joda/time/y/a;->v:Lorg/joda/time/c;

    iget-object v2, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    invoke-virtual {v2}, Lorg/joda/time/a;->D()Lorg/joda/time/c;

    move-result-object v2

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lorg/joda/time/y/a;->t:Lorg/joda/time/c;

    iget-object v2, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    invoke-virtual {v2}, Lorg/joda/time/a;->w()Lorg/joda/time/c;

    move-result-object v2

    if-ne v0, v2, :cond_25

    const/4 v0, 0x1

    goto :goto_23

    :cond_25
    const/4 v0, 0x0

    :goto_23
    iget-object v2, p0, Lorg/joda/time/y/a;->u:Lorg/joda/time/c;

    iget-object v3, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    invoke-virtual {v3}, Lorg/joda/time/a;->v()Lorg/joda/time/c;

    move-result-object v3

    if-ne v2, v3, :cond_26

    const/4 v2, 0x2

    goto :goto_24

    :cond_26
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v0, v2

    iget-object v2, p0, Lorg/joda/time/y/a;->L:Lorg/joda/time/c;

    iget-object v3, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    invoke-virtual {v3}, Lorg/joda/time/a;->O()Lorg/joda/time/c;

    move-result-object v3

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lorg/joda/time/y/a;->K:Lorg/joda/time/c;

    iget-object v3, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    invoke-virtual {v3}, Lorg/joda/time/a;->A()Lorg/joda/time/c;

    move-result-object v3

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lorg/joda/time/y/a;->F:Lorg/joda/time/c;

    iget-object v3, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    invoke-virtual {v3}, Lorg/joda/time/a;->e()Lorg/joda/time/c;

    move-result-object v3

    if-ne v2, v3, :cond_27

    const/4 v1, 0x4

    :cond_27
    or-int/2addr v1, v0

    .line 42
    :goto_25
    iput v1, p0, Lorg/joda/time/y/a;->Q:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-direct {p0}, Lorg/joda/time/y/a;->V()V

    return-void
.end method


# virtual methods
.method public final A()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->K:Lorg/joda/time/c;

    return-object v0
.end method

.method public final B()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->p:Lorg/joda/time/h;

    return-object v0
.end method

.method public final C()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->w:Lorg/joda/time/c;

    return-object v0
.end method

.method public final D()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->v:Lorg/joda/time/c;

    return-object v0
.end method

.method public final E()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->i:Lorg/joda/time/h;

    return-object v0
.end method

.method public final H()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->H:Lorg/joda/time/c;

    return-object v0
.end method

.method public final I()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->n:Lorg/joda/time/h;

    return-object v0
.end method

.method public final J()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->I:Lorg/joda/time/c;

    return-object v0
.end method

.method public final K()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->J:Lorg/joda/time/c;

    return-object v0
.end method

.method public final L()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->o:Lorg/joda/time/h;

    return-object v0
.end method

.method public final O()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->L:Lorg/joda/time/c;

    return-object v0
.end method

.method public final P()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->N:Lorg/joda/time/c;

    return-object v0
.end method

.method public final Q()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->M:Lorg/joda/time/c;

    return-object v0
.end method

.method public final R()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->q:Lorg/joda/time/h;

    return-object v0
.end method

.method protected abstract S(Lorg/joda/time/y/a$a;)V
.end method

.method protected final T()Lorg/joda/time/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    return-object v0
.end method

.method protected final U()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final a()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->r:Lorg/joda/time/h;

    return-object v0
.end method

.method public final b()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->O:Lorg/joda/time/c;

    return-object v0
.end method

.method public final c()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->A:Lorg/joda/time/c;

    return-object v0
.end method

.method public final d()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->C:Lorg/joda/time/c;

    return-object v0
.end method

.method public final e()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->F:Lorg/joda/time/c;

    return-object v0
.end method

.method public final f()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->E:Lorg/joda/time/c;

    return-object v0
.end method

.method public final g()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->G:Lorg/joda/time/c;

    return-object v0
.end method

.method public final h()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->m:Lorg/joda/time/h;

    return-object v0
.end method

.method public final i()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->P:Lorg/joda/time/c;

    return-object v0
.end method

.method public final j()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->s:Lorg/joda/time/h;

    return-object v0
.end method

.method public m(IIII)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/joda/time/y/a;->Q:I

    const/4 v2, 0x6

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/a;->m(IIII)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/joda/time/y/b;->m(IIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public n(IIIIIII)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/joda/time/y/a;->Q:I

    const/4 v2, 0x5

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 2
    invoke-virtual/range {v0 .. v7}, Lorg/joda/time/a;->n(IIIIIII)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    invoke-super/range {p0 .. p7}, Lorg/joda/time/y/b;->n(IIIIIII)J

    move-result-wide p1

    return-wide p1
.end method

.method public o()Lorg/joda/time/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->f:Lorg/joda/time/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/joda/time/a;->o()Lorg/joda/time/f;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final p()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->D:Lorg/joda/time/c;

    return-object v0
.end method

.method public final q()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->l:Lorg/joda/time/h;

    return-object v0
.end method

.method public final r()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->z:Lorg/joda/time/c;

    return-object v0
.end method

.method public final s()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->B:Lorg/joda/time/c;

    return-object v0
.end method

.method public final t()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->k:Lorg/joda/time/h;

    return-object v0
.end method

.method public final u()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->h:Lorg/joda/time/h;

    return-object v0
.end method

.method public final v()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->u:Lorg/joda/time/c;

    return-object v0
.end method

.method public final w()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->t:Lorg/joda/time/c;

    return-object v0
.end method

.method public final x()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->y:Lorg/joda/time/c;

    return-object v0
.end method

.method public final y()Lorg/joda/time/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->x:Lorg/joda/time/c;

    return-object v0
.end method

.method public final z()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/a;->j:Lorg/joda/time/h;

    return-object v0
.end method
