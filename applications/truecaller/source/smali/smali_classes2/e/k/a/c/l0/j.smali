.class public abstract Le/k/a/c/l0/j;
.super Le/k/a/c/a0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/l0/j$a;
    }
.end annotation


# instance fields
.field public transient o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Le/k/a/c/l0/s/u;",
            ">;"
        }
    .end annotation
.end field

.field public transient p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/k/a/a/k0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public transient q:Le/k/a/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/a0;-><init>()V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/a0;-><init>(Le/k/a/c/a0;Le/k/a/c/y;Le/k/a/c/l0/p;)V

    return-void
.end method


# virtual methods
.method public J(Le/k/a/c/g0/s;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/s;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 2
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 5
    invoke-virtual {p1}, Le/k/a/c/c0/k;->b()Z

    move-result p1

    .line 6
    invoke-static {p2, p1}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public K(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v0}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Problem determining whether filter of type \'%s\' should filter out `null` values: (%s) %s"

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 5
    iget-object v2, p0, Le/k/a/c/l0/j;->q:Le/k/a/b/g;

    .line 6
    invoke-virtual {p0, p1}, Le/k/a/c/e;->f(Ljava/lang/reflect/Type;)Le/k/a/c/i;

    move-result-object p1

    .line 7
    new-instance v3, Le/k/a/c/e0/b;

    invoke-direct {v3, v2, v1, p1}, Le/k/a/c/e0/b;-><init>(Le/k/a/b/g;Ljava/lang/String;Le/k/a/c/i;)V

    .line 8
    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw v3
.end method

.method public Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/b;",
            "Ljava/lang/Object;",
            ")",
            "Le/k/a/c/n<",
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
    instance-of v0, p2, Le/k/a/c/n;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Le/k/a/c/n;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4
    check-cast p2, Ljava/lang/Class;

    .line 5
    const-class v0, Le/k/a/c/n$a;

    if-eq p2, v0, :cond_4

    invoke-static {p2}, Le/k/a/c/n0/g;->v(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    const-class v0, Le/k/a/c/n;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 8
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 11
    invoke-virtual {p1}, Le/k/a/c/c0/k;->b()Z

    move-result p1

    .line 12
    invoke-static {p2, p1}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Le/k/a/c/n;

    .line 13
    :goto_0
    instance-of p1, p2, Le/k/a/c/l0/n;

    if-eqz p1, :cond_2

    .line 14
    move-object p1, p2

    check-cast p1, Le/k/a/c/l0/n;

    invoke-interface {p1, p0}, Le/k/a/c/l0/n;->a(Le/k/a/c/a0;)V

    :cond_2
    return-object p2

    .line 15
    :cond_3
    invoke-virtual {p1}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object p1

    const-string v0, "AnnotationIntrospector returned Class "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected Class<JsonSerializer>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p0, p1, p2}, Le/k/a/c/a0;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    :cond_4
    :goto_1
    return-object v1

    .line 18
    :cond_5
    invoke-virtual {p1}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object p1

    const-string v0, "AnnotationIntrospector returned serializer definition of type "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {p0, p1, p2}, Le/k/a/c/a0;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v1
.end method

.method public final R(Le/k/a/b/g;Ljava/lang/Object;Le/k/a/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/g;",
            "Ljava/lang/Object;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p3, p2, p1, p0}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 2
    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/j;->U(Le/k/a/b/g;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final S(Le/k/a/b/g;Ljava/lang/Object;Le/k/a/c/n;Le/k/a/c/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/g;",
            "Ljava/lang/Object;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/v;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Le/k/a/b/g;->M1()V

    .line 2
    iget-object v0, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    invoke-virtual {p4, v0}, Le/k/a/c/v;->f(Le/k/a/c/c0/k;)Le/k/a/b/p;

    move-result-object p4

    invoke-virtual {p1, p4}, Le/k/a/b/g;->z0(Le/k/a/b/p;)V

    .line 3
    invoke-virtual {p3, p2, p1, p0}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 4
    invoke-virtual {p1}, Le/k/a/b/g;->t0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 5
    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/j;->U(Le/k/a/b/g;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public T(Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/a0;->h:Le/k/a/c/n;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1, p1, p0}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {p0, p1, v0}, Le/k/a/c/l0/j;->U(Le/k/a/b/g;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final U(Le/k/a/b/g;Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 2

    .line 1
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/io/IOException;

    return-object p2

    .line 3
    :cond_0
    invoke-static {p2}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "[no message for "

    .line 4
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    new-instance v1, Le/k/a/c/k;

    invoke-direct {v1, p1, v0, p2}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public V(Le/k/a/b/g;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/k/a/c/l0/j;->q:Le/k/a/b/g;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/c/l0/j;->T(Le/k/a/b/g;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Le/k/a/c/a0;->A(Ljava/lang/Class;ZLe/k/a/c/d;)Le/k/a/c/n;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 6
    iget-object v3, v2, Le/k/a/c/c0/l;->e:Le/k/a/c/v;

    if-nez v3, :cond_2

    .line 7
    sget-object v3, Le/k/a/c/z;->c:Le/k/a/c/z;

    invoke-virtual {v2, v3}, Le/k/a/c/y;->w(Le/k/a/c/z;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 9
    iget-object v3, v2, Le/k/a/c/c0/l;->e:Le/k/a/c/v;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, v2, Le/k/a/c/c0/l;->h:Le/k/a/c/n0/x;

    invoke-virtual {v3, v0, v2}, Le/k/a/c/n0/x;->a(Ljava/lang/Class;Le/k/a/c/c0/k;)Le/k/a/c/v;

    move-result-object v3

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p2, v1, v3}, Le/k/a/c/l0/j;->S(Le/k/a/b/g;Ljava/lang/Object;Le/k/a/c/n;Le/k/a/c/v;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {v3}, Le/k/a/c/v;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p0, p1, p2, v1, v3}, Le/k/a/c/l0/j;->S(Le/k/a/b/g;Ljava/lang/Object;Le/k/a/c/n;Le/k/a/c/v;)V

    return-void

    .line 14
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Le/k/a/c/l0/j;->R(Le/k/a/b/g;Ljava/lang/Object;Le/k/a/c/n;)V

    return-void
.end method

.method public x(Ljava/lang/Object;Le/k/a/a/k0;)Le/k/a/c/l0/s/u;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/k/a/a/k0<",
            "*>;)",
            "Le/k/a/c/l0/s/u;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/j;->o:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Le/k/a/c/z;->A:Le/k/a/c/z;

    invoke-virtual {p0, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 5
    :goto_0
    iput-object v0, p0, Le/k/a/c/l0/j;->o:Ljava/util/Map;

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/l0/s/u;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 7
    iget-object v1, p0, Le/k/a/c/l0/j;->p:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Le/k/a/c/l0/j;->p:Ljava/util/ArrayList;

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_5

    .line 10
    iget-object v3, p0, Le/k/a/c/l0/j;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/a/k0;

    .line 11
    invoke-virtual {v3, p2}, Le/k/a/a/k0;->a(Le/k/a/a/k0;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    .line 12
    invoke-virtual {p2, p0}, Le/k/a/a/k0;->f(Ljava/lang/Object;)Le/k/a/a/k0;

    move-result-object v0

    .line 13
    iget-object p2, p0, Le/k/a/c/l0/j;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_6
    new-instance p2, Le/k/a/c/l0/s/u;

    invoke-direct {p2, v0}, Le/k/a/c/l0/s/u;-><init>(Le/k/a/a/k0;)V

    .line 15
    iget-object v0, p0, Le/k/a/c/l0/j;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
