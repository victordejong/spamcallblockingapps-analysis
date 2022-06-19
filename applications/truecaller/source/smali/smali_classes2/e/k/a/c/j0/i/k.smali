.class public Le/k/a/c/j0/i/k;
.super Le/k/a/c/j0/i/r;
.source "SourceFile"


# instance fields
.field public final c:Le/k/a/c/j0/c;


# direct methods
.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/m0/o;Le/k/a/c/j0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/k/a/c/j0/i/r;-><init>(Le/k/a/c/i;Le/k/a/c/m0/o;)V

    .line 2
    iput-object p3, p0, Le/k/a/c/j0/i/k;->c:Le/k/a/c/j0/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Le/k/a/c/j0/i/r;->a:Le/k/a/c/m0/o;

    invoke-virtual {p0, p1, v0, v1}, Le/k/a/c/j0/i/k;->g(Ljava/lang/Object;Ljava/lang/Class;Le/k/a/c/m0/o;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "class name used as type id"

    return-object v0
.end method

.method public c(Le/k/a/c/e;Ljava/lang/String;)Le/k/a/c/i;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p1}, Le/k/a/c/j0/i/k;->h(Ljava/lang/String;Le/k/a/c/e;)Le/k/a/c/i;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/r;->a:Le/k/a/c/m0/o;

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/j0/i/k;->g(Ljava/lang/Object;Ljava/lang/Class;Le/k/a/c/m0/o;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Class;Le/k/a/c/m0/o;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/m0/o;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Le/k/a/c/n0/g;->w(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util."

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6
    instance-of p2, p1, Ljava/util/EnumSet;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 7
    check-cast p1, Ljava/util/EnumSet;

    .line 8
    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_1
    sget-object p2, Le/k/a/c/n0/g$b;->c:Le/k/a/c/n0/g$b;

    .line 12
    iget-object p2, p2, Le/k/a/c/n0/g$b;->a:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_2

    .line 13
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    check-cast p1, Ljava/lang/Class;

    .line 15
    :goto_0
    const-class p2, Ljava/util/EnumSet;

    .line 16
    sget-object v0, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    .line 17
    invoke-virtual {p3, v1, p1, v0}, Le/k/a/c/m0/o;->c(Le/k/a/c/m0/c;Ljava/lang/Class;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    .line 18
    invoke-virtual {p3, p2, p1}, Le/k/a/c/m0/o;->g(Ljava/lang/Class;Le/k/a/c/i;)Le/k/a/c/m0/e;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Le/k/a/c/m0/d;->T()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot figure out type for EnumSet (odd JDK platform?)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_3
    instance-of p2, p1, Ljava/util/EnumMap;

    if-eqz p2, :cond_8

    .line 23
    check-cast p1, Ljava/util/EnumMap;

    .line 24
    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 25
    invoke-virtual {p1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Enum;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    .line 27
    :cond_4
    sget-object p2, Le/k/a/c/n0/g$b;->c:Le/k/a/c/n0/g$b;

    .line 28
    iget-object p2, p2, Le/k/a/c/n0/g$b;->b:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_6

    .line 29
    :try_start_1
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    check-cast p1, Ljava/lang/Class;

    .line 31
    :goto_1
    const-class p2, Ljava/lang/Object;

    .line 32
    const-class v0, Ljava/util/EnumMap;

    .line 33
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v2, Ljava/util/Properties;

    if-ne v0, v2, :cond_5

    .line 35
    sget-object p1, Le/k/a/c/m0/o;->r:Le/k/a/c/m0/l;

    move-object p2, p1

    goto :goto_2

    .line 36
    :cond_5
    sget-object v2, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    invoke-virtual {p3, v1, p1, v2}, Le/k/a/c/m0/o;->c(Le/k/a/c/m0/c;Ljava/lang/Class;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    .line 37
    invoke-virtual {p3, v1, p2, v2}, Le/k/a/c/m0/o;->c(Le/k/a/c/m0/c;Ljava/lang/Class;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p2

    .line 38
    :goto_2
    invoke-virtual {p3, v0, p1, p2}, Le/k/a/c/m0/o;->j(Ljava/lang/Class;Le/k/a/c/i;Le/k/a/c/i;)Le/k/a/c/m0/h;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Le/k/a/c/m0/g;->T()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 40
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 41
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot figure out type for EnumMap (odd JDK platform?)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/16 p1, 0x24

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_8

    .line 43
    invoke-static {p2}, Le/k/a/c/n0/g;->r(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 44
    iget-object p1, p0, Le/k/a/c/j0/i/r;->b:Le/k/a/c/i;

    .line 45
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 46
    invoke-static {p1}, Le/k/a/c/n0/g;->r(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_8

    .line 47
    iget-object p1, p0, Le/k/a/c/j0/i/r;->b:Le/k/a/c/i;

    .line 48
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_3
    return-object v0
.end method

.method public h(Ljava/lang/String;Le/k/a/c/e;)Le/k/a/c/i;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/j0/i/r;->b:Le/k/a/c/i;

    iget-object v1, p0, Le/k/a/c/j0/i/k;->c:Le/k/a/c/j0/c;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v2, Le/k/a/c/j0/c$b;->a:Le/k/a/c/j0/c$b;

    sget-object v3, Le/k/a/c/j0/c$b;->b:Le/k/a/c/j0/c$b;

    const/16 v4, 0x3c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string v5, "Not a subtype"

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-lez v4, :cond_3

    .line 4
    invoke-virtual {p2}, Le/k/a/c/e;->h()Le/k/a/c/c0/k;

    move-result-object v8

    .line 5
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v8, v0, v4}, Le/k/a/c/j0/c;->b(Le/k/a/c/c0/k;Le/k/a/c/i;Ljava/lang/String;)Le/k/a/c/j0/c$b;

    move-result-object v4

    if-eq v4, v3, :cond_2

    .line 6
    invoke-virtual {p2}, Le/k/a/c/e;->i()Le/k/a/c/m0/o;

    move-result-object v3

    invoke-virtual {v3, p1}, Le/k/a/c/m0/o;->h(Ljava/lang/String;)Le/k/a/c/i;

    move-result-object v3

    .line 7
    iget-object v6, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 8
    invoke-virtual {v3, v6}, Le/k/a/c/i;->I(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v4, v2, :cond_6

    .line 9
    invoke-virtual {v1, v8, v0, v3}, Le/k/a/c/j0/c;->c(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/i;)Le/k/a/c/j0/c$b;

    move-result-object v4

    if-ne v4, v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2, v0, p1, v1}, Le/k/a/c/e;->d(Le/k/a/c/i;Ljava/lang/String;Le/k/a/c/j0/c;)Ljava/lang/Object;

    throw v7

    .line 11
    :cond_1
    invoke-virtual {p2, v0, p1, v5}, Le/k/a/c/e;->j(Le/k/a/c/i;Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    invoke-virtual {p2, v0, p1, v1}, Le/k/a/c/e;->e(Le/k/a/c/i;Ljava/lang/String;Le/k/a/c/j0/c;)Ljava/lang/Object;

    throw v7

    .line 13
    :cond_3
    invoke-virtual {p2}, Le/k/a/c/e;->h()Le/k/a/c/c0/k;

    move-result-object v4

    .line 14
    invoke-virtual {v1, v4, v0, p1}, Le/k/a/c/j0/c;->b(Le/k/a/c/c0/k;Le/k/a/c/i;Ljava/lang/String;)Le/k/a/c/j0/c$b;

    move-result-object v8

    if-eq v8, v3, :cond_8

    .line 15
    :try_start_0
    invoke-virtual {p2}, Le/k/a/c/e;->i()Le/k/a/c/m0/o;

    move-result-object v3

    invoke-virtual {v3, p1}, Le/k/a/c/m0/o;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-virtual {v0, v3}, Le/k/a/c/i;->J(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 17
    iget-object v5, v4, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 18
    iget-object v5, v5, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 19
    invoke-virtual {v5, v0, v3, v6}, Le/k/a/c/m0/o;->k(Le/k/a/c/i;Ljava/lang/Class;Z)Le/k/a/c/i;

    move-result-object v3

    .line 20
    sget-object v5, Le/k/a/c/j0/c$b;->c:Le/k/a/c/j0/c$b;

    if-ne v8, v5, :cond_6

    .line 21
    invoke-virtual {v1, v4, v0, v3}, Le/k/a/c/j0/c;->c(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/i;)Le/k/a/c/j0/c$b;

    move-result-object v4

    if-ne v4, v2, :cond_4

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p2, v0, p1, v1}, Le/k/a/c/e;->d(Le/k/a/c/i;Ljava/lang/String;Le/k/a/c/j0/c;)Ljava/lang/Object;

    throw v7

    .line 23
    :cond_5
    invoke-virtual {p2, v0, p1, v5}, Le/k/a/c/e;->j(Le/k/a/c/i;Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    .line 25
    invoke-static {v1}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "problem: (%s) %s"

    .line 26
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Le/k/a/c/e;->j(Le/k/a/c/i;Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1

    :catch_1
    move-object v3, v7

    :cond_6
    :goto_0
    if-nez v3, :cond_7

    .line 27
    instance-of v0, p2, Le/k/a/c/g;

    if-eqz v0, :cond_7

    .line 28
    check-cast p2, Le/k/a/c/g;

    iget-object v0, p0, Le/k/a/c/j0/i/r;->b:Le/k/a/c/i;

    const-string v1, "no such class found"

    invoke-virtual {p2, v0, p1, p0, v1}, Le/k/a/c/g;->K(Le/k/a/c/i;Ljava/lang/String;Le/k/a/c/j0/f;Ljava/lang/String;)Le/k/a/c/i;

    return-object v7

    :cond_7
    return-object v3

    .line 29
    :cond_8
    invoke-virtual {p2, v0, p1, v1}, Le/k/a/c/e;->e(Le/k/a/c/i;Ljava/lang/String;Le/k/a/c/j0/c;)Ljava/lang/Object;

    throw v7
.end method
