.class public abstract Ls1/a/a/a/v0/b/j1/b/y;
.super Ls1/a/a/a/v0/b/j1/b/u;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/j1/b/f;
.implements Ls1/a/a/a/v0/b/j1/b/a0;
.implements Ls1/a/a/a/v0/d/a/f0/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/j1/b/u;-><init>()V

    return-void
.end method


# virtual methods
.method public E()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/b/j1/b/y;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->j()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast p1, Ls1/a/a/a/v0/b/j1/b/y;

    invoke-virtual {p1}, Ls1/a/a/a/v0/b/j1/b/y;->j()Ljava/lang/reflect/Member;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Ls1/a/a/a/v0/b/e1;
    .locals 1

    .line 1
    invoke-static {p0}, Le/q/f/a/d/a;->h1(Ls1/a/a/a/v0/b/j1/b/a0;)Ls1/a/a/a/v0/b/e1;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-static {p0}, Le/q/f/a/d/a;->D0(Ls1/a/a/a/v0/b/j1/b/f;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->j()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ls1/a/a/a/v0/f/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->j()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/a/a/a/v0/f/g;->a:Ls1/a/a/a/v0/f/e;

    const-string v1, "SpecialNames.NO_NAME_PROVIDED"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->j()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract j()Ljava/lang/reflect/Member;
.end method

.method public l()Ljava/lang/reflect/AnnotatedElement;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->j()Ljava/lang/reflect/Member;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.reflect.AnnotatedElement"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    return-object v0
.end method

.method public final n([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "[[",
            "Ljava/lang/annotation/Annotation;",
            "Z)",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/d/a/f0/y;",
            ">;"
        }
    .end annotation

    const-string v0, "parameterTypes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterAnnotations"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->j()Ljava/lang/reflect/Member;

    move-result-object v1

    const-string v2, "member"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v3, Ls1/a/a/a/v0/b/j1/b/a;->a:Ls1/a/a/a/v0/b/j1/b/a$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "getParameters"

    new-array v6, v5, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-static {v2}, Ls1/a/a/a/v0/b/j1/b/b;->e(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v6, "java.lang.reflect.Parameter"

    invoke-virtual {v2, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 9
    new-instance v6, Ls1/a/a/a/v0/b/j1/b/a$a;

    new-array v7, v5, [Ljava/lang/Class;

    const-string v8, "getName"

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-direct {v6, v3, v2}, Ls1/a/a/a/v0/b/j1/b/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object v3, v6

    goto :goto_0

    .line 10
    :catch_0
    new-instance v2, Ls1/a/a/a/v0/b/j1/b/a$a;

    invoke-direct {v2, v4, v4}, Ls1/a/a/a/v0/b/j1/b/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object v3, v2

    .line 11
    :goto_0
    sput-object v3, Ls1/a/a/a/v0/b/j1/b/a;->a:Ls1/a/a/a/v0/b/j1/b/a$a;

    .line 12
    :cond_0
    iget-object v2, v3, Ls1/a/a/a/v0/b/j1/b/a$a;->a:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 13
    iget-object v3, v3, Ls1/a/a/a/v0/b/j1/b/a$a;->b:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    new-array v6, v5, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v2, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<*>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    array-length v6, v1

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v1, v7

    new-array v9, v5, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v4

    :cond_2
    if-eqz v2, :cond_3

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    array-length v3, p1

    sub-int/2addr v1, v3

    goto :goto_2

    :cond_3
    move v1, v5

    .line 19
    :goto_2
    array-length v3, p1

    move v6, v5

    :goto_3
    if-ge v6, v3, :cond_b

    .line 20
    aget-object v7, p1, v6

    const-string v8, "type"

    .line 21
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v8, v7, Ljava/lang/Class;

    if-eqz v8, :cond_4

    move-object v9, v7

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v7, Ls1/a/a/a/v0/b/j1/b/c0;

    invoke-direct {v7, v9}, Ls1/a/a/a/v0/b/j1/b/c0;-><init>(Ljava/lang/Class;)V

    goto :goto_6

    .line 23
    :cond_4
    instance-of v9, v7, Ljava/lang/reflect/GenericArrayType;

    if-nez v9, :cond_7

    if-eqz v8, :cond_5

    move-object v8, v7

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    .line 24
    :cond_5
    instance-of v8, v7, Ljava/lang/reflect/WildcardType;

    if-eqz v8, :cond_6

    new-instance v8, Ls1/a/a/a/v0/b/j1/b/g0;

    check-cast v7, Ljava/lang/reflect/WildcardType;

    invoke-direct {v8, v7}, Ls1/a/a/a/v0/b/j1/b/g0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_5

    .line 25
    :cond_6
    new-instance v8, Ls1/a/a/a/v0/b/j1/b/s;

    invoke-direct {v8, v7}, Ls1/a/a/a/v0/b/j1/b/s;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_5

    .line 26
    :cond_7
    :goto_4
    new-instance v8, Ls1/a/a/a/v0/b/j1/b/h;

    invoke-direct {v8, v7}, Ls1/a/a/a/v0/b/j1/b/h;-><init>(Ljava/lang/reflect/Type;)V

    :goto_5
    move-object v7, v8

    :goto_6
    if-eqz v2, :cond_9

    add-int v8, v6, v1

    .line 27
    invoke-static {v2, v8}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_8

    goto :goto_7

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No parameter with index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2b

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (name="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "@ReflectJavaMember"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    move-object v8, v4

    :goto_7
    if-eqz p3, :cond_a

    .line 28
    invoke-static {p1}, Le/q/f/a/d/a;->V0([Ljava/lang/Object;)I

    move-result v9

    if-ne v6, v9, :cond_a

    const/4 v9, 0x1

    goto :goto_8

    :cond_a
    move v9, v5

    .line 29
    :goto_8
    new-instance v10, Ls1/a/a/a/v0/b/j1/b/f0;

    aget-object v11, p2, v6

    invoke-direct {v10, v7, v11, v8, v9}, Ls1/a/a/a/v0/b/j1/b/f0;-><init>(Ls1/a/a/a/v0/b/j1/b/d0;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_b
    return-object v0
.end method

.method public s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/f0/a;
    .locals 1

    const-string v0, "fqName"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Le/q/f/a/d/a;->m0(Ls1/a/a/a/v0/b/j1/b/f;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/j1/b/c;

    move-result-object p1

    return-object p1
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->j()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ls1/a/a/a/v0/d/a/f0/g;
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/j1/b/q;

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/y;->j()Ljava/lang/reflect/Member;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "member.declaringClass"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/b/j1/b/q;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
