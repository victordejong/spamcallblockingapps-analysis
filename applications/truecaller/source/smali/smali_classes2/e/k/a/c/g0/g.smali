.class public final Le/k/a/c/g0/g;
.super Le/k/a/c/g0/i;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/g0/g$a;
    }
.end annotation


# instance fields
.field public final transient c:Ljava/lang/reflect/Field;

.field public d:Le/k/a/c/g0/g$a;


# direct methods
.method public constructor <init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Field;Le/k/a/c/g0/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Le/k/a/c/g0/i;-><init>(Le/k/a/c/g0/e0;Le/k/a/c/g0/p;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/g0/g$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0}, Le/k/a/c/g0/i;-><init>(Le/k/a/c/g0/e0;Le/k/a/c/g0/p;)V

    .line 4
    iput-object v0, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    .line 5
    iput-object p1, p0, Le/k/a/c/g0/g;->d:Le/k/a/c/g0/g$a;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

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
    iget-object v0, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e()Le/k/a/c/i;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/i;->a:Le/k/a/c/g0/e0;

    iget-object v1, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

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
    const-class v1, Le/k/a/c/g0/g;

    invoke-static {p1, v1}, Le/k/a/c/n0/g;->u(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Le/k/a/c/g0/g;

    iget-object p1, p1, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

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
    iget-object v0, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to getValue() for field "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Le/k/a/c/g0/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public l(Le/k/a/c/g0/p;)Le/k/a/c/g0/b;
    .locals 3

    .line 1
    new-instance v0, Le/k/a/c/g0/g;

    iget-object v1, p0, Le/k/a/c/g0/i;->a:Le/k/a/c/g0/e0;

    iget-object v2, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1, v2, p1}, Le/k/a/c/g0/g;-><init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Field;Le/k/a/c/g0/p;)V

    return-object v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/g;->d:Le/k/a/c/g0/g$a;

    iget-object v1, v0, Le/k/a/c/g0/g$a;->a:Ljava/lang/Class;

    .line 2
    :try_start_0
    iget-object v0, v0, Le/k/a/c/g0/g$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Le/k/a/c/n0/g;->e(Ljava/lang/reflect/Member;Z)V

    .line 5
    :cond_0
    new-instance v2, Le/k/a/c/g0/g;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Le/k/a/c/g0/g;-><init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Field;Le/k/a/c/g0/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not find method \'"

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Le/k/a/c/g0/g;->d:Le/k/a/c/g0/g$a;

    iget-object v3, v3, Le/k/a/c/g0/g$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' from Class \'"

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

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[field "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Le/k/a/c/g0/i;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/k/a/c/g0/g;

    new-instance v1, Le/k/a/c/g0/g$a;

    iget-object v2, p0, Le/k/a/c/g0/g;->c:Ljava/lang/reflect/Field;

    invoke-direct {v1, v2}, Le/k/a/c/g0/g$a;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {v0, v1}, Le/k/a/c/g0/g;-><init>(Le/k/a/c/g0/g$a;)V

    return-object v0
.end method
