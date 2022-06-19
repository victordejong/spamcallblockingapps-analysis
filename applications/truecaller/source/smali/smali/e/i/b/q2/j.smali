.class public Le/i/b/q2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/q2/j$c;,
        Le/i/b/q2/j$b;,
        Le/i/b/q2/j$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "java."

    const-string v2, "javax."

    const-string v3, "sun."

    const-string v4, "com.sun."

    const-string v5, "com.intellij."

    const-string v6, "org.jetbrains."

    const-string v7, "kotlin."

    const-string v8, "android."

    const-string v9, "com.android."

    const-string v10, "androidx."

    const-string v11, "dalvik."

    const-string v12, "libcore."

    const-string v13, "com.google"

    const-string v14, "com.mopub"

    const-string v15, "org.json"

    const-string v16, "com.squareup."

    const-string v17, "org.junit."

    .line 2
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le/i/b/q2/j;->a:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/lang/StackTraceElement;

    const-string v2, "<private class>"

    const-string v3, "<private method>"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Le/i/b/q2/j;->b:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    const-string v0, "original"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visited"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "stackTrace"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "it"

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    aget-object v6, v0, v3

    .line 4
    invoke-static {v6, v4}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Le/i/b/q2/j;->b(Ljava/lang/StackTraceElement;)Z

    move-result v7

    xor-int/2addr v7, v5

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const-string v0, "com.criteo."

    const-string v1, "className"

    const/4 v3, 0x2

    if-eqz v6, :cond_3

    .line 5
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v0, v2, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    xor-int/2addr v6, v5

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    if-eqz v6, :cond_8

    .line 6
    iget-object v6, p0, Le/i/b/q2/j;->a:Ljava/util/List;

    .line 7
    instance-of v7, v6, Ljava/util/Collection;

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    .line 8
    :cond_4
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "javaClass.name"

    invoke-static {v8, v9}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v7, v2, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v5

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v2

    :goto_4
    if-eqz v6, :cond_7

    .line 10
    new-instance v6, Le/i/b/q2/j$b;

    const-string v7, "throwable"

    .line 11
    invoke-static {p1, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "throwable.javaClass.simpleName"

    invoke-static {v7, v8}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Le/i/b/q2/j$b;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 13
    :cond_7
    new-instance v6, Le/i/b/q2/j$b;

    const-string v7, "custom"

    .line 14
    invoke-direct {v6, v7}, Le/i/b/q2/j$b;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    move-object v6, p1

    .line 15
    :goto_5
    invoke-interface {p2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_6

    :cond_9
    move v7, v2

    .line 17
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 18
    sget-object v9, Le/i/b/q2/j$c;->d:Le/i/b/q2/j$c;

    .line 19
    invoke-virtual {p0, v8, p2}, Le/i/b/q2/j;->a(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;

    move-result-object v8

    const-string v9, "$this$internalCause"

    .line 20
    invoke-static {v6, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v9, Le/i/b/q2/j$c;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v6, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v8

    const-string v9, "originalSuppressed"

    .line 23
    invoke-static {v8, v9}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v8

    if-nez v9, :cond_b

    move v9, v5

    goto :goto_7

    :cond_b
    move v9, v2

    :goto_7
    xor-int/2addr v9, v5

    if-eqz v9, :cond_d

    .line 24
    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v8

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    array-length v10, v8

    move v11, v2

    :goto_8
    if-ge v11, v10, :cond_c

    aget-object v12, v8, v11

    .line 26
    invoke-static {v12, v4}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v12, p2}, Le/i/b/q2/j;->a(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 27
    :cond_c
    sget-object p2, Le/i/b/q2/j$c;->d:Le/i/b/q2/j$c;

    const-string p2, "$this$internalSuppressedExceptions"

    .line 28
    invoke-static {v6, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object p2, Le/i/b/q2/j$c;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p2, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    :cond_d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string v8, "original.stackTrace"

    invoke-static {p1, v8}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    array-length v8, p1

    move v9, v2

    :goto_9
    if-ge v9, v8, :cond_12

    aget-object v10, p1, v9

    .line 33
    invoke-static {v10, v4}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v0, v2, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v11

    if-nez v11, :cond_10

    .line 35
    invoke-virtual {p0, v10}, Le/i/b/q2/j;->b(Ljava/lang/StackTraceElement;)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_a

    .line 36
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-static {p2}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/StackTraceElement;

    iget-object v11, p0, Le/i/b/q2/j;->b:Ljava/lang/StackTraceElement;

    invoke-static {v10, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v5

    if-eqz v10, :cond_11

    .line 37
    :cond_f
    iget-object v10, p0, Le/i/b/q2/j;->b:Ljava/lang/StackTraceElement;

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 38
    :cond_10
    :goto_a
    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_12
    new-array p1, v2, [Ljava/lang/StackTraceElement;

    .line 39
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_14

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v6, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 40
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_13

    if-eqz v7, :cond_13

    .line 41
    sget-object p2, Le/i/b/q2/j$c;->d:Le/i/b/q2/j$c;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "$this$internalDetailMessage"

    .line 43
    invoke-static {v6, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object p2, Le/i/b/q2/j$c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p2, v6, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    return-object v6

    .line 45
    :cond_14
    new-instance p1, Ls1/p;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/StackTraceElement;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/i/b/q2/j;->a:Ljava/util/List;

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "className"

    invoke-static {v3, v4}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-static {v3, v1, v2, v4}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method
