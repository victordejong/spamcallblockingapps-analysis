.class public final Ls1/a/a/a/v0/b/j1/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/c<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ls1/c<",
            "*>;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x8

    new-array v1, v0, [Ls1/a/c;

    .line 1
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ls1/a/a/a/v0/b/j1/b/b;->a:Ljava/util/List;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v1, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 4
    check-cast v12, Ls1/a/c;

    .line 5
    invoke-static {v12}, Le/q/f/a/d/a;->P0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v12}, Le/q/f/a/d/a;->Q0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v12

    .line 6
    new-instance v14, Ls1/k;

    invoke-direct {v14, v13, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Ls1/a/a/a/v0/b/j1/b/b;->b:Ljava/util/Map;

    .line 8
    sget-object v1, Ls1/a/a/a/v0/b/j1/b/b;->a:Ljava/util/List;

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 11
    check-cast v12, Ls1/a/c;

    .line 12
    invoke-static {v12}, Le/q/f/a/d/a;->Q0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v13

    invoke-static {v12}, Le/q/f/a/d/a;->P0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v12

    .line 13
    new-instance v14, Ls1/k;

    invoke-direct {v14, v13, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Ls1/a/a/a/v0/b/j1/b/b;->c:Ljava/util/Map;

    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/Class;

    .line 15
    const-class v2, Ls1/z/b/a;

    aput-object v2, v1, v3

    const-class v2, Ls1/z/b/l;

    aput-object v2, v1, v4

    const-class v2, Ls1/z/b/p;

    aput-object v2, v1, v5

    const-class v2, Ls1/z/b/q;

    aput-object v2, v1, v6

    const-class v2, Ls1/z/b/r;

    aput-object v2, v1, v7

    .line 16
    const-class v2, Ls1/z/b/s;

    aput-object v2, v1, v8

    const-class v2, Ls1/z/b/t;

    aput-object v2, v1, v9

    const-class v2, Ls1/z/b/u;

    aput-object v2, v1, v10

    const-class v2, Ls1/z/b/v;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-class v2, Ls1/z/b/w;

    aput-object v2, v1, v0

    .line 17
    const-class v0, Ls1/z/b/b;

    aput-object v0, v1, v11

    const/16 v0, 0xb

    const-class v2, Ls1/z/b/c;

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-class v2, Ls1/z/b/d;

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-class v2, Ls1/z/b/e;

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-class v2, Ls1/z/b/f;

    aput-object v2, v1, v0

    const/16 v0, 0xf

    .line 18
    const-class v2, Ls1/z/b/g;

    aput-object v2, v1, v0

    const/16 v0, 0x10

    const-class v2, Ls1/z/b/h;

    aput-object v2, v1, v0

    const/16 v0, 0x11

    const-class v2, Ls1/z/b/i;

    aput-object v2, v1, v0

    const/16 v0, 0x12

    const-class v2, Ls1/z/b/j;

    aput-object v2, v1, v0

    const/16 v0, 0x13

    const-class v2, Ls1/z/b/k;

    aput-object v2, v1, v0

    const/16 v0, 0x14

    .line 19
    const-class v2, Ls1/z/b/m;

    aput-object v2, v1, v0

    const/16 v0, 0x15

    const-class v2, Ls1/z/b/n;

    aput-object v2, v1, v0

    const/16 v0, 0x16

    const-class v2, Ls1/z/b/o;

    aput-object v2, v1, v0

    .line 20
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v3, 0x1

    if-ltz v3, :cond_2

    .line 23
    check-cast v2, Ljava/lang/Class;

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 25
    new-instance v5, Ls1/k;

    invoke-direct {v5, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_2

    .line 27
    :cond_2
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 v0, 0x0

    throw v0

    .line 28
    :cond_3
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/b/j1/b/b;->d:Ljava/util/Map;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "$this$createArrayType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ls1/a/a/a/v0/f/a;"
        }
    .end annotation

    const-string v0, "$this$classId"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "simpleName"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object p0

    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/f/a;->d(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance v0, Ls1/a/a/a/v0/f/b;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object p0

    :goto_1
    const-string v0, "declaringClass?.classId?\u2026Id.topLevel(FqName(name))"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 5
    :cond_3
    :goto_2
    new-instance v0, Ls1/a/a/a/v0/f/b;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p0, Ls1/a/a/a/v0/f/a;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->e()Ls1/a/a/a/v0/f/b;

    move-result-object v2

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->g()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/b;->k(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v0

    invoke-direct {p0, v2, v0, v1}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;Z)V

    :goto_3
    return-object p0

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t compute ClassId for array type: "

    invoke-static {v1, p0}, Le/d/c/a/a;->w2(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t compute ClassId for primitive type: "

    invoke-static {v1, p0}, Le/d/c/a/a;->w2(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "$this$desc"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "V"

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Ls1/a/a/a/v0/b/j1/b/b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "createArrayType().name"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p0, v0, v1, v2, v3}, Ls1/f0/r;->s(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$parameterizedTypeArguments"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    sget-object p0, Ls1/u/s;->a:Ls1/u/s;

    return-object p0

    .line 2
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "actualTypeArguments"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/b/j1/b/b$a;->b:Ls1/a/a/a/v0/b/j1/b/b$a;

    invoke-static {p0, v0}, Ls1/a/a/a/v0/f/d;->d1(Ljava/lang/Object;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p0

    sget-object v0, Ls1/a/a/a/v0/b/j1/b/b$b;->b:Ls1/a/a/a/v0/b/j1/b/b$b;

    invoke-static {p0, v0}, Ls1/e0/x;->i(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p0

    invoke-static {p0}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    const-string v0, "$this$safeClassLoader"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "ClassLoader.getSystemClassLoader()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
