.class public Ln3/i/b/h/e;
.super Ln3/i/b/h/l;
.source "SourceFile"


# instance fields
.field public I0:Ln3/i/b/h/m/b;

.field public J0:Ln3/i/b/h/m/e;

.field public K0:Ln3/i/b/h/m/b$b;

.field public L0:Z

.field public M0:Ln3/i/b/d;

.field public N0:I

.field public O0:I

.field public P0:I

.field public Q0:I

.field public R0:[Ln3/i/b/h/b;

.field public S0:[Ln3/i/b/h/b;

.field public T0:I

.field public U0:Z

.field public V0:Z

.field public W0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ln3/i/b/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public X0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ln3/i/b/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public Y0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ln3/i/b/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public Z0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ln3/i/b/h/c;",
            ">;"
        }
    .end annotation
.end field

.field public a1:Ln3/i/b/h/m/b$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ln3/i/b/h/l;-><init>()V

    .line 2
    new-instance v0, Ln3/i/b/h/m/b;

    invoke-direct {v0, p0}, Ln3/i/b/h/m/b;-><init>(Ln3/i/b/h/e;)V

    iput-object v0, p0, Ln3/i/b/h/e;->I0:Ln3/i/b/h/m/b;

    .line 3
    new-instance v0, Ln3/i/b/h/m/e;

    invoke-direct {v0, p0}, Ln3/i/b/h/m/e;-><init>(Ln3/i/b/h/e;)V

    iput-object v0, p0, Ln3/i/b/h/e;->J0:Ln3/i/b/h/m/e;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ln3/i/b/h/e;->K0:Ln3/i/b/h/m/b$b;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Ln3/i/b/h/e;->L0:Z

    .line 6
    new-instance v2, Ln3/i/b/d;

    invoke-direct {v2}, Ln3/i/b/d;-><init>()V

    iput-object v2, p0, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    .line 7
    iput v1, p0, Ln3/i/b/h/e;->P0:I

    .line 8
    iput v1, p0, Ln3/i/b/h/e;->Q0:I

    const/4 v2, 0x4

    new-array v3, v2, [Ln3/i/b/h/b;

    .line 9
    iput-object v3, p0, Ln3/i/b/h/e;->R0:[Ln3/i/b/h/b;

    new-array v2, v2, [Ln3/i/b/h/b;

    .line 10
    iput-object v2, p0, Ln3/i/b/h/e;->S0:[Ln3/i/b/h/b;

    const/16 v2, 0x101

    .line 11
    iput v2, p0, Ln3/i/b/h/e;->T0:I

    .line 12
    iput-boolean v1, p0, Ln3/i/b/h/e;->U0:Z

    .line 13
    iput-boolean v1, p0, Ln3/i/b/h/e;->V0:Z

    .line 14
    iput-object v0, p0, Ln3/i/b/h/e;->W0:Ljava/lang/ref/WeakReference;

    .line 15
    iput-object v0, p0, Ln3/i/b/h/e;->X0:Ljava/lang/ref/WeakReference;

    .line 16
    iput-object v0, p0, Ln3/i/b/h/e;->Y0:Ljava/lang/ref/WeakReference;

    .line 17
    iput-object v0, p0, Ln3/i/b/h/e;->Z0:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance v0, Ln3/i/b/h/m/b$a;

    invoke-direct {v0}, Ln3/i/b/h/m/b$a;-><init>()V

    iput-object v0, p0, Ln3/i/b/h/e;->a1:Ln3/i/b/h/m/b$a;

    return-void
.end method

.method public static d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z
    .locals 9

    .line 1
    sget-object v0, Ln3/i/b/h/d$a;->b:Ln3/i/b/h/d$a;

    sget-object v1, Ln3/i/b/h/d$a;->a:Ln3/i/b/h/d$a;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v3

    iput-object v3, p2, Ln3/i/b/h/m/b$a;->a:Ln3/i/b/h/d$a;

    .line 3
    invoke-virtual {p0}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v3

    iput-object v3, p2, Ln3/i/b/h/m/b$a;->b:Ln3/i/b/h/d$a;

    .line 4
    invoke-virtual {p0}, Ln3/i/b/h/d;->w()I

    move-result v3

    iput v3, p2, Ln3/i/b/h/m/b$a;->c:I

    .line 5
    invoke-virtual {p0}, Ln3/i/b/h/d;->q()I

    move-result v3

    iput v3, p2, Ln3/i/b/h/m/b$a;->d:I

    .line 6
    iput-boolean v2, p2, Ln3/i/b/h/m/b$a;->i:Z

    .line 7
    iput p3, p2, Ln3/i/b/h/m/b$a;->j:I

    .line 8
    iget-object p3, p2, Ln3/i/b/h/m/b$a;->a:Ln3/i/b/h/d$a;

    sget-object v3, Ln3/i/b/h/d$a;->c:Ln3/i/b/h/d$a;

    const/4 v4, 0x1

    if-ne p3, v3, :cond_1

    move p3, v4

    goto :goto_0

    :cond_1
    move p3, v2

    .line 9
    :goto_0
    iget-object v5, p2, Ln3/i/b/h/m/b$a;->b:Ln3/i/b/h/d$a;

    if-ne v5, v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/4 v5, 0x0

    if-eqz p3, :cond_3

    .line 10
    iget v6, p0, Ln3/i/b/h/d;->U:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    if-eqz v3, :cond_4

    .line 11
    iget v7, p0, Ln3/i/b/h/d;->U:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_4

    move v5, v4

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    if-eqz p3, :cond_6

    .line 12
    invoke-virtual {p0, v2}, Ln3/i/b/h/d;->z(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Ln3/i/b/h/d;->l:I

    if-nez v7, :cond_6

    if-nez v6, :cond_6

    .line 13
    iput-object v0, p2, Ln3/i/b/h/m/b$a;->a:Ln3/i/b/h/d$a;

    if-eqz v3, :cond_5

    .line 14
    iget p3, p0, Ln3/i/b/h/d;->m:I

    if-nez p3, :cond_5

    .line 15
    iput-object v1, p2, Ln3/i/b/h/m/b$a;->a:Ln3/i/b/h/d$a;

    :cond_5
    move p3, v2

    :cond_6
    if-eqz v3, :cond_8

    .line 16
    invoke-virtual {p0, v4}, Ln3/i/b/h/d;->z(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Ln3/i/b/h/d;->m:I

    if-nez v7, :cond_8

    if-nez v5, :cond_8

    .line 17
    iput-object v0, p2, Ln3/i/b/h/m/b$a;->b:Ln3/i/b/h/d$a;

    if-eqz p3, :cond_7

    .line 18
    iget v3, p0, Ln3/i/b/h/d;->l:I

    if-nez v3, :cond_7

    .line 19
    iput-object v1, p2, Ln3/i/b/h/m/b$a;->b:Ln3/i/b/h/d$a;

    :cond_7
    move v3, v2

    .line 20
    :cond_8
    invoke-virtual {p0}, Ln3/i/b/h/d;->E()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 21
    iput-object v1, p2, Ln3/i/b/h/m/b$a;->a:Ln3/i/b/h/d$a;

    move p3, v2

    .line 22
    :cond_9
    invoke-virtual {p0}, Ln3/i/b/h/d;->F()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 23
    iput-object v1, p2, Ln3/i/b/h/m/b$a;->b:Ln3/i/b/h/d$a;

    move v3, v2

    :cond_a
    const/4 v7, -0x1

    const/4 v8, 0x4

    if-eqz v6, :cond_f

    .line 24
    iget-object v6, p0, Ln3/i/b/h/d;->n:[I

    aget v6, v6, v2

    if-ne v6, v8, :cond_b

    .line 25
    iput-object v1, p2, Ln3/i/b/h/m/b$a;->a:Ln3/i/b/h/d$a;

    goto :goto_6

    :cond_b
    if-nez v3, :cond_f

    .line 26
    iget-object v3, p2, Ln3/i/b/h/m/b$a;->b:Ln3/i/b/h/d$a;

    if-ne v3, v1, :cond_c

    .line 27
    iget v3, p2, Ln3/i/b/h/m/b$a;->d:I

    goto :goto_4

    .line 28
    :cond_c
    iput-object v0, p2, Ln3/i/b/h/m/b$a;->a:Ln3/i/b/h/d$a;

    .line 29
    move-object v3, p1

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$a;)V

    .line 30
    iget v3, p2, Ln3/i/b/h/m/b$a;->f:I

    .line 31
    :goto_4
    iput-object v1, p2, Ln3/i/b/h/m/b$a;->a:Ln3/i/b/h/d$a;

    .line 32
    iget v6, p0, Ln3/i/b/h/d;->V:I

    if-eqz v6, :cond_e

    if-ne v6, v7, :cond_d

    goto :goto_5

    .line 33
    :cond_d
    iget v6, p0, Ln3/i/b/h/d;->U:F

    int-to-float v3, v3

    div-float/2addr v6, v3

    float-to-int v3, v6

    .line 34
    iput v3, p2, Ln3/i/b/h/m/b$a;->c:I

    goto :goto_6

    .line 35
    :cond_e
    :goto_5
    iget v6, p0, Ln3/i/b/h/d;->U:F

    int-to-float v3, v3

    mul-float/2addr v6, v3

    float-to-int v3, v6

    .line 36
    iput v3, p2, Ln3/i/b/h/m/b$a;->c:I

    :cond_f
    :goto_6
    if-eqz v5, :cond_14

    .line 37
    iget-object v3, p0, Ln3/i/b/h/d;->n:[I

    aget v3, v3, v4

    if-ne v3, v8, :cond_10

    .line 38
    iput-object v1, p2, Ln3/i/b/h/m/b$a;->b:Ln3/i/b/h/d$a;

    goto :goto_9

    :cond_10
    if-nez p3, :cond_14

    .line 39
    iget-object p3, p2, Ln3/i/b/h/m/b$a;->a:Ln3/i/b/h/d$a;

    if-ne p3, v1, :cond_11

    .line 40
    iget p3, p2, Ln3/i/b/h/m/b$a;->c:I

    goto :goto_7

    .line 41
    :cond_11
    iput-object v0, p2, Ln3/i/b/h/m/b$a;->b:Ln3/i/b/h/d$a;

    .line 42
    move-object p3, p1

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p3, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$a;)V

    .line 43
    iget p3, p2, Ln3/i/b/h/m/b$a;->e:I

    .line 44
    :goto_7
    iput-object v1, p2, Ln3/i/b/h/m/b$a;->b:Ln3/i/b/h/d$a;

    .line 45
    iget v0, p0, Ln3/i/b/h/d;->V:I

    if-eqz v0, :cond_13

    if-ne v0, v7, :cond_12

    goto :goto_8

    :cond_12
    int-to-float p3, p3

    .line 46
    iget v0, p0, Ln3/i/b/h/d;->U:F

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 47
    iput p3, p2, Ln3/i/b/h/m/b$a;->d:I

    goto :goto_9

    :cond_13
    :goto_8
    int-to-float p3, p3

    .line 48
    iget v0, p0, Ln3/i/b/h/d;->U:F

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 49
    iput p3, p2, Ln3/i/b/h/m/b$a;->d:I

    .line 50
    :cond_14
    :goto_9
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$a;)V

    .line 51
    iget p1, p2, Ln3/i/b/h/m/b$a;->e:I

    invoke-virtual {p0, p1}, Ln3/i/b/h/d;->S(I)V

    .line 52
    iget p1, p2, Ln3/i/b/h/m/b$a;->f:I

    invoke-virtual {p0, p1}, Ln3/i/b/h/d;->N(I)V

    .line 53
    iget-boolean p1, p2, Ln3/i/b/h/m/b$a;->h:Z

    .line 54
    iput-boolean p1, p0, Ln3/i/b/h/d;->A:Z

    .line 55
    iget p1, p2, Ln3/i/b/h/m/b$a;->g:I

    invoke-virtual {p0, p1}, Ln3/i/b/h/d;->K(I)V

    .line 56
    iput v2, p2, Ln3/i/b/h/m/b$a;->j:I

    .line 57
    iget-boolean p0, p2, Ln3/i/b/h/m/b$a;->i:Z

    return p0
.end method


# virtual methods
.method public G()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v0}, Ln3/i/b/d;->u()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/i/b/h/e;->N0:I

    .line 3
    iput v0, p0, Ln3/i/b/h/e;->O0:I

    .line 4
    invoke-super {p0}, Ln3/i/b/h/l;->G()V

    return-void
.end method

.method public T(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Ln3/i/b/h/d;->T(ZZ)V

    .line 2
    iget-object v0, p0, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/b/h/d;

    .line 4
    invoke-virtual {v2, p1, p2}, Ln3/i/b/h/d;->T(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public V()V
    .locals 28

    move-object/from16 v1, p0

    .line 1
    sget-object v2, Ln3/i/b/h/j;->a:[Z

    sget-object v0, Ln3/i/b/h/d$a;->c:Ln3/i/b/h/d$a;

    sget-object v3, Ln3/i/b/h/d$a;->b:Ln3/i/b/h/d$a;

    sget-object v4, Ln3/i/b/h/d$a;->a:Ln3/i/b/h/d$a;

    const/4 v5, 0x0

    iput v5, v1, Ln3/i/b/h/d;->W:I

    .line 2
    iput v5, v1, Ln3/i/b/h/d;->X:I

    .line 3
    iput-boolean v5, v1, Ln3/i/b/h/e;->U0:Z

    .line 4
    iput-boolean v5, v1, Ln3/i/b/h/e;->V0:Z

    .line 5
    iget-object v6, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->w()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->q()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 8
    iget-object v9, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v10, 0x1

    aget-object v11, v9, v10

    .line 9
    aget-object v9, v9, v5

    .line 10
    iget v12, v1, Ln3/i/b/h/e;->T0:I

    invoke-static {v12, v10}, Ln3/i/b/h/j;->b(II)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 11
    iget-object v12, v1, Ln3/i/b/h/e;->K0:Ln3/i/b/h/m/b$b;

    .line 12
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v13

    .line 13
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v14

    .line 14
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->I()V

    .line 15
    iget-object v15, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_0
    if-ge v5, v10, :cond_0

    .line 17
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ln3/i/b/h/d;

    .line 18
    invoke-virtual/range {v16 .. v16}, Ln3/i/b/h/d;->I()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    :cond_0
    iget-boolean v5, v1, Ln3/i/b/h/e;->L0:Z

    if-ne v13, v4, :cond_1

    .line 20
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->w()I

    move-result v13

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v13}, Ln3/i/b/h/d;->L(II)V

    move/from16 v17, v8

    goto :goto_1

    :cond_1
    move-object/from16 v16, v2

    const/4 v2, 0x0

    .line 21
    iget-object v13, v1, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    .line 22
    iput v2, v13, Ln3/i/b/h/c;->b:I

    move/from16 v17, v8

    const/4 v8, 0x1

    .line 23
    iput-boolean v8, v13, Ln3/i/b/h/c;->c:Z

    .line 24
    iput v2, v1, Ln3/i/b/h/d;->W:I

    :goto_1
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_2
    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v19, v7

    if-ge v8, v10, :cond_7

    .line 25
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v7, v20

    check-cast v7, Ln3/i/b/h/d;

    move-object/from16 v20, v11

    .line 26
    instance-of v11, v7, Ln3/i/b/h/g;

    if-eqz v11, :cond_5

    .line 27
    check-cast v7, Ln3/i/b/h/g;

    .line 28
    iget v11, v7, Ln3/i/b/h/g;->L0:I

    move-object/from16 v22, v3

    const/4 v3, 0x1

    if-ne v11, v3, :cond_6

    .line 29
    iget v2, v7, Ln3/i/b/h/g;->I0:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 30
    invoke-virtual {v7, v2}, Ln3/i/b/h/g;->V(I)V

    goto :goto_3

    .line 31
    :cond_2
    iget v2, v7, Ln3/i/b/h/g;->J0:I

    if-eq v2, v3, :cond_3

    .line 32
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->E()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->w()I

    move-result v2

    .line 34
    iget v3, v7, Ln3/i/b/h/g;->J0:I

    sub-int/2addr v2, v3

    .line 35
    invoke-virtual {v7, v2}, Ln3/i/b/h/g;->V(I)V

    goto :goto_3

    .line 36
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->E()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    iget v2, v7, Ln3/i/b/h/g;->H0:F

    .line 38
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->w()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v2, v2, v18

    float-to-int v2, v2

    .line 39
    invoke-virtual {v7, v2}, Ln3/i/b/h/g;->V(I)V

    :cond_4
    :goto_3
    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v22, v3

    .line 40
    instance-of v3, v7, Ln3/i/b/h/a;

    if-eqz v3, :cond_6

    .line 41
    check-cast v7, Ln3/i/b/h/a;

    .line 42
    invoke-virtual {v7}, Ln3/i/b/h/a;->X()I

    move-result v3

    if-nez v3, :cond_6

    const/4 v13, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v19

    move-object/from16 v11, v20

    move-object/from16 v3, v22

    goto :goto_2

    :cond_7
    move-object/from16 v22, v3

    move-object/from16 v20, v11

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v10, :cond_9

    .line 43
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 44
    instance-of v7, v3, Ln3/i/b/h/g;

    if-eqz v7, :cond_8

    .line 45
    check-cast v3, Ln3/i/b/h/g;

    .line 46
    iget v7, v3, Ln3/i/b/h/g;->L0:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 47
    invoke-static {v3, v12, v5}, Ln3/i/b/h/m/h;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 48
    :cond_9
    invoke-static {v1, v12, v5}, Ln3/i/b/h/m/h;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V

    if-eqz v13, :cond_b

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v10, :cond_b

    .line 49
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 50
    instance-of v7, v3, Ln3/i/b/h/a;

    if-eqz v7, :cond_a

    .line 51
    check-cast v3, Ln3/i/b/h/a;

    .line 52
    invoke-virtual {v3}, Ln3/i/b/h/a;->X()I

    move-result v7

    if-nez v7, :cond_a

    .line 53
    invoke-virtual {v3}, Ln3/i/b/h/a;->W()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 54
    invoke-static {v3, v12, v5}, Ln3/i/b/h/m/h;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    if-ne v14, v4, :cond_c

    .line 55
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->q()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ln3/i/b/h/d;->M(II)V

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    .line 56
    iget-object v2, v1, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    .line 57
    iput v3, v2, Ln3/i/b/h/c;->b:I

    const/4 v7, 0x1

    .line 58
    iput-boolean v7, v2, Ln3/i/b/h/c;->c:Z

    .line 59
    iput v3, v1, Ln3/i/b/h/d;->X:I

    :goto_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v10, :cond_13

    .line 60
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/i/b/h/d;

    .line 61
    instance-of v11, v8, Ln3/i/b/h/g;

    if-eqz v11, :cond_11

    .line 62
    check-cast v8, Ln3/i/b/h/g;

    .line 63
    iget v11, v8, Ln3/i/b/h/g;->L0:I

    if-nez v11, :cond_10

    .line 64
    iget v2, v8, Ln3/i/b/h/g;->I0:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    .line 65
    invoke-virtual {v8, v2}, Ln3/i/b/h/g;->V(I)V

    goto :goto_9

    .line 66
    :cond_d
    iget v2, v8, Ln3/i/b/h/g;->J0:I

    if-eq v2, v11, :cond_e

    .line 67
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->F()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 68
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->q()I

    move-result v2

    .line 69
    iget v13, v8, Ln3/i/b/h/g;->J0:I

    sub-int/2addr v2, v13

    .line 70
    invoke-virtual {v8, v2}, Ln3/i/b/h/g;->V(I)V

    goto :goto_9

    .line 71
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->F()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 72
    iget v2, v8, Ln3/i/b/h/g;->H0:F

    .line 73
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->q()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v2, v13

    add-float v2, v2, v18

    float-to-int v2, v2

    .line 74
    invoke-virtual {v8, v2}, Ln3/i/b/h/g;->V(I)V

    :cond_f
    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    :cond_10
    const/4 v11, -0x1

    goto :goto_a

    :cond_11
    const/4 v11, -0x1

    .line 75
    instance-of v13, v8, Ln3/i/b/h/a;

    if-eqz v13, :cond_12

    .line 76
    check-cast v8, Ln3/i/b/h/a;

    .line 77
    invoke-virtual {v8}, Ln3/i/b/h/a;->X()I

    move-result v8

    const/4 v13, 0x1

    if-ne v8, v13, :cond_12

    const/4 v3, 0x1

    :cond_12
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_13
    if-eqz v2, :cond_15

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v10, :cond_15

    .line 78
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/i/b/h/d;

    .line 79
    instance-of v8, v7, Ln3/i/b/h/g;

    if-eqz v8, :cond_14

    .line 80
    check-cast v7, Ln3/i/b/h/g;

    .line 81
    iget v8, v7, Ln3/i/b/h/g;->L0:I

    if-nez v8, :cond_14

    .line 82
    invoke-static {v7, v12}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 83
    :cond_15
    invoke-static {v1, v12}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V

    if-eqz v3, :cond_17

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v10, :cond_17

    .line 84
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 85
    instance-of v7, v3, Ln3/i/b/h/a;

    if-eqz v7, :cond_16

    .line 86
    check-cast v3, Ln3/i/b/h/a;

    .line 87
    invoke-virtual {v3}, Ln3/i/b/h/a;->X()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_16

    .line 88
    invoke-virtual {v3}, Ln3/i/b/h/a;->W()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 89
    invoke-static {v3, v12}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v10, :cond_19

    .line 90
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 91
    invoke-virtual {v3}, Ln3/i/b/h/d;->D()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-static {v3}, Ln3/i/b/h/m/h;->a(Ln3/i/b/h/d;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 92
    sget-object v7, Ln3/i/b/h/m/h;->a:Ln3/i/b/h/m/b$a;

    const/4 v8, 0x0

    invoke-static {v3, v12, v7, v8}, Ln3/i/b/h/e;->d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z

    .line 93
    invoke-static {v3, v12, v5}, Ln3/i/b/h/m/h;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Z)V

    .line 94
    invoke-static {v3, v12}, Ln3/i/b/h/m/h;->g(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;)V

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_19
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v6, :cond_1d

    .line 95
    iget-object v3, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 96
    invoke-virtual {v3}, Ln3/i/b/h/d;->D()Z

    move-result v5

    if-eqz v5, :cond_1b

    instance-of v5, v3, Ln3/i/b/h/g;

    if-nez v5, :cond_1b

    instance-of v5, v3, Ln3/i/b/h/a;

    if-nez v5, :cond_1b

    instance-of v5, v3, Ln3/i/b/h/k;

    if-nez v5, :cond_1b

    .line 97
    iget-boolean v5, v3, Ln3/i/b/h/d;->C:Z

    if-nez v5, :cond_1b

    const/4 v5, 0x0

    .line 98
    invoke-virtual {v3, v5}, Ln3/i/b/h/d;->p(I)Ln3/i/b/h/d$a;

    move-result-object v7

    const/4 v5, 0x1

    .line 99
    invoke-virtual {v3, v5}, Ln3/i/b/h/d;->p(I)Ln3/i/b/h/d$a;

    move-result-object v8

    if-ne v7, v0, :cond_1a

    .line 100
    iget v7, v3, Ln3/i/b/h/d;->l:I

    if-eq v7, v5, :cond_1a

    if-ne v8, v0, :cond_1a

    iget v7, v3, Ln3/i/b/h/d;->m:I

    if-eq v7, v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_f

    :cond_1a
    const/4 v5, 0x0

    :goto_f
    if-nez v5, :cond_1b

    .line 101
    new-instance v5, Ln3/i/b/h/m/b$a;

    invoke-direct {v5}, Ln3/i/b/h/m/b$a;-><init>()V

    .line 102
    iget-object v7, v1, Ln3/i/b/h/e;->K0:Ln3/i/b/h/m/b$b;

    const/4 v8, 0x0

    invoke-static {v3, v7, v5, v8}, Ln3/i/b/h/e;->d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1c
    move-object/from16 v16, v2

    move-object/from16 v22, v3

    move/from16 v19, v7

    move/from16 v17, v8

    move-object/from16 v20, v11

    :cond_1d
    const/4 v2, 0x2

    if-le v6, v2, :cond_54

    move-object/from16 v5, v22

    move-object/from16 v7, v20

    if-eq v9, v5, :cond_1e

    if-ne v7, v5, :cond_53

    .line 103
    :cond_1e
    iget v8, v1, Ln3/i/b/h/e;->T0:I

    const/16 v10, 0x400

    .line 104
    invoke-static {v8, v10}, Ln3/i/b/h/j;->b(II)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 105
    iget-object v8, v1, Ln3/i/b/h/e;->K0:Ln3/i/b/h/m/b$b;

    .line 106
    sget-object v10, Ln3/i/b/h/c$a;->g:Ln3/i/b/h/c$a;

    iget-object v11, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v12, :cond_21

    .line 108
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln3/i/b/h/d;

    .line 109
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v2

    .line 110
    invoke-virtual {v14}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v3

    move/from16 v21, v6

    invoke-virtual {v14}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v6

    .line 111
    invoke-static {v15, v2, v3, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->J1(Ln3/i/b/h/d$a;Ln3/i/b/h/d$a;Ln3/i/b/h/d$a;Ln3/i/b/h/d$a;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_11

    .line 112
    :cond_1f
    instance-of v2, v14, Ln3/i/b/h/f;

    if-eqz v2, :cond_20

    :goto_11
    move-object/from16 v25, v4

    move-object v4, v5

    move-object/from16 v24, v7

    move-object/from16 v23, v9

    goto/16 :goto_28

    :cond_20
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v21

    const/4 v2, 0x2

    goto :goto_10

    :cond_21
    move/from16 v21, v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    :goto_12
    if-ge v2, v12, :cond_32

    .line 113
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v24, v7

    move-object/from16 v7, v23

    check-cast v7, Ln3/i/b/h/d;

    move-object/from16 v23, v9

    .line 114
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v9

    move-object/from16 v25, v4

    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v4

    move-object/from16 v26, v5

    .line 115
    invoke-virtual {v7}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v5

    move-object/from16 v27, v0

    invoke-virtual {v7}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v0

    .line 116
    invoke-static {v9, v4, v5, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->J1(Ln3/i/b/h/d$a;Ln3/i/b/h/d$a;Ln3/i/b/h/d$a;Ln3/i/b/h/d$a;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 117
    iget-object v0, v1, Ln3/i/b/h/e;->a1:Ln3/i/b/h/m/b$a;

    const/4 v4, 0x0

    invoke-static {v7, v8, v0, v4}, Ln3/i/b/h/e;->d0(Ln3/i/b/h/d;Ln3/i/b/h/m/b$b;Ln3/i/b/h/m/b$a;I)Z

    .line 118
    :cond_22
    instance-of v0, v7, Ln3/i/b/h/g;

    if-eqz v0, :cond_26

    .line 119
    move-object v4, v7

    check-cast v4, Ln3/i/b/h/g;

    .line 120
    iget v5, v4, Ln3/i/b/h/g;->L0:I

    if-nez v5, :cond_24

    if-nez v13, :cond_23

    .line 121
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    .line 122
    :cond_23
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_24
    iget v5, v4, Ln3/i/b/h/g;->L0:I

    const/4 v9, 0x1

    if-ne v5, v9, :cond_26

    if-nez v3, :cond_25

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    :cond_25
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_26
    instance-of v4, v7, Ln3/i/b/h/i;

    if-eqz v4, :cond_2d

    .line 127
    instance-of v4, v7, Ln3/i/b/h/a;

    if-eqz v4, :cond_2a

    .line 128
    move-object v4, v7

    check-cast v4, Ln3/i/b/h/a;

    .line 129
    invoke-virtual {v4}, Ln3/i/b/h/a;->X()I

    move-result v5

    if-nez v5, :cond_28

    if-nez v6, :cond_27

    .line 130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v5

    .line 131
    :cond_27
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_28
    invoke-virtual {v4}, Ln3/i/b/h/a;->X()I

    move-result v5

    const/4 v9, 0x1

    if-ne v5, v9, :cond_2d

    if-nez v14, :cond_29

    .line 133
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 134
    :cond_29
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 135
    :cond_2a
    move-object v4, v7

    check-cast v4, Ln3/i/b/h/i;

    if-nez v6, :cond_2b

    .line 136
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 137
    :cond_2b
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v14, :cond_2c

    .line 138
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 139
    :cond_2c
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2d
    :goto_13
    iget-object v4, v7, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    iget-object v4, v4, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v4, :cond_2f

    iget-object v4, v7, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    iget-object v4, v4, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v4, :cond_2f

    if-nez v0, :cond_2f

    instance-of v4, v7, Ln3/i/b/h/a;

    if-nez v4, :cond_2f

    if-nez v15, :cond_2e

    .line 141
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 142
    :cond_2e
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_2f
    iget-object v4, v7, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    iget-object v4, v4, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v4, :cond_31

    iget-object v4, v7, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    iget-object v4, v4, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v4, :cond_31

    iget-object v4, v7, Ln3/i/b/h/d;->J:Ln3/i/b/h/c;

    iget-object v4, v4, Ln3/i/b/h/c;->f:Ln3/i/b/h/c;

    if-nez v4, :cond_31

    if-nez v0, :cond_31

    instance-of v0, v7, Ln3/i/b/h/a;

    if-nez v0, :cond_31

    if-nez v22, :cond_30

    .line 144
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    :cond_30
    move-object/from16 v0, v22

    .line 145
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v0

    :cond_31
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v9, v23

    move-object/from16 v7, v24

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v0, v27

    goto/16 :goto_12

    :cond_32
    move-object/from16 v27, v0

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v24, v7

    move-object/from16 v23, v9

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_33

    .line 147
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/g;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 148
    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_14

    :cond_33
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v6, :cond_34

    .line 149
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/i;

    .line 150
    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    move-result-object v6

    .line 151
    invoke-virtual {v3, v0, v5, v6}, Ln3/i/b/h/i;->V(Ljava/util/ArrayList;ILn3/i/b/h/m/n;)V

    .line 152
    invoke-virtual {v6, v0}, Ln3/i/b/h/m/n;->b(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_15

    .line 153
    :cond_34
    sget-object v2, Ln3/i/b/h/c$a;->b:Ln3/i/b/h/c$a;

    invoke-virtual {v1, v2}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v2

    .line 154
    iget-object v2, v2, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_35

    .line 155
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/c;

    .line 156
    iget-object v3, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_16

    .line 157
    :cond_35
    sget-object v2, Ln3/i/b/h/c$a;->d:Ln3/i/b/h/c$a;

    invoke-virtual {v1, v2}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v2

    .line 158
    iget-object v2, v2, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_36

    .line 159
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/c;

    .line 160
    iget-object v3, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_17

    .line 161
    :cond_36
    invoke-virtual {v1, v10}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v2

    .line 162
    iget-object v2, v2, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_37

    .line 163
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/c;

    .line 164
    iget-object v3, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_18

    :cond_37
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v15, :cond_38

    .line 165
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 166
    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_19

    :cond_38
    if-eqz v13, :cond_39

    .line 167
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/g;

    const/4 v5, 0x1

    .line 168
    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_1a

    :cond_39
    const/4 v5, 0x1

    if-eqz v14, :cond_3a

    .line 169
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/i;

    .line 170
    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    move-result-object v6

    .line 171
    invoke-virtual {v3, v0, v5, v6}, Ln3/i/b/h/i;->V(Ljava/util/ArrayList;ILn3/i/b/h/m/n;)V

    .line 172
    invoke-virtual {v6, v0}, Ln3/i/b/h/m/n;->b(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1b

    .line 173
    :cond_3a
    sget-object v2, Ln3/i/b/h/c$a;->c:Ln3/i/b/h/c$a;

    invoke-virtual {v1, v2}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v2

    .line 174
    iget-object v2, v2, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3b

    .line 175
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/c;

    .line 176
    iget-object v3, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_1c

    .line 177
    :cond_3b
    sget-object v2, Ln3/i/b/h/c$a;->f:Ln3/i/b/h/c$a;

    invoke-virtual {v1, v2}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v2

    .line 178
    iget-object v2, v2, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3c

    .line 179
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/c;

    .line 180
    iget-object v3, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_1d

    .line 181
    :cond_3c
    sget-object v2, Ln3/i/b/h/c$a;->e:Ln3/i/b/h/c$a;

    invoke-virtual {v1, v2}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v2

    .line 182
    iget-object v2, v2, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3d

    .line 183
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/c;

    .line 184
    iget-object v3, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_1e

    .line 185
    :cond_3d
    invoke-virtual {v1, v10}, Ln3/i/b/h/d;->n(Ln3/i/b/h/c$a;)Ln3/i/b/h/c;

    move-result-object v2

    .line 186
    iget-object v2, v2, Ln3/i/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_3e

    .line 187
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/c;

    .line 188
    iget-object v3, v3, Ln3/i/b/h/c;->d:Ln3/i/b/h/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_1f

    :cond_3e
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v22, :cond_3f

    .line 189
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 190
    invoke-static {v3, v5, v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->a0(Ln3/i/b/h/d;ILjava/util/ArrayList;Ln3/i/b/h/m/n;)Ln3/i/b/h/m/n;

    goto :goto_20

    :cond_3f
    const/4 v2, 0x0

    :goto_21
    if-ge v2, v12, :cond_42

    .line 191
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 192
    iget-object v4, v3, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v6, 0x0

    aget-object v7, v4, v6

    move-object/from16 v6, v27

    if-ne v7, v6, :cond_40

    aget-object v4, v4, v5

    if-ne v4, v6, :cond_40

    const/4 v4, 0x1

    goto :goto_22

    :cond_40
    const/4 v4, 0x0

    :goto_22
    if-eqz v4, :cond_41

    .line 193
    iget v4, v3, Ln3/i/b/h/d;->F0:I

    invoke-static {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->b0(Ljava/util/ArrayList;I)Ln3/i/b/h/m/n;

    move-result-object v4

    .line 194
    iget v3, v3, Ln3/i/b/h/d;->G0:I

    invoke-static {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->b0(Ljava/util/ArrayList;I)Ln3/i/b/h/m/n;

    move-result-object v3

    if-eqz v4, :cond_41

    if-eqz v3, :cond_41

    const/4 v5, 0x0

    .line 195
    invoke-virtual {v4, v5, v3}, Ln3/i/b/h/m/n;->d(ILn3/i/b/h/m/n;)V

    const/4 v5, 0x2

    .line 196
    iput v5, v3, Ln3/i/b/h/m/n;->c:I

    .line 197
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v27, v6

    const/4 v5, 0x1

    goto :goto_21

    .line 198
    :cond_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_43

    move-object/from16 v4, v26

    goto/16 :goto_28

    .line 199
    :cond_43
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v2

    move-object/from16 v4, v26

    if-ne v2, v4, :cond_47

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/i/b/h/m/n;

    .line 201
    iget v8, v7, Ln3/i/b/h/m/n;->c:I

    if-ne v8, v3, :cond_44

    const/4 v8, 0x0

    goto :goto_24

    .line 202
    :cond_44
    iget-object v3, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    const/4 v8, 0x0

    .line 203
    invoke-virtual {v7, v3, v8}, Ln3/i/b/h/m/n;->c(Ln3/i/b/d;I)I

    move-result v3

    if-le v3, v5, :cond_45

    move v5, v3

    move-object v6, v7

    :cond_45
    :goto_24
    const/4 v3, 0x1

    goto :goto_23

    :cond_46
    const/4 v8, 0x0

    if-eqz v6, :cond_47

    .line 204
    iget-object v2, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v25, v2, v8

    .line 205
    invoke-virtual {v1, v5}, Ln3/i/b/h/d;->S(I)V

    goto :goto_25

    :cond_47
    const/4 v6, 0x0

    .line 206
    :goto_25
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v2

    if-ne v2, v4, :cond_4b

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_48
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/i/b/h/m/n;

    .line 208
    iget v7, v5, Ln3/i/b/h/m/n;->c:I

    if-nez v7, :cond_49

    const/4 v8, 0x1

    goto :goto_26

    .line 209
    :cond_49
    iget-object v7, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    const/4 v8, 0x1

    .line 210
    invoke-virtual {v5, v7, v8}, Ln3/i/b/h/m/n;->c(Ln3/i/b/d;I)I

    move-result v7

    if-le v7, v2, :cond_48

    move-object v3, v5

    move v2, v7

    goto :goto_26

    :cond_4a
    const/4 v8, 0x1

    if-eqz v3, :cond_4b

    .line 211
    iget-object v0, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v25, v0, v8

    .line 212
    invoke-virtual {v1, v2}, Ln3/i/b/h/d;->N(I)V

    goto :goto_27

    :cond_4b
    const/4 v3, 0x0

    :goto_27
    if-nez v6, :cond_4d

    if-eqz v3, :cond_4c

    goto :goto_29

    :cond_4c
    :goto_28
    const/4 v0, 0x0

    goto :goto_2a

    :cond_4d
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    if-eqz v0, :cond_52

    move-object/from16 v2, v23

    if-ne v2, v4, :cond_4f

    .line 213
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->w()I

    move-result v0

    move/from16 v3, v19

    if-ge v3, v0, :cond_4e

    if-lez v3, :cond_4e

    .line 214
    invoke-virtual {v1, v3}, Ln3/i/b/h/d;->S(I)V

    const/4 v5, 0x1

    .line 215
    iput-boolean v5, v1, Ln3/i/b/h/e;->U0:Z

    goto :goto_2b

    .line 216
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->w()I

    move-result v7

    goto :goto_2c

    :cond_4f
    move/from16 v3, v19

    :goto_2b
    move v7, v3

    :goto_2c
    move-object/from16 v5, v24

    if-ne v5, v4, :cond_51

    .line 217
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->q()I

    move-result v0

    move/from16 v6, v17

    if-ge v6, v0, :cond_50

    if-lez v6, :cond_50

    .line 218
    invoke-virtual {v1, v6}, Ln3/i/b/h/d;->N(I)V

    const/4 v3, 0x1

    .line 219
    iput-boolean v3, v1, Ln3/i/b/h/e;->V0:Z

    goto :goto_2d

    .line 220
    :cond_50
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->q()I

    move-result v8

    goto :goto_2e

    :cond_51
    move/from16 v6, v17

    :goto_2d
    move v8, v6

    :goto_2e
    const/4 v0, 0x1

    goto :goto_30

    :cond_52
    move/from16 v6, v17

    move/from16 v3, v19

    move-object/from16 v2, v23

    move-object/from16 v5, v24

    goto :goto_2f

    :cond_53
    move-object/from16 v25, v4

    move-object v4, v5

    move/from16 v21, v6

    move-object v5, v7

    move-object v2, v9

    move/from16 v6, v17

    move/from16 v3, v19

    goto :goto_2f

    :cond_54
    move-object/from16 v25, v4

    move/from16 v21, v6

    move-object v2, v9

    move/from16 v6, v17

    move/from16 v3, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v22

    :goto_2f
    move v7, v3

    move v8, v6

    const/4 v0, 0x0

    :goto_30
    const/16 v3, 0x40

    .line 221
    invoke-virtual {v1, v3}, Ln3/i/b/h/e;->e0(I)Z

    move-result v6

    if-nez v6, :cond_56

    const/16 v6, 0x80

    invoke-virtual {v1, v6}, Ln3/i/b/h/e;->e0(I)Z

    move-result v6

    if-eqz v6, :cond_55

    goto :goto_31

    :cond_55
    const/4 v6, 0x0

    goto :goto_32

    :cond_56
    :goto_31
    const/4 v6, 0x1

    .line 222
    :goto_32
    iget-object v9, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    .line 223
    iput-boolean v10, v9, Ln3/i/b/d;->g:Z

    .line 224
    iget v10, v1, Ln3/i/b/h/e;->T0:I

    if-eqz v10, :cond_57

    if-eqz v6, :cond_57

    const/4 v6, 0x1

    .line 225
    iput-boolean v6, v9, Ln3/i/b/d;->g:Z

    .line 226
    :cond_57
    iget-object v6, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    .line 227
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v9

    if-eq v9, v4, :cond_59

    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->v()Ln3/i/b/h/d$a;

    move-result-object v9

    if-ne v9, v4, :cond_58

    goto :goto_33

    :cond_58
    const/4 v9, 0x0

    goto :goto_34

    :cond_59
    :goto_33
    const/4 v9, 0x1

    :goto_34
    const/4 v10, 0x0

    .line 228
    iput v10, v1, Ln3/i/b/h/e;->P0:I

    .line 229
    iput v10, v1, Ln3/i/b/h/e;->Q0:I

    move/from16 v11, v21

    const/4 v10, 0x0

    :goto_35
    if-ge v10, v11, :cond_5b

    .line 230
    iget-object v12, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln3/i/b/h/d;

    .line 231
    instance-of v13, v12, Ln3/i/b/h/l;

    if-eqz v13, :cond_5a

    .line 232
    check-cast v12, Ln3/i/b/h/l;

    invoke-virtual {v12}, Ln3/i/b/h/l;->V()V

    :cond_5a
    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    .line 233
    :cond_5b
    invoke-virtual {v1, v3}, Ln3/i/b/h/e;->e0(I)Z

    move-result v10

    move v12, v0

    const/4 v0, 0x0

    const/4 v13, 0x1

    :goto_36
    if-eqz v13, :cond_6b

    const/4 v14, 0x1

    add-int/lit8 v15, v0, 0x1

    .line 234
    :try_start_0
    iget-object v0, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v0}, Ln3/i/b/d;->u()V

    const/4 v14, 0x0

    .line 235
    iput v14, v1, Ln3/i/b/h/e;->P0:I

    .line 236
    iput v14, v1, Ln3/i/b/h/e;->Q0:I

    .line 237
    iget-object v0, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v1, v0}, Ln3/i/b/h/d;->l(Ln3/i/b/d;)V

    const/4 v0, 0x0

    :goto_37
    if-ge v0, v11, :cond_5c

    .line 238
    iget-object v14, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln3/i/b/h/d;

    .line 239
    iget-object v3, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v14, v3}, Ln3/i/b/h/d;->l(Ln3/i/b/d;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x40

    goto :goto_37

    .line 240
    :cond_5c
    iget-object v0, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v1, v0}, Ln3/i/b/h/e;->X(Ln3/i/b/d;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 241
    :try_start_1
    iget-object v0, v1, Ln3/i/b/h/e;->W0:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x5

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 242
    iget-object v0, v1, Ln3/i/b/h/e;->W0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/i/b/h/c;

    iget-object v13, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    iget-object v14, v1, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    invoke-virtual {v13, v14}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v13

    .line 243
    iget-object v14, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v14, v0}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v0

    .line 244
    iget-object v14, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v19, v12

    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {v14, v0, v13, v12, v3}, Ln3/i/b/d;->f(Ln3/i/b/g;Ln3/i/b/g;II)V

    const/4 v12, 0x0

    .line 245
    iput-object v12, v1, Ln3/i/b/h/e;->W0:Ljava/lang/ref/WeakReference;

    goto :goto_38

    :cond_5d
    move/from16 v19, v12

    .line 246
    :goto_38
    iget-object v0, v1, Ln3/i/b/h/e;->Y0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 247
    iget-object v0, v1, Ln3/i/b/h/e;->Y0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/i/b/h/c;

    iget-object v12, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    iget-object v13, v1, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    invoke-virtual {v12, v13}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v12

    .line 248
    iget-object v13, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v13, v0}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v0

    .line 249
    iget-object v13, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v0, v14, v3}, Ln3/i/b/d;->f(Ln3/i/b/g;Ln3/i/b/g;II)V

    const/4 v12, 0x0

    .line 250
    iput-object v12, v1, Ln3/i/b/h/e;->Y0:Ljava/lang/ref/WeakReference;

    .line 251
    :cond_5e
    iget-object v0, v1, Ln3/i/b/h/e;->X0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 252
    iget-object v0, v1, Ln3/i/b/h/e;->X0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/i/b/h/c;

    iget-object v12, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    iget-object v13, v1, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    invoke-virtual {v12, v13}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v12

    .line 253
    iget-object v13, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v13, v0}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v0

    .line 254
    iget-object v13, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    const/4 v14, 0x0

    invoke-virtual {v13, v0, v12, v14, v3}, Ln3/i/b/d;->f(Ln3/i/b/g;Ln3/i/b/g;II)V

    const/4 v12, 0x0

    .line 255
    iput-object v12, v1, Ln3/i/b/h/e;->X0:Ljava/lang/ref/WeakReference;

    goto :goto_3a

    :goto_39
    const/4 v3, 0x0

    goto :goto_3c

    .line 256
    :cond_5f
    :goto_3a
    iget-object v0, v1, Ln3/i/b/h/e;->Z0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 257
    iget-object v0, v1, Ln3/i/b/h/e;->Z0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/i/b/h/c;

    iget-object v12, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    iget-object v13, v1, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    invoke-virtual {v12, v13}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v12

    .line 258
    iget-object v13, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v13, v0}, Ln3/i/b/d;->l(Ljava/lang/Object;)Ln3/i/b/g;

    move-result-object v0

    .line 259
    iget-object v13, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v0, v14, v3}, Ln3/i/b/d;->f(Ln3/i/b/g;Ln3/i/b/g;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    .line 260
    :try_start_3
    iput-object v3, v1, Ln3/i/b/h/e;->Z0:Ljava/lang/ref/WeakReference;

    goto :goto_3b

    :catch_0
    move-exception v0

    goto :goto_39

    :cond_60
    const/4 v3, 0x0

    .line 261
    :goto_3b
    iget-object v0, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v0}, Ln3/i/b/d;->q()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v13, 0x1

    goto :goto_3e

    :catch_1
    move-exception v0

    goto :goto_3c

    :catch_2
    move-exception v0

    move/from16 v19, v12

    goto :goto_39

    :goto_3c
    const/4 v13, 0x1

    goto :goto_3d

    :catch_3
    move-exception v0

    move/from16 v19, v12

    const/4 v3, 0x0

    .line 262
    :goto_3d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EXCEPTION : "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3e
    if-eqz v13, :cond_61

    .line 264
    iget-object v0, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    const/4 v3, 0x2

    const/4 v12, 0x0

    .line 265
    aput-boolean v12, v16, v3

    const/16 v3, 0x40

    .line 266
    invoke-virtual {v1, v3}, Ln3/i/b/h/e;->e0(I)Z

    move-result v12

    .line 267
    invoke-virtual {v1, v0, v12}, Ln3/i/b/h/d;->U(Ln3/i/b/d;Z)V

    .line 268
    iget-object v13, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_3f
    if-ge v14, v13, :cond_62

    .line 269
    iget-object v3, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 270
    invoke-virtual {v3, v0, v12}, Ln3/i/b/h/d;->U(Ln3/i/b/d;Z)V

    add-int/lit8 v14, v14, 0x1

    const/16 v3, 0x40

    goto :goto_3f

    .line 271
    :cond_61
    iget-object v0, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v1, v0, v10}, Ln3/i/b/h/d;->U(Ln3/i/b/d;Z)V

    const/4 v0, 0x0

    :goto_40
    if-ge v0, v11, :cond_62

    .line 272
    iget-object v3, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/b/h/d;

    .line 273
    iget-object v12, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    invoke-virtual {v3, v12, v10}, Ln3/i/b/h/d;->U(Ln3/i/b/d;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_62
    if-eqz v9, :cond_65

    const/16 v0, 0x8

    if-ge v15, v0, :cond_65

    const/4 v3, 0x2

    .line 274
    aget-boolean v0, v16, v3

    if-eqz v0, :cond_65

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_41
    if-ge v0, v11, :cond_63

    .line 275
    iget-object v14, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln3/i/b/h/d;

    .line 276
    iget v3, v14, Ln3/i/b/h/d;->W:I

    invoke-virtual {v14}, Ln3/i/b/h/d;->w()I

    move-result v21

    add-int v3, v21, v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 277
    iget v3, v14, Ln3/i/b/h/d;->X:I

    invoke-virtual {v14}, Ln3/i/b/h/d;->q()I

    move-result v14

    add-int/2addr v14, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x2

    goto :goto_41

    .line 278
    :cond_63
    iget v0, v1, Ln3/i/b/h/d;->d0:I

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 279
    iget v3, v1, Ln3/i/b/h/d;->e0:I

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v2, v4, :cond_64

    .line 280
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->w()I

    move-result v12

    if-ge v12, v0, :cond_64

    .line 281
    invoke-virtual {v1, v0}, Ln3/i/b/h/d;->S(I)V

    .line 282
    iget-object v0, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v12, 0x0

    aput-object v4, v0, v12

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_42

    :cond_64
    const/4 v0, 0x0

    :goto_42
    if-ne v5, v4, :cond_66

    .line 283
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->q()I

    move-result v12

    if-ge v12, v3, :cond_66

    .line 284
    invoke-virtual {v1, v3}, Ln3/i/b/h/d;->N(I)V

    .line 285
    iget-object v0, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/4 v0, 0x1

    const/16 v19, 0x1

    goto :goto_43

    :cond_65
    const/4 v0, 0x0

    .line 286
    :cond_66
    :goto_43
    iget v3, v1, Ln3/i/b/h/d;->d0:I

    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->w()I

    move-result v12

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 287
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->w()I

    move-result v12

    if-le v3, v12, :cond_67

    .line 288
    invoke-virtual {v1, v3}, Ln3/i/b/h/d;->S(I)V

    .line 289
    iget-object v0, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v3, 0x0

    aput-object v25, v0, v3

    const/4 v0, 0x1

    const/16 v19, 0x1

    .line 290
    :cond_67
    iget v3, v1, Ln3/i/b/h/d;->e0:I

    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->q()I

    move-result v12

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 291
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->q()I

    move-result v12

    if-le v3, v12, :cond_68

    .line 292
    invoke-virtual {v1, v3}, Ln3/i/b/h/d;->N(I)V

    .line 293
    iget-object v0, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v3, 0x1

    aput-object v25, v0, v3

    move v0, v3

    move/from16 v19, v0

    goto :goto_44

    :cond_68
    const/4 v3, 0x1

    :goto_44
    if-nez v19, :cond_6a

    .line 294
    iget-object v12, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    if-ne v12, v4, :cond_69

    if-lez v7, :cond_69

    .line 295
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->w()I

    move-result v12

    if-le v12, v7, :cond_69

    .line 296
    iput-boolean v3, v1, Ln3/i/b/h/e;->U0:Z

    .line 297
    iget-object v0, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v25, v0, v13

    .line 298
    invoke-virtual {v1, v7}, Ln3/i/b/h/d;->S(I)V

    move v0, v3

    move/from16 v19, v0

    .line 299
    :cond_69
    iget-object v12, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aget-object v12, v12, v3

    if-ne v12, v4, :cond_6a

    if-lez v8, :cond_6a

    .line 300
    invoke-virtual/range {p0 .. p0}, Ln3/i/b/h/d;->q()I

    move-result v12

    if-le v12, v8, :cond_6a

    .line 301
    iput-boolean v3, v1, Ln3/i/b/h/e;->V0:Z

    .line 302
    iget-object v0, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v25, v0, v3

    .line 303
    invoke-virtual {v1, v8}, Ln3/i/b/h/d;->N(I)V

    const/4 v12, 0x1

    const/4 v13, 0x1

    goto :goto_45

    :cond_6a
    move v13, v0

    move/from16 v12, v19

    :goto_45
    move v0, v15

    const/16 v3, 0x40

    goto/16 :goto_36

    :cond_6b
    move/from16 v19, v12

    .line 304
    iput-object v6, v1, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    if-eqz v19, :cond_6c

    .line 305
    iget-object v0, v1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 306
    aput-object v5, v0, v2

    .line 307
    :cond_6c
    iget-object v0, v1, Ln3/i/b/h/e;->M0:Ln3/i/b/d;

    .line 308
    iget-object v0, v0, Ln3/i/b/d;->l:Ln3/i/b/c;

    .line 309
    invoke-virtual {v1, v0}, Ln3/i/b/h/l;->J(Ln3/i/b/c;)V

    return-void
.end method

.method public W(Ln3/i/b/h/d;I)V
    .locals 5

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 1
    iget p2, p0, Ln3/i/b/h/e;->P0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Ln3/i/b/h/e;->S0:[Ln3/i/b/h/b;

    array-length v2, v1

    if-lt p2, v2, :cond_0

    .line 2
    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    .line 3
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ln3/i/b/h/b;

    iput-object p2, p0, Ln3/i/b/h/e;->S0:[Ln3/i/b/h/b;

    .line 4
    :cond_0
    iget-object p2, p0, Ln3/i/b/h/e;->S0:[Ln3/i/b/h/b;

    iget v1, p0, Ln3/i/b/h/e;->P0:I

    new-instance v2, Ln3/i/b/h/b;

    const/4 v3, 0x0

    .line 5
    iget-boolean v4, p0, Ln3/i/b/h/e;->L0:Z

    .line 6
    invoke-direct {v2, p1, v3, v4}, Ln3/i/b/h/b;-><init>(Ln3/i/b/h/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    .line 7
    iput v1, p0, Ln3/i/b/h/e;->P0:I

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    .line 8
    iget p2, p0, Ln3/i/b/h/e;->Q0:I

    add-int/2addr p2, v0

    iget-object v1, p0, Ln3/i/b/h/e;->R0:[Ln3/i/b/h/b;

    array-length v2, v1

    if-lt p2, v2, :cond_2

    .line 9
    array-length p2, v1

    mul-int/lit8 p2, p2, 0x2

    .line 10
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ln3/i/b/h/b;

    iput-object p2, p0, Ln3/i/b/h/e;->R0:[Ln3/i/b/h/b;

    .line 11
    :cond_2
    iget-object p2, p0, Ln3/i/b/h/e;->R0:[Ln3/i/b/h/b;

    iget v1, p0, Ln3/i/b/h/e;->Q0:I

    new-instance v2, Ln3/i/b/h/b;

    .line 12
    iget-boolean v3, p0, Ln3/i/b/h/e;->L0:Z

    .line 13
    invoke-direct {v2, p1, v0, v3}, Ln3/i/b/h/b;-><init>(Ln3/i/b/h/d;IZ)V

    aput-object v2, p2, v1

    add-int/2addr v1, v0

    .line 14
    iput v1, p0, Ln3/i/b/h/e;->Q0:I

    :cond_3
    :goto_0
    return-void
.end method

.method public X(Ln3/i/b/d;)Z
    .locals 14

    .line 1
    sget-object v0, Ln3/i/b/h/d$a;->a:Ln3/i/b/h/d$a;

    sget-object v1, Ln3/i/b/h/d$a;->b:Ln3/i/b/h/d$a;

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ln3/i/b/h/e;->e0(I)Z

    move-result v2

    .line 2
    invoke-virtual {p0, p1, v2}, Ln3/i/b/h/d;->f(Ln3/i/b/d;Z)V

    .line 3
    iget-object v3, p0, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v3, :cond_1

    .line 4
    iget-object v8, p0, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/i/b/h/d;

    .line 5
    iget-object v9, v8, Ln3/i/b/h/d;->P:[Z

    aput-boolean v4, v9, v4

    .line 6
    aput-boolean v4, v9, v7

    .line 7
    instance-of v8, v8, Ln3/i/b/h/a;

    if-eqz v8, :cond_0

    move v6, v7

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_7

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_7

    .line 8
    iget-object v6, p0, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/i/b/h/d;

    .line 9
    instance-of v8, v6, Ln3/i/b/h/a;

    if-eqz v8, :cond_6

    .line 10
    check-cast v6, Ln3/i/b/h/a;

    move v8, v4

    .line 11
    :goto_2
    iget v9, v6, Ln3/i/b/h/i;->I0:I

    if-ge v8, v9, :cond_6

    .line 12
    iget-object v9, v6, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    aget-object v9, v9, v8

    .line 13
    iget v10, v6, Ln3/i/b/h/a;->J0:I

    if-eqz v10, :cond_4

    if-ne v10, v7, :cond_2

    goto :goto_3

    :cond_2
    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 14
    :cond_3
    iget-object v9, v9, Ln3/i/b/h/d;->P:[Z

    aput-boolean v7, v9, v7

    goto :goto_4

    .line 15
    :cond_4
    :goto_3
    iget-object v9, v9, Ln3/i/b/h/d;->P:[Z

    aput-boolean v7, v9, v4

    :cond_5
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    move v5, v4

    :goto_5
    if-ge v5, v3, :cond_9

    .line 16
    iget-object v6, p0, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/i/b/h/d;

    .line 17
    invoke-virtual {v6}, Ln3/i/b/h/d;->e()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 18
    invoke-virtual {v6, p1, v2}, Ln3/i/b/h/d;->f(Ln3/i/b/d;Z)V

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 19
    :cond_9
    sget-boolean v5, Ln3/i/b/d;->p:Z

    if-eqz v5, :cond_d

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v5, v4

    :goto_6
    if-ge v5, v3, :cond_b

    .line 21
    iget-object v6, p0, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/i/b/h/d;

    .line 22
    invoke-virtual {v6}, Ln3/i/b/h/d;->e()Z

    move-result v8

    if-nez v8, :cond_a

    .line 23
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 24
    :cond_b
    invoke-virtual {p0}, Ln3/i/b/h/d;->r()Ln3/i/b/h/d$a;

    move-result-object v3

    if-ne v3, v1, :cond_c

    move v12, v4

    goto :goto_7

    :cond_c
    move v12, v7

    :goto_7
    const/4 v13, 0x0

    move-object v8, p0

    move-object v9, p0

    move-object v10, p1

    move-object v11, v0

    .line 25
    invoke-virtual/range {v8 .. v13}, Ln3/i/b/h/d;->d(Ln3/i/b/h/e;Ln3/i/b/d;Ljava/util/HashSet;IZ)V

    .line 26
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/d;

    .line 27
    invoke-static {p0, p1, v1}, Ln3/i/b/h/j;->a(Ln3/i/b/h/e;Ln3/i/b/d;Ln3/i/b/h/d;)V

    .line 28
    invoke-virtual {v1, p1, v2}, Ln3/i/b/h/d;->f(Ln3/i/b/d;Z)V

    goto :goto_8

    :cond_d
    move v5, v4

    :goto_9
    if-ge v5, v3, :cond_13

    .line 29
    iget-object v6, p0, Ln3/i/b/h/l;->H0:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/i/b/h/d;

    .line 30
    instance-of v8, v6, Ln3/i/b/h/e;

    if-eqz v8, :cond_11

    .line 31
    iget-object v8, v6, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aget-object v9, v8, v4

    .line 32
    aget-object v10, v8, v7

    if-ne v9, v1, :cond_e

    .line 33
    aput-object v0, v8, v4

    :cond_e
    if-ne v10, v1, :cond_f

    .line 34
    aput-object v0, v8, v7

    .line 35
    :cond_f
    invoke-virtual {v6, p1, v2}, Ln3/i/b/h/d;->f(Ln3/i/b/d;Z)V

    if-ne v9, v1, :cond_10

    .line 36
    invoke-virtual {v6, v9}, Ln3/i/b/h/d;->O(Ln3/i/b/h/d$a;)V

    :cond_10
    if-ne v10, v1, :cond_12

    .line 37
    invoke-virtual {v6, v10}, Ln3/i/b/h/d;->R(Ln3/i/b/h/d$a;)V

    goto :goto_a

    .line 38
    :cond_11
    invoke-static {p0, p1, v6}, Ln3/i/b/h/j;->a(Ln3/i/b/h/e;Ln3/i/b/d;Ln3/i/b/h/d;)V

    .line 39
    invoke-virtual {v6}, Ln3/i/b/h/d;->e()Z

    move-result v8

    if-nez v8, :cond_12

    .line 40
    invoke-virtual {v6, p1, v2}, Ln3/i/b/h/d;->f(Ln3/i/b/d;Z)V

    :cond_12
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 41
    :cond_13
    iget v0, p0, Ln3/i/b/h/e;->P0:I

    const/4 v1, 0x0

    if-lez v0, :cond_14

    .line 42
    invoke-static {p0, p1, v1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->d(Ln3/i/b/h/e;Ln3/i/b/d;Ljava/util/ArrayList;I)V

    .line 43
    :cond_14
    iget v0, p0, Ln3/i/b/h/e;->Q0:I

    if-lez v0, :cond_15

    .line 44
    invoke-static {p0, p1, v1, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->d(Ln3/i/b/h/e;Ln3/i/b/d;Ljava/util/ArrayList;I)V

    :cond_15
    return v7
.end method

.method public Y(Ln3/i/b/h/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/b/h/e;->Z0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ln3/i/b/h/c;->d()I

    move-result v0

    iget-object v1, p0, Ln3/i/b/h/e;->Z0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/c;

    invoke-virtual {v1}, Ln3/i/b/h/c;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln3/i/b/h/e;->Z0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public Z(Ln3/i/b/h/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/b/h/e;->Y0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ln3/i/b/h/c;->d()I

    move-result v0

    iget-object v1, p0, Ln3/i/b/h/e;->Y0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/c;

    invoke-virtual {v1}, Ln3/i/b/h/c;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln3/i/b/h/e;->Y0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public a0(Ln3/i/b/h/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/b/h/e;->W0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ln3/i/b/h/c;->d()I

    move-result v0

    iget-object v1, p0, Ln3/i/b/h/e;->W0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/i/b/h/c;

    invoke-virtual {v1}, Ln3/i/b/h/c;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln3/i/b/h/e;->W0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public b0(ZI)Z
    .locals 13

    .line 1
    iget-object v0, p0, Ln3/i/b/h/e;->J0:Ln3/i/b/h/m/e;

    .line 2
    sget-object v1, Ln3/i/b/h/d$a;->d:Ln3/i/b/h/d$a;

    sget-object v2, Ln3/i/b/h/d$a;->b:Ln3/i/b/h/d$a;

    sget-object v3, Ln3/i/b/h/d$a;->a:Ln3/i/b/h/d$a;

    const/4 v4, 0x1

    and-int/2addr p1, v4

    .line 3
    iget-object v5, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ln3/i/b/h/d;->p(I)Ln3/i/b/h/d$a;

    move-result-object v5

    .line 4
    iget-object v7, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {v7, v4}, Ln3/i/b/h/d;->p(I)Ln3/i/b/h/d$a;

    move-result-object v7

    .line 5
    iget-object v8, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {v8}, Ln3/i/b/h/d;->x()I

    move-result v8

    .line 6
    iget-object v9, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {v9}, Ln3/i/b/h/d;->y()I

    move-result v9

    if-eqz p1, :cond_4

    if-eq v5, v2, :cond_0

    if-ne v7, v2, :cond_4

    .line 7
    :cond_0
    iget-object v10, v0, Ln3/i/b/h/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ln3/i/b/h/m/o;

    .line 8
    iget v12, v11, Ln3/i/b/h/m/o;->f:I

    if-ne v12, p2, :cond_1

    .line 9
    invoke-virtual {v11}, Ln3/i/b/h/m/o;->k()Z

    move-result v11

    if-nez v11, :cond_1

    move p1, v6

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    if-ne v5, v2, :cond_4

    .line 10
    iget-object p1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    .line 11
    iget-object v2, p1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v3, v2, v6

    .line 12
    invoke-virtual {v0, p1, v6}, Ln3/i/b/h/m/e;->d(Ln3/i/b/h/e;I)I

    move-result v2

    invoke-virtual {p1, v2}, Ln3/i/b/h/d;->S(I)V

    .line 13
    iget-object p1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v2, p1, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v2, v2, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    invoke-virtual {p1}, Ln3/i/b/h/d;->w()I

    move-result p1

    invoke-virtual {v2, p1}, Ln3/i/b/h/m/g;->c(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    if-ne v7, v2, :cond_4

    .line 14
    iget-object p1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    .line 15
    iget-object v2, p1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aput-object v3, v2, v4

    .line 16
    invoke-virtual {v0, p1, v4}, Ln3/i/b/h/m/e;->d(Ln3/i/b/h/e;I)I

    move-result v2

    invoke-virtual {p1, v2}, Ln3/i/b/h/d;->N(I)V

    .line 17
    iget-object p1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v2, p1, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v2, v2, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    invoke-virtual {p1}, Ln3/i/b/h/d;->q()I

    move-result p1

    invoke-virtual {v2, p1}, Ln3/i/b/h/m/g;->c(I)V

    :cond_4
    :goto_0
    if-nez p2, :cond_6

    .line 18
    iget-object p1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v2, p1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aget-object v9, v2, v6

    if-eq v9, v3, :cond_5

    aget-object v2, v2, v6

    if-ne v2, v1, :cond_7

    .line 19
    :cond_5
    invoke-virtual {p1}, Ln3/i/b/h/d;->w()I

    move-result p1

    add-int/2addr p1, v8

    .line 20
    iget-object v1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v1, v1, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v1, v1, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-virtual {v1, p1}, Ln3/i/b/h/m/f;->c(I)V

    .line 21
    iget-object v1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v1, v1, Ln3/i/b/h/d;->d:Ln3/i/b/h/m/k;

    iget-object v1, v1, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    sub-int/2addr p1, v8

    invoke-virtual {v1, p1}, Ln3/i/b/h/m/g;->c(I)V

    goto :goto_2

    .line 22
    :cond_6
    iget-object p1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v2, p1, Ln3/i/b/h/d;->Q:[Ln3/i/b/h/d$a;

    aget-object v8, v2, v4

    if-eq v8, v3, :cond_8

    aget-object v2, v2, v4

    if-ne v2, v1, :cond_7

    goto :goto_1

    :cond_7
    move p1, v6

    goto :goto_3

    .line 23
    :cond_8
    :goto_1
    invoke-virtual {p1}, Ln3/i/b/h/d;->q()I

    move-result p1

    add-int/2addr p1, v9

    .line 24
    iget-object v1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v1, v1, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v1, v1, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    invoke-virtual {v1, p1}, Ln3/i/b/h/m/f;->c(I)V

    .line 25
    iget-object v1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    iget-object v1, v1, Ln3/i/b/h/d;->e:Ln3/i/b/h/m/m;

    iget-object v1, v1, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    sub-int/2addr p1, v9

    invoke-virtual {v1, p1}, Ln3/i/b/h/m/g;->c(I)V

    :goto_2
    move p1, v4

    .line 26
    :goto_3
    invoke-virtual {v0}, Ln3/i/b/h/m/e;->g()V

    .line 27
    iget-object v1, v0, Ln3/i/b/h/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/b/h/m/o;

    .line 28
    iget v3, v2, Ln3/i/b/h/m/o;->f:I

    if-eq v3, p2, :cond_9

    goto :goto_4

    .line 29
    :cond_9
    iget-object v3, v2, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v8, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    if-ne v3, v8, :cond_a

    iget-boolean v3, v2, Ln3/i/b/h/m/o;->g:Z

    if-nez v3, :cond_a

    goto :goto_4

    .line 30
    :cond_a
    invoke-virtual {v2}, Ln3/i/b/h/m/o;->e()V

    goto :goto_4

    .line 31
    :cond_b
    iget-object v1, v0, Ln3/i/b/h/m/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/b/h/m/o;

    .line 32
    iget v3, v2, Ln3/i/b/h/m/o;->f:I

    if-eq v3, p2, :cond_d

    goto :goto_5

    :cond_d
    if-nez p1, :cond_e

    .line 33
    iget-object v3, v2, Ln3/i/b/h/m/o;->b:Ln3/i/b/h/d;

    iget-object v8, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    if-ne v3, v8, :cond_e

    goto :goto_5

    .line 34
    :cond_e
    iget-object v3, v2, Ln3/i/b/h/m/o;->h:Ln3/i/b/h/m/f;

    iget-boolean v3, v3, Ln3/i/b/h/m/f;->j:Z

    if-nez v3, :cond_f

    goto :goto_6

    .line 35
    :cond_f
    iget-object v3, v2, Ln3/i/b/h/m/o;->i:Ln3/i/b/h/m/f;

    iget-boolean v3, v3, Ln3/i/b/h/m/f;->j:Z

    if-nez v3, :cond_10

    goto :goto_6

    .line 36
    :cond_10
    instance-of v3, v2, Ln3/i/b/h/m/c;

    if-nez v3, :cond_c

    iget-object v2, v2, Ln3/i/b/h/m/o;->e:Ln3/i/b/h/m/g;

    iget-boolean v2, v2, Ln3/i/b/h/m/f;->j:Z

    if-nez v2, :cond_c

    :goto_6
    move v4, v6

    .line 37
    :cond_11
    iget-object p1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {p1, v5}, Ln3/i/b/h/d;->O(Ln3/i/b/h/d$a;)V

    .line 38
    iget-object p1, v0, Ln3/i/b/h/m/e;->a:Ln3/i/b/h/e;

    invoke-virtual {p1, v7}, Ln3/i/b/h/d;->R(Ln3/i/b/h/d$a;)V

    return v4
.end method

.method public c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/i/b/h/e;->J0:Ln3/i/b/h/m/e;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Ln3/i/b/h/m/e;->b:Z

    return-void
.end method

.method public e0(I)Z
    .locals 1

    .line 1
    iget v0, p0, Ln3/i/b/h/e;->T0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f0(Ln3/i/b/h/m/b$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ln3/i/b/h/e;->K0:Ln3/i/b/h/m/b$b;

    .line 2
    iget-object v0, p0, Ln3/i/b/h/e;->J0:Ln3/i/b/h/m/e;

    .line 3
    iput-object p1, v0, Ln3/i/b/h/m/e;->f:Ln3/i/b/h/m/b$b;

    return-void
.end method

.method public g0(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/i/b/h/e;->T0:I

    const/16 p1, 0x200

    .line 2
    invoke-virtual {p0, p1}, Ln3/i/b/h/e;->e0(I)Z

    move-result p1

    sput-boolean p1, Ln3/i/b/d;->p:Z

    return-void
.end method
