.class public final Ls1/a/a/a/v0/b/j1/b/e0;
.super Ls1/a/a/a/v0/b/j1/b/u;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/j1/b/f;
.implements Ls1/a/a/a/v0/d/a/f0/w;


# instance fields
.field public final a:Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/TypeVariable<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/TypeVariable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "typeVariable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/j1/b/u;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/b/e0;->a:Ljava/lang/reflect/TypeVariable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/b/j1/b/e0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/e0;->a:Ljava/lang/reflect/TypeVariable;

    check-cast p1, Ls1/a/a/a/v0/b/j1/b/e0;

    iget-object p1, p1, Ls1/a/a/a/v0/b/j1/b/e0;->a:Ljava/lang/reflect/TypeVariable;

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

.method public getAnnotations()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-static {p0}, Le/q/f/a/d/a;->D0(Ls1/a/a/a/v0/b/j1/b/f;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ls1/a/a/a/v0/f/e;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/e0;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "Name.identifier(typeVariable.name)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUpperBounds()Ljava/util/Collection;
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/e0;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "typeVariable.bounds"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 4
    new-instance v5, Ls1/a/a/a/v0/b/j1/b/s;

    .line 5
    invoke-direct {v5, v4}, Ls1/a/a/a/v0/b/j1/b/s;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v1}, Ls1/u/i;->D0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/j1/b/s;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Ls1/a/a/a/v0/b/j1/b/s;->b:Ljava/lang/reflect/Type;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_1
    const-class v2, Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    :cond_2
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/e0;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/reflect/AnnotatedElement;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/e0;->a:Ljava/lang/reflect/TypeVariable;

    instance-of v1, v0, Ljava/lang/reflect/AnnotatedElement;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

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
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ls1/a/a/a/v0/b/j1/b/e0;

    const-string v2, ": "

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/b/e0;->a:Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
