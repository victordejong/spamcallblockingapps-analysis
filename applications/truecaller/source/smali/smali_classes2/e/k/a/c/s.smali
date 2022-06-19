.class public Le/k/a/c/s;
.super Le/k/a/b/n;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Le/k/a/c/f;

.field public final b:Le/k/a/c/d0/l;

.field public final c:Le/k/a/b/e;

.field public final d:Le/k/a/c/i;

.field public final e:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Object;

.field public final g:Le/k/a/b/c;

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/r;Le/k/a/c/f;Le/k/a/c/i;Ljava/lang/Object;Le/k/a/b/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/k/a/b/n;-><init>()V

    .line 2
    iput-object p2, p0, Le/k/a/c/s;->a:Le/k/a/c/f;

    .line 3
    iget-object v0, p1, Le/k/a/c/r;->j:Le/k/a/c/d0/l;

    iput-object v0, p0, Le/k/a/c/s;->b:Le/k/a/c/d0/l;

    .line 4
    iget-object v1, p1, Le/k/a/c/r;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v1, p0, Le/k/a/c/s;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    iget-object p1, p1, Le/k/a/c/r;->a:Le/k/a/b/e;

    iput-object p1, p0, Le/k/a/c/s;->c:Le/k/a/b/e;

    .line 6
    iput-object p3, p0, Le/k/a/c/s;->d:Le/k/a/c/i;

    .line 7
    iput-object p4, p0, Le/k/a/c/s;->f:Ljava/lang/Object;

    .line 8
    iput-object p5, p0, Le/k/a/c/s;->g:Le/k/a/b/c;

    .line 9
    iget-object p1, p2, Le/k/a/c/c0/l;->e:Le/k/a/c/v;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Le/k/a/c/v;->e()Z

    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Le/k/a/c/h;->u:Le/k/a/c/h;

    invoke-virtual {p2, p1}, Le/k/a/c/f;->y(Le/k/a/c/h;)Z

    :goto_0
    const/4 p1, 0x0

    if-eqz p3, :cond_2

    .line 12
    sget-object p4, Le/k/a/c/h;->D:Le/k/a/c/h;

    invoke-virtual {p2, p4}, Le/k/a/c/f;->y(Le/k/a/c/h;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/j;

    if-nez p1, :cond_2

    .line 14
    :try_start_0
    check-cast v0, Le/k/a/c/d0/l$a;

    .line 15
    new-instance p4, Le/k/a/c/d0/l$a;

    invoke-direct {p4, v0, p2}, Le/k/a/c/d0/l$a;-><init>(Le/k/a/c/d0/l$a;Le/k/a/c/f;)V

    .line 16
    invoke-virtual {p4, p3}, Le/k/a/c/g;->x(Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {v1, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Le/k/a/b/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    :cond_2
    :goto_1
    iput-object p1, p0, Le/k/a/c/s;->e:Le/k/a/c/j;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/b/g;Le/k/a/b/t;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(Le/k/a/b/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not implemented for ObjectReader"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Le/k/a/b/j;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/k/a/c/s;->b:Le/k/a/c/d0/l;

    iget-object v1, p0, Le/k/a/c/s;->a:Le/k/a/c/f;

    check-cast v0, Le/k/a/c/d0/l$a;

    .line 2
    new-instance v2, Le/k/a/c/d0/l$a;

    invoke-direct {v2, v0, v1, p1}, Le/k/a/c/d0/l$a;-><init>(Le/k/a/c/d0/l$a;Le/k/a/c/f;Le/k/a/b/j;)V

    .line 3
    iget-object v0, p0, Le/k/a/c/s;->a:Le/k/a/c/f;

    iget-object v1, p0, Le/k/a/c/s;->g:Le/k/a/b/c;

    invoke-virtual {v0, p1, v1}, Le/k/a/c/f;->v(Le/k/a/b/j;Le/k/a/b/c;)Le/k/a/b/j;

    .line 4
    move-object v0, p1

    check-cast v0, Le/k/a/b/u/c;

    .line 5
    iget-object v0, v0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/k/a/c/s;->d:Le/k/a/c/i;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "No content to map due to end-of-input"

    invoke-virtual {v2, v0, v4, v3}, Le/k/a/c/g;->Z(Le/k/a/c/i;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    :try_start_1
    sget-object v3, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-ne v0, v3, :cond_2

    .line 9
    iget-object v0, p0, Le/k/a/c/s;->f:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 10
    invoke-virtual {p0, v2}, Le/k/a/c/s;->d(Le/k/a/c/g;)Le/k/a/c/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 11
    :cond_2
    sget-object v3, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-eq v0, v3, :cond_4

    sget-object v3, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v0, v3, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Le/k/a/c/s;->d:Le/k/a/c/i;

    invoke-virtual {p0, v2}, Le/k/a/c/s;->d(Le/k/a/c/g;)Le/k/a/c/j;

    move-result-object v3

    iget-object v4, p0, Le/k/a/c/s;->f:Ljava/lang/Object;

    invoke-virtual {v2, p1, v0, v3, v4}, Le/k/a/c/d0/l;->k0(Le/k/a/b/j;Le/k/a/c/i;Le/k/a/c/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 13
    :cond_4
    :goto_1
    iget-object v0, p0, Le/k/a/c/s;->f:Ljava/lang/Object;

    .line 14
    :cond_5
    :goto_2
    iget-object v3, p0, Le/k/a/c/s;->a:Le/k/a/c/f;

    sget-object v4, Le/k/a/c/h;->q:Le/k/a/c/h;

    invoke-virtual {v3, v4}, Le/k/a/c/f;->y(Le/k/a/c/h;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 15
    iget-object v3, p0, Le/k/a/c/s;->d:Le/k/a/c/i;

    .line 16
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 17
    invoke-static {v3}, Le/k/a/c/n0/g;->G(Le/k/a/c/i;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_6

    .line 18
    iget-object v3, p0, Le/k/a/c/s;->f:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 20
    :cond_6
    invoke-virtual {v2, v0, p1, v4}, Le/k/a/c/g;->d0(Ljava/lang/Class;Le/k/a/b/j;Le/k/a/b/m;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 21
    :cond_7
    invoke-virtual {p1}, Le/k/a/b/j;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 22
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 23
    :try_start_3
    invoke-virtual {p1}, Le/k/a/b/j;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
.end method

.method public d(Le/k/a/c/g;)Le/k/a/c/j;
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
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/s;->e:Le/k/a/c/j;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/s;->d:Le/k/a/c/i;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Le/k/a/c/s;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/j;

    if-eqz v1, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p1, v0}, Le/k/a/c/g;->x(Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    iget-object p1, p0, Le/k/a/c/s;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find a deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object p1, p1, Le/k/a/c/g;->g:Le/k/a/b/j;

    .line 8
    new-instance v2, Le/k/a/c/e0/b;

    invoke-direct {v2, p1, v1, v0}, Le/k/a/c/e0/b;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/c/i;)V

    .line 9
    throw v2

    :cond_3
    const/4 v0, 0x0

    const-string v1, "No value type configured for ObjectReader"

    .line 10
    invoke-virtual {p1, v0, v1}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v0
.end method
