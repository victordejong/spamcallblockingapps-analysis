.class public Lf/f/b/k/f;
.super Lf/f/b/k/l;
.source "SourceFile"


# instance fields
.field A0:[Lf/f/b/k/c;

.field B0:[Lf/f/b/k/c;

.field private C0:I

.field private D0:Z

.field private E0:Z

.field private F0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lf/f/b/k/d;",
            ">;"
        }
    .end annotation
.end field

.field private G0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lf/f/b/k/d;",
            ">;"
        }
    .end annotation
.end field

.field private H0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lf/f/b/k/d;",
            ">;"
        }
    .end annotation
.end field

.field private I0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lf/f/b/k/d;",
            ">;"
        }
    .end annotation
.end field

.field public J0:Lf/f/b/k/m/b$a;

.field q0:Lf/f/b/k/m/b;

.field public r0:Lf/f/b/k/m/e;

.field protected s0:Lf/f/b/k/m/b$b;

.field private t0:Z

.field public u0:Lf/f/b/e;

.field protected v0:Lf/f/b/d;

.field w0:I

.field x0:I

.field public y0:I

.field public z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lf/f/b/k/l;-><init>()V

    .line 2
    new-instance v0, Lf/f/b/k/m/b;

    invoke-direct {v0, p0}, Lf/f/b/k/m/b;-><init>(Lf/f/b/k/f;)V

    iput-object v0, p0, Lf/f/b/k/f;->q0:Lf/f/b/k/m/b;

    .line 3
    new-instance v0, Lf/f/b/k/m/e;

    invoke-direct {v0, p0}, Lf/f/b/k/m/e;-><init>(Lf/f/b/k/f;)V

    iput-object v0, p0, Lf/f/b/k/f;->r0:Lf/f/b/k/m/e;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lf/f/b/k/f;->s0:Lf/f/b/k/m/b$b;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lf/f/b/k/f;->t0:Z

    .line 6
    new-instance v2, Lf/f/b/d;

    invoke-direct {v2}, Lf/f/b/d;-><init>()V

    iput-object v2, p0, Lf/f/b/k/f;->v0:Lf/f/b/d;

    .line 7
    iput v1, p0, Lf/f/b/k/f;->y0:I

    .line 8
    iput v1, p0, Lf/f/b/k/f;->z0:I

    const/4 v2, 0x4

    new-array v3, v2, [Lf/f/b/k/c;

    .line 9
    iput-object v3, p0, Lf/f/b/k/f;->A0:[Lf/f/b/k/c;

    new-array v2, v2, [Lf/f/b/k/c;

    .line 10
    iput-object v2, p0, Lf/f/b/k/f;->B0:[Lf/f/b/k/c;

    const/16 v2, 0x101

    .line 11
    iput v2, p0, Lf/f/b/k/f;->C0:I

    .line 12
    iput-boolean v1, p0, Lf/f/b/k/f;->D0:Z

    .line 13
    iput-boolean v1, p0, Lf/f/b/k/f;->E0:Z

    .line 14
    iput-object v0, p0, Lf/f/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    .line 15
    iput-object v0, p0, Lf/f/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    .line 16
    iput-object v0, p0, Lf/f/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    .line 17
    iput-object v0, p0, Lf/f/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    .line 18
    new-instance v0, Lf/f/b/k/m/b$a;

    invoke-direct {v0}, Lf/f/b/k/m/b$a;-><init>()V

    iput-object v0, p0, Lf/f/b/k/f;->J0:Lf/f/b/k/m/b$a;

    return-void
.end method

.method public static A1(Lf/f/b/k/e;Lf/f/b/k/m/b$b;Lf/f/b/k/m/b$a;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lf/f/b/k/e;->y()Lf/f/b/k/e$b;

    move-result-object v1

    iput-object v1, p2, Lf/f/b/k/m/b$a;->a:Lf/f/b/k/e$b;

    .line 2
    invoke-virtual {p0}, Lf/f/b/k/e;->O()Lf/f/b/k/e$b;

    move-result-object v1

    iput-object v1, p2, Lf/f/b/k/m/b$a;->b:Lf/f/b/k/e$b;

    .line 3
    invoke-virtual {p0}, Lf/f/b/k/e;->R()I

    move-result v1

    iput v1, p2, Lf/f/b/k/m/b$a;->c:I

    .line 4
    invoke-virtual {p0}, Lf/f/b/k/e;->v()I

    move-result v1

    iput v1, p2, Lf/f/b/k/m/b$a;->d:I

    .line 5
    iput-boolean v0, p2, Lf/f/b/k/m/b$a;->i:Z

    .line 6
    iput p3, p2, Lf/f/b/k/m/b$a;->j:I

    .line 7
    iget-object p3, p2, Lf/f/b/k/m/b$a;->a:Lf/f/b/k/e$b;

    sget-object v1, Lf/f/b/k/e$b;->MATCH_CONSTRAINT:Lf/f/b/k/e$b;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 8
    :goto_0
    iget-object v3, p2, Lf/f/b/k/m/b$a;->b:Lf/f/b/k/e$b;

    if-ne v3, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_3

    .line 9
    iget v4, p0, Lf/f/b/k/e;->U:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 10
    iget v5, p0, Lf/f/b/k/e;->U:F

    cmpl-float v3, v5, v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz p3, :cond_6

    .line 11
    invoke-virtual {p0, v0}, Lf/f/b/k/e;->V(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Lf/f/b/k/e;->n:I

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 12
    sget-object p3, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    iput-object p3, p2, Lf/f/b/k/m/b$a;->a:Lf/f/b/k/e$b;

    if-eqz v1, :cond_5

    .line 13
    iget p3, p0, Lf/f/b/k/e;->o:I

    if-nez p3, :cond_5

    .line 14
    sget-object p3, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    iput-object p3, p2, Lf/f/b/k/m/b$a;->a:Lf/f/b/k/e$b;

    :cond_5
    const/4 p3, 0x0

    :cond_6
    if-eqz v1, :cond_8

    .line 15
    invoke-virtual {p0, v2}, Lf/f/b/k/e;->V(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, p0, Lf/f/b/k/e;->o:I

    if-nez v5, :cond_8

    if-nez v3, :cond_8

    .line 16
    sget-object v1, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    iput-object v1, p2, Lf/f/b/k/m/b$a;->b:Lf/f/b/k/e$b;

    if-eqz p3, :cond_7

    .line 17
    iget v1, p0, Lf/f/b/k/e;->n:I

    if-nez v1, :cond_7

    .line 18
    sget-object v1, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    iput-object v1, p2, Lf/f/b/k/m/b$a;->b:Lf/f/b/k/e$b;

    :cond_7
    const/4 v1, 0x0

    .line 19
    :cond_8
    invoke-virtual {p0}, Lf/f/b/k/e;->e0()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 20
    sget-object p3, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    iput-object p3, p2, Lf/f/b/k/m/b$a;->a:Lf/f/b/k/e$b;

    const/4 p3, 0x0

    .line 21
    :cond_9
    invoke-virtual {p0}, Lf/f/b/k/e;->f0()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 22
    sget-object v1, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    iput-object v1, p2, Lf/f/b/k/m/b$a;->b:Lf/f/b/k/e$b;

    const/4 v1, 0x0

    :cond_a
    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eqz v4, :cond_f

    .line 23
    iget-object v4, p0, Lf/f/b/k/e;->p:[I

    aget v0, v4, v0

    if-ne v0, v6, :cond_b

    .line 24
    sget-object v0, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    iput-object v0, p2, Lf/f/b/k/m/b$a;->a:Lf/f/b/k/e$b;

    goto :goto_6

    :cond_b
    if-nez v1, :cond_f

    .line 25
    iget-object v0, p2, Lf/f/b/k/m/b$a;->b:Lf/f/b/k/e$b;

    sget-object v1, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    if-ne v0, v1, :cond_c

    .line 26
    iget v0, p2, Lf/f/b/k/m/b$a;->d:I

    goto :goto_4

    .line 27
    :cond_c
    sget-object v0, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    iput-object v0, p2, Lf/f/b/k/m/b$a;->a:Lf/f/b/k/e$b;

    .line 28
    invoke-interface {p1, p0, p2}, Lf/f/b/k/m/b$b;->b(Lf/f/b/k/e;Lf/f/b/k/m/b$a;)V

    .line 29
    iget v0, p2, Lf/f/b/k/m/b$a;->f:I

    .line 30
    :goto_4
    iput-object v1, p2, Lf/f/b/k/m/b$a;->a:Lf/f/b/k/e$b;

    .line 31
    iget v1, p0, Lf/f/b/k/e;->V:I

    if-eqz v1, :cond_e

    if-ne v1, v5, :cond_d

    goto :goto_5

    .line 32
    :cond_d
    invoke-virtual {p0}, Lf/f/b/k/e;->t()F

    move-result v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p2, Lf/f/b/k/m/b$a;->c:I

    goto :goto_6

    .line 33
    :cond_e
    :goto_5
    invoke-virtual {p0}, Lf/f/b/k/e;->t()F

    move-result v1

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p2, Lf/f/b/k/m/b$a;->c:I

    :cond_f
    :goto_6
    if-eqz v3, :cond_14

    .line 34
    iget-object v0, p0, Lf/f/b/k/e;->p:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_10

    .line 35
    sget-object p3, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    iput-object p3, p2, Lf/f/b/k/m/b$a;->b:Lf/f/b/k/e$b;

    goto :goto_9

    :cond_10
    if-nez p3, :cond_14

    .line 36
    iget-object p3, p2, Lf/f/b/k/m/b$a;->a:Lf/f/b/k/e$b;

    sget-object v0, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    if-ne p3, v0, :cond_11

    .line 37
    iget p3, p2, Lf/f/b/k/m/b$a;->c:I

    goto :goto_7

    .line 38
    :cond_11
    sget-object p3, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    iput-object p3, p2, Lf/f/b/k/m/b$a;->b:Lf/f/b/k/e$b;

    .line 39
    invoke-interface {p1, p0, p2}, Lf/f/b/k/m/b$b;->b(Lf/f/b/k/e;Lf/f/b/k/m/b$a;)V

    .line 40
    iget p3, p2, Lf/f/b/k/m/b$a;->e:I

    .line 41
    :goto_7
    iput-object v0, p2, Lf/f/b/k/m/b$a;->b:Lf/f/b/k/e$b;

    .line 42
    iget v0, p0, Lf/f/b/k/e;->V:I

    if-eqz v0, :cond_13

    if-ne v0, v5, :cond_12

    goto :goto_8

    :cond_12
    int-to-float p3, p3

    .line 43
    invoke-virtual {p0}, Lf/f/b/k/e;->t()F

    move-result v0

    mul-float p3, p3, v0

    float-to-int p3, p3

    iput p3, p2, Lf/f/b/k/m/b$a;->d:I

    goto :goto_9

    :cond_13
    :goto_8
    int-to-float p3, p3

    .line 44
    invoke-virtual {p0}, Lf/f/b/k/e;->t()F

    move-result v0

    div-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p2, Lf/f/b/k/m/b$a;->d:I

    .line 45
    :cond_14
    :goto_9
    invoke-interface {p1, p0, p2}, Lf/f/b/k/m/b$b;->b(Lf/f/b/k/e;Lf/f/b/k/m/b$a;)V

    .line 46
    iget p1, p2, Lf/f/b/k/m/b$a;->e:I

    invoke-virtual {p0, p1}, Lf/f/b/k/e;->U0(I)V

    .line 47
    iget p1, p2, Lf/f/b/k/m/b$a;->f:I

    invoke-virtual {p0, p1}, Lf/f/b/k/e;->v0(I)V

    .line 48
    iget-boolean p1, p2, Lf/f/b/k/m/b$a;->h:Z

    invoke-virtual {p0, p1}, Lf/f/b/k/e;->u0(Z)V

    .line 49
    iget p1, p2, Lf/f/b/k/m/b$a;->g:I

    invoke-virtual {p0, p1}, Lf/f/b/k/e;->k0(I)V

    .line 50
    sget p0, Lf/f/b/k/m/b$a;->k:I

    iput p0, p2, Lf/f/b/k/m/b$a;->j:I

    .line 51
    iget-boolean p0, p2, Lf/f/b/k/m/b$a;->i:Z

    return p0
.end method

.method private C1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lf/f/b/k/f;->y0:I

    .line 2
    iput v0, p0, Lf/f/b/k/f;->z0:I

    return-void
.end method

.method private g1(Lf/f/b/k/e;)V
    .locals 5

    .line 1
    iget v0, p0, Lf/f/b/k/f;->y0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lf/f/b/k/f;->B0:[Lf/f/b/k/c;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/f/b/k/c;

    iput-object v0, p0, Lf/f/b/k/f;->B0:[Lf/f/b/k/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lf/f/b/k/f;->B0:[Lf/f/b/k/c;

    iget v1, p0, Lf/f/b/k/f;->y0:I

    new-instance v2, Lf/f/b/k/c;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lf/f/b/k/f;->x1()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Lf/f/b/k/c;-><init>(Lf/f/b/k/e;IZ)V

    aput-object v2, v0, v1

    .line 5
    iget p1, p0, Lf/f/b/k/f;->y0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lf/f/b/k/f;->y0:I

    return-void
.end method

.method private j1(Lf/f/b/k/d;Lf/f/b/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v0, p1}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lf/f/b/k/f;->v0:Lf/f/b/d;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p2, p1, v1, v2}, Lf/f/b/d;->h(Lf/f/b/i;Lf/f/b/i;II)V

    return-void
.end method

.method private k1(Lf/f/b/k/d;Lf/f/b/i;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v0, p1}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lf/f/b/k/f;->v0:Lf/f/b/d;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p1, p2, v1, v2}, Lf/f/b/d;->h(Lf/f/b/i;Lf/f/b/i;II)V

    return-void
.end method

.method private l1(Lf/f/b/k/e;)V
    .locals 5

    .line 1
    iget v0, p0, Lf/f/b/k/f;->z0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lf/f/b/k/f;->A0:[Lf/f/b/k/c;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 2
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    .line 3
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/f/b/k/c;

    iput-object v0, p0, Lf/f/b/k/f;->A0:[Lf/f/b/k/c;

    .line 4
    :cond_0
    iget-object v0, p0, Lf/f/b/k/f;->A0:[Lf/f/b/k/c;

    iget v2, p0, Lf/f/b/k/f;->z0:I

    new-instance v3, Lf/f/b/k/c;

    invoke-virtual {p0}, Lf/f/b/k/f;->x1()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Lf/f/b/k/c;-><init>(Lf/f/b/k/e;IZ)V

    aput-object v3, v0, v2

    .line 5
    iget p1, p0, Lf/f/b/k/f;->z0:I

    add-int/2addr p1, v1

    iput p1, p0, Lf/f/b/k/f;->z0:I

    return-void
.end method


# virtual methods
.method public B1(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lf/f/b/k/f;->C0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public D1(Lf/f/b/k/m/b$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf/f/b/k/f;->s0:Lf/f/b/k/m/b$b;

    .line 2
    iget-object v0, p0, Lf/f/b/k/f;->r0:Lf/f/b/k/m/e;

    invoke-virtual {v0, p1}, Lf/f/b/k/m/e;->n(Lf/f/b/k/m/b$b;)V

    return-void
.end method

.method public E1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/f/b/k/f;->C0:I

    const/16 p1, 0x200

    .line 2
    invoke-virtual {p0, p1}, Lf/f/b/k/f;->B1(I)Z

    move-result p1

    sput-boolean p1, Lf/f/b/d;->r:Z

    return-void
.end method

.method public F1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf/f/b/k/f;->t0:Z

    return-void
.end method

.method public G1(Lf/f/b/d;[Z)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    aput-boolean v1, p2, v0

    const/16 p2, 0x40

    .line 2
    invoke-virtual {p0, p2}, Lf/f/b/k/f;->B1(I)Z

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Lf/f/b/k/e;->Z0(Lf/f/b/d;Z)V

    .line 4
    iget-object v0, p0, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    iget-object v2, p0, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/f/b/k/e;

    .line 6
    invoke-virtual {v2, p1, p2}, Lf/f/b/k/e;->Z0(Lf/f/b/d;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->q0:Lf/f/b/k/m/b;

    invoke-virtual {v0, p0}, Lf/f/b/k/m/b;->e(Lf/f/b/k/f;)V

    return-void
.end method

.method public Y0(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lf/f/b/k/e;->Y0(ZZ)V

    .line 2
    iget-object v0, p0, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/f/b/k/e;

    .line 4
    invoke-virtual {v2, p1, p2}, Lf/f/b/k/e;->Y0(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b1()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1
    iput v2, v1, Lf/f/b/k/e;->W:I

    .line 2
    iput v2, v1, Lf/f/b/k/e;->X:I

    .line 3
    iput-boolean v2, v1, Lf/f/b/k/f;->D0:Z

    .line 4
    iput-boolean v2, v1, Lf/f/b/k/f;->E0:Z

    .line 5
    iget-object v0, v1, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->R()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->v()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 8
    iget-object v5, v1, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    const/4 v6, 0x1

    aget-object v7, v5, v6

    .line 9
    aget-object v5, v5, v2

    .line 10
    iget-object v8, v1, Lf/f/b/k/f;->u0:Lf/f/b/e;

    if-eqz v8, :cond_0

    .line 11
    iget-wide v9, v8, Lf/f/b/e;->z:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Lf/f/b/e;->z:J

    .line 12
    :cond_0
    iget v8, v1, Lf/f/b/k/f;->C0:I

    invoke-static {v8, v6}, Lf/f/b/k/j;->b(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 13
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/f;->r1()Lf/f/b/k/m/b$b;

    move-result-object v8

    invoke-static {v1, v8}, Lf/f/b/k/m/h;->h(Lf/f/b/k/f;Lf/f/b/k/m/b$b;)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_3

    .line 14
    iget-object v9, v1, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lf/f/b/k/e;

    .line 15
    invoke-virtual {v9}, Lf/f/b/k/e;->d0()Z

    move-result v10

    if-eqz v10, :cond_2

    instance-of v10, v9, Lf/f/b/k/g;

    if-nez v10, :cond_2

    instance-of v10, v9, Lf/f/b/k/a;

    if-nez v10, :cond_2

    instance-of v10, v9, Lf/f/b/k/k;

    if-nez v10, :cond_2

    .line 16
    invoke-virtual {v9}, Lf/f/b/k/e;->c0()Z

    move-result v10

    if-nez v10, :cond_2

    .line 17
    invoke-virtual {v9, v2}, Lf/f/b/k/e;->s(I)Lf/f/b/k/e$b;

    move-result-object v10

    .line 18
    invoke-virtual {v9, v6}, Lf/f/b/k/e;->s(I)Lf/f/b/k/e$b;

    move-result-object v11

    .line 19
    sget-object v12, Lf/f/b/k/e$b;->MATCH_CONSTRAINT:Lf/f/b/k/e$b;

    if-ne v10, v12, :cond_1

    iget v10, v9, Lf/f/b/k/e;->n:I

    if-eq v10, v6, :cond_1

    if-ne v11, v12, :cond_1

    iget v10, v9, Lf/f/b/k/e;->o:I

    if-eq v10, v6, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-nez v10, :cond_2

    .line 20
    new-instance v10, Lf/f/b/k/m/b$a;

    invoke-direct {v10}, Lf/f/b/k/m/b$a;-><init>()V

    .line 21
    iget-object v11, v1, Lf/f/b/k/f;->s0:Lf/f/b/k/m/b$b;

    sget v12, Lf/f/b/k/m/b$a;->k:I

    invoke-static {v9, v11, v10, v12}, Lf/f/b/k/f;->A1(Lf/f/b/k/e;Lf/f/b/k/m/b$b;Lf/f/b/k/m/b$a;I)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x2

    if-le v3, v8, :cond_9

    .line 22
    sget-object v9, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    if-eq v5, v9, :cond_4

    if-ne v7, v9, :cond_9

    :cond_4
    iget v10, v1, Lf/f/b/k/f;->C0:I

    const/16 v11, 0x400

    .line 23
    invoke-static {v10, v11}, Lf/f/b/k/j;->b(II)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 24
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/f;->r1()Lf/f/b/k/m/b$b;

    move-result-object v10

    invoke-static {v1, v10}, Lf/f/b/k/m/i;->c(Lf/f/b/k/f;Lf/f/b/k/m/b$b;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-ne v5, v9, :cond_6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->R()I

    move-result v10

    if-ge v0, v10, :cond_5

    if-lez v0, :cond_5

    .line 26
    invoke-virtual {v1, v0}, Lf/f/b/k/e;->U0(I)V

    .line 27
    iput-boolean v6, v1, Lf/f/b/k/f;->D0:Z

    goto :goto_2

    .line 28
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->R()I

    move-result v0

    :cond_6
    :goto_2
    if-ne v7, v9, :cond_8

    .line 29
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->v()I

    move-result v9

    if-ge v4, v9, :cond_7

    if-lez v4, :cond_7

    .line 30
    invoke-virtual {v1, v4}, Lf/f/b/k/e;->v0(I)V

    .line 31
    iput-boolean v6, v1, Lf/f/b/k/f;->E0:Z

    goto :goto_3

    .line 32
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->v()I

    move-result v4

    :cond_8
    :goto_3
    move v9, v4

    move v4, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    move v9, v4

    move v4, v0

    const/4 v0, 0x0

    :goto_4
    const/16 v10, 0x40

    .line 33
    invoke-virtual {v1, v10}, Lf/f/b/k/f;->B1(I)Z

    move-result v11

    if-nez v11, :cond_b

    const/16 v11, 0x80

    invoke-virtual {v1, v11}, Lf/f/b/k/f;->B1(I)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_5

    :cond_a
    const/4 v11, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v11, 0x1

    .line 34
    :goto_6
    iget-object v12, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    iput-boolean v2, v12, Lf/f/b/d;->h:Z

    .line 35
    iput-boolean v2, v12, Lf/f/b/d;->i:Z

    .line 36
    iget v13, v1, Lf/f/b/k/f;->C0:I

    if-eqz v13, :cond_c

    if-eqz v11, :cond_c

    .line 37
    iput-boolean v6, v12, Lf/f/b/d;->i:Z

    .line 38
    :cond_c
    iget-object v11, v1, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    .line 39
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->y()Lf/f/b/k/e$b;

    move-result-object v12

    sget-object v13, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    if-eq v12, v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->O()Lf/f/b/k/e$b;

    move-result-object v12

    if-ne v12, v13, :cond_d

    goto :goto_7

    :cond_d
    const/4 v12, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v12, 0x1

    .line 40
    :goto_8
    invoke-direct/range {p0 .. p0}, Lf/f/b/k/f;->C1()V

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v3, :cond_10

    .line 41
    iget-object v14, v1, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lf/f/b/k/e;

    .line 42
    instance-of v15, v14, Lf/f/b/k/l;

    if-eqz v15, :cond_f

    .line 43
    check-cast v14, Lf/f/b/k/l;

    invoke-virtual {v14}, Lf/f/b/k/l;->b1()V

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 44
    :cond_10
    invoke-virtual {v1, v10}, Lf/f/b/k/f;->B1(I)Z

    move-result v10

    move v13, v0

    const/4 v0, 0x0

    const/4 v14, 0x1

    :goto_a
    if-eqz v14, :cond_21

    add-int/lit8 v15, v0, 0x1

    .line 45
    :try_start_0
    iget-object v0, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v0}, Lf/f/b/d;->D()V

    .line 46
    invoke-direct/range {p0 .. p0}, Lf/f/b/k/f;->C1()V

    .line 47
    iget-object v0, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v1, v0}, Lf/f/b/k/e;->k(Lf/f/b/d;)V

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v3, :cond_11

    .line 48
    iget-object v6, v1, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/f/b/k/e;

    .line 49
    iget-object v2, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v6, v2}, Lf/f/b/k/e;->k(Lf/f/b/d;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_b

    .line 50
    :cond_11
    iget-object v0, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v1, v0}, Lf/f/b/k/f;->f1(Lf/f/b/d;)Z

    move-result v14

    .line 51
    iget-object v0, v1, Lf/f/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 52
    iget-object v0, v1, Lf/f/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/f/b/k/d;

    iget-object v6, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    iget-object v8, v1, Lf/f/b/k/e;->G:Lf/f/b/k/d;

    invoke-virtual {v6, v8}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lf/f/b/k/f;->k1(Lf/f/b/k/d;Lf/f/b/i;)V

    .line 53
    iput-object v2, v1, Lf/f/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    .line 54
    :cond_12
    iget-object v0, v1, Lf/f/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 55
    iget-object v0, v1, Lf/f/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/f/b/k/d;

    iget-object v6, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    iget-object v8, v1, Lf/f/b/k/e;->I:Lf/f/b/k/d;

    invoke-virtual {v6, v8}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lf/f/b/k/f;->j1(Lf/f/b/k/d;Lf/f/b/i;)V

    .line 56
    iput-object v2, v1, Lf/f/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    .line 57
    :cond_13
    iget-object v0, v1, Lf/f/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 58
    iget-object v0, v1, Lf/f/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/f/b/k/d;

    iget-object v6, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    iget-object v8, v1, Lf/f/b/k/e;->F:Lf/f/b/k/d;

    invoke-virtual {v6, v8}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lf/f/b/k/f;->k1(Lf/f/b/k/d;Lf/f/b/i;)V

    .line 59
    iput-object v2, v1, Lf/f/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    .line 60
    :cond_14
    iget-object v0, v1, Lf/f/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 61
    iget-object v0, v1, Lf/f/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/f/b/k/d;

    iget-object v6, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    iget-object v8, v1, Lf/f/b/k/e;->H:Lf/f/b/k/d;

    invoke-virtual {v6, v8}, Lf/f/b/d;->q(Ljava/lang/Object;)Lf/f/b/i;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lf/f/b/k/f;->j1(Lf/f/b/k/d;Lf/f/b/i;)V

    .line 62
    iput-object v2, v1, Lf/f/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    :cond_15
    if-eqz v14, :cond_16

    .line 63
    iget-object v0, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v0}, Lf/f/b/d;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXCEPTION : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_16
    :goto_c
    if-eqz v14, :cond_17

    .line 66
    iget-object v0, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    sget-object v2, Lf/f/b/k/j;->a:[Z

    invoke-virtual {v1, v0, v2}, Lf/f/b/k/f;->G1(Lf/f/b/d;[Z)V

    goto :goto_e

    .line 67
    :cond_17
    iget-object v0, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v1, v0, v10}, Lf/f/b/k/e;->Z0(Lf/f/b/d;Z)V

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_18

    .line 68
    iget-object v2, v1, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/f/b/k/e;

    .line 69
    iget-object v6, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v2, v6, v10}, Lf/f/b/k/e;->Z0(Lf/f/b/d;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    :goto_e
    if-eqz v12, :cond_1b

    const/16 v0, 0x8

    if-ge v15, v0, :cond_1b

    .line 70
    sget-object v0, Lf/f/b/k/j;->a:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_f
    if-ge v0, v3, :cond_19

    .line 71
    iget-object v14, v1, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lf/f/b/k/e;

    .line 72
    iget v2, v14, Lf/f/b/k/e;->W:I

    invoke-virtual {v14}, Lf/f/b/k/e;->R()I

    move-result v16

    add-int v2, v2, v16

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 73
    iget v2, v14, Lf/f/b/k/e;->X:I

    invoke-virtual {v14}, Lf/f/b/k/e;->v()I

    move-result v14

    add-int/2addr v2, v14

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    goto :goto_f

    .line 74
    :cond_19
    iget v0, v1, Lf/f/b/k/e;->Z:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    iget v2, v1, Lf/f/b/k/e;->a0:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 76
    sget-object v6, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    if-ne v5, v6, :cond_1a

    .line 77
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->R()I

    move-result v8

    if-ge v8, v0, :cond_1a

    .line 78
    invoke-virtual {v1, v0}, Lf/f/b/k/e;->U0(I)V

    .line 79
    iget-object v0, v1, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    const/4 v8, 0x0

    aput-object v6, v0, v8

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    :goto_10
    if-ne v7, v6, :cond_1c

    .line 80
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->v()I

    move-result v8

    if-ge v8, v2, :cond_1c

    .line 81
    invoke-virtual {v1, v2}, Lf/f/b/k/e;->v0(I)V

    .line 82
    iget-object v0, v1, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    const/4 v2, 0x1

    aput-object v6, v0, v2

    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_11

    :cond_1b
    const/4 v0, 0x0

    .line 83
    :cond_1c
    :goto_11
    iget v2, v1, Lf/f/b/k/e;->Z:I

    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->R()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 84
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->R()I

    move-result v6

    if-le v2, v6, :cond_1d

    .line 85
    invoke-virtual {v1, v2}, Lf/f/b/k/e;->U0(I)V

    .line 86
    iget-object v0, v1, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    sget-object v2, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    const/4 v0, 0x1

    const/4 v13, 0x1

    .line 87
    :cond_1d
    iget v2, v1, Lf/f/b/k/e;->a0:I

    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->v()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 88
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->v()I

    move-result v6

    if-le v2, v6, :cond_1e

    .line 89
    invoke-virtual {v1, v2}, Lf/f/b/k/e;->v0(I)V

    .line 90
    iget-object v0, v1, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    sget-object v2, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    const/4 v6, 0x1

    aput-object v2, v0, v6

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_12

    :cond_1e
    const/4 v6, 0x1

    move v2, v13

    :goto_12
    if-nez v2, :cond_20

    .line 91
    iget-object v8, v1, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    const/4 v13, 0x0

    aget-object v8, v8, v13

    sget-object v14, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    if-ne v8, v14, :cond_1f

    if-lez v4, :cond_1f

    .line 92
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->R()I

    move-result v8

    if-le v8, v4, :cond_1f

    .line 93
    iput-boolean v6, v1, Lf/f/b/k/f;->D0:Z

    .line 94
    iget-object v0, v1, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    sget-object v2, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    aput-object v2, v0, v13

    .line 95
    invoke-virtual {v1, v4}, Lf/f/b/k/e;->U0(I)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 96
    :cond_1f
    iget-object v8, v1, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    aget-object v8, v8, v6

    if-ne v8, v14, :cond_20

    if-lez v9, :cond_20

    .line 97
    invoke-virtual/range {p0 .. p0}, Lf/f/b/k/e;->v()I

    move-result v8

    if-le v8, v9, :cond_20

    .line 98
    iput-boolean v6, v1, Lf/f/b/k/f;->E0:Z

    .line 99
    iget-object v0, v1, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    sget-object v2, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    aput-object v2, v0, v6

    .line 100
    invoke-virtual {v1, v9}, Lf/f/b/k/e;->v0(I)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    goto :goto_13

    :cond_20
    move v14, v0

    move v13, v2

    :goto_13
    move v0, v15

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    goto/16 :goto_a

    .line 101
    :cond_21
    iput-object v11, v1, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    if-eqz v13, :cond_22

    .line 102
    iget-object v0, v1, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    const/4 v2, 0x0

    aput-object v5, v0, v2

    const/4 v2, 0x1

    .line 103
    aput-object v7, v0, v2

    .line 104
    :cond_22
    iget-object v0, v1, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v0}, Lf/f/b/d;->v()Lf/f/b/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lf/f/b/k/l;->j0(Lf/f/b/c;)V

    return-void
.end method

.method e1(Lf/f/b/k/e;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lf/f/b/k/f;->g1(Lf/f/b/k/e;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lf/f/b/k/f;->l1(Lf/f/b/k/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f1(Lf/f/b/d;)Z
    .locals 12

    const/16 v0, 0x40

    .line 1
    invoke-virtual {p0, v0}, Lf/f/b/k/f;->B1(I)Z

    move-result v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lf/f/b/k/e;->g(Lf/f/b/d;Z)V

    .line 3
    iget-object v1, p0, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    .line 4
    iget-object v6, p0, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/f/b/k/e;

    .line 5
    invoke-virtual {v6, v2, v2}, Lf/f/b/k/e;->C0(IZ)V

    .line 6
    invoke-virtual {v6, v5, v2}, Lf/f/b/k/e;->C0(IZ)V

    .line 7
    instance-of v6, v6, Lf/f/b/k/a;

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 8
    iget-object v4, p0, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/f/b/k/e;

    .line 9
    instance-of v6, v4, Lf/f/b/k/a;

    if-eqz v6, :cond_2

    .line 10
    check-cast v4, Lf/f/b/k/a;

    invoke-virtual {v4}, Lf/f/b/k/a;->h1()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    .line 11
    iget-object v4, p0, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/f/b/k/e;

    .line 12
    invoke-virtual {v4}, Lf/f/b/k/e;->f()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v4, p1, v0}, Lf/f/b/k/e;->g(Lf/f/b/d;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 14
    :cond_5
    sget-boolean v3, Lf/f/b/d;->r:Z

    if-eqz v3, :cond_9

    .line 15
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    .line 16
    iget-object v6, p0, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/f/b/k/e;

    .line 17
    invoke-virtual {v6}, Lf/f/b/k/e;->f()Z

    move-result v7

    if-nez v7, :cond_6

    .line 18
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 19
    :cond_7
    invoke-virtual {p0}, Lf/f/b/k/e;->y()Lf/f/b/k/e$b;

    move-result-object v1

    sget-object v4, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    if-ne v1, v4, :cond_8

    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    .line 20
    invoke-virtual/range {v6 .. v11}, Lf/f/b/k/e;->e(Lf/f/b/k/f;Lf/f/b/d;Ljava/util/HashSet;IZ)V

    .line 21
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/f/b/k/e;

    .line 22
    invoke-static {p0, p1, v3}, Lf/f/b/k/j;->a(Lf/f/b/k/f;Lf/f/b/d;Lf/f/b/k/e;)V

    .line 23
    invoke-virtual {v3, p1, v0}, Lf/f/b/k/e;->g(Lf/f/b/d;Z)V

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_f

    .line 24
    iget-object v4, p0, Lf/f/b/k/l;->p0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf/f/b/k/e;

    .line 25
    instance-of v6, v4, Lf/f/b/k/f;

    if-eqz v6, :cond_d

    .line 26
    iget-object v6, v4, Lf/f/b/k/e;->Q:[Lf/f/b/k/e$b;

    aget-object v7, v6, v2

    .line 27
    aget-object v6, v6, v5

    .line 28
    sget-object v8, Lf/f/b/k/e$b;->WRAP_CONTENT:Lf/f/b/k/e$b;

    if-ne v7, v8, :cond_a

    .line 29
    sget-object v9, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    invoke-virtual {v4, v9}, Lf/f/b/k/e;->z0(Lf/f/b/k/e$b;)V

    :cond_a
    if-ne v6, v8, :cond_b

    .line 30
    sget-object v9, Lf/f/b/k/e$b;->FIXED:Lf/f/b/k/e$b;

    invoke-virtual {v4, v9}, Lf/f/b/k/e;->Q0(Lf/f/b/k/e$b;)V

    .line 31
    :cond_b
    invoke-virtual {v4, p1, v0}, Lf/f/b/k/e;->g(Lf/f/b/d;Z)V

    if-ne v7, v8, :cond_c

    .line 32
    invoke-virtual {v4, v7}, Lf/f/b/k/e;->z0(Lf/f/b/k/e$b;)V

    :cond_c
    if-ne v6, v8, :cond_e

    .line 33
    invoke-virtual {v4, v6}, Lf/f/b/k/e;->Q0(Lf/f/b/k/e$b;)V

    goto :goto_7

    .line 34
    :cond_d
    invoke-static {p0, p1, v4}, Lf/f/b/k/j;->a(Lf/f/b/k/f;Lf/f/b/d;Lf/f/b/k/e;)V

    .line 35
    invoke-virtual {v4}, Lf/f/b/k/e;->f()Z

    move-result v6

    if-nez v6, :cond_e

    .line 36
    invoke-virtual {v4, p1, v0}, Lf/f/b/k/e;->g(Lf/f/b/d;Z)V

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 37
    :cond_f
    iget v0, p0, Lf/f/b/k/f;->y0:I

    const/4 v1, 0x0

    if-lez v0, :cond_10

    .line 38
    invoke-static {p0, p1, v1, v2}, Lf/f/b/k/b;->b(Lf/f/b/k/f;Lf/f/b/d;Ljava/util/ArrayList;I)V

    .line 39
    :cond_10
    iget v0, p0, Lf/f/b/k/f;->z0:I

    if-lez v0, :cond_11

    .line 40
    invoke-static {p0, p1, v1, v5}, Lf/f/b/k/b;->b(Lf/f/b/k/f;Lf/f/b/d;Ljava/util/ArrayList;I)V

    :cond_11
    return v5
.end method

.method public h0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->v0:Lf/f/b/d;

    invoke-virtual {v0}, Lf/f/b/d;->D()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lf/f/b/k/f;->w0:I

    .line 3
    iput v0, p0, Lf/f/b/k/f;->x0:I

    .line 4
    invoke-super {p0}, Lf/f/b/k/l;->h0()V

    return-void
.end method

.method public h1(Lf/f/b/k/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/f/b/k/d;->d()I

    move-result v0

    iget-object v1, p0, Lf/f/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/f/b/k/d;

    invoke-virtual {v1}, Lf/f/b/k/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/f/b/k/f;->I0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public i1(Lf/f/b/k/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/f/b/k/d;->d()I

    move-result v0

    iget-object v1, p0, Lf/f/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/f/b/k/d;

    invoke-virtual {v1}, Lf/f/b/k/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/f/b/k/f;->G0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method m1(Lf/f/b/k/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/f/b/k/d;->d()I

    move-result v0

    iget-object v1, p0, Lf/f/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/f/b/k/d;

    invoke-virtual {v1}, Lf/f/b/k/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/f/b/k/f;->H0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method n1(Lf/f/b/k/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/f/b/k/d;->d()I

    move-result v0

    iget-object v1, p0, Lf/f/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/f/b/k/d;

    invoke-virtual {v1}, Lf/f/b/k/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lf/f/b/k/f;->F0:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public o1(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->r0:Lf/f/b/k/m/e;

    invoke-virtual {v0, p1}, Lf/f/b/k/m/e;->f(Z)Z

    move-result p1

    return p1
.end method

.method public p1(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->r0:Lf/f/b/k/m/e;

    invoke-virtual {v0, p1}, Lf/f/b/k/m/e;->g(Z)Z

    move-result p1

    return p1
.end method

.method public q1(ZI)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->r0:Lf/f/b/k/m/e;

    invoke-virtual {v0, p1, p2}, Lf/f/b/k/m/e;->h(ZI)Z

    move-result p1

    return p1
.end method

.method public r1()Lf/f/b/k/m/b$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->s0:Lf/f/b/k/m/b$b;

    return-object v0
.end method

.method public s1()I
    .locals 1

    .line 1
    iget v0, p0, Lf/f/b/k/f;->C0:I

    return v0
.end method

.method public t1()Lf/f/b/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->v0:Lf/f/b/d;

    return-object v0
.end method

.method public u1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->r0:Lf/f/b/k/m/e;

    invoke-virtual {v0}, Lf/f/b/k/m/e;->j()V

    return-void
.end method

.method public v1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/f/b/k/f;->r0:Lf/f/b/k/m/e;

    invoke-virtual {v0}, Lf/f/b/k/m/e;->k()V

    return-void
.end method

.method public w1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/f/b/k/f;->E0:Z

    return v0
.end method

.method public x1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/f/b/k/f;->t0:Z

    return v0
.end method

.method public y1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/f/b/k/f;->D0:Z

    return v0
.end method

.method public z1(IIIIIIIII)J
    .locals 12

    move-object v11, p0

    move/from16 v3, p8

    .line 1
    iput v3, v11, Lf/f/b/k/f;->w0:I

    move/from16 v4, p9

    .line 2
    iput v4, v11, Lf/f/b/k/f;->x0:I

    .line 3
    iget-object v0, v11, Lf/f/b/k/f;->q0:Lf/f/b/k/m/b;

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lf/f/b/k/m/b;->d(Lf/f/b/k/f;IIIIIIIII)J

    move-result-wide v0

    return-wide v0
.end method
