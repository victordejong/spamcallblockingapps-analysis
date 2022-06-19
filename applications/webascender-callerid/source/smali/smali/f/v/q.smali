.class public Lf/v/q;
.super Lf/v/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/v/q$b;
    }
.end annotation


# instance fields
.field private O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/v/m;",
            ">;"
        }
    .end annotation
.end field

.field private P:Z

.field Q:I

.field R:Z

.field private S:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/v/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/v/q;->P:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lf/v/q;->R:Z

    .line 5
    iput v0, p0, Lf/v/q;->S:I

    return-void
.end method

.method private l0(Lf/v/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p0, p1, Lf/v/m;->w:Lf/v/q;

    return-void
.end method

.method private w0()V
    .locals 3

    .line 1
    new-instance v0, Lf/v/q$b;

    invoke-direct {v0, p0}, Lf/v/q$b;-><init>(Lf/v/q;)V

    .line 2
    iget-object v1, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    .line 3
    invoke-virtual {v2, v0}, Lf/v/m;->a(Lf/v/m$f;)Lf/v/m;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lf/v/q;->Q:I

    return-void
.end method


# virtual methods
.method public R(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->R(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    invoke-virtual {v2, p1}, Lf/v/m;->R(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic T(Lf/v/m$f;)Lf/v/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/v/q;->o0(Lf/v/m$f;)Lf/v/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic U(Landroid/view/View;)Lf/v/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/v/q;->p0(Landroid/view/View;)Lf/v/q;

    move-result-object p1

    return-object p1
.end method

.method public V(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->V(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    invoke-virtual {v2, p1}, Lf/v/m;->V(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected X()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/v/m;->g0()V

    .line 3
    invoke-virtual {p0}, Lf/v/m;->q()V

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lf/v/q;->w0()V

    .line 5
    iget-boolean v0, p0, Lf/v/q;->P:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 6
    :goto_0
    iget-object v1, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/v/m;

    .line 8
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    .line 9
    new-instance v3, Lf/v/q$a;

    invoke-direct {v3, p0, v2}, Lf/v/q$a;-><init>(Lf/v/q;Lf/v/m;)V

    invoke-virtual {v1, v3}, Lf/v/m;->a(Lf/v/m$f;)Lf/v/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/v/m;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lf/v/m;->X()V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/v/m;

    .line 13
    invoke-virtual {v1}, Lf/v/m;->X()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method Y(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->Y(Z)V

    .line 2
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    invoke-virtual {v2, p1}, Lf/v/m;->Y(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic Z(J)Lf/v/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/v/q;->q0(J)Lf/v/q;

    return-object p0
.end method

.method public bridge synthetic a(Lf/v/m$f;)Lf/v/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/v/q;->i0(Lf/v/m$f;)Lf/v/q;

    move-result-object p1

    return-object p1
.end method

.method public a0(Lf/v/m$e;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->a0(Lf/v/m$e;)V

    .line 2
    iget v0, p0, Lf/v/q;->S:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lf/v/q;->S:I

    .line 3
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    invoke-virtual {v2, p1}, Lf/v/m;->a0(Lf/v/m$e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic b(Landroid/view/View;)Lf/v/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/v/q;->j0(Landroid/view/View;)Lf/v/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b0(Landroid/animation/TimeInterpolator;)Lf/v/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/v/q;->r0(Landroid/animation/TimeInterpolator;)Lf/v/q;

    move-result-object p1

    return-object p1
.end method

.method public c0(Lf/v/g;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->c0(Lf/v/g;)V

    .line 2
    iget v0, p0, Lf/v/q;->S:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lf/v/q;->S:I

    .line 3
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/v/m;

    invoke-virtual {v1, p1}, Lf/v/m;->c0(Lf/v/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/v/q;->n()Lf/v/m;

    move-result-object v0

    return-object v0
.end method

.method public d0(Lf/v/p;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->d0(Lf/v/p;)V

    .line 2
    iget v0, p0, Lf/v/q;->S:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf/v/q;->S:I

    .line 3
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    invoke-virtual {v2, p1}, Lf/v/m;->d0(Lf/v/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method bridge synthetic e0(Landroid/view/ViewGroup;)Lf/v/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf/v/q;->u0(Landroid/view/ViewGroup;)Lf/v/q;

    return-object p0
.end method

.method public bridge synthetic f0(J)Lf/v/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lf/v/q;->v0(J)Lf/v/q;

    move-result-object p1

    return-object p1
.end method

.method public g(Lf/v/s;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lf/v/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lf/v/m;->I(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/v/m;

    .line 3
    iget-object v2, p1, Lf/v/s;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lf/v/m;->I(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lf/v/m;->g(Lf/v/s;)V

    .line 5
    iget-object v2, p1, Lf/v/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method h0(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/v/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lf/v/m;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method i(Lf/v/s;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->i(Lf/v/s;)V

    .line 2
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    invoke-virtual {v2, p1}, Lf/v/m;->i(Lf/v/s;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i0(Lf/v/m$f;)Lf/v/q;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->a(Lf/v/m$f;)Lf/v/m;

    move-object p1, p0

    check-cast p1, Lf/v/q;

    return-object p1
.end method

.method public j0(Landroid/view/View;)Lf/v/q;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/v/m;

    invoke-virtual {v1, p1}, Lf/v/m;->b(Landroid/view/View;)Lf/v/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lf/v/m;->b(Landroid/view/View;)Lf/v/m;

    move-object p1, p0

    check-cast p1, Lf/v/q;

    return-object p1
.end method

.method public k(Lf/v/s;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lf/v/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lf/v/m;->I(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/v/m;

    .line 3
    iget-object v2, p1, Lf/v/s;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lf/v/m;->I(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Lf/v/m;->k(Lf/v/s;)V

    .line 5
    iget-object v2, p1, Lf/v/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k0(Lf/v/m;)Lf/v/q;
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lf/v/q;->l0(Lf/v/m;)V

    .line 2
    iget-wide v0, p0, Lf/v/m;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 3
    invoke-virtual {p1, v0, v1}, Lf/v/m;->Z(J)Lf/v/m;

    .line 4
    :cond_0
    iget v0, p0, Lf/v/q;->S:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lf/v/m;->u()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/v/m;->b0(Landroid/animation/TimeInterpolator;)Lf/v/m;

    .line 6
    :cond_1
    iget v0, p0, Lf/v/q;->S:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lf/v/m;->y()Lf/v/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/v/m;->d0(Lf/v/p;)V

    .line 8
    :cond_2
    iget v0, p0, Lf/v/q;->S:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lf/v/m;->x()Lf/v/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/v/m;->c0(Lf/v/g;)V

    .line 10
    :cond_3
    iget v0, p0, Lf/v/q;->S:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lf/v/m;->t()Lf/v/m$e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lf/v/m;->a0(Lf/v/m$e;)V

    :cond_4
    return-object p0
.end method

.method public m0(I)Lf/v/m;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/v/m;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n()Lf/v/m;
    .locals 4

    .line 1
    invoke-super {p0}, Lf/v/m;->n()Lf/v/m;

    move-result-object v0

    check-cast v0, Lf/v/q;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lf/v/q;->O:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/v/m;

    invoke-virtual {v3}, Lf/v/m;->n()Lf/v/m;

    move-result-object v3

    invoke-direct {v0, v3}, Lf/v/q;->l0(Lf/v/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public n0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public o0(Lf/v/m$f;)Lf/v/q;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->T(Lf/v/m$f;)Lf/v/m;

    move-object p1, p0

    check-cast p1, Lf/v/q;

    return-object p1
.end method

.method protected p(Landroid/view/ViewGroup;Lf/v/t;Lf/v/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lf/v/t;",
            "Lf/v/t;",
            "Ljava/util/ArrayList<",
            "Lf/v/s;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lf/v/s;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-virtual {p0}, Lf/v/m;->A()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 3
    iget-object v5, v0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lf/v/m;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 4
    iget-boolean v5, v0, Lf/v/q;->P:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 5
    :cond_0
    invoke-virtual {v6}, Lf/v/m;->A()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, Lf/v/m;->f0(J)Lf/v/m;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6, v1, v2}, Lf/v/m;->f0(J)Lf/v/m;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, Lf/v/m;->p(Landroid/view/ViewGroup;Lf/v/t;Lf/v/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public p0(Landroid/view/View;)Lf/v/q;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/v/m;

    invoke-virtual {v1, p1}, Lf/v/m;->U(Landroid/view/View;)Lf/v/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lf/v/m;->U(Landroid/view/View;)Lf/v/m;

    move-object p1, p0

    check-cast p1, Lf/v/q;

    return-object p1
.end method

.method public q0(J)Lf/v/q;
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Lf/v/m;->Z(J)Lf/v/m;

    .line 2
    iget-wide v0, p0, Lf/v/m;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    invoke-virtual {v2, p1, p2}, Lf/v/m;->Z(J)Lf/v/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method r(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->r(Landroid/view/ViewGroup;)V

    .line 2
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    invoke-virtual {v2, p1}, Lf/v/m;->r(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r0(Landroid/animation/TimeInterpolator;)Lf/v/q;
    .locals 3

    .line 1
    iget v0, p0, Lf/v/q;->S:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf/v/q;->S:I

    .line 2
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    invoke-virtual {v2, p1}, Lf/v/m;->b0(Landroid/animation/TimeInterpolator;)Lf/v/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lf/v/m;->b0(Landroid/animation/TimeInterpolator;)Lf/v/m;

    move-object p1, p0

    check-cast p1, Lf/v/q;

    return-object p1
.end method

.method public t0(I)Lf/v/q;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lf/v/q;->P:Z

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iput-boolean v0, p0, Lf/v/q;->P:Z

    :goto_0
    return-object p0
.end method

.method u0(Landroid/view/ViewGroup;)Lf/v/q;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lf/v/m;->e0(Landroid/view/ViewGroup;)Lf/v/m;

    .line 2
    iget-object v0, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lf/v/q;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    invoke-virtual {v2, p1}, Lf/v/m;->e0(Landroid/view/ViewGroup;)Lf/v/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public v0(J)Lf/v/q;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lf/v/m;->f0(J)Lf/v/m;

    move-object p1, p0

    check-cast p1, Lf/v/q;

    return-object p1
.end method
