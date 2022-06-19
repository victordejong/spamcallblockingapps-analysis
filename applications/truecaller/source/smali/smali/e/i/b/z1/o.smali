.class public Le/i/b/z1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/z1/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/i/b/z1/u<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Ljava/lang/Object;

.field public c:Le/p/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/p/c/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/reflect/Method;

.field public e:Le/p/c/e;

.field public final f:Le/i/b/z1/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/z1/j0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Le/i/b/z1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/z1/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/i/b/z1/j0;Le/i/b/z1/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/z1/j0<",
            "TT;>;",
            "Le/i/b/z1/h<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/z1/o;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/z1/o;->a:Le/i/b/q2/h;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/i/b/z1/o;->b:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/i/b/z1/o;->f:Le/i/b/z1/j0;

    .line 5
    iput-object p2, p0, Le/i/b/z1/o;->g:Le/i/b/z1/h;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Le/i/b/z1/o;->d:Ljava/lang/reflect/Method;

    .line 7
    iput-object p1, p0, Le/i/b/z1/o;->e:Le/p/c/e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 32
    iget-object v0, p0, Le/i/b/z1/o;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Le/i/b/z1/o;->c()Le/p/c/d;

    move-result-object v1

    .line 34
    instance-of v2, v1, Le/p/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 35
    :try_start_1
    invoke-virtual {p0}, Le/i/b/z1/o;->d()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 36
    move-object v3, v1

    check-cast v3, Le/p/c/b;

    invoke-virtual {p0, v3}, Le/i/b/z1/o;->b(Le/p/c/b;)Le/p/c/e;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception v2

    .line 38
    invoke-static {v2}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    .line 39
    :cond_0
    invoke-interface {v1}, Le/p/c/d;->size()I

    move-result v1

    iget-object v2, p0, Le/i/b/z1/o;->g:Le/i/b/z1/h;

    invoke-interface {v2}, Le/i/b/z1/h;->a()I

    move-result v2

    mul-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public a(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Le/i/b/z1/o;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Le/i/b/z1/o;->c()Le/p/c/d;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_7

    .line 11
    :try_start_1
    invoke-interface {v1}, Le/p/c/d;->peek()Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Le/p/c/a; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    .line 12
    :try_start_2
    invoke-interface {v1}, Le/p/c/d;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 13
    invoke-interface {v1}, Le/p/c/d;->remove()V
    :try_end_2
    .catch Le/p/c/a; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catch_0
    move-exception p1

    if-nez v3, :cond_0

    move-object v3, p1

    goto :goto_6

    .line 14
    :cond_0
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    .line 15
    :cond_1
    :try_start_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Le/p/c/a; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    :try_start_5
    invoke-interface {v1}, Le/p/c/d;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 17
    invoke-interface {v1}, Le/p/c/d;->remove()V
    :try_end_5
    .catch Le/p/c/a; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v5

    if-nez v3, :cond_2

    move-object v3, v5

    goto :goto_3

    .line 18
    :cond_2
    :goto_1
    :try_start_6
    invoke-virtual {v3, v5}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v5

    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    .line 19
    :cond_3
    :try_start_7
    invoke-virtual {v3, v5}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 20
    :goto_2
    :try_start_8
    invoke-interface {v1}, Le/p/c/d;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 21
    invoke-interface {v1}, Le/p/c/d;->remove()V
    :try_end_8
    .catch Le/p/c/a; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catch_3
    move-exception v5

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :goto_4
    :try_start_9
    invoke-interface {v1}, Le/p/c/d;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 23
    invoke-interface {v1}, Le/p/c/d;->remove()V
    :try_end_9
    .catch Le/p/c/a; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catch_4
    move-exception v1

    if-nez v3, :cond_5

    goto :goto_5

    .line 24
    :cond_5
    :try_start_a
    invoke-virtual {v3, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 25
    :cond_6
    :goto_5
    throw p1

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    .line 26
    iget-object p1, p0, Le/i/b/z1/o;->a:Le/i/b/q2/h;

    const-string v1, "exception"

    .line 27
    invoke-static {v3, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Le/i/b/q2/f;

    const/4 v4, 0x5

    const-string v5, "Error when polling element from queue file"

    const-string v6, "onErrorWhenPollingQueueFile"

    invoke-direct {v1, v4, v5, v3, v6}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_8

    .line 30
    :cond_8
    :goto_7
    monitor-exit v0

    return-object v2

    .line 31
    :goto_8
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/z1/o;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/i/b/z1/o;->c()Le/p/c/d;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-interface {v1, p1}, Le/p/c/d;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Le/p/c/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 4
    :try_start_2
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 6
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(Le/p/c/b;)Le/p/c/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/p/c/b<",
            "*>;)",
            "Le/p/c/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/z1/o;->e:Le/p/c/e;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Le/p/c/b;

    const-string v1, "queueFile"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/p/c/e;

    iput-object p1, p0, Le/i/b/z1/o;->e:Le/p/c/e;

    .line 5
    :cond_0
    iget-object p1, p0, Le/i/b/z1/o;->e:Le/p/c/e;

    return-object p1
.end method

.method public final c()Le/p/c/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/p/c/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/z1/o;->c:Le/p/c/d;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/i/b/z1/o;->f:Le/i/b/z1/j0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Le/i/b/z1/j0;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, v0, Le/i/b/z1/j0;->d:Le/i/b/z1/h;

    invoke-interface {v3}, Le/i/b/z1/h;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v2, Le/p/c/b;

    new-instance v3, Le/i/b/z1/j0$a;

    iget-object v4, v0, Le/i/b/z1/j0;->c:Le/i/b/s2/j;

    iget-object v5, v0, Le/i/b/z1/j0;->d:Le/i/b/z1/h;

    .line 6
    invoke-interface {v5}, Le/i/b/z1/h;->b()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Le/i/b/z1/j0$a;-><init>(Le/i/b/s2/j;Ljava/lang/Class;)V

    invoke-direct {v2, v1, v3}, Le/p/c/b;-><init>(Ljava/io/File;Le/p/c/b$a;)V

    .line 7
    invoke-virtual {v2}, Le/p/c/b;->peek()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v0, v1}, Le/i/b/z1/j0;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    :try_start_1
    new-instance v3, Le/p/c/b;

    new-instance v4, Le/i/b/z1/j0$a;

    iget-object v5, v0, Le/i/b/z1/j0;->c:Le/i/b/s2/j;

    iget-object v6, v0, Le/i/b/z1/j0;->d:Le/i/b/z1/h;

    .line 10
    invoke-interface {v6}, Le/i/b/z1/h;->b()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/i/b/z1/j0$a;-><init>(Le/i/b/s2/j;Ljava/lang/Class;)V

    invoke-direct {v3, v1, v4}, Le/p/c/b;-><init>(Ljava/io/File;Le/p/c/b$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    iget-object v0, v0, Le/i/b/z1/j0;->a:Le/i/b/q2/h;

    invoke-static {v2}, Le/i/b/z1/j;->a(Ljava/lang/Exception;)Le/i/b/q2/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 12
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object v0, v0, Le/i/b/z1/j0;->a:Le/i/b/q2/h;

    invoke-static {v2}, Le/i/b/z1/j;->a(Ljava/lang/Exception;)Le/i/b/q2/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    goto :goto_1

    :goto_0
    iget-object v0, v0, Le/i/b/z1/j0;->a:Le/i/b/q2/h;

    invoke-static {v2}, Le/i/b/z1/j;->a(Ljava/lang/Exception;)Le/i/b/q2/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 14
    throw v1

    .line 15
    :cond_0
    :goto_1
    new-instance v2, Le/p/c/c;

    invoke-direct {v2}, Le/p/c/c;-><init>()V

    .line 16
    :goto_2
    iput-object v2, p0, Le/i/b/z1/o;->c:Le/p/c/d;

    .line 17
    :cond_1
    iget-object v0, p0, Le/i/b/z1/o;->c:Le/p/c/d;

    return-object v0
.end method

.method public final d()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/z1/o;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 2
    const-class v1, Le/p/c/e;

    const-string v2, "usedBytes"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Le/i/b/z1/o;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/i/b/z1/o;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method
