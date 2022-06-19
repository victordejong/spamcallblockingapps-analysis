.class public final Lp3/a/n1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/k$d;,
        Lp3/a/n1/k$c;,
        Lp3/a/n1/k$f;,
        Lp3/a/n1/k$b;,
        Lp3/a/n1/k$e;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/k0;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lp3/a/k0;->c:Ljava/util/logging/Logger;

    const-class v0, Lp3/a/j0;

    const-class v1, Lp3/a/k0;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v2, Lp3/a/k0;->d:Lp3/a/k0;

    if-nez v2, :cond_2

    .line 3
    sget-object v2, Lp3/a/k0;->e:Ljava/lang/Iterable;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lp3/a/k0$a;

    invoke-direct {v4}, Lp3/a/k0$a;-><init>()V

    .line 5
    invoke-static {v0, v2, v3, v4}, Le/q/f/a/d/a;->U1(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lp3/a/f1;)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v2, Lp3/a/k0;

    invoke-direct {v2}, Lp3/a/k0;-><init>()V

    sput-object v2, Lp3/a/k0;->d:Lp3/a/k0;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/a/j0;

    .line 8
    sget-object v3, Lp3/a/k0;->c:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service loader found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lp3/a/j0;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    sget-object v3, Lp3/a/k0;->d:Lp3/a/k0;

    .line 11
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {v2}, Lp3/a/j0;->d()Z

    move-result v4

    const-string v5, "isAvailable() returned false"

    invoke-static {v4, v5}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 13
    iget-object v4, v3, Lp3/a/k0;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1

    .line 15
    :cond_1
    sget-object v0, Lp3/a/k0;->d:Lp3/a/k0;

    invoke-virtual {v0}, Lp3/a/k0;->b()V

    .line 16
    :cond_2
    sget-object v0, Lp3/a/k0;->d:Lp3/a/k0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "registry"

    .line 18
    invoke-static {v0, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lp3/a/n1/k;->a:Lp3/a/k0;

    const-string v0, "defaultPolicy"

    .line 19
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/k;->b:Ljava/lang/String;

    return-void

    :catchall_1
    move-exception p1

    .line 20
    monitor-exit v1

    throw p1
.end method

.method public static a(Lp3/a/n1/k;Ljava/lang/String;Ljava/lang/String;)Lp3/a/j0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/a/n1/k$f;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lp3/a/n1/k;->a:Lp3/a/k0;

    invoke-virtual {p0, p1}, Lp3/a/k0;->a(Ljava/lang/String;)Lp3/a/j0;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lp3/a/n1/k$f;

    const-string v0, "Trying to load \'"

    const-string v1, "\' because "

    const-string v2, ", but it\'s unavailable"

    invoke-static {v0, p1, v1, p2, v2}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lp3/a/n1/k$f;-><init>(Ljava/lang/String;Lp3/a/n1/k$a;)V

    throw p0
.end method
