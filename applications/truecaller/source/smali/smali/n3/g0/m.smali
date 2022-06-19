.class public abstract Ln3/g0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/g0/m$c;,
        Ln3/g0/m$b;,
        Ln3/g0/m$d;
    }
.end annotation


# static fields
.field public static final v:[I

.field public static final w:Ln3/g0/h;

.field public static x:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ln3/g/a<",
            "Landroid/animation/Animator;",
            "Ln3/g0/m$b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:Landroid/animation/TimeInterpolator;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ln3/g0/v;

.field public h:Ln3/g0/v;

.field public i:Ln3/g0/s;

.field public j:[I

.field public k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/g0/u;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/g0/u;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public o:Z

.field public p:Z

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/g0/m$d;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ln3/g0/r;

.field public t:Ln3/g0/m$c;

.field public u:Ln3/g0/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ln3/g0/m;->v:[I

    .line 2
    new-instance v0, Ln3/g0/m$a;

    invoke-direct {v0}, Ln3/g0/m$a;-><init>()V

    sput-object v0, Ln3/g0/m;->w:Ln3/g0/h;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ln3/g0/m;->x:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln3/g0/m;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Ln3/g0/m;->b:J

    .line 4
    iput-wide v0, p0, Ln3/g0/m;->c:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ln3/g0/m;->d:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Ln3/g0/v;

    invoke-direct {v1}, Ln3/g0/v;-><init>()V

    iput-object v1, p0, Ln3/g0/m;->g:Ln3/g0/v;

    .line 9
    new-instance v1, Ln3/g0/v;

    invoke-direct {v1}, Ln3/g0/v;-><init>()V

    iput-object v1, p0, Ln3/g0/m;->h:Ln3/g0/v;

    .line 10
    iput-object v0, p0, Ln3/g0/m;->i:Ln3/g0/s;

    .line 11
    sget-object v1, Ln3/g0/m;->v:[I

    iput-object v1, p0, Ln3/g0/m;->j:[I

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ln3/g0/m;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Ln3/g0/m;->n:I

    .line 14
    iput-boolean v1, p0, Ln3/g0/m;->o:Z

    .line 15
    iput-boolean v1, p0, Ln3/g0/m;->p:Z

    .line 16
    iput-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/g0/m;->r:Ljava/util/ArrayList;

    .line 18
    sget-object v0, Ln3/g0/m;->w:Ln3/g0/h;

    iput-object v0, p0, Ln3/g0/m;->u:Ln3/g0/h;

    return-void
.end method

.method public static e(Ln3/g0/v;Landroid/view/View;Ln3/g0/u;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/g0/v;->a:Ln3/g/a;

    invoke-virtual {v0, p1, p2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 3
    iget-object v1, p0, Ln3/g0/v;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 4
    iget-object v1, p0, Ln3/g0/v;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Ln3/g0/v;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_1
    :goto_0
    sget-object p2, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 8
    iget-object v3, p0, Ln3/g0/v;->d:Ln3/g/a;

    .line 9
    invoke-virtual {v3, p2}, Ln3/g/h;->i(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 10
    iget-object v3, p0, Ln3/g0/v;->d:Ln3/g/a;

    invoke-virtual {v3, p2, v0}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 11
    :cond_3
    iget-object v3, p0, Ln3/g0/v;->d:Ln3/g/a;

    invoke-virtual {v3, p2, p1}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_7

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 14
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 15
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 16
    invoke-virtual {p2, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 17
    iget-object p2, p0, Ln3/g0/v;->c:Ln3/g/e;

    .line 18
    iget-boolean v5, p2, Ln3/g/e;->a:Z

    if-eqz v5, :cond_5

    .line 19
    invoke-virtual {p2}, Ln3/g/e;->f()V

    .line 20
    :cond_5
    iget-object v5, p2, Ln3/g/e;->b:[J

    iget p2, p2, Ln3/g/e;->d:I

    invoke-static {v5, p2, v3, v4}, Ln3/g/d;->b([JIJ)I

    move-result p2

    if-ltz p2, :cond_6

    .line 21
    iget-object p1, p0, Ln3/g0/v;->c:Ln3/g/e;

    invoke-virtual {p1, v3, v4}, Ln3/g/e;->g(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 23
    iget-object p0, p0, Ln3/g0/v;->c:Ln3/g/e;

    invoke-virtual {p0, v3, v4, v0}, Ln3/g/e;->k(JLjava/lang/Object;)V

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 25
    iget-object p0, p0, Ln3/g0/v;->c:Ln3/g/e;

    invoke-virtual {p0, v3, v4, p1}, Ln3/g/e;->k(JLjava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static r()Ln3/g/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/g/a<",
            "Landroid/animation/Animator;",
            "Ln3/g0/m$b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/g0/m;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/g/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/g/a;

    invoke-direct {v0}, Ln3/g/a;-><init>()V

    .line 3
    sget-object v1, Ln3/g0/m;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static w(Ln3/g0/u;Ln3/g0/u;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Ln3/g0/u;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    iget-object p1, p1, Ln3/g0/u;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method public A(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ln3/g0/m;->o:Z

    if-eqz v0, :cond_3

    .line 2
    iget-boolean v0, p0, Ln3/g0/m;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Ln3/g0/m;->r()Ln3/g/a;

    move-result-object v0

    .line 4
    iget v2, v0, Ln3/g/h;->c:I

    .line 5
    sget-object v3, Ln3/g0/z;->a:Ln3/g0/f0;

    .line 6
    new-instance v3, Ln3/g0/j0;

    invoke-direct {v3, p1}, Ln3/g0/j0;-><init>(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ln3/g/h;->p(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/g0/m$b;

    .line 8
    iget-object v4, p1, Ln3/g0/m$b;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object p1, p1, Ln3/g0/m$b;->d:Ln3/g0/k0;

    invoke-virtual {v3, p1}, Ln3/g0/j0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0, v2}, Ln3/g/h;->l(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    .line 10
    invoke-virtual {p1}, Landroid/animation/Animator;->resume()V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 12
    iget-object p1, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 15
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/g0/m$d;

    invoke-interface {v3, p0}, Ln3/g0/m$d;->a(Ln3/g0/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_2
    iput-boolean v1, p0, Ln3/g0/m;->o:Z

    :cond_3
    return-void
.end method

.method public B()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ln3/g0/m;->J()V

    .line 2
    invoke-static {}, Ln3/g0/m;->r()Ln3/g/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ln3/g0/m;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 4
    invoke-virtual {v0, v2}, Ln3/g/h;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p0}, Ln3/g0/m;->J()V

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Ln3/g0/n;

    invoke-direct {v3, p0, v0}, Ln3/g0/n;-><init>(Ln3/g0/m;Ln3/g/a;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-wide v3, p0, Ln3/g0/m;->c:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 9
    :cond_1
    iget-wide v3, p0, Ln3/g0/m;->b:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    .line 10
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 11
    :cond_2
    iget-object v3, p0, Ln3/g0/m;->d:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    :cond_3
    new-instance v3, Ln3/g0/o;

    invoke-direct {v3, p0}, Ln3/g0/o;-><init>(Ln3/g0/m;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Ln3/g0/m;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    invoke-virtual {p0}, Ln3/g0/m;->o()V

    return-void
.end method

.method public C(J)Ln3/g0/m;
    .locals 0

    .line 1
    iput-wide p1, p0, Ln3/g0/m;->c:J

    return-object p0
.end method

.method public D(Ln3/g0/m$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/g0/m;->t:Ln3/g0/m$c;

    return-void
.end method

.method public E(Landroid/animation/TimeInterpolator;)Ln3/g0/m;
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/g0/m;->d:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public F(Ln3/g0/h;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ln3/g0/m;->w:Ln3/g0/h;

    iput-object p1, p0, Ln3/g0/m;->u:Ln3/g0/h;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Ln3/g0/m;->u:Ln3/g0/h;

    :goto_0
    return-void
.end method

.method public G(Ln3/g0/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/g0/m;->s:Ln3/g0/r;

    return-void
.end method

.method public H(J)Ln3/g0/m;
    .locals 0

    .line 1
    iput-wide p1, p0, Ln3/g0/m;->b:J

    return-object p0
.end method

.method public J()V
    .locals 5

    .line 1
    iget v0, p0, Ln3/g0/m;->n:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/g0/m$d;

    invoke-interface {v4, p0}, Ln3/g0/m$d;->b(Ln3/g0/m;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Ln3/g0/m;->p:Z

    .line 8
    :cond_1
    iget v0, p0, Ln3/g0/m;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln3/g0/m;->n:I

    return-void
.end method

.method public K(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-wide v0, p0, Ln3/g0/m;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, ") "

    if-eqz v0, :cond_0

    const-string v0, "dur("

    .line 4
    invoke-static {p1, v0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v4, p0, Ln3/g0/m;->c:J

    invoke-static {p1, v4, v5, v1}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    iget-wide v4, p0, Ln3/g0/m;->b:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    const-string v0, "dly("

    .line 6
    invoke-static {p1, v0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v2, p0, Ln3/g0/m;->b:J

    invoke-static {p1, v2, v3, v1}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/g0/m;->d:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    const-string v0, "interp("

    .line 8
    invoke-static {p1, v0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Ln3/g0/m;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_2
    iget-object v0, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_3
    const-string v0, "tgts("

    .line 10
    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_5

    move v0, v2

    .line 12
    :goto_0
    iget-object v3, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    .line 13
    invoke-static {p1, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_4
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 16
    :goto_1
    iget-object v0, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-lez v2, :cond_6

    .line 17
    invoke-static {p1, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_6
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string v0, ")"

    .line 19
    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public a(Ln3/g0/m$d;)Ln3/g0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(I)Ln3/g0/m;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public c(Landroid/view/View;)Ln3/g0/m;
    .locals 1

    .line 1
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
    invoke-virtual {p0}, Ln3/g0/m;->l()Ln3/g0/m;

    move-result-object v0

    return-object v0
.end method

.method public abstract f(Ln3/g0/u;)V
.end method

.method public final g(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Ln3/g0/u;

    invoke-direct {v0, p1}, Ln3/g0/u;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Ln3/g0/m;->i(Ln3/g0/u;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Ln3/g0/m;->f(Ln3/g0/u;)V

    .line 6
    :goto_0
    iget-object v1, v0, Ln3/g0/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, v0}, Ln3/g0/m;->h(Ln3/g0/u;)V

    if-eqz p2, :cond_2

    .line 8
    iget-object v1, p0, Ln3/g0/m;->g:Ln3/g0/v;

    invoke-static {v1, p1, v0}, Ln3/g0/m;->e(Ln3/g0/v;Landroid/view/View;Ln3/g0/u;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v1, p0, Ln3/g0/m;->h:Ln3/g0/v;

    invoke-static {v1, p1, v0}, Ln3/g0/m;->e(Ln3/g0/v;Landroid/view/View;Ln3/g0/u;)V

    .line 10
    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 11
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 12
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Ln3/g0/m;->g(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public h(Ln3/g0/u;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/g0/m;->s:Ln3/g0/r;

    if-eqz v0, :cond_3

    iget-object v0, p1, Ln3/g0/u;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Ln3/g0/m;->s:Ln3/g0/r;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ln3/g0/i0;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p1, Ln3/g0/u;->a:Ljava/util/Map;

    aget-object v5, v0, v2

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Ln3/g0/m;->s:Ln3/g0/r;

    check-cast v0, Ln3/g0/i0;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p1, Ln3/g0/u;->b:Landroid/view/View;

    .line 8
    iget-object v2, p1, Ln3/g0/u;->a:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    :cond_2
    iget-object v3, p1, Ln3/g0/u;->a:Ljava/util/Map;

    const-string v5, "android:visibilityPropagation:visibility"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12
    aget v5, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v6, v5

    aput v6, v3, v1

    .line 13
    aget v5, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v2

    add-int/2addr v6, v5

    aput v6, v3, v1

    .line 14
    aget v1, v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, v1

    aput v5, v3, v4

    .line 15
    aget v1, v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    aput v0, v3, v4

    .line 16
    iget-object p1, p1, Ln3/g0/u;->a:Ljava/util/Map;

    const-string v0, "android:visibilityPropagation:center"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public abstract i(Ln3/g0/u;)V
.end method

.method public j(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Ln3/g0/m;->k(Z)V

    .line 2
    iget-object v0, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Ln3/g0/m;->g(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_1
    iget-object v2, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 5
    iget-object v2, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    new-instance v3, Ln3/g0/u;

    invoke-direct {v3, v2}, Ln3/g0/u;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0, v3}, Ln3/g0/m;->i(Ln3/g0/u;)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p0, v3}, Ln3/g0/m;->f(Ln3/g0/u;)V

    .line 10
    :goto_2
    iget-object v4, v3, Ln3/g0/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0, v3}, Ln3/g0/m;->h(Ln3/g0/u;)V

    if-eqz p2, :cond_3

    .line 12
    iget-object v4, p0, Ln3/g0/m;->g:Ln3/g0/v;

    invoke-static {v4, v2, v3}, Ln3/g0/m;->e(Ln3/g0/v;Landroid/view/View;Ln3/g0/u;)V

    goto :goto_3

    .line 13
    :cond_3
    iget-object v4, p0, Ln3/g0/m;->h:Ln3/g0/v;

    invoke-static {v4, v2, v3}, Ln3/g0/m;->e(Ln3/g0/v;Landroid/view/View;Ln3/g0/u;)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_5
    :goto_4
    iget-object p1, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    .line 15
    iget-object p1, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 16
    new-instance v1, Ln3/g0/u;

    invoke-direct {v1, p1}, Ln3/g0/u;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    .line 17
    invoke-virtual {p0, v1}, Ln3/g0/m;->i(Ln3/g0/u;)V

    goto :goto_5

    .line 18
    :cond_6
    invoke-virtual {p0, v1}, Ln3/g0/m;->f(Ln3/g0/u;)V

    .line 19
    :goto_5
    iget-object v2, v1, Ln3/g0/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0, v1}, Ln3/g0/m;->h(Ln3/g0/u;)V

    if-eqz p2, :cond_7

    .line 21
    iget-object v2, p0, Ln3/g0/m;->g:Ln3/g0/v;

    invoke-static {v2, p1, v1}, Ln3/g0/m;->e(Ln3/g0/v;Landroid/view/View;Ln3/g0/u;)V

    goto :goto_6

    .line 22
    :cond_7
    iget-object v2, p0, Ln3/g0/m;->h:Ln3/g0/v;

    invoke-static {v2, p1, v1}, Ln3/g0/m;->e(Ln3/g0/v;Landroid/view/View;Ln3/g0/u;)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    return-void
.end method

.method public k(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Ln3/g0/m;->g:Ln3/g0/v;

    iget-object p1, p1, Ln3/g0/v;->a:Ln3/g/a;

    invoke-virtual {p1}, Ln3/g/h;->clear()V

    .line 2
    iget-object p1, p0, Ln3/g0/m;->g:Ln3/g0/v;

    iget-object p1, p1, Ln3/g0/v;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 3
    iget-object p1, p0, Ln3/g0/m;->g:Ln3/g0/v;

    iget-object p1, p1, Ln3/g0/v;->c:Ln3/g/e;

    invoke-virtual {p1}, Ln3/g/e;->b()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Ln3/g0/m;->h:Ln3/g0/v;

    iget-object p1, p1, Ln3/g0/v;->a:Ln3/g/a;

    invoke-virtual {p1}, Ln3/g/h;->clear()V

    .line 5
    iget-object p1, p0, Ln3/g0/m;->h:Ln3/g0/v;

    iget-object p1, p1, Ln3/g0/v;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 6
    iget-object p1, p0, Ln3/g0/m;->h:Ln3/g0/v;

    iget-object p1, p1, Ln3/g0/v;->c:Ln3/g/e;

    invoke-virtual {p1}, Ln3/g/e;->b()V

    :goto_0
    return-void
.end method

.method public l()Ln3/g0/m;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/g0/m;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ln3/g0/m;->r:Ljava/util/ArrayList;

    .line 3
    new-instance v2, Ln3/g0/v;

    invoke-direct {v2}, Ln3/g0/v;-><init>()V

    iput-object v2, v1, Ln3/g0/m;->g:Ln3/g0/v;

    .line 4
    new-instance v2, Ln3/g0/v;

    invoke-direct {v2}, Ln3/g0/v;-><init>()V

    iput-object v2, v1, Ln3/g0/m;->h:Ln3/g0/v;

    .line 5
    iput-object v0, v1, Ln3/g0/m;->k:Ljava/util/ArrayList;

    .line 6
    iput-object v0, v1, Ln3/g0/m;->l:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public m(Landroid/view/ViewGroup;Ln3/g0/u;Ln3/g0/u;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Landroid/view/ViewGroup;Ln3/g0/v;Ln3/g0/v;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
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

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    invoke-static {}, Ln3/g0/m;->r()Ln3/g/a;

    move-result-object v8

    .line 2
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 3
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_d

    move-object/from16 v13, p4

    .line 4
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/g0/u;

    move-object/from16 v14, p5

    .line 5
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/g0/u;

    if-eqz v2, :cond_0

    .line 6
    iget-object v5, v2, Ln3/g0/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v3, :cond_1

    .line 7
    iget-object v5, v3, Ln3/g0/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :cond_2
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_7

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 8
    invoke-virtual {v6, v2, v3}, Ln3/g0/m;->u(Ln3/g0/u;Ln3/g0/u;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    .line 9
    invoke-virtual {v6, v7, v2, v3}, Ln3/g0/m;->m(Landroid/view/ViewGroup;Ln3/g0/u;Ln3/g0/u;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_a

    .line 10
    iget-object v15, v3, Ln3/g0/u;->b:Landroid/view/View;

    .line 11
    invoke-virtual/range {p0 .. p0}, Ln3/g0/m;->s()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 12
    array-length v11, v4

    if-lez v11, :cond_9

    .line 13
    new-instance v11, Ln3/g0/u;

    invoke-direct {v11, v15}, Ln3/g0/u;-><init>(Landroid/view/View;)V

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 14
    iget-object v5, v10, Ln3/g0/v;->a:Ln3/g/a;

    invoke-virtual {v5, v15}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/g0/u;

    if-eqz v5, :cond_6

    const/4 v10, 0x0

    .line 15
    :goto_3
    array-length v13, v4

    if-ge v10, v13, :cond_6

    .line 16
    iget-object v13, v11, Ln3/g0/u;->a:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Ln3/g0/u;->a:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    .line 17
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 18
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v14, p5

    move/from16 v12, v18

    move-object/from16 v5, v19

    goto :goto_3

    :cond_6
    move/from16 v18, v12

    .line 19
    iget v4, v8, Ln3/g/h;->c:I

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    .line 20
    invoke-virtual {v8, v5}, Ln3/g/h;->l(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 21
    invoke-virtual {v8, v10}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ln3/g0/m$b;

    .line 22
    iget-object v12, v10, Ln3/g0/m$b;->c:Ln3/g0/u;

    if-eqz v12, :cond_7

    iget-object v12, v10, Ln3/g0/m$b;->a:Landroid/view/View;

    if-ne v12, v15, :cond_7

    iget-object v12, v10, Ln3/g0/m$b;->b:Ljava/lang/String;

    .line 23
    iget-object v13, v6, Ln3/g0/m;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 25
    iget-object v10, v10, Ln3/g0/m$b;->c:Ln3/g0/u;

    invoke-virtual {v10, v11}, Ln3/g0/u;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v4, v17

    goto :goto_5

    :cond_9
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v4, v17

    const/4 v11, 0x0

    :goto_5
    move-object v10, v4

    move-object v5, v11

    goto :goto_6

    :cond_a
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    .line 26
    iget-object v4, v2, Ln3/g0/u;->b:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_6
    if-eqz v10, :cond_c

    .line 27
    iget-object v4, v6, Ln3/g0/m;->s:Ln3/g0/r;

    if-eqz v4, :cond_b

    .line 28
    invoke-virtual {v4, v7, v6, v2, v3}, Ln3/g0/r;->a(Landroid/view/ViewGroup;Ln3/g0/m;Ln3/g0/u;Ln3/g0/u;)J

    move-result-wide v2

    .line 29
    iget-object v4, v6, Ln3/g0/m;->r:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_b
    move-wide v11, v0

    .line 31
    new-instance v13, Ln3/g0/m$b;

    .line 32
    iget-object v2, v6, Ln3/g0/m;->a:Ljava/lang/String;

    .line 33
    sget-object v0, Ln3/g0/z;->a:Ln3/g0/f0;

    .line 34
    new-instance v4, Ln3/g0/j0;

    invoke-direct {v4, v7}, Ln3/g0/j0;-><init>(Landroid/view/View;)V

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v3, p0

    .line 35
    invoke-direct/range {v0 .. v5}, Ln3/g0/m$b;-><init>(Landroid/view/View;Ljava/lang/String;Ln3/g0/m;Ln3/g0/k0;Ln3/g0/u;)V

    .line 36
    invoke-virtual {v8, v10, v13}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, v6, Ln3/g0/m;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_c
    :goto_7
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_0

    .line 38
    :cond_d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v11, 0x0

    .line 39
    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_e

    .line 40
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 41
    iget-object v3, v6, Ln3/g0/m;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 42
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v7, v3

    .line 43
    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method public o()V
    .locals 6

    .line 1
    iget v0, p0, Ln3/g0/m;->n:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ln3/g0/m;->n:I

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/g0/m$d;

    invoke-interface {v5, p0}, Ln3/g0/m$d;->d(Ln3/g0/m;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 7
    :goto_1
    iget-object v3, p0, Ln3/g0/m;->g:Ln3/g0/v;

    iget-object v3, v3, Ln3/g0/v;->c:Ln3/g/e;

    invoke-virtual {v3}, Ln3/g/e;->m()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 8
    iget-object v3, p0, Ln3/g0/m;->g:Ln3/g0/v;

    iget-object v3, v3, Ln3/g0/v;->c:Ln3/g/e;

    invoke-virtual {v3, v0}, Ln3/g/e;->n(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 9
    sget-object v4, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 11
    :goto_2
    iget-object v3, p0, Ln3/g0/m;->h:Ln3/g0/v;

    iget-object v3, v3, Ln3/g0/v;->c:Ln3/g/e;

    invoke-virtual {v3}, Ln3/g/e;->m()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 12
    iget-object v3, p0, Ln3/g0/m;->h:Ln3/g0/v;

    iget-object v3, v3, Ln3/g0/v;->c:Ln3/g/e;

    invoke-virtual {v3, v0}, Ln3/g/e;->n(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 13
    sget-object v4, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 15
    :cond_4
    iput-boolean v1, p0, Ln3/g0/m;->p:Z

    :cond_5
    return-void
.end method

.method public p()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g0/m;->t:Ln3/g0/m$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Ln3/g0/m$c;->a(Ln3/g0/m;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public q(Landroid/view/View;Z)Ln3/g0/u;
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/g0/m;->i:Ln3/g0/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ln3/g0/m;->q(Landroid/view/View;Z)Ln3/g0/u;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Ln3/g0/m;->k:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ln3/g0/m;->l:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/g0/u;

    if-nez v5, :cond_3

    return-object v1

    .line 6
    :cond_3
    iget-object v5, v5, Ln3/g0/u;->b:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 7
    iget-object p1, p0, Ln3/g0/m;->l:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Ln3/g0/m;->k:Ljava/util/ArrayList;

    .line 8
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ln3/g0/u;

    :cond_7
    return-object v1
.end method

.method public s()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t(Landroid/view/View;Z)Ln3/g0/u;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g0/m;->i:Ln3/g0/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ln3/g0/m;->t(Landroid/view/View;Z)Ln3/g0/u;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Ln3/g0/m;->g:Ln3/g0/v;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Ln3/g0/m;->h:Ln3/g0/v;

    .line 4
    :goto_0
    iget-object p2, p2, Ln3/g0/v;->a:Ln3/g/a;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Ln3/g/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ln3/g0/u;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Ln3/g0/m;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ln3/g0/u;Ln3/g0/u;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p0}, Ln3/g0/m;->s()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 3
    invoke-static {p1, p2, v5}, Ln3/g0/m;->w(Ln3/g0/u;Ln3/g0/u;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p1, Ln3/g0/u;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {p1, p2, v3}, Ln3/g0/m;->w(Ln3/g0/u;Ln3/g0/u;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move v0, v1

    :cond_3
    return v0
.end method

.method public v(Landroid/view/View;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Ln3/g0/m;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public x(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ln3/g0/m;->p:Z

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Ln3/g0/m;->r()Ln3/g/a;

    move-result-object v0

    .line 3
    iget v1, v0, Ln3/g/h;->c:I

    .line 4
    sget-object v2, Ln3/g0/z;->a:Ln3/g0/f0;

    .line 5
    new-instance v2, Ln3/g0/j0;

    invoke-direct {v2, p1}, Ln3/g0/j0;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    sub-int/2addr v1, p1

    :goto_0
    if-ltz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ln3/g/h;->p(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/g0/m$b;

    .line 7
    iget-object v4, v3, Ln3/g0/m$b;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Ln3/g0/m$b;->d:Ln3/g0/k0;

    invoke-virtual {v2, v3}, Ln3/g0/j0;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Ln3/g/h;->l(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 9
    invoke-virtual {v3}, Landroid/animation/Animator;->pause()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    iget-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/g0/m$d;

    invoke-interface {v3, p0}, Ln3/g0/m$d;->c(Ln3/g0/m;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_2
    iput-boolean p1, p0, Ln3/g0/m;->o:Z

    :cond_3
    return-void
.end method

.method public y(Ln3/g0/m$d;)Ln3/g0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Ln3/g0/m;->q:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public z(Landroid/view/View;)Ln3/g0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/g0/m;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method
