.class public final Le/k/a/c/g0/e;
.super Le/k/a/c/g0/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/g0/e$a;
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public e:Le/k/a/c/g0/e$a;


# direct methods
.method public constructor <init>(Le/k/a/c/g0/e$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0, v0}, Le/k/a/c/g0/n;-><init>(Le/k/a/c/g0/e0;Le/k/a/c/g0/p;[Le/k/a/c/g0/p;)V

    .line 5
    iput-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    .line 6
    iput-object p1, p0, Le/k/a/c/g0/e;->e:Le/k/a/c/g0/e$a;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Constructor;Le/k/a/c/g0/p;[Le/k/a/c/g0/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/e0;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Le/k/a/c/g0/p;",
            "[",
            "Le/k/a/c/g0/p;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3, p4}, Le/k/a/c/g0/n;-><init>(Le/k/a/c/g0/e0;Le/k/a/c/g0/p;[Le/k/a/c/g0/p;)V

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null constructor not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e()Le/k/a/c/i;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/i;->a:Le/k/a/c/g0/e0;

    invoke-virtual {p0}, Le/k/a/c/g0/e;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Le/k/a/c/g0/e0;->a(Ljava/lang/reflect/Type;)Le/k/a/c/i;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Le/k/a/c/g0/e;

    invoke-static {p1, v1}, Le/k/a/c/n0/g;->u(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Le/k/a/c/g0/e;

    iget-object p1, p1, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getValue() on constructor of "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/g0/e;->g()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Le/k/a/c/g0/p;)Le/k/a/c/g0/b;
    .locals 4

    .line 1
    new-instance v0, Le/k/a/c/g0/e;

    iget-object v1, p0, Le/k/a/c/g0/i;->a:Le/k/a/c/g0/e0;

    iget-object v2, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    iget-object v3, p0, Le/k/a/c/g0/n;->c:[Le/k/a/c/g0/p;

    invoke-direct {v0, v1, v2, p1, v3}, Le/k/a/c/g0/e;-><init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Constructor;Le/k/a/c/g0/p;[Le/k/a/c/g0/p;)V

    return-object v0
.end method

.method public final m()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final n([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public r(I)Le/k/a/c/i;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Le/k/a/c/g0/i;->a:Le/k/a/c/g0/e0;

    aget-object p1, v0, p1

    invoke-interface {v1, p1}, Le/k/a/c/g0/e0;->a(Ljava/lang/reflect/Type;)Le/k/a/c/i;

    move-result-object p1

    return-object p1
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->e:Le/k/a/c/g0/e$a;

    iget-object v1, v0, Le/k/a/c/g0/e$a;->a:Ljava/lang/Class;

    .line 2
    :try_start_0
    iget-object v0, v0, Le/k/a/c/g0/e$a;->b:[Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Le/k/a/c/n0/g;->e(Ljava/lang/reflect/Member;Z)V

    .line 5
    :cond_0
    new-instance v2, Le/k/a/c/g0/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3, v3}, Le/k/a/c/g0/e;-><init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Constructor;Le/k/a/c/g0/p;[Le/k/a/c/g0/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not find constructor with "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Le/k/a/c/g0/e;->e:Le/k/a/c/g0/e$a;

    iget-object v3, v3, Le/k/a/c/g0/e$a;->b:[Ljava/lang/Class;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " args from Class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 2
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    .line 3
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    if-ne v0, v3, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "s"

    :goto_0
    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x3

    iget-object v2, p0, Le/k/a/c/g0/i;->b:Le/k/a/c/g0/p;

    aput-object v2, v1, v0

    const-string v0, "[constructor for %s (%d arg%s), annotations: %s"

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/k/a/c/g0/e;

    new-instance v1, Le/k/a/c/g0/e$a;

    iget-object v2, p0, Le/k/a/c/g0/e;->d:Ljava/lang/reflect/Constructor;

    invoke-direct {v1, v2}, Le/k/a/c/g0/e$a;-><init>(Ljava/lang/reflect/Constructor;)V

    invoke-direct {v0, v1}, Le/k/a/c/g0/e;-><init>(Le/k/a/c/g0/e$a;)V

    return-object v0
.end method
