.class public final Le/k/a/c/d0/z/c0$b;
.super Le/k/a/c/d0/z/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# instance fields
.field public final d:Le/k/a/c/n0/j;

.field public final e:Le/k/a/c/g0/j;

.field public f:Le/k/a/c/n0/j;

.field public final g:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/n0/j;Le/k/a/c/g0/j;)V
    .locals 2

    .line 1
    iget-object v0, p1, Le/k/a/c/n0/j;->a:Ljava/lang/Class;

    const/4 v1, -0x1

    .line 2
    invoke-direct {p0, v1, v0}, Le/k/a/c/d0/z/c0;-><init>(ILjava/lang/Class;)V

    .line 3
    iput-object p1, p0, Le/k/a/c/d0/z/c0$b;->d:Le/k/a/c/n0/j;

    .line 4
    iput-object p2, p0, Le/k/a/c/d0/z/c0$b;->e:Le/k/a/c/g0/j;

    .line 5
    iget-object p1, p1, Le/k/a/c/n0/j;->d:Ljava/lang/Enum;

    .line 6
    iput-object p1, p0, Le/k/a/c/d0/z/c0$b;->g:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/c0$b;->e:Le/k/a/c/g0/j;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Le/k/a/c/g0/j;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Le/k/a/c/n0/g;->s(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    invoke-static {p1}, Le/k/a/c/n0/g;->I(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    sget-object v0, Le/k/a/c/h;->y:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Le/k/a/c/d0/z/c0$b;->f:Le/k/a/c/n0/j;

    if-nez v0, :cond_2

    .line 10
    monitor-enter p0

    .line 11
    :try_start_1
    iget-object v0, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 12
    iget-object v1, p0, Le/k/a/c/d0/z/c0$b;->d:Le/k/a/c/n0/j;

    .line 13
    iget-object v1, v1, Le/k/a/c/n0/j;->a:Ljava/lang/Class;

    .line 14
    invoke-static {v0, v1}, Le/k/a/c/n0/j;->d(Le/k/a/c/f;Ljava/lang/Class;)Le/k/a/c/n0/j;

    move-result-object v0

    .line 15
    iput-object v0, p0, Le/k/a/c/d0/z/c0$b;->f:Le/k/a/c/n0/j;

    .line 16
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 17
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/c0$b;->d:Le/k/a/c/n0/j;

    .line 18
    :cond_2
    :goto_0
    iget-object v1, v0, Le/k/a/c/n0/j;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 19
    iget-boolean v3, v0, Le/k/a/c/n0/j;->e:Z

    if-eqz v3, :cond_5

    .line 20
    iget-object v1, v0, Le/k/a/c/n0/j;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 22
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    goto :goto_1

    :cond_4
    move-object v1, v2

    :cond_5
    :goto_1
    if-nez v1, :cond_8

    .line 23
    iget-object v3, p0, Le/k/a/c/d0/z/c0$b;->g:Ljava/lang/Enum;

    if-eqz v3, :cond_6

    sget-object v3, Le/k/a/c/h;->A:Le/k/a/c/h;

    .line 24
    invoke-virtual {p2, v3}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 25
    iget-object v1, p0, Le/k/a/c/d0/z/c0$b;->g:Ljava/lang/Enum;

    goto :goto_2

    .line 26
    :cond_6
    sget-object v3, Le/k/a/c/h;->z:Le/k/a/c/h;

    invoke-virtual {p2, v3}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    .line 27
    :cond_7
    iget-object v1, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    const-string v3, "not one of the values accepted for Enum class: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 28
    iget-object v0, v0, Le/k/a/c/n0/j;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    aput-object v0, v4, v5

    .line 29
    invoke-virtual {p2, v1, p1, v3, v4}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :cond_8
    :goto_2
    return-object v1
.end method
