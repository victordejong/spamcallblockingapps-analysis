.class public Le/f/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Le/f/a/o/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/i$b;,
        Le/f/a/i$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Le/f/a/o/i;",
        "Ljava/lang/Object<",
        "Le/f/a/h<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final l:Le/f/a/r/h;

.field public static final m:Le/f/a/r/h;


# instance fields
.field public final a:Le/f/a/c;

.field public final b:Landroid/content/Context;

.field public final c:Le/f/a/o/h;

.field public final d:Le/f/a/o/n;

.field public final e:Le/f/a/o/m;

.field public final f:Le/f/a/o/p;

.field public final g:Ljava/lang/Runnable;

.field public final h:Landroid/os/Handler;

.field public final i:Le/f/a/o/c;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Le/f/a/r/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Le/f/a/r/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    .line 2
    new-instance v1, Le/f/a/r/h;

    invoke-direct {v1}, Le/f/a/r/h;-><init>()V

    invoke-virtual {v1, v0}, Le/f/a/r/a;->h(Ljava/lang/Class;)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    .line 3
    invoke-virtual {v0}, Le/f/a/r/a;->o()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    sput-object v0, Le/f/a/i;->l:Le/f/a/r/h;

    .line 4
    const-class v0, Le/f/a/n/q/h/c;

    .line 5
    new-instance v1, Le/f/a/r/h;

    invoke-direct {v1}, Le/f/a/r/h;-><init>()V

    invoke-virtual {v1, v0}, Le/f/a/r/a;->h(Ljava/lang/Class;)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    .line 6
    invoke-virtual {v0}, Le/f/a/r/a;->o()Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    sput-object v0, Le/f/a/i;->m:Le/f/a/r/h;

    .line 7
    sget-object v0, Le/f/a/n/o/k;->c:Le/f/a/n/o/k;

    .line 8
    invoke-static {v0}, Le/f/a/r/h;->J(Le/f/a/n/o/k;)Le/f/a/r/h;

    move-result-object v0

    sget-object v1, Le/f/a/f;->d:Le/f/a/f;

    invoke-virtual {v0, v1}, Le/f/a/r/a;->w(Le/f/a/f;)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/f/a/r/a;->A(Z)Le/f/a/r/a;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    return-void
.end method

.method public constructor <init>(Le/f/a/c;Le/f/a/o/h;Le/f/a/o/m;Le/f/a/o/n;Le/f/a/o/d;Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/f/a/o/p;

    invoke-direct {v0}, Le/f/a/o/p;-><init>()V

    iput-object v0, p0, Le/f/a/i;->f:Le/f/a/o/p;

    .line 3
    new-instance v0, Le/f/a/i$a;

    invoke-direct {v0, p0}, Le/f/a/i$a;-><init>(Le/f/a/i;)V

    iput-object v0, p0, Le/f/a/i;->g:Ljava/lang/Runnable;

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Le/f/a/i;->h:Landroid/os/Handler;

    .line 5
    iput-object p1, p0, Le/f/a/i;->a:Le/f/a/c;

    .line 6
    iput-object p2, p0, Le/f/a/i;->c:Le/f/a/o/h;

    .line 7
    iput-object p3, p0, Le/f/a/i;->e:Le/f/a/o/m;

    .line 8
    iput-object p4, p0, Le/f/a/i;->d:Le/f/a/o/n;

    .line 9
    iput-object p6, p0, Le/f/a/i;->b:Landroid/content/Context;

    .line 10
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Le/f/a/i$c;

    invoke-direct {p6, p0, p4}, Le/f/a/i$c;-><init>(Le/f/a/i;Le/f/a/o/n;)V

    .line 11
    check-cast p5, Le/f/a/o/f;

    .line 12
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "android.permission.ACCESS_NETWORK_STATE"

    .line 13
    invoke-static {p3, p4}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p4

    const/4 p5, 0x1

    if-nez p4, :cond_0

    move p4, p5

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v2, 0x3

    const-string v3, "ConnectivityMonitor"

    .line 14
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    if-eqz p4, :cond_1

    .line 15
    new-instance p4, Le/f/a/o/e;

    invoke-direct {p4, p3, p6}, Le/f/a/o/e;-><init>(Landroid/content/Context;Le/f/a/o/c$a;)V

    goto :goto_1

    .line 16
    :cond_1
    new-instance p4, Le/f/a/o/j;

    invoke-direct {p4}, Le/f/a/o/j;-><init>()V

    .line 17
    :goto_1
    iput-object p4, p0, Le/f/a/i;->i:Le/f/a/o/c;

    .line 18
    invoke-static {}, Le/f/a/t/j;->h()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 19
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 20
    :cond_2
    invoke-interface {p2, p0}, Le/f/a/o/h;->b(Le/f/a/o/i;)V

    .line 21
    :goto_2
    invoke-interface {p2, p4}, Le/f/a/o/h;->b(Le/f/a/o/i;)V

    .line 22
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    iget-object p3, p1, Le/f/a/c;->d:Le/f/a/e;

    .line 24
    iget-object p3, p3, Le/f/a/e;->e:Ljava/util/List;

    .line 25
    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Le/f/a/i;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    iget-object p2, p1, Le/f/a/c;->d:Le/f/a/e;

    .line 27
    monitor-enter p2

    .line 28
    :try_start_0
    iget-object p3, p2, Le/f/a/e;->j:Le/f/a/r/h;

    if-nez p3, :cond_3

    .line 29
    iget-object p3, p2, Le/f/a/e;->d:Le/f/a/c$a;

    check-cast p3, Le/f/a/d$a;

    .line 30
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance p3, Le/f/a/r/h;

    invoke-direct {p3}, Le/f/a/r/h;-><init>()V

    .line 32
    iput-boolean p5, p3, Le/f/a/r/a;->t:Z

    .line 33
    iput-object p3, p2, Le/f/a/e;->j:Le/f/a/r/h;

    .line 34
    :cond_3
    iget-object p3, p2, Le/f/a/e;->j:Le/f/a/r/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p2

    .line 35
    invoke-virtual {p0, p3}, Le/f/a/i;->u(Le/f/a/r/h;)V

    .line 36
    iget-object p3, p1, Le/f/a/c;->i:Ljava/util/List;

    monitor-enter p3

    .line 37
    :try_start_1
    iget-object p2, p1, Le/f/a/c;->i:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 38
    iget-object p1, p1, Le/f/a/c;->i:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    monitor-exit p3

    return-void

    .line 40
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot register already registered manager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 42
    monitor-exit p2

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Le/f/a/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Le/f/a/h<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/f/a/h;

    iget-object v1, p0, Le/f/a/i;->a:Le/f/a/c;

    iget-object v2, p0, Le/f/a/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Le/f/a/h;-><init>(Le/f/a/c;Le/f/a/i;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public f()Le/f/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/a/h<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Le/f/a/i;->a(Ljava/lang/Class;)Le/f/a/h;

    move-result-object v0

    sget-object v1, Le/f/a/i;->l:Le/f/a/r/h;

    invoke-virtual {v0, v1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v0

    return-object v0
.end method

.method public k()Le/f/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/a/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Le/f/a/i;->a(Ljava/lang/Class;)Le/f/a/h;

    move-result-object v0

    return-object v0
.end method

.method public l()Le/f/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/f/a/h<",
            "Le/f/a/n/q/h/c;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Le/f/a/n/q/h/c;

    invoke-virtual {p0, v0}, Le/f/a/i;->a(Ljava/lang/Class;)Le/f/a/h;

    move-result-object v0

    sget-object v1, Le/f/a/i;->m:Le/f/a/r/h;

    invoke-virtual {v0, v1}, Le/f/a/h;->J(Le/f/a/r/a;)Le/f/a/h;

    move-result-object v0

    return-object v0
.end method

.method public m(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/i$b;

    invoke-direct {v0, p1}, Le/f/a/i$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Le/f/a/i;->n(Le/f/a/r/k/k;)V

    return-void
.end method

.method public n(Le/f/a/r/k/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/r/k/k<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Le/f/a/i;->v(Le/f/a/r/k/k;)Z

    move-result v0

    .line 2
    invoke-interface {p1}, Le/f/a/r/k/k;->b()Le/f/a/r/d;

    move-result-object v1

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Le/f/a/i;->a:Le/f/a/c;

    .line 4
    iget-object v2, v0, Le/f/a/c;->i:Ljava/util/List;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v0, v0, Le/f/a/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/f/a/i;

    .line 6
    invoke-virtual {v3, p1}, Le/f/a/i;->v(Le/f/a/r/k/k;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 7
    monitor-exit v2

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Le/f/a/r/k/k;->h(Le/f/a/r/d;)V

    .line 10
    invoke-interface {v1}, Le/f/a/r/d;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public o(Landroid/graphics/drawable/Drawable;)Le/f/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Le/f/a/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/a/i;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->R(Landroid/graphics/drawable/Drawable;)Le/f/a/h;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/a/i;->f:Le/f/a/o/p;

    invoke-virtual {v0}, Le/f/a/o/p;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/f/a/i;->f:Le/f/a/o/p;

    .line 3
    iget-object v0, v0, Le/f/a/o/p;->a:Ljava/util/Set;

    invoke-static {v0}, Le/f/a/t/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/r/k/k;

    .line 5
    invoke-virtual {p0, v1}, Le/f/a/i;->n(Le/f/a/r/k/k;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/f/a/i;->f:Le/f/a/o/p;

    .line 7
    iget-object v0, v0, Le/f/a/o/p;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 8
    iget-object v0, p0, Le/f/a/i;->d:Le/f/a/o/n;

    .line 9
    iget-object v1, v0, Le/f/a/o/n;->a:Ljava/util/Set;

    invoke-static {v1}, Le/f/a/t/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/a/r/d;

    .line 10
    invoke-virtual {v0, v2}, Le/f/a/o/n;->a(Le/f/a/r/d;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, v0, Le/f/a/o/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-object v0, p0, Le/f/a/i;->c:Le/f/a/o/h;

    invoke-interface {v0, p0}, Le/f/a/o/h;->a(Le/f/a/o/i;)V

    .line 13
    iget-object v0, p0, Le/f/a/i;->c:Le/f/a/o/h;

    iget-object v1, p0, Le/f/a/i;->i:Le/f/a/o/c;

    invoke-interface {v0, v1}, Le/f/a/o/h;->a(Le/f/a/o/i;)V

    .line 14
    iget-object v0, p0, Le/f/a/i;->h:Landroid/os/Handler;

    iget-object v1, p0, Le/f/a/i;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Le/f/a/i;->a:Le/f/a/c;

    .line 16
    iget-object v1, v0, Le/f/a/c;->i:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v2, v0, Le/f/a/c;->i:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v0, v0, Le/f/a/c;->i:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    .line 21
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/f/a/i;->t()V

    .line 2
    iget-object v0, p0, Le/f/a/i;->f:Le/f/a/o/p;

    invoke-virtual {v0}, Le/f/a/o/p;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/f/a/i;->s()V

    .line 2
    iget-object v0, p0, Le/f/a/i;->f:Le/f/a/o/p;

    invoke-virtual {v0}, Le/f/a/o/p;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    return-void
.end method

.method public p(Landroid/net/Uri;)Le/f/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Le/f/a/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/a/i;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->S(Landroid/net/Uri;)Le/f/a/h;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/Integer;)Le/f/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Le/f/a/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/a/i;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->T(Ljava/lang/Integer;)Le/f/a/h;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;)Le/f/a/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/f/a/h<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/a/i;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized s()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/a/i;->d:Le/f/a/o/n;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/f/a/o/n;->c:Z

    .line 3
    iget-object v1, v0, Le/f/a/o/n;->a:Ljava/util/Set;

    invoke-static {v1}, Le/f/a/t/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/a/r/d;

    .line 4
    invoke-interface {v2}, Le/f/a/r/d;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Le/f/a/r/d;->pause()V

    .line 6
    iget-object v3, v0, Le/f/a/o/n;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/f/a/i;->d:Le/f/a/o/n;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/f/a/o/n;->c:Z

    .line 3
    iget-object v1, v0, Le/f/a/o/n;->a:Ljava/util/Set;

    invoke-static {v1}, Le/f/a/t/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/a/r/d;

    .line 4
    invoke-interface {v2}, Le/f/a/r/d;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Le/f/a/r/d;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v2}, Le/f/a/r/d;->h()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v0, Le/f/a/o/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/f/a/i;->d:Le/f/a/o/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/f/a/i;->e:Le/f/a/o/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized u(Le/f/a/r/h;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/r/h;

    invoke-virtual {p1}, Le/f/a/r/a;->b()Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/r/h;

    iput-object p1, p0, Le/f/a/i;->k:Le/f/a/r/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized v(Le/f/a/r/k/k;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/r/k/k<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Le/f/a/r/k/k;->b()Le/f/a/r/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v2, p0, Le/f/a/i;->d:Le/f/a/o/n;

    invoke-virtual {v2, v0}, Le/f/a/o/n;->a(Le/f/a/r/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/f/a/i;->f:Le/f/a/o/p;

    .line 5
    iget-object v0, v0, Le/f/a/o/p;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Le/f/a/r/k/k;->h(Le/f/a/r/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 8
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
