.class public Le/k/a/c/d0/f;
.super Le/k/a/c/d0/b;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final g:Le/k/a/c/d0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Le/k/a/c/d0/f;->f:[Ljava/lang/Class;

    .line 2
    new-instance v0, Le/k/a/c/d0/f;

    new-instance v1, Le/k/a/c/c0/j;

    invoke-direct {v1}, Le/k/a/c/c0/j;-><init>()V

    invoke-direct {v0, v1}, Le/k/a/c/d0/f;-><init>(Le/k/a/c/c0/j;)V

    sput-object v0, Le/k/a/c/d0/f;->g:Le/k/a/c/d0/f;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/b;-><init>(Le/k/a/c/c0/j;)V

    return-void
.end method


# virtual methods
.method public A(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/g0/s;)Le/k/a/c/d0/u;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Le/k/a/c/g0/s;->r()Le/k/a/c/g0/j;

    move-result-object v6

    .line 2
    invoke-virtual {v6}, Le/k/a/c/g0/j;->e()Le/k/a/c/i;

    move-result-object v0

    invoke-virtual {p0, p1, v6, v0}, Le/k/a/c/d0/b;->t(Le/k/a/c/g;Le/k/a/c/g0/i;Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object v7

    .line 3
    iget-object v0, v7, Le/k/a/c/i;->d:Ljava/lang/Object;

    .line 4
    move-object v3, v0

    check-cast v3, Le/k/a/c/j0/e;

    .line 5
    new-instance v8, Le/k/a/c/d0/y/d0;

    .line 6
    check-cast p2, Le/k/a/c/g0/q;

    .line 7
    iget-object p2, p2, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 8
    iget-object v4, p2, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    move-object v0, v8

    move-object v1, p3

    move-object v2, v7

    move-object v5, v6

    .line 9
    invoke-direct/range {v0 .. v5}, Le/k/a/c/d0/y/d0;-><init>(Le/k/a/c/g0/s;Le/k/a/c/i;Le/k/a/c/j0/e;Le/k/a/c/n0/b;Le/k/a/c/g0/j;)V

    .line 10
    invoke-virtual {p0, p1, v6}, Le/k/a/c/d0/b;->q(Le/k/a/c/g;Le/k/a/c/g0/b;)Le/k/a/c/j;

    move-result-object p2

    if-nez p2, :cond_0

    .line 11
    iget-object p2, v7, Le/k/a/c/i;->c:Ljava/lang/Object;

    .line 12
    check-cast p2, Le/k/a/c/j;

    :cond_0
    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p1, p2, v8, v7}, Le/k/a/c/g;->F(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object p1

    .line 14
    invoke-virtual {v8, p1}, Le/k/a/c/d0/y/d0;->G(Le/k/a/c/j;)Le/k/a/c/d0/u;

    move-result-object v8

    :cond_1
    return-object v8
.end method

.method public u(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/d0/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    move-object v0, p2

    check-cast v0, Le/k/a/c/g0/q;

    .line 2
    invoke-virtual {v0}, Le/k/a/c/g0/q;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/k/a/c/g0/s;

    .line 3
    invoke-virtual {v4}, Le/k/a/c/g0/s;->j()Le/k/a/c/b$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 4
    iget-object v6, v5, Le/k/a/c/b$a;->a:Le/k/a/c/b$a$a;

    sget-object v7, Le/k/a/c/b$a$a;->b:Le/k/a/c/b$a$a;

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v5, v5, Le/k/a/c/b$a;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 10
    :goto_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Multiple back-reference properties with name "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v5}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz v2, :cond_9

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/g0/s;

    .line 13
    invoke-virtual {v2}, Le/k/a/c/g0/s;->j()Le/k/a/c/b$a;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v3, v1

    goto :goto_4

    .line 14
    :cond_6
    iget-object v3, v3, Le/k/a/c/b$a;->b:Ljava/lang/String;

    .line 15
    :goto_4
    invoke-virtual {v2}, Le/k/a/c/g0/s;->t()Le/k/a/c/i;

    move-result-object v4

    .line 16
    invoke-virtual {p0, p1, p2, v2, v4}, Le/k/a/c/d0/f;->z(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/g0/s;Le/k/a/c/i;)Le/k/a/c/d0/u;

    move-result-object v2

    .line 17
    iget-object v4, p3, Le/k/a/c/d0/e;->f:Ljava/util/HashMap;

    if-nez v4, :cond_7

    .line 18
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p3, Le/k/a/c/d0/e;->f:Ljava/util/HashMap;

    .line 19
    :cond_7
    iget-object v4, p3, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    invoke-virtual {v4}, Le/k/a/c/c0/k;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    iget-object v4, p3, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    invoke-virtual {v2, v4}, Le/k/a/c/d0/u;->l(Le/k/a/c/f;)V

    .line 21
    :cond_8
    iget-object v4, p3, Le/k/a/c/d0/e;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    return-void
.end method

.method public v(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/d0/e;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    const-class v4, Ljava/lang/String;

    iget-object v5, v2, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 2
    invoke-virtual {v5}, Le/k/a/c/i;->v()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 3
    iget-object v5, v3, Le/k/a/c/d0/e;->i:Le/k/a/c/d0/w;

    .line 4
    iget-object v8, v1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 5
    invoke-virtual {v5, v8}, Le/k/a/c/d0/w;->C(Le/k/a/c/f;)[Le/k/a/c/d0/u;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v7

    :goto_0
    const/4 v8, 0x0

    if-eqz v5, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v8

    .line 6
    :goto_1
    iget-object v10, v1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 7
    iget-object v11, v2, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 8
    iget-object v11, v11, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 9
    move-object v12, v2

    check-cast v12, Le/k/a/c/g0/q;

    .line 10
    iget-object v13, v12, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 11
    invoke-virtual {v10, v11, v13}, Le/k/a/c/c0/l;->r(Ljava/lang/Class;Le/k/a/c/g0/c;)Le/k/a/a/p$a;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 12
    iget-boolean v11, v10, Le/k/a/a/p$a;->b:Z

    .line 13
    iput-boolean v11, v3, Le/k/a/c/d0/e;->l:Z

    .line 14
    invoke-virtual {v10}, Le/k/a/a/p$a;->d()Ljava/util/Set;

    move-result-object v10

    .line 15
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 16
    invoke-virtual {v3, v13}, Le/k/a/c/d0/e;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v10

    .line 18
    :cond_3
    iget-object v11, v1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 19
    iget-object v13, v2, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 20
    iget-object v13, v13, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 21
    iget-object v13, v12, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 22
    invoke-virtual {v11, v13}, Le/k/a/c/c0/l;->s(Le/k/a/c/g0/c;)Le/k/a/a/s$a;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 23
    iget-object v11, v11, Le/k/a/a/s$a;->a:Ljava/util/Set;

    if-eqz v11, :cond_6

    .line 24
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 25
    iget-object v15, v3, Le/k/a/c/d0/e;->h:Ljava/util/HashSet;

    if-nez v15, :cond_4

    .line 26
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    iput-object v15, v3, Le/k/a/c/d0/e;->h:Ljava/util/HashSet;

    .line 27
    :cond_4
    iget-object v15, v3, Le/k/a/c/d0/e;->h:Ljava/util/HashSet;

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v11, v7

    .line 28
    :cond_6
    iget-object v13, v12, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    const/4 v14, 0x2

    if-eqz v13, :cond_10

    .line 29
    iget-boolean v15, v13, Le/k/a/c/g0/b0;->i:Z

    if-nez v15, :cond_7

    .line 30
    invoke-virtual {v13}, Le/k/a/c/g0/b0;->h()V

    .line 31
    :cond_7
    iget-object v15, v13, Le/k/a/c/g0/b0;->o:Ljava/util/LinkedList;

    if-eqz v15, :cond_9

    .line 32
    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v15

    if-gt v15, v6, :cond_8

    .line 33
    iget-object v13, v13, Le/k/a/c/g0/b0;->o:Ljava/util/LinkedList;

    invoke-virtual {v13}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/k/a/c/g0/j;

    goto :goto_4

    :cond_8
    new-array v1, v14, [Ljava/lang/Object;

    .line 34
    iget-object v2, v13, Le/k/a/c/g0/b0;->o:Ljava/util/LinkedList;

    .line 35
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, v13, Le/k/a/c/g0/b0;->o:Ljava/util/LinkedList;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Multiple \'any-setter\' methods defined (%s vs %s)"

    .line 36
    invoke-virtual {v13, v2, v1}, Le/k/a/c/g0/b0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    :cond_9
    move-object v13, v7

    :goto_4
    if-eqz v13, :cond_b

    .line 37
    invoke-virtual {v13, v8}, Le/k/a/c/g0/j;->s(I)Ljava/lang/Class;

    move-result-object v15

    if-eq v15, v4, :cond_11

    .line 38
    const-class v7, Ljava/lang/Object;

    if-ne v15, v7, :cond_a

    goto/16 :goto_6

    .line 39
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v14, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v13}, Le/k/a/c/g0/j;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "Invalid \'any-setter\' annotation on method \'%s()\': first argument not of type String or Object, but %s"

    .line 41
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_b
    iget-object v7, v12, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    .line 43
    iget-boolean v13, v7, Le/k/a/c/g0/b0;->i:Z

    if-nez v13, :cond_c

    .line 44
    invoke-virtual {v7}, Le/k/a/c/g0/b0;->h()V

    .line 45
    :cond_c
    iget-object v13, v7, Le/k/a/c/g0/b0;->p:Ljava/util/LinkedList;

    if-eqz v13, :cond_e

    .line 46
    invoke-virtual {v13}, Ljava/util/LinkedList;->size()I

    move-result v13

    if-gt v13, v6, :cond_d

    .line 47
    iget-object v7, v7, Le/k/a/c/g0/b0;->p:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/k/a/c/g0/i;

    move-object v13, v7

    goto :goto_5

    :cond_d
    new-array v1, v14, [Ljava/lang/Object;

    .line 48
    iget-object v2, v7, Le/k/a/c/g0/b0;->p:Ljava/util/LinkedList;

    .line 49
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, v7, Le/k/a/c/g0/b0;->p:Ljava/util/LinkedList;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Multiple \'any-setter\' fields defined (%s vs %s)"

    .line 50
    invoke-virtual {v7, v2, v1}, Le/k/a/c/g0/b0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    throw v1

    :cond_e
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_10

    .line 51
    invoke-virtual {v13}, Le/k/a/c/g0/b;->d()Ljava/lang/Class;

    move-result-object v7

    .line 52
    const-class v15, Ljava/util/Map;

    invoke-virtual {v15, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_6

    .line 53
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v6, [Ljava/lang/Object;

    .line 54
    invoke-virtual {v13}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "Invalid \'any-setter\' annotation on field \'%s\': type is not instance of java.util.Map"

    .line 55
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/4 v13, 0x0

    :cond_11
    :goto_6
    if-eqz v13, :cond_1b

    .line 56
    instance-of v7, v13, Le/k/a/c/g0/j;

    if-eqz v7, :cond_12

    .line 57
    move-object v7, v13

    check-cast v7, Le/k/a/c/g0/j;

    .line 58
    invoke-virtual {v7, v8}, Le/k/a/c/g0/j;->r(I)Le/k/a/c/i;

    move-result-object v15

    .line 59
    invoke-virtual {v7, v6}, Le/k/a/c/g0/j;->r(I)Le/k/a/c/i;

    move-result-object v7

    .line 60
    invoke-virtual {v0, v1, v13, v7}, Le/k/a/c/d0/b;->t(Le/k/a/c/g;Le/k/a/c/g0/i;Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object v7

    .line 61
    new-instance v22, Le/k/a/c/d$a;

    invoke-virtual {v13}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v17

    const/16 v19, 0x0

    sget-object v21, Le/k/a/c/u;->i:Le/k/a/c/u;

    move-object/from16 v16, v22

    move-object/from16 v18, v7

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Le/k/a/c/d$a;-><init>(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/v;Le/k/a/c/g0/i;Le/k/a/c/u;)V

    :goto_7
    move-object v14, v7

    move-object/from16 v7, v22

    goto :goto_8

    .line 62
    :cond_12
    instance-of v7, v13, Le/k/a/c/g0/g;

    if-eqz v7, :cond_1a

    .line 63
    move-object v7, v13

    check-cast v7, Le/k/a/c/g0/g;

    .line 64
    invoke-virtual {v7}, Le/k/a/c/g0/g;->e()Le/k/a/c/i;

    move-result-object v7

    .line 65
    invoke-virtual {v0, v1, v13, v7}, Le/k/a/c/d0/b;->t(Le/k/a/c/g;Le/k/a/c/g0/i;Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object v18

    .line 66
    invoke-virtual/range {v18 .. v18}, Le/k/a/c/i;->o()Le/k/a/c/i;

    move-result-object v15

    .line 67
    invoke-virtual/range {v18 .. v18}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v7

    .line 68
    new-instance v22, Le/k/a/c/d$a;

    invoke-virtual {v13}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v17

    const/16 v19, 0x0

    sget-object v21, Le/k/a/c/u;->i:Le/k/a/c/u;

    move-object/from16 v16, v22

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Le/k/a/c/d$a;-><init>(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/v;Le/k/a/c/g0/i;Le/k/a/c/u;)V

    goto :goto_7

    .line 69
    :goto_8
    invoke-virtual {v0, v1, v13}, Le/k/a/c/d0/b;->r(Le/k/a/c/g;Le/k/a/c/g0/b;)Le/k/a/c/o;

    move-result-object v16

    if-nez v16, :cond_13

    .line 70
    iget-object v8, v15, Le/k/a/c/i;->c:Ljava/lang/Object;

    .line 71
    move-object/from16 v16, v8

    check-cast v16, Le/k/a/c/o;

    :cond_13
    move-object/from16 v8, v16

    if-nez v8, :cond_14

    .line 72
    invoke-virtual {v1, v15, v7}, Le/k/a/c/g;->u(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/o;

    move-result-object v8

    goto :goto_9

    .line 73
    :cond_14
    instance-of v15, v8, Le/k/a/c/d0/j;

    if-eqz v15, :cond_15

    .line 74
    check-cast v8, Le/k/a/c/d0/j;

    .line 75
    invoke-interface {v8, v1, v7}, Le/k/a/c/d0/j;->a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/o;

    move-result-object v8

    :cond_15
    :goto_9
    move-object/from16 v20, v8

    .line 76
    invoke-virtual/range {p1 .. p1}, Le/k/a/c/g;->y()Le/k/a/c/b;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 77
    invoke-virtual {v8, v13}, Le/k/a/c/b;->c(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 78
    invoke-virtual {v1, v13, v8}, Le/k/a/c/g;->p(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/j;

    move-result-object v8

    goto :goto_a

    :cond_16
    const/4 v8, 0x0

    :goto_a
    if-nez v8, :cond_17

    .line 79
    iget-object v8, v14, Le/k/a/c/i;->c:Ljava/lang/Object;

    .line 80
    check-cast v8, Le/k/a/c/j;

    :cond_17
    if-eqz v8, :cond_18

    .line 81
    invoke-virtual {v1, v8, v7, v14}, Le/k/a/c/g;->F(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v8

    :cond_18
    move-object/from16 v21, v8

    .line 82
    iget-object v8, v14, Le/k/a/c/i;->d:Ljava/lang/Object;

    .line 83
    move-object/from16 v22, v8

    check-cast v22, Le/k/a/c/j0/e;

    .line 84
    new-instance v8, Le/k/a/c/d0/t;

    move-object/from16 v16, v8

    move-object/from16 v17, v7

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    invoke-direct/range {v16 .. v22}, Le/k/a/c/d0/t;-><init>(Le/k/a/c/d;Le/k/a/c/g0/i;Le/k/a/c/i;Le/k/a/c/o;Le/k/a/c/j;Le/k/a/c/j0/e;)V

    .line 85
    iget-object v7, v3, Le/k/a/c/d0/e;->k:Le/k/a/c/d0/t;

    if-nez v7, :cond_19

    .line 86
    iput-object v8, v3, Le/k/a/c/d0/e;->k:Le/k/a/c/d0/t;

    goto :goto_d

    .line 87
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "_anySetter already set to non-null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_1a
    iget-object v2, v2, Le/k/a/c/c;->a:Le/k/a/c/i;

    new-array v3, v6, [Ljava/lang/Object;

    .line 89
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Unrecognized mutator type for any setter: %s"

    .line 90
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    throw v1

    .line 91
    :cond_1b
    iget-object v7, v12, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    if-nez v7, :cond_1c

    const/4 v7, 0x0

    goto :goto_b

    .line 92
    :cond_1c
    iget-object v7, v7, Le/k/a/c/g0/b0;->s:Ljava/util/HashSet;

    :goto_b
    if-nez v7, :cond_1d

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    :cond_1d
    if-eqz v7, :cond_1e

    .line 94
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 95
    invoke-virtual {v3, v8}, Le/k/a/c/d0/e;->d(Ljava/lang/String;)V

    goto :goto_c

    .line 96
    :cond_1e
    :goto_d
    sget-object v7, Le/k/a/c/p;->d:Le/k/a/c/p;

    invoke-virtual {v1, v7}, Le/k/a/c/g;->S(Le/k/a/c/p;)Z

    move-result v7

    if-eqz v7, :cond_1f

    sget-object v7, Le/k/a/c/p;->h:Le/k/a/c/p;

    .line 97
    invoke-virtual {v1, v7}, Le/k/a/c/g;->S(Le/k/a/c/p;)Z

    move-result v7

    if-eqz v7, :cond_1f

    move v7, v6

    goto :goto_e

    :cond_1f
    const/4 v7, 0x0

    .line 98
    :goto_e
    invoke-virtual {v12}, Le/k/a/c/g0/q;->h()Ljava/util/List;

    move-result-object v8

    .line 99
    new-instance v12, Ljava/util/ArrayList;

    .line 100
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x4

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 102
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_27

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/k/a/c/g0/s;

    .line 103
    invoke-virtual {v14}, Le/k/a/c/g0/s;->getName()Ljava/lang/String;

    move-result-object v15

    .line 104
    invoke-static {v15, v10, v11}, Ln3/g0/y;->U1(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v16

    if-eqz v16, :cond_20

    goto :goto_f

    .line 105
    :cond_20
    invoke-virtual {v14}, Le/k/a/c/g0/s;->x()Z

    move-result v16

    if-nez v16, :cond_25

    .line 106
    invoke-virtual {v14}, Le/k/a/c/g0/s;->u()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_25

    move-object/from16 v17, v8

    .line 107
    iget-object v8, v1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 108
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    if-eqz v19, :cond_21

    .line 109
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move-object/from16 v19, v4

    goto :goto_12

    :cond_21
    if-eq v6, v4, :cond_23

    .line 110
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_22

    goto :goto_10

    :cond_22
    move-object/from16 v19, v4

    .line 111
    iget-object v4, v8, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    invoke-virtual {v4, v6}, Le/k/a/c/c0/g;->a(Ljava/lang/Class;)Le/k/a/c/c0/f;

    .line 112
    invoke-virtual {v8, v6}, Le/k/a/c/c0/k;->m(Ljava/lang/Class;)Le/k/a/c/c;

    move-result-object v4

    .line 113
    invoke-virtual {v8}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v8

    check-cast v4, Le/k/a/c/g0/q;

    .line 114
    iget-object v4, v4, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 115
    invoke-virtual {v8, v4}, Le/k/a/c/b;->o0(Le/k/a/c/g0/c;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_24

    goto :goto_11

    :cond_23
    :goto_10
    move-object/from16 v19, v4

    :goto_11
    move-object/from16 v4, v18

    .line 116
    :cond_24
    invoke-virtual {v13, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_12
    if-eqz v6, :cond_26

    .line 118
    invoke-virtual {v3, v15}, Le/k/a/c/d0/e;->d(Ljava/lang/String;)V

    goto :goto_13

    :cond_25
    move-object/from16 v19, v4

    move-object/from16 v17, v8

    .line 119
    :cond_26
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_13
    move-object/from16 v8, v17

    move-object/from16 v4, v19

    const/4 v6, 0x1

    goto :goto_f

    .line 120
    :cond_27
    iget-object v4, v0, Le/k/a/c/d0/b;->a:Le/k/a/c/c0/j;

    invoke-virtual {v4}, Le/k/a/c/c0/j;->c()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 121
    iget-object v4, v0, Le/k/a/c/d0/b;->a:Le/k/a/c/c0/j;

    invoke-virtual {v4}, Le/k/a/c/c0/j;->a()Ljava/lang/Iterable;

    move-result-object v4

    check-cast v4, Le/k/a/c/n0/d;

    :goto_14
    invoke-virtual {v4}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v4}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/k/a/c/d0/g;

    .line 122
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 123
    :cond_28
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/k/a/c/g0/s;

    .line 124
    invoke-virtual {v6}, Le/k/a/c/g0/s;->A()Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 125
    invoke-virtual {v6}, Le/k/a/c/g0/s;->v()Le/k/a/c/g0/j;

    move-result-object v8

    const/4 v10, 0x0

    .line 126
    invoke-virtual {v8, v10}, Le/k/a/c/g0/j;->r(I)Le/k/a/c/i;

    move-result-object v8

    .line 127
    invoke-virtual {v0, v1, v2, v6, v8}, Le/k/a/c/d0/f;->z(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/g0/s;Le/k/a/c/i;)Le/k/a/c/d0/u;

    move-result-object v8

    goto :goto_19

    .line 128
    :cond_2a
    invoke-virtual {v6}, Le/k/a/c/g0/s;->y()Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 129
    invoke-virtual {v6}, Le/k/a/c/g0/s;->q()Le/k/a/c/g0/g;

    move-result-object v8

    .line 130
    invoke-virtual {v8}, Le/k/a/c/g0/g;->e()Le/k/a/c/i;

    move-result-object v8

    .line 131
    invoke-virtual {v0, v1, v2, v6, v8}, Le/k/a/c/d0/f;->z(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/g0/s;Le/k/a/c/i;)Le/k/a/c/d0/u;

    move-result-object v8

    goto :goto_19

    .line 132
    :cond_2b
    invoke-virtual {v6}, Le/k/a/c/g0/s;->r()Le/k/a/c/g0/j;

    move-result-object v8

    if-eqz v8, :cond_30

    if-eqz v7, :cond_2f

    .line 133
    invoke-virtual {v8}, Le/k/a/c/g0/j;->d()Ljava/lang/Class;

    move-result-object v8

    .line 134
    const-class v10, Ljava/util/Collection;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_2d

    const-class v10, Ljava/util/Map;

    .line 135
    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2c

    goto :goto_16

    :cond_2c
    const/4 v8, 0x0

    goto :goto_17

    :cond_2d
    :goto_16
    const/4 v8, 0x1

    :goto_17
    if-eqz v8, :cond_2f

    .line 136
    invoke-virtual {v6}, Le/k/a/c/g0/s;->getName()Ljava/lang/String;

    move-result-object v8

    .line 137
    iget-object v10, v3, Le/k/a/c/d0/e;->g:Ljava/util/HashSet;

    iget-object v11, v3, Le/k/a/c/d0/e;->h:Ljava/util/HashSet;

    invoke-static {v8, v10, v11}, Ln3/g0/y;->U1(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_2e

    goto :goto_18

    .line 138
    :cond_2e
    invoke-virtual {v0, v1, v2, v6}, Le/k/a/c/d0/f;->A(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/g0/s;)Le/k/a/c/d0/u;

    move-result-object v8

    goto :goto_19

    .line 139
    :cond_2f
    invoke-virtual {v6}, Le/k/a/c/g0/s;->x()Z

    move-result v8

    if-nez v8, :cond_30

    .line 140
    invoke-virtual {v6}, Le/k/a/c/g0/s;->getMetadata()Le/k/a/c/u;

    move-result-object v8

    .line 141
    iget-object v8, v8, Le/k/a/c/u;->e:Le/k/a/c/u$a;

    if-eqz v8, :cond_30

    .line 142
    invoke-virtual {v0, v1, v2, v6}, Le/k/a/c/d0/f;->A(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/g0/s;)Le/k/a/c/d0/u;

    move-result-object v8

    goto :goto_19

    :cond_30
    :goto_18
    const/4 v8, 0x0

    :goto_19
    if-eqz v9, :cond_37

    .line 143
    invoke-virtual {v6}, Le/k/a/c/g0/s;->x()Z

    move-result v10

    if-eqz v10, :cond_37

    .line 144
    invoke-virtual {v6}, Le/k/a/c/g0/s;->getName()Ljava/lang/String;

    move-result-object v10

    .line 145
    array-length v11, v5

    const/4 v12, 0x0

    :goto_1a
    if-ge v12, v11, :cond_32

    aget-object v13, v5, v12

    .line 146
    iget-object v14, v13, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 147
    iget-object v14, v14, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 148
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_31

    instance-of v14, v13, Le/k/a/c/d0/k;

    if-eqz v14, :cond_31

    .line 149
    move-object v11, v13

    check-cast v11, Le/k/a/c/d0/k;

    goto :goto_1b

    :cond_31
    add-int/lit8 v12, v12, 0x1

    goto :goto_1a

    :cond_32
    const/4 v11, 0x0

    :goto_1b
    if-nez v11, :cond_34

    .line 150
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 151
    array-length v4, v5

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v4, :cond_33

    aget-object v8, v5, v7

    .line 152
    iget-object v8, v8, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 153
    iget-object v8, v8, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 154
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_33
    const/4 v12, 0x2

    new-array v4, v12, [Ljava/lang/Object;

    .line 155
    invoke-static {v10}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v4, v10

    const/4 v13, 0x1

    aput-object v3, v4, v13

    const-string v3, "Could not find creator property with name %s (known Creator properties: %s)"

    .line 156
    invoke-virtual {v1, v2, v6, v3, v4}, Le/k/a/c/g;->W(Le/k/a/c/c;Le/k/a/c/g0/s;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x0

    throw v14

    :cond_34
    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v8, :cond_35

    .line 157
    iput-object v8, v11, Le/k/a/c/d0/k;->q:Le/k/a/c/d0/u;

    .line 158
    :cond_35
    invoke-virtual {v6}, Le/k/a/c/g0/s;->m()[Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_36

    .line 159
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/c;->a()[Ljava/lang/Class;

    move-result-object v6

    .line 160
    :cond_36
    invoke-virtual {v11, v6}, Le/k/a/c/d0/u;->B([Ljava/lang/Class;)V

    .line 161
    invoke-virtual {v3, v11}, Le/k/a/c/d0/e;->e(Le/k/a/c/d0/u;)V

    goto/16 :goto_15

    :cond_37
    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v8, :cond_29

    .line 162
    invoke-virtual {v6}, Le/k/a/c/g0/s;->m()[Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_38

    .line 163
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/c;->a()[Ljava/lang/Class;

    move-result-object v6

    .line 164
    :cond_38
    invoke-virtual {v8, v6}, Le/k/a/c/d0/u;->B([Ljava/lang/Class;)V

    .line 165
    invoke-virtual {v3, v8}, Le/k/a/c/d0/e;->e(Le/k/a/c/d0/u;)V

    goto/16 :goto_15

    :cond_39
    return-void
.end method

.method public w(Le/k/a/c/c;Le/k/a/c/d0/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Le/k/a/c/g0/q;

    .line 2
    iget-object v0, v0, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, v0, Le/k/a/c/g0/b0;->i:Z

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Le/k/a/c/g0/b0;->h()V

    .line 5
    :cond_0
    iget-object v0, v0, Le/k/a/c/g0/b0;->t:Ljava/util/LinkedHashMap;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/g0/i;

    .line 9
    invoke-virtual {v2}, Le/k/a/c/g0/b;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v3

    .line 10
    invoke-virtual {v2}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object v4

    .line 11
    move-object v5, p1

    check-cast v5, Le/k/a/c/g0/q;

    .line 12
    iget-object v5, v5, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 13
    iget-object v5, v5, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 15
    iget-object v5, p2, Le/k/a/c/d0/e;->e:Ljava/util/List;

    if-nez v5, :cond_2

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p2, Le/k/a/c/d0/e;->e:Ljava/util/List;

    .line 17
    :cond_2
    iget-object v5, p2, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    invoke-virtual {v5}, Le/k/a/c/c0/k;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    iget-object v5, p2, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    sget-object v6, Le/k/a/c/p;->q:Le/k/a/c/p;

    invoke-virtual {v5, v6}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v5

    invoke-virtual {v2, v5}, Le/k/a/c/g0/i;->f(Z)V

    .line 19
    :cond_3
    iget-object v5, p2, Le/k/a/c/d0/e;->e:Ljava/util/List;

    new-instance v6, Le/k/a/c/d0/y/h0;

    invoke-direct {v6, v3, v4, v2, v1}, Le/k/a/c/d0/y/h0;-><init>(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/g0/i;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method public x(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/d0/e;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    move-object v0, p2

    check-cast v0, Le/k/a/c/g0/q;

    .line 2
    iget-object v1, v0, Le/k/a/c/g0/q;->i:Le/k/a/c/g0/a0;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, v1, Le/k/a/c/g0/a0;->b:Ljava/lang/Class;

    .line 4
    iget-object v3, v0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 5
    invoke-virtual {p1, v3, v1}, Le/k/a/c/e;->l(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/a/n0;

    move-result-object v9

    .line 6
    const-class v3, Le/k/a/a/m0;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    .line 7
    iget-object v0, v1, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    .line 8
    iget-object v2, p3, Le/k/a/c/d0/e;->d:Ljava/util/Map;

    .line 9
    iget-object v3, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 10
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/d0/u;

    if-eqz v2, :cond_1

    .line 11
    iget-object p2, v2, Le/k/a/c/d0/u;->d:Le/k/a/c/i;

    .line 12
    new-instance v0, Le/k/a/c/d0/y/z;

    .line 13
    iget-object v3, v1, Le/k/a/c/g0/a0;->d:Ljava/lang/Class;

    .line 14
    invoke-direct {v0, v3}, Le/k/a/c/d0/y/z;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 16
    iget-object p2, p2, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 17
    invoke-static {p2}, Le/k/a/c/n0/g;->t(Le/k/a/c/i;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v4

    const/4 p2, 0x1

    .line 18
    invoke-static {v0}, Le/k/a/c/n0/g;->C(Le/k/a/c/v;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p2

    const-string p2, "Invalid Object Id definition for %s: cannot find property with name %s"

    .line 19
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    invoke-virtual {p1, v2}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Le/k/a/c/g;->i()Le/k/a/c/m0/o;

    move-result-object v2

    const-class v3, Le/k/a/a/k0;

    invoke-virtual {v2, p2, v3}, Le/k/a/c/m0/o;->n(Le/k/a/c/i;Ljava/lang/Class;)[Le/k/a/c/i;

    move-result-object p2

    aget-object p2, p2, v4

    const/4 v2, 0x0

    .line 22
    iget-object v0, v0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 23
    invoke-virtual {p1, v0, v1}, Le/k/a/c/e;->k(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/a/k0;

    move-result-object v0

    :goto_0
    move-object v4, p2

    move-object v6, v0

    move-object v8, v2

    .line 24
    invoke-virtual {p1, v4}, Le/k/a/c/g;->x(Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v7

    .line 25
    iget-object v5, v1, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    .line 26
    invoke-static/range {v4 .. v9}, Le/k/a/c/d0/y/v;->a(Le/k/a/c/i;Le/k/a/c/v;Le/k/a/a/k0;Le/k/a/c/j;Le/k/a/c/d0/u;Le/k/a/a/n0;)Le/k/a/c/d0/y/v;

    move-result-object p1

    .line 27
    iput-object p1, p3, Le/k/a/c/d0/e;->j:Le/k/a/c/d0/y/v;

    return-void
.end method

.method public y(Le/k/a/c/g;Le/k/a/c/i;Le/k/a/c/c;)Le/k/a/c/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/i;",
            "Le/k/a/c/c;",
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
    :try_start_0
    invoke-virtual {p0, p1, p3}, Le/k/a/c/d0/b;->s(Le/k/a/c/g;Le/k/a/c/c;)Le/k/a/c/d0/w;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v1, Le/k/a/c/d0/e;

    invoke-direct {v1, p3, p1}, Le/k/a/c/d0/e;-><init>(Le/k/a/c/c;Le/k/a/c/g;)V

    .line 3
    iput-object v0, v1, Le/k/a/c/d0/e;->i:Le/k/a/c/d0/w;

    .line 4
    invoke-virtual {p0, p1, p3, v1}, Le/k/a/c/d0/f;->v(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/d0/e;)V

    .line 5
    invoke-virtual {p0, p1, p3, v1}, Le/k/a/c/d0/f;->x(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/d0/e;)V

    .line 6
    invoke-virtual {p0, p1, p3, v1}, Le/k/a/c/d0/f;->u(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/d0/e;)V

    .line 7
    invoke-virtual {p0, p3, v1}, Le/k/a/c/d0/f;->w(Le/k/a/c/c;Le/k/a/c/d0/e;)V

    .line 8
    iget-object p1, p0, Le/k/a/c/d0/b;->a:Le/k/a/c/c0/j;

    invoke-virtual {p1}, Le/k/a/c/c0/j;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Le/k/a/c/d0/b;->a:Le/k/a/c/c0/j;

    invoke-virtual {p1}, Le/k/a/c/c0/j;->a()Ljava/lang/Iterable;

    move-result-object p1

    check-cast p1, Le/k/a/c/n0/d;

    :goto_0
    invoke-virtual {p1}, Le/k/a/c/n0/d;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/k/a/c/d0/g;

    .line 10
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Le/k/a/c/i;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Le/k/a/c/d0/w;->l()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    new-instance p1, Le/k/a/c/d0/a;

    iget-object p2, v1, Le/k/a/c/d0/e;->c:Le/k/a/c/c;

    iget-object p3, v1, Le/k/a/c/d0/e;->f:Ljava/util/HashMap;

    iget-object v0, v1, Le/k/a/c/d0/e;->d:Ljava/util/Map;

    invoke-direct {p1, v1, p2, p3, v0}, Le/k/a/c/d0/a;-><init>(Le/k/a/c/d0/e;Le/k/a/c/c;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v1}, Le/k/a/c/d0/e;->f()Le/k/a/c/j;

    move-result-object p1

    .line 14
    :goto_1
    iget-object p2, p0, Le/k/a/c/d0/b;->a:Le/k/a/c/c0/j;

    invoke-virtual {p2}, Le/k/a/c/c0/j;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15
    iget-object p2, p0, Le/k/a/c/d0/b;->a:Le/k/a/c/c0/j;

    invoke-virtual {p2}, Le/k/a/c/c0/j;->a()Ljava/lang/Iterable;

    move-result-object p2

    check-cast p2, Le/k/a/c/n0/d;

    :goto_2
    invoke-virtual {p2}, Le/k/a/c/n0/d;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/k/a/c/d0/g;

    .line 16
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-object p1

    :catch_0
    move-exception p2

    .line 17
    iget-object p1, p1, Le/k/a/c/g;->g:Le/k/a/b/j;

    .line 18
    invoke-static {p2}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    new-instance v2, Le/k/a/c/e0/b;

    invoke-direct {v2, p1, v0, p3, v1}, Le/k/a/c/e0/b;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/c/c;Le/k/a/c/g0/s;)V

    .line 20
    invoke-virtual {v2, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 21
    throw v2

    :catch_1
    move-exception p1

    .line 22
    new-instance p2, Le/k/a/c/d0/y/f;

    invoke-direct {p2, p1}, Le/k/a/c/d0/y/f;-><init>(Ljava/lang/NoClassDefFoundError;)V

    return-object p2
.end method

.method public z(Le/k/a/c/g;Le/k/a/c/c;Le/k/a/c/g0/s;Le/k/a/c/i;)Le/k/a/c/d0/u;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Le/k/a/c/g0/s;->v()Le/k/a/c/g0/j;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p3}, Le/k/a/c/g0/s;->q()Le/k/a/c/g0/g;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {p0, p1, v0, p4}, Le/k/a/c/d0/b;->t(Le/k/a/c/g;Le/k/a/c/g0/i;Le/k/a/c/i;)Le/k/a/c/i;

    move-result-object p4

    .line 4
    iget-object v2, p4, Le/k/a/c/i;->d:Ljava/lang/Object;

    .line 5
    move-object v5, v2

    check-cast v5, Le/k/a/c/j0/e;

    .line 6
    instance-of v2, v0, Le/k/a/c/g0/j;

    if-eqz v2, :cond_1

    .line 7
    new-instance v8, Le/k/a/c/d0/y/r;

    .line 8
    check-cast p2, Le/k/a/c/g0/q;

    .line 9
    iget-object p2, p2, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 10
    iget-object v6, p2, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    .line 11
    move-object v7, v0

    check-cast v7, Le/k/a/c/g0/j;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v2 .. v7}, Le/k/a/c/d0/y/r;-><init>(Le/k/a/c/g0/s;Le/k/a/c/i;Le/k/a/c/j0/e;Le/k/a/c/n0/b;Le/k/a/c/g0/j;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v8, Le/k/a/c/d0/y/i;

    .line 13
    check-cast p2, Le/k/a/c/g0/q;

    .line 14
    iget-object p2, p2, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 15
    iget-object v6, p2, Le/k/a/c/g0/c;->j:Le/k/a/c/n0/b;

    .line 16
    move-object v7, v0

    check-cast v7, Le/k/a/c/g0/g;

    move-object v2, v8

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v2 .. v7}, Le/k/a/c/d0/y/i;-><init>(Le/k/a/c/g0/s;Le/k/a/c/i;Le/k/a/c/j0/e;Le/k/a/c/n0/b;Le/k/a/c/g0/g;)V

    .line 17
    :goto_0
    invoke-virtual {p0, p1, v0}, Le/k/a/c/d0/b;->q(Le/k/a/c/g;Le/k/a/c/g0/b;)Le/k/a/c/j;

    move-result-object p2

    if-nez p2, :cond_2

    .line 18
    iget-object p2, p4, Le/k/a/c/i;->c:Ljava/lang/Object;

    .line 19
    check-cast p2, Le/k/a/c/j;

    :cond_2
    if-eqz p2, :cond_3

    .line 20
    invoke-virtual {p1, p2, v8, p4}, Le/k/a/c/g;->F(Le/k/a/c/j;Le/k/a/c/d;Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object p1

    .line 21
    invoke-virtual {v8, p1}, Le/k/a/c/d0/u;->G(Le/k/a/c/j;)Le/k/a/c/d0/u;

    move-result-object v8

    .line 22
    :cond_3
    invoke-virtual {p3}, Le/k/a/c/g0/s;->j()Le/k/a/c/b$a;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 23
    iget-object p2, p1, Le/k/a/c/b$a;->a:Le/k/a/c/b$a$a;

    sget-object p4, Le/k/a/c/b$a$a;->a:Le/k/a/c/b$a$a;

    if-ne p2, p4, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 24
    iget-object p1, p1, Le/k/a/c/b$a;->b:Ljava/lang/String;

    .line 25
    iput-object p1, v8, Le/k/a/c/d0/u;->j:Ljava/lang/String;

    .line 26
    :cond_5
    invoke-virtual {p3}, Le/k/a/c/g0/s;->i()Le/k/a/c/g0/a0;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 27
    iput-object p1, v8, Le/k/a/c/d0/u;->k:Le/k/a/c/g0/a0;

    :cond_6
    return-object v8

    :cond_7
    new-array p4, v1, [Ljava/lang/Object;

    const-string v0, "No non-constructor mutator available"

    .line 28
    invoke-virtual {p1, p2, p3, v0, p4}, Le/k/a/c/g;->W(Le/k/a/c/c;Le/k/a/c/g0/s;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
