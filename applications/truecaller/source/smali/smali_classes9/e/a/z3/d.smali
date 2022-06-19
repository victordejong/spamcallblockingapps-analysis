.class public Le/a/z3/d;
.super Le/f/a/h;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Le/f/a/h<",
        "TTranscodeType;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/f/a/c;Le/f/a/i;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/c;",
            "Le/f/a/i;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/f/a/h;-><init>(Le/f/a/c;Le/f/a/i;Ljava/lang/Class;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public A(Z)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->A(Z)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public B(Le/f/a/n/m;)Le/f/a/r/a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Le/f/a/r/a;->C(Le/f/a/n/m;Z)Le/f/a/r/a;

    move-result-object p1

    .line 2
    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public F([Le/f/a/n/m;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->F([Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public G(Z)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->G(Z)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public H(Le/f/a/r/g;)Le/f/a/h;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/h;->H(Le/f/a/r/g;)Le/f/a/h;

    return-object p0
.end method

.method public J(Le/f/a/r/a;)Le/f/a/h;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public bridge synthetic L()Le/f/a/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/z3/d;->e0()Le/a/z3/d;

    move-result-object v0

    return-object v0
.end method

.method public P(Le/f/a/r/g;)Le/f/a/h;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/f/a/h;->K:Ljava/util/List;

    .line 2
    invoke-virtual {p0, p1}, Le/a/z3/d;->H(Le/f/a/r/g;)Le/f/a/h;

    return-object p0
.end method

.method public Q(Landroid/graphics/Bitmap;)Le/f/a/h;
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    .line 3
    sget-object p1, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    invoke-static {p1}, Le/f/a/r/h;->J(Le/f/a/n/o/k;)Le/f/a/r/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/z3/d;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    .line 4
    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public R(Landroid/graphics/drawable/Drawable;)Le/f/a/h;
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    .line 3
    sget-object p1, Le/f/a/n/o/k;->b:Le/f/a/n/o/k;

    invoke-static {p1}, Le/f/a/r/h;->J(Le/f/a/n/o/k;)Le/f/a/r/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/z3/d;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    .line 4
    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public S(Landroid/net/Uri;)Le/f/a/h;
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    return-object p0
.end method

.method public T(Ljava/lang/Integer;)Le/f/a/h;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/h;->T(Ljava/lang/Integer;)Le/f/a/h;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public U(Ljava/lang/Object;)Le/f/a/h;
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    return-object p0
.end method

.method public V(Ljava/lang/String;)Le/f/a/h;
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    return-object p0
.end method

.method public Z(Le/f/a/r/g;)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/r/g<",
            "TTranscodeType;>;)",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/h;->H(Le/f/a/r/g;)Le/f/a/h;

    return-object p0
.end method

.method public a(Le/f/a/r/a;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public a0(Le/f/a/r/a;)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/r/a<",
            "*>;)",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public b0()Le/a/z3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Le/f/a/r/a;->c()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public bridge synthetic c()Le/f/a/r/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/z3/d;->b0()Le/a/z3/d;

    move-result-object v0

    return-object v0
.end method

.method public c0()Le/a/z3/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/d/m;->c:Le/f/a/n/q/d/m;

    new-instance v1, Le/f/a/n/q/d/j;

    invoke-direct {v1}, Le/f/a/n/q/d/j;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Le/f/a/r/a;->D(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/f/a/r/a;->y:Z

    .line 4
    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/z3/d;->e0()Le/a/z3/d;

    move-result-object v0

    return-object v0
.end method

.method public d0()Le/a/z3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Le/f/a/r/a;->f()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public bridge synthetic e()Le/f/a/r/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/z3/d;->c0()Le/a/z3/d;

    move-result-object v0

    return-object v0
.end method

.method public e0()Le/a/z3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Le/f/a/h;->L()Le/f/a/h;

    move-result-object v0

    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public bridge synthetic f()Le/f/a/r/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object v0

    return-object v0
.end method

.method public f0(Le/f/a/n/o/k;)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/k;",
            ")",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->i(Le/f/a/n/o/k;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public bridge synthetic g()Le/f/a/r/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/z3/d;->e0()Le/a/z3/d;

    move-result-object v0

    return-object v0
.end method

.method public g0(Le/f/a/n/q/d/m;)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/q/d/m;",
            ")",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->j(Le/f/a/n/q/d/m;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public h(Ljava/lang/Class;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->h(Ljava/lang/Class;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public h0(I)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public i(Le/f/a/n/o/k;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->i(Le/f/a/n/o/k;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public i0(Landroid/graphics/drawable/Drawable;)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->l(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public j(Le/f/a/n/q/d/m;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->j(Le/f/a/n/q/d/m;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public j0(Landroid/net/Uri;)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    return-object p0
.end method

.method public bridge synthetic k(I)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/z3/d;->h0(I)Le/a/z3/d;

    move-result-object p1

    return-object p1
.end method

.method public k0(Ljava/lang/Integer;)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/h;->T(Ljava/lang/Integer;)Le/f/a/h;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public bridge synthetic l(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/z3/d;->i0(Landroid/graphics/drawable/Drawable;)Le/a/z3/d;

    move-result-object p1

    return-object p1
.end method

.method public l0(Ljava/lang/String;)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/f/a/h;->N:Z

    return-object p0
.end method

.method public m()Le/f/a/r/a;
    .locals 1

    .line 1
    invoke-super {p0}, Le/f/a/r/a;->m()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public m0(I)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1}, Le/a/z3/d;->t(II)Le/f/a/r/a;

    move-result-object p1

    .line 2
    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public n0(II)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Le/f/a/r/a;->t(II)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public o0(I)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public p()Le/f/a/r/a;
    .locals 1

    .line 1
    invoke-super {p0}, Le/f/a/r/a;->p()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public p0(Landroid/graphics/drawable/Drawable;)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->v(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public q()Le/f/a/r/a;
    .locals 1

    .line 1
    invoke-super {p0}, Le/f/a/r/a;->q()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public q0(Z)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->A(Z)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public r()Le/f/a/r/a;
    .locals 1

    .line 1
    invoke-super {p0}, Le/f/a/r/a;->r()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/a/z3/d;

    return-object v0
.end method

.method public varargs r0([Le/f/a/n/m;)Le/a/z3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Le/f/a/n/m<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Le/a/z3/d<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->F([Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public t(II)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/f/a/r/a;->t(II)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public bridge synthetic u(I)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/z3/d;->o0(I)Le/a/z3/d;

    move-result-object p1

    return-object p1
.end method

.method public v(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->v(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public w(Le/f/a/f;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->w(Le/f/a/f;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public y(Le/f/a/n/h;Ljava/lang/Object;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/f/a/r/a;->y(Le/f/a/n/h;Ljava/lang/Object;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method

.method public z(Le/f/a/n/f;)Le/f/a/r/a;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/f/a/r/a;->z(Le/f/a/n/f;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/a/z3/d;

    return-object p1
.end method
