.class public final Ls1/a/a/a/v0/b/j1/b/z;
.super Ls1/a/a/a/v0/b/j1/b/y;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/f0/q;


# instance fields
.field public final a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    const-string v0, "member"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/j1/b/y;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public K()Ls1/a/a/a/v0/d/a/f0/b;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "value"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    sget-object v3, Ls1/a/a/a/v0/b/j1/b/b;->a:Ljava/util/List;

    const-string v3, "$this$isEnumClassOrSpecializedEnumEntryClass"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-class v3, Ljava/lang/Enum;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Ls1/a/a/a/v0/b/j1/b/v;

    check-cast v0, Ljava/lang/Enum;

    invoke-direct {v2, v1, v0}, Ls1/a/a/a/v0/b/j1/b/v;-><init>(Ls1/a/a/a/v0/f/e;Ljava/lang/Enum;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 8
    :cond_0
    instance-of v2, v0, Ljava/lang/annotation/Annotation;

    if-eqz v2, :cond_1

    new-instance v2, Ls1/a/a/a/v0/b/j1/b/e;

    check-cast v0, Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v1, v0}, Ls1/a/a/a/v0/b/j1/b/e;-><init>(Ls1/a/a/a/v0/f/e;Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    new-instance v2, Ls1/a/a/a/v0/b/j1/b/g;

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v2, v1, v0}, Ls1/a/a/a/v0/b/j1/b/g;-><init>(Ls1/a/a/a/v0/f/e;[Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_3

    new-instance v2, Ls1/a/a/a/v0/b/j1/b/r;

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v2, v1, v0}, Ls1/a/a/a/v0/b/j1/b/r;-><init>(Ls1/a/a/a/v0/f/e;Ljava/lang/Class;)V

    goto :goto_0

    .line 11
    :cond_3
    new-instance v2, Ls1/a/a/a/v0/b/j1/b/x;

    invoke-direct {v2, v1, v0}, Ls1/a/a/a/v0/b/j1/b/x;-><init>(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public L()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/z;->K()Ls1/a/a/a/v0/d/a/f0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Ls1/a/a/a/v0/d/a/f0/v;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "member.genericReturnType"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ls1/a/a/a/v0/b/j1/b/c0;

    invoke-direct {v0, v2}, Ls1/a/a/a/v0/b/j1/b/c0;-><init>(Ljava/lang/Class;)V

    goto :goto_2

    .line 5
    :cond_0
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_3

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_2

    new-instance v1, Ls1/a/a/a/v0/b/j1/b/g0;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/g0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_1

    .line 7
    :cond_2
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/s;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/s;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/h;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/h;-><init>(Ljava/lang/reflect/Type;)V

    :goto_1
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/j1/b/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const-string v1, "member.typeParameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 5
    new-instance v5, Ls1/a/a/a/v0/b/j1/b/e0;

    .line 6
    invoke-direct {v5, v4}, Ls1/a/a/a/v0/b/j1/b/e0;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/d/a/f0/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "member.genericParameterTypes"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "member.parameterAnnotations"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    .line 6
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ls1/a/a/a/v0/b/j1/b/y;->n([Ljava/lang/reflect/Type;[[Ljava/lang/annotation/Annotation;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/z;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method
