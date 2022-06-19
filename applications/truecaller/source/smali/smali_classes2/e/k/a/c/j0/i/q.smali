.class public abstract Le/k/a/c/j0/i/q;
.super Le/k/a/c/j0/e;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Le/k/a/c/j0/f;

.field public final b:Le/k/a/c/i;

.field public final c:Le/k/a/c/d;

.field public final d:Le/k/a/c/i;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/j0/f;Ljava/lang/String;ZLe/k/a/c/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/j0/e;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    .line 3
    iput-object p2, p0, Le/k/a/c/j0/i/q;->a:Le/k/a/c/j0/f;

    .line 4
    sget-object p1, Le/k/a/c/n0/g;->a:[Ljava/lang/annotation/Annotation;

    if-nez p3, :cond_0

    const-string p3, ""

    .line 5
    :cond_0
    iput-object p3, p0, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    .line 6
    iput-boolean p4, p0, Le/k/a/c/j0/i/q;->f:Z

    .line 7
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x10

    const/high16 p3, 0x3f400000    # 0.75f

    const/4 p4, 0x2

    invoke-direct {p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Le/k/a/c/j0/i/q;->g:Ljava/util/Map;

    .line 8
    iput-object p5, p0, Le/k/a/c/j0/i/q;->d:Le/k/a/c/i;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Le/k/a/c/j0/i/q;->c:Le/k/a/c/d;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/j0/i/q;Le/k/a/c/d;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Le/k/a/c/j0/e;-><init>()V

    .line 11
    iget-object v0, p1, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    .line 12
    iget-object v0, p1, Le/k/a/c/j0/i/q;->a:Le/k/a/c/j0/f;

    iput-object v0, p0, Le/k/a/c/j0/i/q;->a:Le/k/a/c/j0/f;

    .line 13
    iget-object v0, p1, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    iput-object v0, p0, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    .line 14
    iget-boolean v0, p1, Le/k/a/c/j0/i/q;->f:Z

    iput-boolean v0, p0, Le/k/a/c/j0/i/q;->f:Z

    .line 15
    iget-object v0, p1, Le/k/a/c/j0/i/q;->g:Ljava/util/Map;

    iput-object v0, p0, Le/k/a/c/j0/i/q;->g:Ljava/util/Map;

    .line 16
    iget-object v0, p1, Le/k/a/c/j0/i/q;->d:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/j0/i/q;->d:Le/k/a/c/i;

    .line 17
    iget-object p1, p1, Le/k/a/c/j0/i/q;->h:Le/k/a/c/j;

    iput-object p1, p0, Le/k/a/c/j0/i/q;->h:Le/k/a/c/j;

    .line 18
    iput-object p2, p0, Le/k/a/c/j0/i/q;->c:Le/k/a/c/d;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/q;->d:Le/k/a/c/i;

    invoke-static {v0}, Le/k/a/c/n0/g;->G(Le/k/a/c/i;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Le/k/a/c/j0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/q;->a:Le/k/a/c/j0/f;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/q;->d:Le/k/a/c/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 2
    :goto_0
    invoke-virtual {p0, p2, p3}, Le/k/a/c/j0/i/q;->n(Le/k/a/c/g;Ljava/lang/String;)Le/k/a/c/j;

    move-result-object p3

    .line 3
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m(Le/k/a/c/g;)Le/k/a/c/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            ")",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/q;->d:Le/k/a/c/i;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Le/k/a/c/h;->j:Le/k/a/c/h;

    invoke-virtual {p1, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Le/k/a/c/d0/z/u;->d:Le/k/a/c/d0/z/u;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_1
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    invoke-static {v0}, Le/k/a/c/n0/g;->v(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p1, Le/k/a/c/d0/z/u;->d:Le/k/a/c/d0/z/u;

    return-object p1

    .line 7
    :cond_2
    iget-object v0, p0, Le/k/a/c/j0/i/q;->d:Le/k/a/c/i;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Le/k/a/c/j0/i/q;->h:Le/k/a/c/j;

    if-nez v1, :cond_3

    .line 9
    iget-object v1, p0, Le/k/a/c/j0/i/q;->d:Le/k/a/c/i;

    iget-object v2, p0, Le/k/a/c/j0/i/q;->c:Le/k/a/c/d;

    invoke-virtual {p1, v1, v2}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/j0/i/q;->h:Le/k/a/c/j;

    .line 10
    :cond_3
    iget-object p1, p0, Le/k/a/c/j0/i/q;->h:Le/k/a/c/j;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n(Le/k/a/c/g;Ljava/lang/String;)Le/k/a/c/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Ljava/lang/String;",
            ")",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/q;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/j;

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Le/k/a/c/j0/i/q;->a:Le/k/a/c/j0/f;

    invoke-interface {v0, p1, p2}, Le/k/a/c/j0/f;->c(Le/k/a/c/e;Ljava/lang/String;)Le/k/a/c/i;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Le/k/a/c/j0/i/q;->m(Le/k/a/c/g;)Le/k/a/c/j;

    move-result-object v0

    if-nez v0, :cond_6

    .line 4
    iget-object v0, p0, Le/k/a/c/j0/i/q;->a:Le/k/a/c/j0/f;

    invoke-interface {v0}, Le/k/a/c/j0/f;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "type ids are not statically known"

    goto :goto_0

    :cond_0
    const-string v3, "known type ids = "

    .line 5
    invoke-static {v3, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v3, p0, Le/k/a/c/j0/i/q;->c:Le/k/a/c/d;

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 7
    invoke-interface {v3}, Le/k/a/c/d;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "%s (for POJO property \'%s\')"

    .line 8
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_1
    iget-object v1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    iget-object v2, p0, Le/k/a/c/j0/i/q;->a:Le/k/a/c/j0/f;

    invoke-virtual {p1, v1, p2, v2, v0}, Le/k/a/c/g;->K(Le/k/a/c/i;Ljava/lang/String;Le/k/a/c/j0/f;Ljava/lang/String;)Le/k/a/c/i;

    .line 10
    sget-object p1, Le/k/a/c/d0/z/u;->d:Le/k/a/c/d0/z/u;

    return-object p1

    .line 11
    :cond_2
    iget-object v3, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 13
    invoke-virtual {v0}, Le/k/a/c/i;->s()Z

    move-result v3

    if-nez v3, :cond_5

    .line 14
    :try_start_0
    iget-object v3, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    .line 15
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v4, v3, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v4, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    move-object v0, v3

    goto :goto_2

    .line 18
    :cond_4
    iget-object v1, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 19
    iget-object v1, v1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 20
    iget-object v1, v1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 21
    invoke-virtual {v1, v3, v0, v2}, Le/k/a/c/m0/o;->k(Le/k/a/c/i;Ljava/lang/Class;Z)Le/k/a/c/i;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    iget-object v1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, p2, v0}, Le/k/a/c/g;->j(Le/k/a/c/i;Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1

    .line 23
    :cond_5
    :goto_2
    iget-object v1, p0, Le/k/a/c/j0/i/q;->c:Le/k/a/c/d;

    invoke-virtual {p1, v0, v1}, Le/k/a/c/g;->s(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/j;

    move-result-object p1

    move-object v0, p1

    .line 24
    :cond_6
    iget-object p1, p0, Le/k/a/c/j0/i/q;->g:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    .line 2
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5b

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; base-type:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/j0/i/q;->b:Le/k/a/c/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; id-resolver: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/j0/i/q;->a:Le/k/a/c/j0/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
