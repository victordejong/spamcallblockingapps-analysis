.class public abstract Le/k/a/c/l0/t/q0;
.super Le/k/a/c/n;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/n<",
        "TT;>;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/k/a/c/l0/t/q0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Le/k/a/c/n;-><init>()V

    .line 4
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/q0<",
            "*>;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Le/k/a/c/n;-><init>()V

    .line 9
    iget-object p1, p1, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    iput-object p1, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/n;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Le/k/a/c/n;-><init>()V

    .line 7
    iput-object p1, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    return-void
.end method

.method public static final j(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public k(Le/k/a/c/a0;Le/k/a/c/d;Le/k/a/c/n;)Le/k/a/c/n;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            "Le/k/a/c/n<",
            "*>;)",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/l0/t/q0;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Le/k/a/c/a0;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object p3

    .line 3
    :cond_0
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 4
    iget-object v2, p1, Le/k/a/c/a0;->e:Le/k/a/c/c0/i;

    check-cast v2, Le/k/a/c/c0/i$a;

    .line 5
    iget-object v3, v2, Le/k/a/c/c0/i$a;->b:Ljava/util/Map;

    if-nez v3, :cond_2

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-nez v1, :cond_1

    .line 7
    sget-object v4, Le/k/a/c/c0/i$a;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 8
    :goto_0
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Le/k/a/c/c0/i$a;

    iget-object v2, v2, Le/k/a/c/c0/i$a;->a:Ljava/util/Map;

    invoke-direct {v0, v2, v3}, Le/k/a/c/c0/i$a;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    move-object v2, v0

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_1
    iput-object v2, p1, Le/k/a/c/a0;->e:Le/k/a/c/c0/i;

    .line 12
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_0
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v0

    .line 14
    invoke-static {v0, p2}, Le/k/a/c/l0/t/q0;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 16
    invoke-virtual {v0, v2}, Le/k/a/c/b;->Q(Le/k/a/c/g0/i;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Le/k/a/c/e;->g(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n0/i;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Le/k/a/c/a0;->i()Le/k/a/c/m0/o;

    move-result-object v2

    invoke-interface {v0, v2}, Le/k/a/c/n0/i;->b(Le/k/a/c/m0/o;)Le/k/a/c/i;

    move-result-object v2

    if-nez p3, :cond_4

    .line 19
    invoke-virtual {v2}, Le/k/a/c/i;->E()Z

    move-result v3

    if-nez v3, :cond_4

    .line 20
    invoke-virtual {p1, v2}, Le/k/a/c/a0;->B(Le/k/a/c/i;)Le/k/a/c/n;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, p3

    .line 21
    :goto_2
    new-instance v4, Le/k/a/c/l0/t/j0;

    invoke-direct {v4, v0, v2, v3}, Le/k/a/c/l0/t/j0;-><init>(Le/k/a/c/n0/i;Le/k/a/c/i;Le/k/a/c/n;)V

    goto :goto_3

    :cond_5
    move-object v4, p3

    :goto_3
    if-eqz v4, :cond_6

    .line 22
    invoke-virtual {p1, v4, p2}, Le/k/a/c/a0;->I(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_6
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :goto_4
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    throw p1
.end method

.method public l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/k$d;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 2
    invoke-interface {p2, p1, p3}, Le/k/a/c/d;->e(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    invoke-virtual {p1, p3}, Le/k/a/c/c0/l;->h(Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p1

    return-object p1
.end method

.method public m(Le/k/a/c/a0;Ljava/lang/Object;Ljava/lang/Object;)Le/k/a/c/l0/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p3, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p3, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot resolve PropertyFilter with id \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'; no FilterProvider configured"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Le/k/a/c/e;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public n(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Le/k/a/c/n0/g;->I(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 4
    sget-object v0, Le/k/a/c/z;->g:Le/k/a/c/z;

    invoke-virtual {p1, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 5
    :goto_2
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 6
    instance-of p1, p2, Le/k/a/c/k;

    if-nez p1, :cond_5

    .line 7
    :cond_3
    check-cast p2, Ljava/io/IOException;

    throw p2

    :cond_4
    if-nez p1, :cond_5

    .line 8
    invoke-static {p2}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    :cond_5
    invoke-static {p2, p3, p4}, Le/k/a/c/k;->i(Ljava/lang/Throwable;Ljava/lang/Object;I)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public o(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Le/k/a/c/n0/g;->I(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    if-eqz p1, :cond_2

    .line 4
    sget-object v0, Le/k/a/c/z;->g:Le/k/a/c/z;

    invoke-virtual {p1, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 5
    :goto_2
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 6
    instance-of p1, p2, Le/k/a/c/k;

    if-nez p1, :cond_5

    .line 7
    :cond_3
    check-cast p2, Ljava/io/IOException;

    throw p2

    :cond_4
    if-nez p1, :cond_5

    .line 8
    invoke-static {p2}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    :cond_5
    invoke-static {p2, p3, p4}, Le/k/a/c/k;->j(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method
