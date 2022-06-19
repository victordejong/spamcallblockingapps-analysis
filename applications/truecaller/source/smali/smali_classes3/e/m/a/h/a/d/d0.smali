.class public final Le/m/a/h/a/d/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/d/z;


# direct methods
.method public static c(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6

    const-class v0, Ljava/lang/Object;

    const-string v1, "pathList"

    .line 1
    invoke-static {p0, v1}, Ln3/g0/y;->a3(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    new-instance v3, Le/m/a/h/a/d/u0;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    const/4 p0, 0x2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p0

    const-string p0, "Failed to get value of field %s of type %s on object of type %s"

    .line 4
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Le/m/a/h/a/d/u0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static d(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;ZLe/m/a/h/a/d/c0;Ljava/lang/String;Le/m/a/h/a/d/b0;)Z
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Le/m/a/h/a/d/d0;->c(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    const-class v1, Ljava/lang/Object;

    const-string v2, "dexElements"

    .line 3
    invoke-static {p0, v2, v1}, Ln3/g0/y;->l2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Le/m/a/h/a/d/r0;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Le/m/a/h/a/d/t0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-class v5, Ljava/io/File;

    .line 7
    invoke-static {v4, p5, v5}, Ln3/g0/y;->A2(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Le/m/a/h/a/d/t0;

    move-result-object v4

    invoke-virtual {v4}, Le/m/a/h/a/d/t0;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 8
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    const/4 v2, 0x1

    if-eqz p5, :cond_1

    return v2

    :cond_1
    const/4 p5, 0x0

    if-nez p3, :cond_3

    .line 10
    invoke-interface {p6, p0, p2, p1}, Le/m/a/h/a/d/b0;->a(Ljava/lang/Object;Ljava/io/File;Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 11
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Should be optimized "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    return p5

    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    .line 12
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-interface {p4, p0, p3, p1, v0}, Le/m/a/h/a/d/c0;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/m/a/h/a/d/r0;->c(Ljava/util/Collection;)V

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Le/m/a/h/a/d/q0;

    const-string p2, "DexPathList.makeDexElement failed"

    .line 16
    invoke-direct {p1, p2}, Le/m/a/h/a/d/q0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_2
    if-ge p5, p2, :cond_4

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 17
    check-cast p3, Ljava/io/IOException;

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    .line 18
    :cond_4
    const-class p2, Ljava/io/IOException;

    .line 19
    new-instance p3, Le/m/a/h/a/d/r0;

    const-string p4, "dexElementsSuppressedExceptions"

    .line 20
    invoke-static {p0, p4}, Ln3/g0/y;->a3(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p4

    invoke-direct {p3, p0, p4, p2}, Le/m/a/h/a/d/r0;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    .line 21
    invoke-virtual {p3, v0}, Le/m/a/h/a/d/r0;->c(Ljava/util/Collection;)V

    .line 22
    throw p1

    :cond_5
    return v2
.end method
