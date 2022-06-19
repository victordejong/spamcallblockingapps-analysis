.class public Ln3/g0/s;
.super Ln3/g0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/g0/s$b;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:I

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/g0/m;",
            ">;"
        }
    .end annotation
.end field

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/g0/m;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/g0/s;->z:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ln3/g0/s;->B:Z

    .line 5
    iput v0, p0, Ln3/g0/s;->C:I

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/g0/m;->A(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/m;

    invoke-virtual {v2, p1}, Ln3/g0/m;->A(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/g0/m;->J()V

    .line 3
    invoke-virtual {p0}, Ln3/g0/m;->o()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ln3/g0/s$b;

    invoke-direct {v0, p0}, Ln3/g0/s$b;-><init>(Ln3/g0/s;)V

    .line 5
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/m;

    .line 6
    invoke-virtual {v2, v0}, Ln3/g0/m;->a(Ln3/g0/m$d;)Ln3/g0/m;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Ln3/g0/s;->A:I

    .line 8
    iget-boolean v0, p0, Ln3/g0/s;->z:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 9
    :goto_1
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/g0/m;

    .line 11
    iget-object v2, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/m;

    .line 12
    new-instance v3, Ln3/g0/s$a;

    invoke-direct {v3, p0, v2}, Ln3/g0/s$a;-><init>(Ln3/g0/s;Ln3/g0/m;)V

    invoke-virtual {v1, v3}, Ln3/g0/m;->a(Ln3/g0/m$d;)Ln3/g0/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/g0/m;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ln3/g0/m;->B()V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/g0/m;

    .line 16
    invoke-virtual {v1}, Ln3/g0/m;->B()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public bridge synthetic C(J)Ln3/g0/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/g0/s;->O(J)Ln3/g0/s;

    return-object p0
.end method

.method public D(Ln3/g0/m$c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ln3/g0/m;->t:Ln3/g0/m$c;

    .line 2
    iget v0, p0, Ln3/g0/s;->C:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Ln3/g0/s;->C:I

    .line 3
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/m;

    invoke-virtual {v2, p1}, Ln3/g0/m;->D(Ln3/g0/m$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E(Landroid/animation/TimeInterpolator;)Ln3/g0/m;
    .locals 3

    .line 1
    iget v0, p0, Ln3/g0/s;->C:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln3/g0/s;->C:I

    .line 2
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/m;

    invoke-virtual {v2, p1}, Ln3/g0/m;->E(Landroid/animation/TimeInterpolator;)Ln3/g0/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Ln3/g0/m;->d:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public F(Ln3/g0/h;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Ln3/g0/m;->w:Ln3/g0/h;

    iput-object v0, p0, Ln3/g0/m;->u:Ln3/g0/h;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Ln3/g0/m;->u:Ln3/g0/h;

    .line 3
    :goto_0
    iget v0, p0, Ln3/g0/s;->C:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Ln3/g0/s;->C:I

    .line 4
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/g0/m;

    invoke-virtual {v1, p1}, Ln3/g0/m;->F(Ln3/g0/h;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public G(Ln3/g0/r;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ln3/g0/m;->s:Ln3/g0/r;

    .line 2
    iget v0, p0, Ln3/g0/s;->C:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Ln3/g0/s;->C:I

    .line 3
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/m;

    invoke-virtual {v2, p1}, Ln3/g0/m;->G(Ln3/g0/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H(J)Ln3/g0/m;
    .locals 0

    .line 1
    iput-wide p1, p0, Ln3/g0/m;->b:J

    return-object p0
.end method

.method public K(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0, p1}, Ln3/g0/m;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n"

    .line 3
    invoke-static {v0, v2}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln3/g0/m;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public L(Ln3/g0/m$d;)Ln3/g0/s;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/g0/m;->a(Ln3/g0/m$d;)Ln3/g0/m;

    return-object p0
.end method

.method public M(Ln3/g0/m;)Ln3/g0/s;
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p0, p1, Ln3/g0/m;->i:Ln3/g0/s;

    .line 3
    iget-wide v0, p0, Ln3/g0/m;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 4
    invoke-virtual {p1, v0, v1}, Ln3/g0/m;->C(J)Ln3/g0/m;

    .line 5
    :cond_0
    iget v0, p0, Ln3/g0/s;->C:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Ln3/g0/m;->d:Landroid/animation/TimeInterpolator;

    .line 7
    invoke-virtual {p1, v0}, Ln3/g0/m;->E(Landroid/animation/TimeInterpolator;)Ln3/g0/m;

    .line 8
    :cond_1
    iget v0, p0, Ln3/g0/s;->C:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Ln3/g0/m;->s:Ln3/g0/r;

    .line 10
    invoke-virtual {p1, v0}, Ln3/g0/m;->G(Ln3/g0/r;)V

    .line 11
    :cond_2
    iget v0, p0, Ln3/g0/s;->C:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Ln3/g0/m;->u:Ln3/g0/h;

    .line 13
    invoke-virtual {p1, v0}, Ln3/g0/m;->F(Ln3/g0/h;)V

    .line 14
    :cond_3
    iget v0, p0, Ln3/g0/s;->C:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Ln3/g0/m;->t:Ln3/g0/m$c;

    .line 16
    invoke-virtual {p1, v0}, Ln3/g0/m;->D(Ln3/g0/m$c;)V

    :cond_4
    return-object p0
.end method

.method public N(I)Ln3/g0/m;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/g0/m;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public O(J)Ln3/g0/s;
    .locals 3

    .line 1
    iput-wide p1, p0, Ln3/g0/m;->c:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/m;

    invoke-virtual {v2, p1, p2}, Ln3/g0/m;->C(J)Ln3/g0/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public P(I)Ln3/g0/s;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Ln3/g0/s;->z:Z

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iput-boolean v0, p0, Ln3/g0/s;->z:Z

    :goto_0
    return-object p0
.end method

.method public a(Ln3/g0/m$d;)Ln3/g0/m;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/g0/m;->a(Ln3/g0/m$d;)Ln3/g0/m;

    return-object p0
.end method

.method public b(I)Ln3/g0/m;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/g0/m;

    invoke-virtual {v1, p1}, Ln3/g0/m;->b(I)Ln3/g0/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ln3/g0/m;->b(I)Ln3/g0/m;

    return-object p0
.end method

.method public c(Landroid/view/View;)Ln3/g0/m;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/g0/m;

    invoke-virtual {v1, p1}, Ln3/g0/m;->c(Landroid/view/View;)Ln3/g0/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/g0/s;->l()Ln3/g0/m;

    move-result-object v0

    return-object v0
.end method

.method public f(Ln3/g0/u;)V
    .locals 3

    .line 1
    iget-object v0, p1, Ln3/g0/u;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/g0/m;

    .line 3
    iget-object v2, p1, Ln3/g0/u;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Ln3/g0/m;->f(Ln3/g0/u;)V

    .line 5
    iget-object v2, p1, Ln3/g0/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h(Ln3/g0/u;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/g0/m;->h(Ln3/g0/u;)V

    .line 2
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/m;

    invoke-virtual {v2, p1}, Ln3/g0/m;->h(Ln3/g0/u;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(Ln3/g0/u;)V
    .locals 3

    .line 1
    iget-object v0, p1, Ln3/g0/u;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/g0/m;

    .line 3
    iget-object v2, p1, Ln3/g0/u;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Ln3/g0/m;->v(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Ln3/g0/m;->i(Ln3/g0/u;)V

    .line 5
    iget-object v2, p1, Ln3/g0/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l()Ln3/g0/m;
    .locals 5

    .line 1
    invoke-super {p0}, Ln3/g0/m;->l()Ln3/g0/m;

    move-result-object v0

    check-cast v0, Ln3/g0/s;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/g0/m;

    invoke-virtual {v3}, Ln3/g0/m;->l()Ln3/g0/m;

    move-result-object v3

    .line 5
    iget-object v4, v0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iput-object v0, v3, Ln3/g0/m;->i:Ln3/g0/s;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public n(Landroid/view/ViewGroup;Ln3/g0/v;Ln3/g0/v;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ln3/g0/v;",
            "Ln3/g0/v;",
            "Ljava/util/ArrayList<",
            "Ln3/g0/u;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ln3/g0/u;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Ln3/g0/m;->b:J

    .line 2
    iget-object v3, v0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 3
    iget-object v5, v0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ln3/g0/m;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 4
    iget-boolean v5, v0, Ln3/g0/s;->z:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 5
    :cond_0
    iget-wide v9, v6, Ln3/g0/m;->b:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 6
    invoke-virtual {v6, v9, v10}, Ln3/g0/m;->H(J)Ln3/g0/m;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v6, v1, v2}, Ln3/g0/m;->H(J)Ln3/g0/m;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 8
    invoke-virtual/range {v6 .. v11}, Ln3/g0/m;->n(Landroid/view/ViewGroup;Ln3/g0/v;Ln3/g0/v;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public x(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/g0/m;->x(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/m;

    invoke-virtual {v2, p1}, Ln3/g0/m;->x(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y(Ln3/g0/m$d;)Ln3/g0/m;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/g0/m;->y(Ln3/g0/m$d;)Ln3/g0/m;

    return-object p0
.end method

.method public z(Landroid/view/View;)Ln3/g0/m;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ln3/g0/s;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/g0/m;

    invoke-virtual {v1, p1}, Ln3/g0/m;->z(Landroid/view/View;)Ln3/g0/m;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method
