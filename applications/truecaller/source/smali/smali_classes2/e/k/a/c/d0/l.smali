.class public abstract Le/k/a/c/d0/l;
.super Le/k/a/c/g;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/l$a;
    }
.end annotation


# instance fields
.field public transient l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Le/k/a/a/k0$a;",
            "Le/k/a/c/d0/y/c0;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/k/a/a/n0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/d0/l;Le/k/a/c/f;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Le/k/a/c/g;-><init>(Le/k/a/c/g;Le/k/a/c/f;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/l;Le/k/a/c/f;Le/k/a/b/j;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/g;-><init>(Le/k/a/c/g;Le/k/a/c/f;Le/k/a/b/j;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/o;Le/k/a/c/d0/n;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Le/k/a/c/g;-><init>(Le/k/a/c/d0/o;Le/k/a/c/d0/n;)V

    return-void
.end method


# virtual methods
.method public final T(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/o;
    .locals 2
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
    instance-of v0, p2, Le/k/a/c/o;

    if-eqz v0, :cond_1

    .line 2
    check-cast p2, Le/k/a/c/o;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 4
    check-cast p2, Ljava/lang/Class;

    .line 5
    const-class v0, Le/k/a/c/o$a;

    if-eq p2, v0, :cond_5

    invoke-static {p2}, Le/k/a/c/n0/g;->v(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    const-class p1, Le/k/a/c/o;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 8
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 11
    invoke-virtual {p1}, Le/k/a/c/c0/k;->b()Z

    move-result p1

    .line 12
    invoke-static {p2, p1}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Le/k/a/c/o;

    .line 13
    :goto_0
    instance-of p1, p2, Le/k/a/c/d0/s;

    if-eqz p1, :cond_3

    .line 14
    move-object p1, p2

    check-cast p1, Le/k/a/c/d0/s;

    invoke-interface {p1, p0}, Le/k/a/c/d0/s;->b(Le/k/a/c/g;)V

    :cond_3
    return-object p2

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AnnotationIntrospector returned Class "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; expected Class<KeyDeserializer>"

    invoke-static {p2, v0, v1}, Le/d/c/a/a;->b2(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-object p1

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    .line 17
    invoke-static {p2, v0, v1}, Le/d/c/a/a;->d2(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k0(Le/k/a/b/j;Le/k/a/c/i;Le/k/a/c/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/i;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 2
    iget-object v1, v0, Le/k/a/c/c0/l;->e:Le/k/a/c/v;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Le/k/a/c/v;->e()Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Le/k/a/c/h;->u:Le/k/a/c/h;

    invoke-virtual {v0, v1}, Le/k/a/c/f;->y(Le/k/a/c/h;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_6

    .line 5
    iget-object v0, p0, Le/k/a/c/g;->c:Le/k/a/c/f;

    invoke-virtual {v0, p2}, Le/k/a/c/c0/l;->q(Le/k/a/c/i;)Le/k/a/c/v;

    move-result-object v0

    .line 6
    iget-object v0, v0, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v1

    sget-object v3, Le/k/a/b/m;->j:Le/k/a/b/m;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v1, v3, :cond_5

    .line 8
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    sget-object v3, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v1, v3, :cond_4

    .line 9
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    if-nez p4, :cond_1

    .line 12
    invoke-virtual {p3, p1, p0}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p3, p1, p0, p4}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 14
    :goto_1
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object p4

    sget-object v1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne p4, v1, :cond_2

    return-object p3

    :cond_2
    new-array p3, v5, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object p1

    aput-object p1, p3, v2

    const-string p1, "Current token not END_OBJECT (to match wrapper object with root name %s), but %s"

    .line 16
    invoke-virtual {p0, p2, v1, p1, p3}, Le/k/a/c/g;->e0(Le/k/a/c/i;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_3
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 17
    invoke-static {v1}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v4

    invoke-static {v0}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v2

    invoke-static {p2}, Le/k/a/c/n0/g;->t(Le/k/a/c/i;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, v5

    const-string p3, "Root name (%s) does not match expected (%s) for type %s"

    .line 18
    invoke-virtual {p0, p2, v1, p3, p1}, Le/k/a/c/g;->c0(Le/k/a/c/i;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v6

    :cond_4
    new-array p3, v5, [Ljava/lang/Object;

    .line 19
    invoke-static {v0}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object p1

    aput-object p1, p3, v2

    const-string p1, "Current token not FIELD_NAME (to contain expected root name %s), but %s"

    .line 20
    invoke-virtual {p0, p2, v3, p1, p3}, Le/k/a/c/g;->e0(Le/k/a/c/i;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_5
    new-array p3, v5, [Ljava/lang/Object;

    .line 21
    invoke-static {v0}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object p1

    aput-object p1, p3, v2

    const-string p1, "Current token not START_OBJECT (needed to unwrap root name %s), but %s"

    .line 22
    invoke-virtual {p0, p2, v3, p1, p3}, Le/k/a/c/g;->e0(Le/k/a/c/i;Le/k/a/b/m;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_6
    if-nez p4, :cond_7

    .line 23
    invoke-virtual {p3, p1, p0}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :cond_7
    invoke-virtual {p3, p1, p0, p4}, Le/k/a/c/j;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/b;",
            "Ljava/lang/Object;",
            ")",
            "Le/k/a/c/j<",
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
    instance-of v0, p2, Le/k/a/c/j;

    if-eqz v0, :cond_1

    .line 2
    check-cast p2, Le/k/a/c/j;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 4
    check-cast p2, Ljava/lang/Class;

    .line 5
    const-class v0, Le/k/a/c/j$a;

    if-eq p2, v0, :cond_5

    invoke-static {p2}, Le/k/a/c/n0/g;->v(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    const-class p1, Le/k/a/c/j;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 8
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 11
    invoke-virtual {p1}, Le/k/a/c/c0/k;->b()Z

    move-result p1

    .line 12
    invoke-static {p2, p1}, Le/k/a/c/n0/g;->i(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Le/k/a/c/j;

    .line 13
    :goto_0
    instance-of p1, p2, Le/k/a/c/d0/s;

    if-eqz p1, :cond_3

    .line 14
    move-object p1, p2

    check-cast p1, Le/k/a/c/d0/s;

    invoke-interface {p1, p0}, Le/k/a/c/d0/s;->b(Le/k/a/c/g;)V

    :cond_3
    return-object p2

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AnnotationIntrospector returned Class "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; expected Class<JsonDeserializer>"

    invoke-static {p2, v0, v1}, Le/d/c/a/a;->b2(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-object p1

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AnnotationIntrospector returned deserializer definition of type "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-static {p2, v0, v1}, Le/d/c/a/a;->d2(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(Ljava/lang/Object;Le/k/a/a/k0;Le/k/a/a/n0;)Le/k/a/c/d0/y/c0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/k/a/a/k0<",
            "*>;",
            "Le/k/a/a/n0;",
            ")",
            "Le/k/a/c/d0/y/c0;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p2, p1}, Le/k/a/a/k0;->e(Ljava/lang/Object;)Le/k/a/a/k0$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Le/k/a/c/d0/l;->l:Ljava/util/LinkedHashMap;

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Le/k/a/c/d0/l;->l:Ljava/util/LinkedHashMap;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/k/a/c/d0/y/c0;

    if-eqz p2, :cond_2

    return-object p2

    .line 5
    :cond_2
    :goto_0
    iget-object p2, p0, Le/k/a/c/d0/l;->m:Ljava/util/List;

    if-nez p2, :cond_3

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Le/k/a/c/d0/l;->m:Ljava/util/List;

    goto :goto_1

    .line 7
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/a/n0;

    .line 8
    invoke-interface {v1, p3}, Le/k/a/a/n0;->d(Le/k/a/a/n0;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 9
    invoke-interface {p3, p0}, Le/k/a/a/n0;->c(Ljava/lang/Object;)Le/k/a/a/n0;

    move-result-object v0

    .line 10
    iget-object p2, p0, Le/k/a/c/d0/l;->m:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_6
    new-instance p2, Le/k/a/c/d0/y/c0;

    invoke-direct {p2, p1}, Le/k/a/c/d0/y/c0;-><init>(Le/k/a/a/k0$a;)V

    .line 12
    iput-object v0, p2, Le/k/a/c/d0/y/c0;->d:Le/k/a/a/n0;

    .line 13
    iget-object p3, p0, Le/k/a/c/d0/l;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
