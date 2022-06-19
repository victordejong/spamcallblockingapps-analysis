.class public final Le/m/e/e0/a0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/e/e0/a0/j$a;,
        Le/m/e/e0/a0/j$b;
    }
.end annotation


# instance fields
.field public final a:Le/m/e/e0/g;

.field public final b:Le/m/e/e;

.field public final c:Le/m/e/e0/o;

.field public final d:Le/m/e/e0/a0/d;

.field public final e:Le/m/e/e0/b0/b;


# direct methods
.method public constructor <init>(Le/m/e/e0/g;Le/m/e/e;Le/m/e/e0/o;Le/m/e/e0/a0/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/m/e/e0/b0/b;->a:Le/m/e/e0/b0/b;

    .line 3
    iput-object v0, p0, Le/m/e/e0/a0/j;->e:Le/m/e/e0/b0/b;

    .line 4
    iput-object p1, p0, Le/m/e/e0/a0/j;->a:Le/m/e/e0/g;

    .line 5
    iput-object p2, p0, Le/m/e/e0/a0/j;->b:Le/m/e/e;

    .line 6
    iput-object p3, p0, Le/m/e/e0/a0/j;->c:Le/m/e/e0/o;

    .line 7
    iput-object p4, p0, Le/m/e/e0/a0/j;->d:Le/m/e/e0/a0/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/j;->c:Le/m/e/e0/o;

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Le/m/e/e0/o;->b(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0, v1, p2}, Le/m/e/e0/o;->a(Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_8

    .line 5
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x88

    if-eqz v1, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/e/e0/o;->b(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    .line 8
    iget-object p2, v0, Le/m/e/e0/o;->a:Ljava/util/List;

    goto :goto_2

    :cond_5
    iget-object p2, v0, Le/m/e/e0/o;->b:Ljava/util/List;

    .line 9
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 10
    new-instance v0, Le/m/e/c;

    invoke-direct {v0, p1}, Le/m/e/c;-><init>(Ljava/lang/reflect/Field;)V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/e/b;

    .line 12
    invoke-interface {p2, v0}, Le/m/e/b;->shouldSkipField(Le/m/e/c;)Z

    move-result p2

    if-eqz p2, :cond_6

    :goto_3
    move p1, v4

    goto :goto_4

    :cond_7
    move p1, v3

    :goto_4
    if-nez p1, :cond_8

    move v3, v4

    :cond_8
    return v3
.end method

.method public create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "TT;>;)",
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1
    const-class v13, Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v14, 0x0

    if-nez v1, :cond_0

    return-object v14

    .line 3
    :cond_0
    iget-object v1, v11, Le/m/e/e0/a0/j;->a:Le/m/e/e0/g;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Le/m/e/e0/g;->a(Le/m/e/f0/a;)Le/m/e/e0/t;

    move-result-object v15

    .line 4
    new-instance v10, Le/m/e/e0/a0/j$a;

    .line 5
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v14, v9

    move-object/from16 v34, v10

    move-object/from16 v22, v15

    goto/16 :goto_b

    .line 7
    :cond_2
    invoke-virtual/range {p2 .. p2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    move-object v7, v0

    move-object/from16 v16, v2

    :goto_0
    if-eq v7, v13, :cond_1

    .line 8
    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 9
    array-length v5, v6

    const/4 v4, 0x0

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_f

    aget-object v2, v6, v3

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v11, v2, v1}, Le/m/e/e0/a0/j;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    .line 11
    invoke-virtual {v11, v2, v4}, Le/m/e/e0/a0/j;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v17

    if-nez v0, :cond_3

    if-nez v17, :cond_3

    move/from16 v20, v3

    move/from16 v31, v4

    move/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 p2, v7

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v34, v10

    move-object/from16 v19, v13

    move-object/from16 v22, v15

    goto/16 :goto_a

    .line 12
    :cond_3
    iget-object v4, v11, Le/m/e/e0/a0/j;->e:Le/m/e/e0/b0/b;

    invoke-virtual {v4, v2}, Le/m/e/e0/b0/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 13
    invoke-virtual/range {v16 .. v16}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v14

    invoke-static {v4, v7, v14}, Le/m/e/e0/a;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v14

    .line 14
    const-class v4, Le/m/e/d0/b;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Le/m/e/d0/b;

    if-nez v4, :cond_4

    .line 15
    iget-object v4, v11, Le/m/e/e0/a0/j;->b:Le/m/e/e;

    invoke-interface {v4, v2}, Le/m/e/e;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move/from16 v19, v0

    goto :goto_2

    .line 17
    :cond_4
    invoke-interface {v4}, Le/m/e/d0/b;->value()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-interface {v4}, Le/m/e/d0/b;->alternate()[Ljava/lang/String;

    move-result-object v4

    move/from16 v19, v0

    .line 19
    array-length v0, v4

    if-nez v0, :cond_5

    .line 20
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :goto_2
    move/from16 v20, v3

    const/16 v18, 0x1

    goto :goto_4

    .line 21
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    move/from16 v20, v3

    array-length v3, v4

    const/16 v18, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    array-length v1, v4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_6

    move/from16 v21, v1

    aget-object v1, v4, v3

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v21

    goto :goto_3

    :cond_6
    move-object v4, v0

    .line 25
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    const/4 v1, 0x0

    move-object/from16 v19, v13

    const/4 v13, 0x0

    :goto_5
    if-ge v1, v3, :cond_d

    .line 26
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v15

    move-object/from16 v15, v21

    check-cast v15, Ljava/lang/String;

    if-eqz v1, :cond_7

    const/16 v21, 0x0

    goto :goto_6

    :cond_7
    move/from16 v21, v0

    .line 27
    :goto_6
    invoke-static {v14}, Le/m/e/f0/a;->get(Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v0

    move/from16 v23, v1

    .line 28
    invoke-virtual {v0}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    move/from16 v24, v3

    .line 29
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v25, v18

    goto :goto_7

    :cond_8
    const/16 v25, 0x0

    .line 30
    :goto_7
    const-class v1, Le/m/e/d0/a;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Le/m/e/d0/a;

    if-eqz v1, :cond_9

    .line 31
    iget-object v3, v11, Le/m/e/e0/a0/j;->d:Le/m/e/e0/a0/d;

    move-object/from16 v26, v2

    iget-object v2, v11, Le/m/e/e0/a0/j;->a:Le/m/e/e0/g;

    invoke-virtual {v3, v2, v12, v0, v1}, Le/m/e/e0/a0/d;->a(Le/m/e/e0/g;Le/m/e/k;Le/m/e/f0/a;Le/m/e/d0/a;)Le/m/e/b0;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object/from16 v26, v2

    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_a

    move/from16 v27, v18

    goto :goto_9

    :cond_a
    const/16 v27, 0x0

    :goto_9
    if-nez v1, :cond_b

    .line 32
    invoke-virtual {v12, v0}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v1

    :cond_b
    move-object/from16 v28, v1

    .line 33
    new-instance v3, Le/m/e/e0/a0/i;

    move-object/from16 v29, v0

    move-object v0, v3

    move/from16 v35, v23

    move/from16 v23, v18

    move/from16 v18, v35

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v11, v3

    move/from16 v3, v21

    move-object/from16 v30, v4

    const/16 v31, 0x0

    move/from16 v4, v17

    move/from16 v32, v5

    move-object/from16 v5, v26

    move-object/from16 v33, v6

    move/from16 v6, v27

    move-object/from16 p2, v7

    move-object/from16 v7, v28

    move-object v12, v8

    move-object/from16 v8, p1

    move-object/from16 v27, v14

    move-object v14, v9

    move-object/from16 v9, v29

    move-object/from16 v34, v10

    move/from16 v10, v25

    invoke-direct/range {v0 .. v10}, Le/m/e/e0/a0/i;-><init>(Le/m/e/e0/a0/j;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLe/m/e/b0;Le/m/e/k;Le/m/e/f0/a;Z)V

    .line 34
    invoke-interface {v14, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/e/e0/a0/j$b;

    if-nez v13, :cond_c

    move-object v13, v0

    :cond_c
    add-int/lit8 v1, v18, 0x1

    move-object/from16 v11, p0

    move-object/from16 v7, p2

    move-object v8, v12

    move-object v9, v14

    move/from16 v0, v21

    move-object/from16 v15, v22

    move/from16 v18, v23

    move/from16 v3, v24

    move-object/from16 v2, v26

    move-object/from16 v14, v27

    move-object/from16 v4, v30

    move/from16 v5, v32

    move-object/from16 v6, v33

    move-object/from16 v10, v34

    move-object/from16 v12, p1

    goto/16 :goto_5

    :cond_d
    move/from16 v32, v5

    move-object/from16 v33, v6

    move-object/from16 p2, v7

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v34, v10

    move-object/from16 v22, v15

    const/16 v31, 0x0

    if-nez v13, :cond_e

    :goto_a
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v11, p0

    move-object/from16 v7, p2

    move-object v8, v12

    move-object v9, v14

    move-object/from16 v13, v19

    move-object/from16 v15, v22

    move/from16 v4, v31

    move/from16 v5, v32

    move-object/from16 v6, v33

    move-object/from16 v10, v34

    const/4 v14, 0x0

    move-object/from16 v12, p1

    goto/16 :goto_1

    .line 35
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Le/m/e/e0/a0/j$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 p2, v7

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v34, v10

    move-object/from16 v19, v13

    move-object/from16 v22, v15

    .line 36
    invoke-virtual/range {v16 .. v16}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v0, v2, v1}, Le/m/e/e0/a;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Le/m/e/f0/a;->get(Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v16

    .line 37
    invoke-virtual/range {v16 .. v16}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v11, p0

    const/4 v14, 0x0

    move-object/from16 v12, p1

    goto/16 :goto_0

    :goto_b
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    .line 38
    invoke-direct {v1, v0, v14}, Le/m/e/e0/a0/j$a;-><init>(Le/m/e/e0/t;Ljava/util/Map;)V

    return-object v1
.end method
