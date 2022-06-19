.class public Lf/v/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/v/o$a;
    }
.end annotation


# static fields
.field private static a:Lf/v/m;

.field private static b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Lf/e/a<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lf/v/m;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/v/b;

    invoke-direct {v0}, Lf/v/b;-><init>()V

    sput-object v0, Lf/v/o;->a:Lf/v/m;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lf/v/o;->b:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lf/v/o;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Lf/v/m;)V
    .locals 1

    .line 1
    sget-object v0, Lf/v/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lf/h/l/t;->Q(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lf/v/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lf/v/o;->a:Lf/v/m;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lf/v/m;->n()Lf/v/m;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lf/v/o;->g(Landroid/view/ViewGroup;Lf/v/m;)V

    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lf/v/l;->f(Landroid/view/ViewGroup;Lf/v/l;)V

    .line 7
    invoke-static {p0, p1}, Lf/v/o;->f(Landroid/view/ViewGroup;Lf/v/m;)V

    :cond_1
    return-void
.end method

.method private static b(Lf/v/l;Lf/v/m;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/v/l;->d()Landroid/view/ViewGroup;

    move-result-object v0

    .line 2
    sget-object v1, Lf/v/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-static {v0}, Lf/v/l;->c(Landroid/view/ViewGroup;)Lf/v/l;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lf/v/l;->b()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lf/v/l;->a()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lf/v/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Lf/v/m;->n()Lf/v/m;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Lf/v/m;->e0(Landroid/view/ViewGroup;)Lf/v/m;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lf/v/l;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v1}, Lf/v/m;->Y(Z)V

    .line 11
    :cond_2
    invoke-static {v0, p1}, Lf/v/o;->g(Landroid/view/ViewGroup;Lf/v/m;)V

    .line 12
    invoke-virtual {p0}, Lf/v/l;->a()V

    .line 13
    invoke-static {v0, p1}, Lf/v/o;->f(Landroid/view/ViewGroup;Lf/v/m;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    sget-object v0, Lf/v/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-static {}, Lf/v/o;->d()Lf/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/v/m;

    .line 7
    invoke-virtual {v2, p0}, Lf/v/m;->r(Landroid/view/ViewGroup;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static d()Lf/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/e/a<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Lf/v/m;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf/v/o;->b:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/e/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lf/e/a;

    invoke-direct {v0}, Lf/e/a;-><init>()V

    .line 5
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    sget-object v2, Lf/v/o;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e(Lf/v/l;Lf/v/m;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf/v/o;->b(Lf/v/l;Lf/v/m;)V

    return-void
.end method

.method private static f(Landroid/view/ViewGroup;Lf/v/m;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lf/v/o$a;

    invoke-direct {v0, p1, p0}, Lf/v/o$a;-><init>(Lf/v/m;Landroid/view/ViewGroup;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method private static g(Landroid/view/ViewGroup;Lf/v/m;)V
    .locals 2

    .line 1
    invoke-static {}, Lf/v/o;->d()Lf/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/v/m;

    .line 4
    invoke-virtual {v1, p0}, Lf/v/m;->R(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, p0, v0}, Lf/v/m;->l(Landroid/view/ViewGroup;Z)V

    .line 6
    :cond_1
    invoke-static {p0}, Lf/v/l;->c(Landroid/view/ViewGroup;)Lf/v/l;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0}, Lf/v/l;->b()V

    :cond_2
    return-void
.end method
