.class public Le/k/a/c/g0/h;
.super Le/k/a/c/g0/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/g0/h$a;
    }
.end annotation


# instance fields
.field public final d:Le/k/a/c/m0/o;

.field public final e:Le/k/a/c/g0/t$a;

.field public final f:Z


# direct methods
.method public constructor <init>(Le/k/a/c/b;Le/k/a/c/m0/o;Le/k/a/c/g0/t$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/g0/u;-><init>(Le/k/a/c/b;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/g0/h;->d:Le/k/a/c/m0/o;

    if-nez p1, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    iput-object p3, p0, Le/k/a/c/g0/h;->e:Le/k/a/c/g0/t$a;

    .line 4
    iput-boolean p4, p0, Le/k/a/c/g0/h;->f:Z

    return-void
.end method


# virtual methods
.method public final f(Le/k/a/c/g0/e0;Le/k/a/c/i;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/e0;",
            "Le/k/a/c/i;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/g0/h$a;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/g0/h$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/k/a/c/i;->q()Le/k/a/c/i;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p3

    .line 2
    :cond_0
    iget-object p2, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    new-instance v1, Le/k/a/c/g0/e0$a;

    iget-object v2, p0, Le/k/a/c/g0/h;->d:Le/k/a/c/m0/o;

    invoke-virtual {v0}, Le/k/a/c/i;->j()Le/k/a/c/m0/n;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Le/k/a/c/g0/e0$a;-><init>(Le/k/a/c/m0/o;Le/k/a/c/m0/n;)V

    invoke-virtual {p0, v1, v0, p3}, Le/k/a/c/g0/h;->f(Le/k/a/c/g0/e0;Le/k/a/c/i;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 4
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 5
    invoke-virtual {p0, v4}, Le/k/a/c/g0/h;->g(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez p3, :cond_2

    .line 6
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    :cond_2
    new-instance v5, Le/k/a/c/g0/h$a;

    invoke-direct {v5, p1, v4}, Le/k/a/c/g0/h$a;-><init>(Le/k/a/c/g0/e0;Ljava/lang/reflect/Field;)V

    .line 8
    iget-boolean v6, p0, Le/k/a/c/g0/h;->f:Z

    if-eqz v6, :cond_3

    .line 9
    iget-object v6, v5, Le/k/a/c/g0/h$a;->c:Le/k/a/c/g0/o;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Le/k/a/c/g0/u;->b(Le/k/a/c/g0/o;[Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object v6

    iput-object v6, v5, Le/k/a/c/g0/h$a;->c:Le/k/a/c/g0/o;

    .line 10
    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_8

    .line 11
    iget-object p1, p0, Le/k/a/c/g0/h;->e:Le/k/a/c/g0/t$a;

    if-eqz p1, :cond_8

    .line 12
    invoke-interface {p1, p2}, Le/k/a/c/g0/t$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    .line 13
    invoke-static {p1, p2, v0}, Le/k/a/c/n0/g;->m(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    .line 15
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    array-length v0, p2

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v3, p2, v1

    .line 16
    invoke-virtual {p0, v3}, Le/k/a/c/g0/h;->g(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/k/a/c/g0/h$a;

    if-eqz v4, :cond_7

    .line 19
    iget-object v5, v4, Le/k/a/c/g0/h$a;->c:Le/k/a/c/g0/o;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Le/k/a/c/g0/u;->b(Le/k/a/c/g0/o;[Ljava/lang/annotation/Annotation;)Le/k/a/c/g0/o;

    move-result-object v3

    iput-object v3, v4, Le/k/a/c/g0/h$a;->c:Le/k/a/c/g0/o;

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    return-object p3
.end method

.method public final g(Ljava/lang/reflect/Field;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
