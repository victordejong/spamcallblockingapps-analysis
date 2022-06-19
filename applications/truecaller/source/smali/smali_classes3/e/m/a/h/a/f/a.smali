.class public Le/m/a/h/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/m/a/h/a/f/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/m/a/h/a/f/e;

.field public final b:Le/m/a/h/a/g/a0;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/m/a/h/a/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Le/m/a/h/a/f/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    .line 1
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/m/a/h/a/f/a;->c:Ljava/util/Set;

    :try_start_0
    new-instance v0, Le/m/a/h/a/f/e;

    .line 2
    invoke-direct {v0, p1}, Le/m/a/h/a/f/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/m/a/h/a/f/a;->a:Le/m/a/h/a/f/e;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v1, Le/m/a/h/a/f/b;

    .line 4
    invoke-direct {v1, v0}, Le/m/a/h/a/f/b;-><init>(Le/m/a/h/a/f/e;)V

    iput-object v1, p0, Le/m/a/h/a/f/a;->d:Le/m/a/h/a/f/b;

    new-instance v0, Le/m/a/h/a/g/a0;

    .line 5
    invoke-direct {v0, p1}, Le/m/a/h/a/g/a0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/m/a/h/a/f/a;->b:Le/m/a/h/a/g/a0;

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Le/m/a/h/a/d/q0;

    .line 7
    invoke-direct {v0, p1}, Le/m/a/h/a/d/q0;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Le/m/a/h/a/f/a;->d(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;Z)Z
    .locals 9

    sget-object v0, Le/m/a/h/a/f/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Le/m/a/h/a/f/a;

    .line 1
    invoke-direct {v1, p0}, Le/m/a/h/a/f/a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/f/a;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Le/m/a/h/a/g/l0;->a:Le/m/a/h/a/g/l0;

    new-instance v1, Le/m/a/h/a/d/w;

    .line 4
    invoke-static {}, Ln3/g0/y;->u2()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Le/m/a/h/a/d/y;

    iget-object v3, v0, Le/m/a/h/a/f/a;->a:Le/m/a/h/a/f/e;

    new-instance v4, Le/m/a/h/a/d/t;

    invoke-direct {v4}, Le/m/a/h/a/d/t;-><init>()V

    invoke-direct {v6, p0, v3, v4}, Le/m/a/h/a/d/y;-><init>(Landroid/content/Context;Le/m/a/h/a/f/e;Le/m/a/h/a/d/t;)V

    iget-object v7, v0, Le/m/a/h/a/f/a;->a:Le/m/a/h/a/f/e;

    new-instance v8, Le/m/a/h/a/f/r;

    invoke-direct {v8}, Le/m/a/h/a/f/r;-><init>()V

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Le/m/a/h/a/d/w;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Le/m/a/h/a/d/y;Le/m/a/h/a/f/e;Le/m/a/h/a/f/r;)V

    .line 5
    sget-object v3, Le/m/a/h/a/g/l0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 7
    new-instance v1, Le/m/a/h/a/f/n;

    .line 8
    invoke-direct {v1, v0}, Le/m/a/h/a/f/n;-><init>(Le/m/a/h/a/f/a;)V

    .line 9
    sget-object v3, Le/m/a/h/a/g/n0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    invoke-static {}, Ln3/g0/y;->u2()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Le/m/a/h/a/f/o;

    invoke-direct {v2, p0}, Le/m/a/h/a/f/o;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {v0, p0, p1}, Le/m/a/h/a/f/a;->c(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Le/m/a/h/a/f/a;->a:Le/m/a/h/a/f/e;

    .line 2
    invoke-virtual {v1, v0}, Le/m/a/h/a/f/e;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Le/m/a/h/a/f/e;->e(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le/m/a/h/a/f/a;->b:Le/m/a/h/a/g/a0;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Le/m/a/h/a/g/a0;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Le/m/a/h/a/g/a0;->b()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "modules_to_uninstall_if_emulated"

    .line 6
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/f/a;->a:Le/m/a/h/a/f/e;

    .line 1
    invoke-virtual {v0}, Le/m/a/h/a/f/e;->d()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ln3/g0/y;->u2()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Le/m/a/h/a/f/p;

    invoke-direct {v1, p0}, Le/m/a/h/a/f/p;-><init>(Le/m/a/h/a/f/a;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 7
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :goto_1
    :try_start_2
    iget-object v0, p0, Le/m/a/h/a/f/a;->a:Le/m/a/h/a/f/e;

    .line 11
    invoke-virtual {v0}, Le/m/a/h/a/f/e;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Le/m/a/h/a/f/a;->b:Le/m/a/h/a/g/a0;

    .line 12
    invoke-virtual {v2}, Le/m/a/h/a/g/a0;->a()Ljava/util/Set;

    move-result-object v2

    new-instance v4, Ljava/util/HashSet;

    .line 13
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    check-cast v0, Ljava/util/HashSet;

    :try_start_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 15
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/h/a/f/s;

    invoke-virtual {v6}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 17
    invoke-static {v6}, Le/m/a/h/a/g/o0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 18
    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 20
    invoke-virtual {p0, v4}, Le/m/a/h/a/f/a;->b(Ljava/util/Set;)V

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 22
    invoke-static {}, Ln3/g0/y;->u2()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v5, Le/m/a/h/a/f/q;

    invoke-direct {v5, p0, v4}, Le/m/a/h/a/f/q;-><init>(Le/m/a/h/a/f/a;Ljava/util/Set;)V

    .line 23
    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    :cond_6
    :goto_3
    new-instance v2, Ljava/util/HashSet;

    .line 25
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 26
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/h/a/f/s;

    .line 27
    invoke-virtual {v5}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-static {v5}, Le/m/a/h/a/g/o0;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 29
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 30
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 31
    invoke-static {v4}, Le/m/a/h/a/g/o0;->d(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 32
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v3, Ljava/util/HashSet;

    .line 33
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 34
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/h/a/f/s;

    .line 35
    invoke-virtual {v4}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v5

    .line 36
    sget-object v6, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    const-string v6, "config."

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 38
    invoke-virtual {v4}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/m/a/h/a/g/o0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 39
    :cond_c
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-instance v0, Le/m/a/h/a/f/m;

    iget-object v2, p0, Le/m/a/h/a/f/a;->a:Le/m/a/h/a/f/e;

    .line 40
    invoke-direct {v0, v2}, Le/m/a/h/a/f/m;-><init>(Le/m/a/h/a/f/e;)V

    .line 41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    packed-switch v2, :pswitch_data_0

    goto :goto_7

    .line 42
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-nez v2, :cond_e

    new-instance v2, Le/m/a/h/a/d/n0;

    invoke-direct {v2}, Le/m/a/h/a/d/n0;-><init>()V

    goto :goto_8

    :pswitch_1
    new-instance v2, Le/m/a/h/a/d/m0;

    invoke-direct {v2}, Le/m/a/h/a/d/m0;-><init>()V

    goto :goto_8

    :pswitch_2
    new-instance v2, Le/m/a/h/a/d/j0;

    invoke-direct {v2}, Le/m/a/h/a/d/j0;-><init>()V

    goto :goto_8

    :pswitch_3
    new-instance v2, Le/m/a/h/a/d/i0;

    invoke-direct {v2}, Le/m/a/h/a/d/i0;-><init>()V

    goto :goto_8

    :pswitch_4
    new-instance v2, Le/m/a/h/a/d/h0;

    invoke-direct {v2}, Le/m/a/h/a/d/h0;-><init>()V

    goto :goto_8

    :cond_e
    :goto_7
    new-instance v2, Le/m/a/h/a/d/p0;

    invoke-direct {v2}, Le/m/a/h/a/d/p0;-><init>()V

    .line 43
    :goto_8
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz p2, :cond_f

    .line 44
    invoke-virtual {v0}, Le/m/a/h/a/f/m;->a()Ljava/util/Set;

    move-result-object v0

    .line 45
    invoke-interface {v2, v4, v0}, Le/m/a/h/a/d/z;->a(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    goto :goto_b

    .line 46
    :cond_f
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 47
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 48
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/m/a/h/a/f/s;

    .line 49
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v9, Ljava/util/HashSet;

    .line 51
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Le/m/a/h/a/f/g;

    .line 52
    invoke-direct {v10, v0, v7, v9, v8}, Le/m/a/h/a/f/g;-><init>(Le/m/a/h/a/f/m;Le/m/a/h/a/f/s;Ljava/util/Set;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-static {v7, v10}, Le/m/a/h/a/f/m;->b(Le/m/a/h/a/f/s;Le/m/a/h/a/f/j;)V

    .line 53
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_a

    :cond_10
    move-object v9, v5

    :goto_a
    if-nez v9, :cond_11

    .line 54
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 55
    :cond_11
    invoke-interface {v2, v4, v9}, Le/m/a/h/a/d/z;->a(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    goto :goto_9

    .line 56
    :cond_12
    :goto_b
    new-instance v0, Ljava/util/HashSet;

    .line 57
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/h/a/f/s;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :try_start_4
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-virtual {v6}, Le/m/a/h/a/f/s;->a()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v8, "classes.dex"

    .line 60
    invoke-virtual {v7, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 61
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v8, :cond_14

    :try_start_6
    iget-object v7, p0, Le/m/a/h/a/f/a;->a:Le/m/a/h/a/f/e;

    .line 62
    invoke-virtual {v6}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/io/File;

    .line 64
    invoke-virtual {v7}, Le/m/a/h/a/f/e;->k()Ljava/io/File;

    move-result-object v7

    const-string v10, "dex"

    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Le/m/a/h/a/f/e;->i(Ljava/io/File;)Ljava/io/File;

    .line 65
    invoke-static {v9, v8}, Le/m/a/h/a/f/e;->f(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Le/m/a/h/a/f/e;->i(Ljava/io/File;)Ljava/io/File;

    .line 66
    invoke-virtual {v6}, Le/m/a/h/a/f/s;->a()Ljava/io/File;

    move-result-object v8

    .line 67
    invoke-interface {v2, v4, v7, v8, p2}, Le/m/a/h/a/d/z;->b(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_d

    .line 68
    :cond_13
    invoke-virtual {v6}, Le/m/a/h/a/f/s;->a()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    goto :goto_c

    .line 69
    :cond_14
    :goto_d
    invoke-virtual {v6}, Le/m/a/h/a/f/s;->a()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_c

    :catch_0
    move-exception p1

    move-object v5, v7

    goto :goto_e

    :catch_1
    move-exception p1

    :goto_e
    if-eqz v5, :cond_15

    .line 70
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 71
    :catch_2
    :cond_15
    :try_start_8
    throw p1

    .line 72
    :cond_16
    iget-object p2, p0, Le/m/a/h/a/f/a;->d:Le/m/a/h/a/f/b;

    .line 73
    invoke-virtual {p2, p1, v0}, Le/m/a/h/a/f/b;->a(Landroid/content/Context;Ljava/util/Set;)V

    new-instance p1, Ljava/util/HashSet;

    .line 74
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 75
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/f/s;

    .line 76
    invoke-virtual {v1}, Le/m/a/h/a/f/s;->a()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 77
    invoke-virtual {v1}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 78
    invoke-virtual {v1}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 79
    :cond_17
    invoke-virtual {v1}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    goto :goto_f

    .line 80
    :cond_18
    iget-object p2, p0, Le/m/a/h/a/f/a;->c:Ljava/util/Set;

    monitor-enter p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object v0, p0, Le/m/a/h/a/f/a;->c:Ljava/util/Set;

    .line 81
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 82
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_a
    monitor-exit p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw p1

    :catch_3
    move-exception p1

    .line 83
    new-instance p2, Ljava/io/IOException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Cannot load data for application \'%s\'"

    .line 84
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
