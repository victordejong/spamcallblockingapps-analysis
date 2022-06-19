.class public Le/i/b/z1/w;
.super Le/i/b/z1/b0;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Le/i/b/z1/y;

.field public final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/io/File;",
            "Le/i/b/z1/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/i/b/z1/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/i/b/z1/b0;-><init>()V

    .line 2
    const-class v0, Le/i/b/z1/w;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/z1/w;->a:Le/i/b/q2/h;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Le/i/b/z1/w;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    iput-object p1, p0, Le/i/b/z1/w;->b:Le/i/b/z1/y;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Le/i/b/z1/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/z1/w;->b:Le/i/b/z1/y;

    invoke-virtual {v0}, Le/i/b/z1/y;->b()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 4
    :try_start_0
    invoke-virtual {p0, v2}, Le/i/b/z1/w;->f(Ljava/io/File;)Le/i/b/z1/l;

    move-result-object v2

    invoke-virtual {v2}, Le/i/b/z1/l;->c()Le/i/b/z1/x;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6
    iget-object v3, p0, Le/i/b/z1/w;->a:Le/i/b/q2/h;

    .line 7
    new-instance v4, Le/i/b/q2/f;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-string v7, "Error while reading metric"

    invoke-direct {v4, v5, v7, v2, v6}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public b(Ljava/lang/String;Le/i/b/z1/z;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/z1/w;->b:Le/i/b/z1/y;

    invoke-virtual {v0, p1}, Le/i/b/z1/y;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/i/b/z1/w;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Le/i/b/z1/w$a;

    invoke-direct {v1, p0, p1}, Le/i/b/z1/w$a;-><init>(Le/i/b/z1/w;Ljava/io/File;)V

    invoke-static {v0, p1, v1}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/i/b/z1/l;

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Le/i/b/z1/l;->b(Le/i/b/z1/z;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Le/i/b/z1/w;->a:Le/i/b/q2/h;

    .line 5
    new-instance v0, Le/i/b/q2/f;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "Error while moving metric"

    invoke-direct {v0, v1, v3, p1, v2}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Le/i/b/z1/b0$a;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/z1/w;->b:Le/i/b/z1/y;

    invoke-virtual {v0, p1}, Le/i/b/z1/y;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/i/b/z1/w;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Le/i/b/z1/w$a;

    invoke-direct {v1, p0, p1}, Le/i/b/z1/w$a;-><init>(Le/i/b/z1/w;Ljava/io/File;)V

    invoke-static {v0, p1, v1}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/i/b/z1/l;

    .line 3
    :try_start_0
    iget-object v0, p1, Le/i/b/z1/l;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {p1}, Le/i/b/z1/l;->c()Le/i/b/z1/x;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Le/i/b/z1/x;->k()Le/i/b/z1/x$a;

    move-result-object v1

    .line 6
    invoke-interface {p2, v1}, Le/i/b/z1/b0$a;->a(Le/i/b/z1/x$a;)V

    .line 7
    invoke-virtual {v1}, Le/i/b/z1/x$a;->b()Le/i/b/z1/x;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Le/i/b/z1/l;->a(Le/i/b/z1/x;)V

    .line 9
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 10
    iget-object p2, p0, Le/i/b/z1/w;->a:Le/i/b/q2/h;

    const-string v0, "Error while updating metric"

    .line 11
    new-instance v1, Le/i/b/q2/f;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, p1, v3}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/z1/w;->b:Le/i/b/z1/y;

    invoke-virtual {v0, p1}, Le/i/b/z1/y;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/i/b/z1/w;->b:Le/i/b/z1/y;

    invoke-virtual {v0}, Le/i/b/z1/y;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()I
    .locals 5

    .line 1
    iget-object v0, p0, Le/i/b/z1/w;->b:Le/i/b/z1/y;

    invoke-virtual {v0}, Le/i/b/z1/y;->b()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    int-to-long v3, v1

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    add-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final f(Ljava/io/File;)Le/i/b/z1/l;
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/z1/w;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Le/i/b/z1/w$a;

    invoke-direct {v1, p0, p1}, Le/i/b/z1/w$a;-><init>(Le/i/b/z1/w;Ljava/io/File;)V

    invoke-static {v0, p1, v1}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/i/b/z1/l;

    return-object p1
.end method
