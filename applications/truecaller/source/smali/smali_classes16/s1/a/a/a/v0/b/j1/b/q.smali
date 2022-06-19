.class public final Ls1/a/a/a/v0/b/j1/b/q;
.super Ls1/a/a/a/v0/b/j1/b/u;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/j1/b/f;
.implements Ls1/a/a/a/v0/b/j1/b/a0;
.implements Ls1/a/a/a/v0/d/a/f0/g;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/b/j1/b/u;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/q;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/q;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public c()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/d/a/f0/j;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ls1/z/c/f0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ls1/z/c/f0;-><init>(I)V

    iget-object v2, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    .line 3
    :cond_1
    iget-object v2, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v2, "klass.genericInterfaces"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ls1/z/c/f0;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ls1/z/c/f0;->b()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 5
    iget-object v1, v1, Ls1/z/c/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, [Ljava/lang/reflect/Type;

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/reflect/Type;

    new-instance v3, Ls1/a/a/a/v0/b/j1/b/s;

    .line 10
    invoke-direct {v3, v2}, Ls1/a/a/a/v0/b/j1/b/s;-><init>(Ljava/lang/reflect/Type;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public d()Ls1/a/a/a/v0/f/b;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-static {v0}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    const-string v1, "klass.classId.asSingleFqName()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/j1/b/q;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/b/j1/b/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    check-cast p1, Ls1/a/a/a/v0/b/j1/b/q;

    iget-object p1, p1, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

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

.method public getFields()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "klass.declaredFields"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Le/q/f/a/d/a;->p([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object v0

    .line 3
    sget-object v1, Ls1/a/a/a/v0/b/j1/b/k;->j:Ls1/a/a/a/v0/b/j1/b/k;

    invoke-static {v0, v1}, Ls1/e0/x;->g(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 4
    sget-object v1, Ls1/a/a/a/v0/b/j1/b/l;->j:Ls1/a/a/a/v0/b/j1/b/l;

    invoke-static {v0, v1}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ls1/a/a/a/v0/f/e;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "Name.identifier(klass.simpleName)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

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
    new-instance v5, Ls1/a/a/a/v0/b/j1/b/e0;

    .line 5
    invoke-direct {v5, v4}, Ls1/a/a/a/v0/b/j1/b/e0;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public h()Ls1/a/a/a/v0/d/a/f0/g;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/q;

    .line 3
    invoke-direct {v1, v0}, Ls1/a/a/a/v0/b/j1/b/q;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    return v0
.end method

.method public l()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public p()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-string v1, "klass.declaredConstructors"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Le/q/f/a/d/a;->p([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object v0

    .line 3
    sget-object v1, Ls1/a/a/a/v0/b/j1/b/i;->j:Ls1/a/a/a/v0/b/j1/b/i;

    invoke-static {v0, v1}, Ls1/e0/x;->g(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 4
    sget-object v1, Ls1/a/a/a/v0/b/j1/b/j;->j:Ls1/a/a/a/v0/b/j1/b/j;

    invoke-static {v0, v1}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    const-string v1, "klass.declaredClasses"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Le/q/f/a/d/a;->p([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object v0

    .line 3
    sget-object v1, Ls1/a/a/a/v0/b/j1/b/m;->b:Ls1/a/a/a/v0/b/j1/b/m;

    invoke-static {v0, v1}, Ls1/e0/x;->g(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 4
    sget-object v1, Ls1/a/a/a/v0/b/j1/b/n;->b:Ls1/a/a/a/v0/b/j1/b/n;

    invoke-static {v0, v1}, Ls1/e0/x;->l(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    invoke-static {v0}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "klass.declaredMethods"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Le/q/f/a/d/a;->p([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object v0

    .line 3
    new-instance v1, Ls1/a/a/a/v0/b/j1/b/o;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/b/j1/b/o;-><init>(Ls1/a/a/a/v0/b/j1/b/q;)V

    invoke-static {v0, v1}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 4
    sget-object v1, Ls1/a/a/a/v0/b/j1/b/p;->j:Ls1/a/a/a/v0/b/j1/b/p;

    invoke-static {v0, v1}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v0

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

    const-class v1, Ls1/a/a/a/v0/b/j1/b/q;

    const-string v2, ": "

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/b/q;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Ls1/a/a/a/v0/d/a/f0/a0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
