.class public final Ls1/a/a/a/v0/b/j1/b/g0;
.super Ls1/a/a/a/v0/b/j1/b/d0;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/f0/z;


# instance fields
.field public final a:Ljava/lang/reflect/WildcardType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/WildcardType;)V
    .locals 1

    const-string v0, "reflectType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/j1/b/d0;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/b/g0;->a:Ljava/lang/reflect/WildcardType;

    return-void
.end method


# virtual methods
.method public K()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/g0;->a:Ljava/lang/reflect/WildcardType;

    .line 2
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "reflectType.upperBounds"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public N()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/g0;->a:Ljava/lang/reflect/WildcardType;

    return-object v0
.end method

.method public n()Ls1/a/a/a/v0/d/a/f0/v;
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/g0;->a:Ljava/lang/reflect/WildcardType;

    .line 2
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/b/g0;->a:Ljava/lang/reflect/WildcardType;

    .line 4
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 5
    array-length v2, v0

    const/4 v3, 0x1

    if-gt v2, v3, :cond_a

    array-length v2, v1

    if-gt v2, v3, :cond_a

    .line 6
    array-length v2, v1

    const/4 v4, 0x0

    const-string v5, "type"

    if-ne v2, v3, :cond_4

    const-string v0, "lowerBounds"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->R2([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "lowerBounds.single()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/reflect/Type;

    .line 7
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ls1/a/a/a/v0/b/j1/b/c0;

    invoke-direct {v0, v2}, Ls1/a/a/a/v0/b/j1/b/c0;-><init>(Ljava/lang/Class;)V

    :goto_0
    move-object v4, v0

    goto/16 :goto_4

    .line 9
    :cond_0
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_3

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_2

    new-instance v1, Ls1/a/a/a/v0/b/j1/b/g0;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/g0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_2

    .line 11
    :cond_2
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/s;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/s;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/h;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/h;-><init>(Ljava/lang/reflect/Type;)V

    :goto_2
    move-object v4, v1

    goto :goto_4

    .line 13
    :cond_4
    array-length v1, v0

    if-ne v1, v3, :cond_9

    const-string v1, "upperBounds"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/q/f/a/d/a;->R2([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_9

    const-string v1, "ub"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Ls1/a/a/a/v0/b/j1/b/c0;

    invoke-direct {v0, v2}, Ls1/a/a/a/v0/b/j1/b/c0;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    .line 16
    :cond_5
    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v2, :cond_8

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_7

    new-instance v1, Ls1/a/a/a/v0/b/j1/b/g0;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/g0;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_2

    .line 18
    :cond_7
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/s;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/s;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_2

    .line 19
    :cond_8
    :goto_3
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/h;

    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/h;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_2

    :cond_9
    :goto_4
    return-object v4

    .line 20
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wildcard types with many bounds are not yet supported: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 21
    iget-object v2, p0, Ls1/a/a/a/v0/b/j1/b/g0;->a:Ljava/lang/reflect/WildcardType;

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
