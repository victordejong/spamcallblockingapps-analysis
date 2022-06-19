.class public Le/i/b/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/x2$a;
    }
.end annotation


# static fields
.field public static d:Le/i/b/x2;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/app/Application;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static declared-synchronized h()Le/i/b/x2;
    .locals 2

    const-class v0, Le/i/b/x2;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/i/b/x2;->d:Le/i/b/x2;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/i/b/x2;

    invoke-direct {v1}, Le/i/b/x2;-><init>()V

    sput-object v1, Le/i/b/x2;->d:Le/i/b/x2;

    .line 3
    :cond_0
    sget-object v1, Le/i/b/x2;->d:Le/i/b/x2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Le/i/b/s2/i;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/e0;

    invoke-direct {v0, p0}, Le/i/b/e0;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/s2/i;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/s2/i;

    return-object v0
.end method

.method public b()Le/i/b/d2/c;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/q0;

    invoke-direct {v0, p0}, Le/i/b/q0;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/d2/c;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/d2/c;

    return-object v0
.end method

.method public c()Le/i/b/s2/j;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/p0;

    invoke-direct {v0, p0}, Le/i/b/p0;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/s2/j;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/s2/j;

    return-object v0
.end method

.method public d()Le/i/b/i2/g;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/w0;

    invoke-direct {v0, p0}, Le/i/b/w0;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/i2/g;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/i2/g;

    return-object v0
.end method

.method public final e(Le/i/b/z1/h;)Le/i/b/z1/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/i/b/z1/h<",
            "TT;>;)",
            "Le/i/b/z1/u<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/i/b/z1/j0;

    .line 2
    invoke-virtual {p0}, Le/i/b/x2;->w()Landroid/content/Context;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Le/i/b/x2;->c()Le/i/b/s2/j;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Le/i/b/z1/j0;-><init>(Landroid/content/Context;Le/i/b/s2/j;Le/i/b/z1/h;)V

    .line 4
    new-instance v1, Le/i/b/z1/o;

    invoke-direct {v1, v0, p1}, Le/i/b/z1/o;-><init>(Le/i/b/z1/j0;Le/i/b/z1/h;)V

    .line 5
    new-instance v0, Le/i/b/z1/t;

    invoke-direct {v0, v1, p1}, Le/i/b/z1/t;-><init>(Le/i/b/z1/u;Le/i/b/z1/h;)V

    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/x2;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Le/i/b/w2;

    const-string v1, "Application reference is required"

    invoke-direct {v0, v1}, Le/i/b/w2;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Le/i/b/r1/e;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/n;

    invoke-direct {v0, p0}, Le/i/b/n;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/r1/e;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/r1/e;

    return-object v0
.end method

.method public i()Le/i/b/w1/c;
    .locals 4

    .line 1
    sget-object v0, Le/i/b/f;->a:Le/i/b/f;

    const-class v1, Le/i/b/w1/c;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/w1/c;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Le/i/b/s2/b;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/f1;

    invoke-direct {v0, p0}, Le/i/b/f1;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/s2/b;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/s2/b;

    return-object v0
.end method

.method public l()Le/i/b/s2/c;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/s;

    invoke-direct {v0, p0}, Le/i/b/s;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/s2/c;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/s2/c;

    return-object v0
.end method

.method public m()Le/i/b/e3;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/i0;

    invoke-direct {v0, p0}, Le/i/b/i0;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/e3;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/e3;

    return-object v0
.end method

.method public n()Landroid/content/SharedPreferences;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/u0;

    invoke-direct {v0, p0}, Le/i/b/u0;-><init>(Le/i/b/x2;)V

    const-class v1, Landroid/content/SharedPreferences;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public o()Ljava/util/concurrent/Executor;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/w1/d;

    invoke-direct {v0}, Le/i/b/w1/d;-><init>()V

    const-class v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public p()Le/i/b/f3/c;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/c1;

    invoke-direct {v0, p0}, Le/i/b/c1;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/f3/c;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/f3/c;

    return-object v0
.end method

.method public q()Le/i/b/y1;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/d0;

    invoke-direct {v0, p0}, Le/i/b/d0;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/y1;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/y1;

    return-object v0
.end method

.method public r()Le/i/b/l2/b;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/f0;

    invoke-direct {v0, p0}, Le/i/b/f0;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/l2/b;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/l2/b;

    return-object v0
.end method

.method public s()Le/i/b/s2/f;
    .locals 4

    .line 1
    sget-object v0, Le/i/b/l1;->a:Le/i/b/l1;

    const-class v1, Le/i/b/s2/f;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/s2/f;

    return-object v0
.end method

.method public t()Le/i/b/e2;
    .locals 4

    .line 1
    sget-object v0, Le/i/b/d;->a:Le/i/b/d;

    const-class v1, Le/i/b/e2;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/e2;

    return-object v0
.end method

.method public u()Le/i/b/u2/x;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/i1;

    invoke-direct {v0, p0}, Le/i/b/i1;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/u2/x;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/u2/x;

    return-object v0
.end method

.method public v()Le/i/b/l2/a;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/v0;

    invoke-direct {v0, p0}, Le/i/b/v0;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/l2/a;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/l2/a;

    return-object v0
.end method

.method public w()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/x2;->f()V

    .line 2
    iget-object v0, p0, Le/i/b/x2;->b:Landroid/app/Application;

    .line 3
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public x()Le/i/b/u2/y;
    .locals 4

    .line 1
    new-instance v0, Le/i/b/m;

    invoke-direct {v0, p0}, Le/i/b/m;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/u2/y;

    .line 2
    iget-object v2, p0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Le/i/b/u2/y;

    return-object v0
.end method
