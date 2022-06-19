.class public abstract Le/k/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const-string v0, ": "

    .line 1
    invoke-static {p1, v0, p2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    array-length v0, p2

    if-lez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "[N/A]"

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]...["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    aput-object p1, v0, v3

    const-string p1, "\"%s\""

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/k/a/c/i;Ljava/lang/String;Le/k/a/c/j0/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/i;",
            "Ljava/lang/String;",
            "Le/k/a/c/j0/c;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    const-string v0, "Configured `PolymorphicTypeValidator` (of type "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p3}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") denied resolution"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/e;->j(Le/k/a/c/i;Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public e(Le/k/a/c/i;Ljava/lang/String;Le/k/a/c/j0/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/i;",
            "Ljava/lang/String;",
            "Le/k/a/c/j0/c;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    const-string v0, "Configured `PolymorphicTypeValidator` (of type "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {p3}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") denied resolution"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/e;->j(Le/k/a/c/i;Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public f(Ljava/lang/reflect/Type;)Le/k/a/c/i;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/k/a/c/e;->i()Le/k/a/c/m0/o;

    move-result-object v1

    .line 2
    sget-object v2, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    invoke-virtual {v1, v0, p1, v2}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    return-object p1
.end method

.method public g(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n0/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/b;",
            "Ljava/lang/Object;",
            ")",
            "Le/k/a/c/n0/i<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return-object p1

    .line 1
    :cond_0
    instance-of v0, p2, Le/k/a/c/n0/i;

    if-eqz v0, :cond_1

    .line 2
    check-cast p2, Le/k/a/c/n0/i;

    return-object p2

    .line 3
    :cond_1
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 4
    check-cast p2, Ljava/lang/Class;

    .line 5
    const-class v0, Le/k/a/c/n0/i$a;

    if-eq p2, v0, :cond_4

    invoke-static {p2}, Le/k/a/c/n0/g;->v(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    const-class p1, Le/k/a/c/n0/i;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Le/k/a/c/e;->h()Le/k/a/c/c0/k;

    move-result-object p1

    .line 8
    iget-object v0, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Le/k/a/c/c0/k;->b()Z

    move-result p1

    .line 11
    invoke-static {p2, p1}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/n0/i;

    return-object p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AnnotationIntrospector returned Class "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; expected Class<Converter>"

    .line 13
    invoke-static {p2, v0, v1}, Le/d/c/a/a;->b2(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-object p1

    .line 14
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AnnotationIntrospector returned Converter definition of type "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; expected type Converter or Class<Converter> instead"

    .line 15
    invoke-static {p2, v0, v1}, Le/d/c/a/a;->d2(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract h()Le/k/a/c/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/c/c0/k<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract i()Le/k/a/c/m0/o;
.end method

.method public abstract j(Le/k/a/c/i;Ljava/lang/String;Ljava/lang/String;)Le/k/a/c/k;
.end method

.method public k(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/a/k0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/b;",
            "Le/k/a/c/g0/a0;",
            ")",
            "Le/k/a/a/k0<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p1, p2, Le/k/a/c/g0/a0;->b:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Le/k/a/c/e;->h()Le/k/a/c/c0/k;

    move-result-object v0

    .line 3
    iget-object v1, v0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Le/k/a/c/c0/k;->b()Z

    move-result v0

    .line 6
    invoke-static {p1, v0}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/a/k0;

    .line 7
    iget-object p2, p2, Le/k/a/c/g0/a0;->d:Ljava/lang/Class;

    .line 8
    invoke-virtual {p1, p2}, Le/k/a/a/k0;->b(Ljava/lang/Class;)Le/k/a/a/k0;

    move-result-object p1

    return-object p1
.end method

.method public l(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/a/n0;
    .locals 1

    .line 1
    iget-object p1, p2, Le/k/a/c/g0/a0;->c:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Le/k/a/c/e;->h()Le/k/a/c/c0/k;

    move-result-object p2

    .line 3
    iget-object v0, p2, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Le/k/a/c/c0/k;->b()Z

    move-result p2

    invoke-static {p1, p2}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/a/n0;

    return-object p1
.end method

.method public abstract m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/i;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation
.end method

.method public n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/e;->f(Ljava/lang/reflect/Type;)Le/k/a/c/i;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Le/k/a/c/e;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
