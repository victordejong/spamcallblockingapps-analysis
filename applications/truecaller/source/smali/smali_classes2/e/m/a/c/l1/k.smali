.class public abstract Le/m/a/c/l1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/l1/p;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/m/a/c/l1/p$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Le/m/a/c/l1/p$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/c/l1/q$a;

.field public d:Landroid/os/Looper;

.field public e:Le/m/a/c/y0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/l1/k;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/l1/k;->b:Ljava/util/HashSet;

    .line 4
    new-instance v0, Le/m/a/c/l1/q$a;

    invoke-direct {v0}, Le/m/a/c/l1/q$a;-><init>()V

    iput-object v0, p0, Le/m/a/c/l1/k;->c:Le/m/a/c/l1/q$a;

    return-void
.end method


# virtual methods
.method public final b(Le/m/a/c/l1/p$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Le/m/a/c/l1/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/m/a/c/l1/k;->d:Landroid/os/Looper;

    .line 4
    iput-object p1, p0, Le/m/a/c/l1/k;->e:Le/m/a/c/y0;

    .line 5
    iget-object p1, p0, Le/m/a/c/l1/k;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 6
    move-object p1, p0

    check-cast p1, Le/m/a/c/l1/t;

    .line 7
    iget-object p1, p1, Le/m/a/c/l1/t;->i:Le/m/a/c/f1/e;

    invoke-interface {p1}, Le/m/a/c/f1/e;->release()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/m/a/c/l1/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 9
    iget-object v1, p0, Le/m/a/c/l1/k;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 10
    iget-object p1, p0, Le/m/a/c/l1/k;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Le/m/a/c/l1/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/k;->c:Le/m/a/c/l1/q$a;

    .line 2
    iget-object v1, v0, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/c/l1/q$a$a;

    .line 3
    iget-object v3, v2, Le/m/a/c/l1/q$a$a;->b:Le/m/a/c/l1/q;

    if-ne v3, p1, :cond_0

    .line 4
    iget-object v3, v0, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Le/m/a/c/l1/p$b;Le/m/a/c/p1/f0;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/m/a/c/l1/k;->d:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ln3/g0/y;->r(Z)V

    .line 3
    iget-object v1, p0, Le/m/a/c/l1/k;->e:Le/m/a/c/y0;

    .line 4
    iget-object v2, p0, Le/m/a/c/l1/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Le/m/a/c/l1/k;->d:Landroid/os/Looper;

    if-nez v2, :cond_2

    .line 6
    iput-object v0, p0, Le/m/a/c/l1/k;->d:Landroid/os/Looper;

    .line 7
    iget-object v0, p0, Le/m/a/c/l1/k;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    move-object p1, p0

    check-cast p1, Le/m/a/c/l1/t;

    .line 9
    iput-object p2, p1, Le/m/a/c/l1/t;->q:Le/m/a/c/p1/f0;

    .line 10
    iget-object p2, p1, Le/m/a/c/l1/t;->i:Le/m/a/c/f1/e;

    invoke-interface {p2}, Le/m/a/c/f1/e;->a()V

    .line 11
    iget-wide v0, p1, Le/m/a/c/l1/t;->n:J

    iget-boolean p2, p1, Le/m/a/c/l1/t;->o:Z

    iget-boolean v2, p1, Le/m/a/c/l1/t;->p:Z

    invoke-virtual {p1, v0, v1, p2, v2}, Le/m/a/c/l1/t;->h(JZZ)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 12
    iget-object p2, p0, Le/m/a/c/l1/k;->b:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    .line 13
    iget-object p2, p0, Le/m/a/c/l1/k;->b:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    check-cast p1, Le/m/a/c/e0;

    invoke-virtual {p1, p0, v1}, Le/m/a/c/e0;->a(Le/m/a/c/l1/p;Le/m/a/c/y0;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final f(Landroid/os/Handler;Le/m/a/c/l1/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/k;->c:Le/m/a/c/l1/q$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v1}, Ln3/g0/y;->r(Z)V

    .line 4
    iget-object v0, v0, Le/m/a/c/l1/q$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Le/m/a/c/l1/q$a$a;

    invoke-direct {v1, p1, p2}, Le/m/a/c/l1/q$a$a;-><init>(Landroid/os/Handler;Le/m/a/c/l1/q;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
