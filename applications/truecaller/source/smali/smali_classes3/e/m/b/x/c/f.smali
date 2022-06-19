.class public abstract Le/m/b/x/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Le/m/b/x/c/f;->a:Ljava/util/WeakHashMap;

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Le/m/b/x/c/f;->b:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    sget-object v1, Le/m/b/x/c/f;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    sget-object v2, Le/m/b/x/c/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    sget-object v0, Le/m/b/x/c/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    .line 5
    :cond_1
    :try_start_1
    invoke-static {p0}, Le/m/b/x/d/f;->b(Ljava/lang/Class;)Le/m/b/x/d/f;

    move-result-object v1

    .line 6
    iget-object v1, v1, Le/m/b/x/d/f;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/b/x/d/j;

    .line 8
    iget-object v2, v2, Le/m/b/x/d/j;->b:Ljava/lang/reflect/Field;

    .line 9
    const-class v3, Le/m/b/x/c/g;

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Le/m/b/x/c/g;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    const-string v6, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p0, v7, v4

    .line 11
    invoke-static {v0, v6, v7}, Ln3/g0/y;->u(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/m/b/x/d/g;->d(Ljava/lang/reflect/Type;)Z

    move-result v0

    const-string v6, "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v4

    .line 13
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v5

    .line 14
    invoke-static {v0, v6, v7}, Ln3/g0/y;->u(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-interface {v3}, Le/m/b/x/c/g;->typeDefinitions()[Le/m/b/x/c/g$a;

    move-result-object v0

    .line 16
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 17
    array-length v6, v0

    if-lez v6, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v4

    :goto_2
    const-string v7, "@JsonPolymorphicTypeMap must have at least one @TypeDef"

    .line 18
    invoke-static {v6, v7}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 19
    array-length v6, v0

    move v7, v4

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v8, v0, v7

    .line 20
    invoke-interface {v8}, Le/m/b/x/c/g$a;->key()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Class contains two @TypeDef annotations with identical key: %s"

    new-array v11, v5, [Ljava/lang/Object;

    .line 21
    invoke-interface {v8}, Le/m/b/x/c/g$a;->key()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v4

    .line 22
    invoke-static {v9, v10, v11}, Ln3/g0/y;->u(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    move-object v0, v2

    goto :goto_0

    .line 23
    :cond_6
    sget-object v1, Le/m/b/x/c/f;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    sget-object p0, Le/m/b/x/c/f;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p0

    sget-object v0, Le/m/b/x/c/f;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 25
    throw p0
.end method


# virtual methods
.method public abstract E()Le/m/b/x/c/f;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final I(Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/x/c/f;->K()Le/m/b/x/c/i;

    move-result-object v0

    .line 2
    :goto_0
    sget-object v1, Le/m/b/x/c/i;->e:Le/m/b/x/c/i;

    if-ne v0, v1, :cond_1

    .line 3
    move-object v0, p0

    check-cast v0, Le/m/b/x/c/j/c;

    .line 4
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Le/m/b/x/c/f;->E()Le/m/b/x/c/f;

    .line 8
    invoke-virtual {p0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final J()Le/m/b/x/c/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Le/m/b/x/c/j/c;

    .line 2
    iget-object v0, v0, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "no JSON input found"

    .line 4
    invoke-static {v1, v2}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    return-object v0
.end method

.method public final K()Le/m/b/x/c/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/x/c/f;->J()Le/m/b/x/c/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    move-result-object v0

    .line 4
    sget-object v1, Le/m/b/x/c/i;->e:Le/m/b/x/c/i;

    if-eq v0, v1, :cond_2

    sget-object v1, Le/m/b/x/c/i;->d:Le/m/b/x/c/i;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 5
    :goto_1
    invoke-static {v1, v0}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public abstract d()Le/m/b/x/c/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public j(Ljava/lang/reflect/Type;ZLe/m/b/x/c/a;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/b/x/c/f;->J()Le/m/b/x/c/i;

    :cond_0
    const/4 v1, 0x0

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Le/m/b/x/c/f;->s(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Le/m/b/x/c/a;Z)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 4
    move-object p2, p0

    check-cast p2, Le/m/b/x/c/j/c;

    .line 5
    iget-object p2, p2, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {p2}, Le/m/e/g0/a;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    .line 6
    move-object p2, p0

    check-cast p2, Le/m/b/x/c/j/c;

    .line 7
    iget-object p2, p2, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {p2}, Le/m/e/g0/a;->close()V

    .line 8
    :cond_2
    throw p1
.end method

.method public final k(Ljava/util/ArrayList;Ljava/lang/Object;Le/m/b/x/c/a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Le/m/b/x/c/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Le/m/b/x/c/b;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Le/m/b/x/c/b;

    move-object v1, p0

    check-cast v1, Le/m/b/x/c/j/c;

    .line 3
    iget-object v1, v1, Le/m/b/x/c/j/c;->d:Le/m/b/x/c/j/a;

    .line 4
    iput-object v1, v0, Le/m/b/x/c/b;->c:Le/m/b/x/c/c;

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/m/b/x/c/f;->K()Le/m/b/x/c/i;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-static {v1}, Le/m/b/x/d/f;->b(Ljava/lang/Class;)Le/m/b/x/d/f;

    move-result-object v2

    .line 8
    const-class v3, Le/m/b/x/d/k;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    move-object v7, p2

    check-cast v7, Ljava/util/Map;

    const/4 v6, 0x0

    .line 11
    const-class p2, Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v1, p2, v0}, Le/m/b/x/d/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v8

    move-object v5, p0

    move-object v9, p1

    move-object v10, p3

    .line 12
    invoke-virtual/range {v5 .. v10}, Le/m/b/x/c/f;->q(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Le/m/b/x/c/a;)V

    return-void

    .line 13
    :cond_1
    :goto_0
    sget-object v1, Le/m/b/x/c/i;->e:Le/m/b/x/c/i;

    if-ne v0, v1, :cond_8

    .line 14
    move-object v0, p0

    check-cast v0, Le/m/b/x/c/j/c;

    .line 15
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    const/4 v1, 0x0

    if-nez p3, :cond_7

    .line 17
    invoke-virtual {v2, v0}, Le/m/b/x/d/f;->a(Ljava/lang/String;)Le/m/b/x/d/j;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 18
    iget-object v0, v4, Le/m/b/x/d/j;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-boolean v0, v4, Le/m/b/x/d/j;->a:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "final array/object fields are not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    :goto_1
    iget-object v6, v4, Le/m/b/x/d/j;->b:Ljava/lang/reflect/Field;

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 23
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v4}, Le/m/b/x/d/j;->a()Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v11, 0x1

    move-object v5, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    .line 25
    invoke-virtual/range {v5 .. v11}, Le/m/b/x/c/f;->s(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Le/m/b/x/c/a;Z)Ljava/lang/Object;

    move-result-object v1

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 27
    invoke-virtual {v4, p2, v1}, Le/m/b/x/d/j;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    .line 28
    move-object v1, p2

    check-cast v1, Le/m/b/x/d/k;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    .line 29
    invoke-virtual/range {v4 .. v10}, Le/m/b/x/c/f;->s(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Le/m/b/x/c/a;Z)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Le/m/b/x/d/k;->h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;

    goto :goto_2

    :cond_5
    if-nez p3, :cond_6

    .line 30
    invoke-virtual {p0}, Le/m/b/x/c/f;->E()Le/m/b/x/c/f;

    .line 31
    :goto_2
    invoke-virtual {p0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_6
    throw v1

    .line 33
    :cond_7
    throw v1

    :cond_8
    return-void
.end method

.method public final l(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Le/m/b/x/c/f;->j(Ljava/lang/reflect/Type;ZLe/m/b/x/c/a;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    move-object v0, p0

    check-cast v0, Le/m/b/x/c/j/c;

    .line 3
    iget-object v0, v0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    move-object v0, p0

    check-cast v0, Le/m/b/x/c/j/c;

    .line 5
    iget-object v0, v0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->close()V

    .line 6
    throw p1
.end method

.method public final q(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Le/m/b/x/c/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Le/m/b/x/c/a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/x/c/f;->K()Le/m/b/x/c/i;

    move-result-object v0

    .line 2
    :goto_0
    sget-object v1, Le/m/b/x/c/i;->e:Le/m/b/x/c/i;

    if-ne v0, v1, :cond_1

    .line 3
    move-object v0, p0

    check-cast v0, Le/m/b/x/c/j/c;

    .line 4
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    if-nez p5, :cond_0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    .line 6
    invoke-virtual/range {v1 .. v7}, Le/m/b/x/c/f;->s(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Le/m/b/x/c/a;Z)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    throw p1

    :cond_1
    return-void
.end method

.method public final s(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Le/m/b/x/c/a;Z)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Le/m/b/x/c/a;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p3

    move-object/from16 v10, p5

    .line 1
    const-class v1, Ljava/lang/Double;

    const-class v2, Ljava/lang/Float;

    move-object/from16 v3, p2

    invoke-static {v0, v3}, Le/m/b/x/d/g;->j(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 2
    instance-of v4, v3, Ljava/lang/Class;

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v4, v11

    .line 3
    :goto_0
    instance-of v5, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1

    .line 4
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v4}, Le/m/b/x/d/l;->g(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v4

    .line 5
    :cond_1
    const-class v5, Ljava/lang/Void;

    if-ne v4, v5, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Le/m/b/x/c/f;->E()Le/m/b/x/c/f;

    return-object v11

    .line 7
    :cond_2
    move-object v12, v8

    check-cast v12, Le/m/b/x/c/j/c;

    .line 8
    iget-object v5, v12, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    .line 9
    :try_start_0
    move-object v6, v8

    check-cast v6, Le/m/b/x/c/j/c;

    .line 10
    iget-object v6, v6, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    .line 11
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x0

    const/4 v13, 0x1

    packed-switch v6, :pswitch_data_0

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_1c

    :pswitch_0
    if-eqz v4, :cond_3

    .line 13
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v7, v13

    :cond_4
    const-string v1, "primitive number field but found a JSON null"

    .line 14
    invoke-static {v7, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    if-eqz v4, :cond_6

    .line 15
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x600

    if-eqz v1, :cond_6

    .line 16
    const-class v1, Ljava/util/Collection;

    invoke-static {v4, v1}, Le/m/b/x/d/l;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    invoke-static {v3}, Le/m/b/x/d/g;->f(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/m/b/x/d/g;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 18
    :cond_5
    const-class v1, Ljava/util/Map;

    invoke-static {v4, v1}, Le/m/b/x/d/l;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    invoke-static {v4}, Le/m/b/x/d/g;->g(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/m/b/x/d/g;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 20
    :cond_6
    invoke-static {v0, v3}, Le/m/b/x/d/l;->f(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/m/b/x/d/g;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    if-eqz v3, :cond_8

    .line 21
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v4, v0, :cond_8

    if-eqz v4, :cond_7

    const-class v0, Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    move v0, v7

    goto :goto_2

    :cond_8
    :goto_1
    move v0, v13

    :goto_2
    const-string v1, "expected type Boolean or boolean but got %s"

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v3, v2, v7

    .line 23
    invoke-static {v0, v1, v2}, Ln3/g0/y;->u(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 24
    sget-object v0, Le/m/b/x/c/i;->i:Le/m/b/x/c/i;

    if-ne v5, v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v0

    :pswitch_2
    if-eqz v9, :cond_a

    .line 25
    const-class v0, Le/m/b/x/c/h;

    .line 26
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    move v7, v13

    :cond_b
    const-string v0, "number type formatted as a JSON number cannot use @JsonString annotation"

    .line 27
    invoke-static {v7, v0}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    if-eqz v4, :cond_1a

    .line 28
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_a

    .line 29
    :cond_c
    const-class v0, Ljava/math/BigInteger;

    if-ne v4, v0, :cond_d

    .line 30
    move-object v0, v8

    check-cast v0, Le/m/b/x/c/j/c;

    .line 31
    invoke-virtual {v0}, Le/m/b/x/c/j/c;->P()V

    .line 32
    new-instance v1, Ljava/math/BigInteger;

    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_d
    if-eq v4, v1, :cond_19

    .line 33
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_e

    goto/16 :goto_9

    .line 34
    :cond_e
    const-class v0, Ljava/lang/Long;

    if-eq v4, v0, :cond_18

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_f

    goto/16 :goto_8

    :cond_f
    if-eq v4, v2, :cond_17

    .line 35
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_10

    goto :goto_7

    .line 36
    :cond_10
    const-class v0, Ljava/lang/Integer;

    if-eq v4, v0, :cond_16

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_11

    goto :goto_6

    .line 37
    :cond_11
    const-class v0, Ljava/lang/Short;

    if-eq v4, v0, :cond_15

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_12

    goto :goto_5

    .line 38
    :cond_12
    const-class v0, Ljava/lang/Byte;

    if-eq v4, v0, :cond_14

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v0, :cond_13

    goto :goto_4

    .line 39
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected numeric type but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_14
    :goto_4
    move-object v0, v8

    check-cast v0, Le/m/b/x/c/j/c;

    .line 41
    invoke-virtual {v0}, Le/m/b/x/c/j/c;->P()V

    .line 42
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 44
    :cond_15
    :goto_5
    move-object v0, v8

    check-cast v0, Le/m/b/x/c/j/c;

    .line 45
    invoke-virtual {v0}, Le/m/b/x/c/j/c;->P()V

    .line 46
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 48
    :cond_16
    :goto_6
    move-object v0, v8

    check-cast v0, Le/m/b/x/c/j/c;

    .line 49
    invoke-virtual {v0}, Le/m/b/x/c/j/c;->P()V

    .line 50
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 52
    :cond_17
    :goto_7
    move-object v0, v8

    check-cast v0, Le/m/b/x/c/j/c;

    .line 53
    invoke-virtual {v0}, Le/m/b/x/c/j/c;->P()V

    .line 54
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 56
    :cond_18
    :goto_8
    move-object v0, v8

    check-cast v0, Le/m/b/x/c/j/c;

    .line 57
    invoke-virtual {v0}, Le/m/b/x/c/j/c;->P()V

    .line 58
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 60
    :cond_19
    :goto_9
    move-object v0, v8

    check-cast v0, Le/m/b/x/c/j/c;

    .line 61
    invoke-virtual {v0}, Le/m/b/x/c/j/c;->P()V

    .line 62
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1a
    :goto_a
    move-object v0, v8

    check-cast v0, Le/m/b/x/c/j/c;

    .line 65
    invoke-virtual {v0}, Le/m/b/x/c/j/c;->P()V

    .line 66
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 67
    :pswitch_3
    move-object v0, v8

    check-cast v0, Le/m/b/x/c/j/c;

    .line 68
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_1b

    if-eq v4, v2, :cond_1b

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v2, :cond_1b

    if-ne v4, v1, :cond_1c

    :cond_1b
    const-string v1, "nan"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "-infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_1c
    if-eqz v4, :cond_1d

    .line 72
    const-class v0, Ljava/lang/Number;

    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-eqz v9, :cond_1e

    const-class v0, Le/m/b/x/c/h;

    .line 74
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_1e

    :cond_1d
    move v7, v13

    :cond_1e
    const-string v0, "number field formatted as a JSON string must use the @JsonString annotation"

    .line 75
    invoke-static {v7, v0}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 76
    :cond_1f
    move-object v0, v8

    check-cast v0, Le/m/b/x/c/j/c;

    .line 77
    iget-object v0, v0, Le/m/b/x/c/j/c;->g:Ljava/lang/String;

    .line 78
    invoke-static {v3, v0}, Le/m/b/x/d/g;->i(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_4
    invoke-static {v3}, Le/m/b/x/d/l;->j(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_20

    move v1, v13

    goto :goto_b

    :cond_20
    move v1, v7

    :goto_b
    const-string v2, "expected object or map type but got %s"

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v3, v5, v7

    .line 80
    invoke-static {v1, v2, v5}, Ln3/g0/y;->u(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p6, :cond_21

    .line 81
    invoke-static {v4}, Le/m/b/x/c/f;->b(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_c

    :cond_21
    move-object v1, v11

    :goto_c
    if-eqz v4, :cond_23

    if-nez v10, :cond_22

    goto :goto_d

    .line 82
    :cond_22
    throw v11

    :cond_23
    :goto_d
    if-eqz v4, :cond_24

    .line 83
    const-class v2, Ljava/util/Map;

    invoke-static {v4, v2}, Le/m/b/x/d/l;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v13

    goto :goto_e

    :cond_24
    move v2, v7

    :goto_e
    if-eqz v1, :cond_25

    .line 84
    new-instance v5, Le/m/b/x/c/b;

    invoke-direct {v5}, Le/m/b/x/c/b;-><init>()V

    :goto_f
    move-object v14, v5

    goto :goto_11

    :cond_25
    if-nez v2, :cond_27

    if-nez v4, :cond_26

    goto :goto_10

    .line 85
    :cond_26
    invoke-static {v4}, Le/m/b/x/d/l;->m(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_f

    .line 86
    :cond_27
    :goto_10
    invoke-static {v4}, Le/m/b/x/d/g;->g(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v5

    goto :goto_f

    .line 87
    :goto_11
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v3, :cond_28

    .line 88
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    if-eqz v2, :cond_2a

    .line 89
    const-class v2, Le/m/b/x/d/k;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 90
    const-class v2, Ljava/util/Map;

    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 92
    const-class v2, Ljava/util/Map;

    invoke-static {v3, v2, v13}, Le/m/b/x/d/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v4, v2

    goto :goto_12

    :cond_29
    move-object v4, v11

    :goto_12
    if-eqz v4, :cond_2a

    .line 93
    move-object v3, v14

    check-cast v3, Ljava/util/Map;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    .line 94
    invoke-virtual/range {v1 .. v6}, Le/m/b/x/c/f;->q(Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Le/m/b/x/c/a;)V

    return-object v14

    .line 95
    :cond_2a
    invoke-virtual {v8, v0, v14, v10}, Le/m/b/x/c/f;->k(Ljava/util/ArrayList;Ljava/lang/Object;Le/m/b/x/c/a;)V

    if-eqz v3, :cond_2b

    .line 96
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2b
    if-nez v1, :cond_2c

    return-object v14

    .line 97
    :cond_2c
    move-object v2, v14

    check-cast v2, Le/m/b/x/c/b;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/m/b/x/d/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2d

    move v3, v13

    goto :goto_13

    :cond_2d
    move v3, v7

    :goto_13
    const-string v4, "No value specified for @JsonPolymorphicTypeMap field"

    .line 98
    invoke-static {v3, v4}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    const-class v3, Le/m/b/x/c/g;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Le/m/b/x/c/g;

    .line 101
    invoke-interface {v1}, Le/m/b/x/c/g;->typeDefinitions()[Le/m/b/x/c/g$a;

    move-result-object v1

    array-length v3, v1

    move v4, v7

    :goto_14
    if-ge v4, v3, :cond_2f

    aget-object v5, v1, v4

    .line 102
    invoke-interface {v5}, Le/m/b/x/c/g$a;->key()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 103
    invoke-interface {v5}, Le/m/b/x/c/g$a;->ref()Ljava/lang/Class;

    move-result-object v1

    move-object v3, v1

    goto :goto_15

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2f
    move-object v3, v11

    :goto_15
    if-eqz v3, :cond_30

    goto :goto_16

    :cond_30
    move v13, v7

    .line 104
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No TypeDef annotation found with key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v13, v1}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 106
    move-object v1, v8

    check-cast v1, Le/m/b/x/c/j/c;

    .line 107
    iget-object v1, v1, Le/m/b/x/c/j/c;->d:Le/m/b/x/c/j/a;

    .line 108
    invoke-virtual {v1, v14, v7}, Le/m/b/x/c/c;->d(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Le/m/b/x/c/j/a;->e(Ljava/io/Reader;)Le/m/b/x/c/f;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Le/m/b/x/c/f;->J()Le/m/b/x/c/i;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    .line 111
    invoke-virtual/range {v1 .. v7}, Le/m/b/x/c/f;->s(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Le/m/b/x/c/a;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 112
    :pswitch_5
    invoke-static {v3}, Le/m/b/x/d/l;->j(Ljava/lang/reflect/Type;)Z

    move-result v14

    if-eqz v3, :cond_32

    if-nez v14, :cond_32

    if-eqz v4, :cond_31

    .line 113
    const-class v1, Ljava/util/Collection;

    .line 114
    invoke-static {v4, v1}, Le/m/b/x/d/l;->k(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_17

    :cond_31
    move v1, v7

    goto :goto_18

    :cond_32
    :goto_17
    move v1, v13

    :goto_18
    const-string v2, "expected collection or array type but got %s"

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v3, v5, v7

    .line 115
    invoke-static {v1, v2, v5}, Ln3/g0/y;->u(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_34

    if-nez v9, :cond_33

    goto :goto_19

    .line 116
    :cond_33
    throw v11

    .line 117
    :cond_34
    :goto_19
    invoke-static {v3}, Le/m/b/x/d/g;->f(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v13

    if-eqz v14, :cond_35

    .line 118
    invoke-static {v3}, Le/m/b/x/d/l;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_1a

    :cond_35
    if-eqz v4, :cond_36

    .line 119
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 120
    invoke-static {v3}, Le/m/b/x/d/l;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_1a

    :cond_36
    move-object v1, v11

    .line 121
    :goto_1a
    invoke-static {v0, v1}, Le/m/b/x/d/g;->j(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    .line 122
    invoke-virtual/range {p0 .. p0}, Le/m/b/x/c/f;->K()Le/m/b/x/c/i;

    move-result-object v1

    .line 123
    :goto_1b
    sget-object v2, Le/m/b/x/c/i;->b:Le/m/b/x/c/i;

    if-eq v1, v2, :cond_37

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object/from16 v4, p3

    move-object v5, v13

    move-object/from16 v6, p5

    .line 124
    invoke-virtual/range {v1 .. v7}, Le/m/b/x/c/f;->s(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/ArrayList;Ljava/lang/Object;Le/m/b/x/c/a;Z)Ljava/lang/Object;

    move-result-object v1

    .line 125
    invoke-interface {v13, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual/range {p0 .. p0}, Le/m/b/x/c/f;->d()Le/m/b/x/c/i;

    move-result-object v1

    goto :goto_1b

    :cond_37
    if-eqz v14, :cond_38

    .line 127
    invoke-static {v0, v15}, Le/m/b/x/d/l;->f(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v13, v0}, Le/m/b/x/d/l;->o(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_38
    return-object v13

    .line 128
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected JSON node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    iget-object v2, v12, Le/m/b/x/c/j/c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_1d

    :cond_39
    iget-object v2, v12, Le/m/b/x/c/j/c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    :goto_1d
    if-eqz v11, :cond_3a

    const-string v2, "key "

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    if-eqz v9, :cond_3c

    if-eqz v11, :cond_3b

    const-string v2, ", "

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    const-string v2, "field "

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    :cond_3c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
