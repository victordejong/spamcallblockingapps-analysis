.class public final Ls1/a/a/a/d0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/a/a/a/f0$a;

.field public final synthetic d:Ls1/g;


# direct methods
.method public constructor <init>(ILs1/a/a/a/f0$a;Ls1/g;Ls1/a/l;)V
    .locals 0

    iput p1, p0, Ls1/a/a/a/d0;->b:I

    iput-object p2, p0, Ls1/a/a/a/d0;->c:Ls1/a/a/a/f0$a;

    iput-object p3, p0, Ls1/a/a/a/d0;->d:Ls1/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/d0;->c:Ls1/a/a/a/f0$a;

    iget-object v0, v0, Ls1/a/a/a/f0$a;->b:Ls1/a/a/a/f0;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/f0;->a:Ls1/a/a/a/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "javaType.componentType"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-class v0, Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_2
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_4

    .line 6
    iget v1, p0, Ls1/a/a/a/d0;->b:I

    if-nez v1, :cond_3

    .line 7
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Ls1/a/a/a/i0;

    const-string v1, "Array type has been queried for a non-0th argument: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ls1/a/a/a/d0;->c:Ls1/a/a/a/f0$a;

    iget-object v2, v2, Ls1/a/a/a/f0$a;->b:Ls1/a/a/a/f0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    .line 10
    iget-object v0, p0, Ls1/a/a/a/d0;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget v1, p0, Ls1/a/a/a/d0;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 11
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "argument.lowerBounds"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    if-eqz v1, :cond_6

    move-object v0, v1

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "argument.upperBounds"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    :goto_1
    const-string v1, "when (val javaType = jav\u2026s\")\n                    }"

    .line 13
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 14
    :cond_7
    new-instance v0, Ls1/a/a/a/i0;

    const-string v1, "Non-generic type has been queried for arguments: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ls1/a/a/a/d0;->c:Ls1/a/a/a/f0$a;

    iget-object v2, v2, Ls1/a/a/a/f0$a;->b:Ls1/a/a/a/f0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v0
.end method
