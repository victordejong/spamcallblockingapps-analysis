.class public Ln3/i/b/h/k;
.super Ln3/i/b/h/i;
.source "SourceFile"


# instance fields
.field public J0:I

.field public K0:I

.field public L0:I

.field public M0:I

.field public N0:I

.field public O0:I

.field public P0:Z

.field public Q0:I

.field public R0:I

.field public S0:Ln3/i/b/h/m/b$a;

.field public T0:Ln3/i/b/h/m/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/i/b/h/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/i/b/h/k;->J0:I

    .line 3
    iput v0, p0, Ln3/i/b/h/k;->K0:I

    .line 4
    iput v0, p0, Ln3/i/b/h/k;->L0:I

    .line 5
    iput v0, p0, Ln3/i/b/h/k;->M0:I

    .line 6
    iput v0, p0, Ln3/i/b/h/k;->N0:I

    .line 7
    iput v0, p0, Ln3/i/b/h/k;->O0:I

    .line 8
    iput-boolean v0, p0, Ln3/i/b/h/k;->P0:Z

    .line 9
    iput v0, p0, Ln3/i/b/h/k;->Q0:I

    .line 10
    iput v0, p0, Ln3/i/b/h/k;->R0:I

    .line 11
    new-instance v0, Ln3/i/b/h/m/b$a;

    invoke-direct {v0}, Ln3/i/b/h/m/b$a;-><init>()V

    iput-object v0, p0, Ln3/i/b/h/k;->S0:Ln3/i/b/h/m/b$a;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Ln3/i/b/h/k;->T0:Ln3/i/b/h/m/b$b;

    return-void
.end method


# virtual methods
.method public W()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Ln3/i/b/h/i;->I0:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Ln3/i/b/h/i;->H0:[Ln3/i/b/h/d;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Ln3/i/b/h/d;->C:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public X(IIII)V
    .locals 0

    return-void
.end method

.method public Y(Ln3/i/b/h/d;Ln3/i/b/h/d$a;ILn3/i/b/h/d$a;I)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Ln3/i/b/h/k;->T0:Ln3/i/b/h/m/b$b;

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Ln3/i/b/h/d;->R:Ln3/i/b/h/d;

    if-eqz v1, :cond_0

    .line 3
    check-cast v1, Ln3/i/b/h/e;

    .line 4
    iget-object v0, v1, Ln3/i/b/h/e;->K0:Ln3/i/b/h/m/b$b;

    .line 5
    iput-object v0, p0, Ln3/i/b/h/k;->T0:Ln3/i/b/h/m/b$b;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Ln3/i/b/h/k;->S0:Ln3/i/b/h/m/b$a;

    iput-object p2, v1, Ln3/i/b/h/m/b$a;->a:Ln3/i/b/h/d$a;

    .line 7
    iput-object p4, v1, Ln3/i/b/h/m/b$a;->b:Ln3/i/b/h/d$a;

    .line 8
    iput p3, v1, Ln3/i/b/h/m/b$a;->c:I

    .line 9
    iput p5, v1, Ln3/i/b/h/m/b$a;->d:I

    .line 10
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Ln3/i/b/h/d;Ln3/i/b/h/m/b$a;)V

    .line 11
    iget-object p2, p0, Ln3/i/b/h/k;->S0:Ln3/i/b/h/m/b$a;

    iget p2, p2, Ln3/i/b/h/m/b$a;->e:I

    invoke-virtual {p1, p2}, Ln3/i/b/h/d;->S(I)V

    .line 12
    iget-object p2, p0, Ln3/i/b/h/k;->S0:Ln3/i/b/h/m/b$a;

    iget p2, p2, Ln3/i/b/h/m/b$a;->f:I

    invoke-virtual {p1, p2}, Ln3/i/b/h/d;->N(I)V

    .line 13
    iget-object p2, p0, Ln3/i/b/h/k;->S0:Ln3/i/b/h/m/b$a;

    iget-boolean p3, p2, Ln3/i/b/h/m/b$a;->h:Z

    .line 14
    iput-boolean p3, p1, Ln3/i/b/h/d;->A:Z

    .line 15
    iget p2, p2, Ln3/i/b/h/m/b$a;->g:I

    invoke-virtual {p1, p2}, Ln3/i/b/h/d;->K(I)V

    return-void
.end method

.method public c(Ln3/i/b/h/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/i/b/h/k;->W()V

    return-void
.end method
