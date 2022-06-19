.class public final Le/m/e/e0/a0/g$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/e/e0/a0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/e/b0<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Le/m/e/e0/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/e0/t<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Le/m/e/e0/a0/g;


# direct methods
.method public constructor <init>(Le/m/e/e0/a0/g;Le/m/e/k;Ljava/lang/reflect/Type;Le/m/e/b0;Ljava/lang/reflect/Type;Le/m/e/b0;Le/m/e/e0/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/k;",
            "Ljava/lang/reflect/Type;",
            "Le/m/e/b0<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Le/m/e/b0<",
            "TV;>;",
            "Le/m/e/e0/t<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/m/e/e0/a0/g$a;->d:Le/m/e/e0/a0/g;

    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    new-instance p1, Le/m/e/e0/a0/n;

    invoke-direct {p1, p2, p4, p3}, Le/m/e/e0/a0/n;-><init>(Le/m/e/k;Le/m/e/b0;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Le/m/e/e0/a0/g$a;->a:Le/m/e/b0;

    .line 3
    new-instance p1, Le/m/e/e0/a0/n;

    invoke-direct {p1, p2, p6, p5}, Le/m/e/e0/a0/n;-><init>(Le/m/e/k;Le/m/e/b0;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Le/m/e/e0/a0/g$a;->b:Le/m/e/b0;

    .line 4
    iput-object p7, p0, Le/m/e/e0/a0/g$a;->c:Le/m/e/e0/t;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v0

    .line 2
    sget-object v1, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    const/4 p1, 0x0

    goto/16 :goto_4

    .line 4
    :cond_0
    iget-object v1, p0, Le/m/e/e0/a0/g$a;->c:Le/m/e/e0/t;

    invoke-interface {v1}, Le/m/e/e0/t;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 5
    sget-object v2, Le/m/e/g0/b;->a:Le/m/e/g0/b;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/a;->b()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Le/m/e/g0/a;->b()V

    .line 9
    iget-object v0, p0, Le/m/e/e0/a0/g$a;->a:Le/m/e/b0;

    invoke-virtual {v0, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v2, p0, Le/m/e/e0/a0/g$a;->b:Le/m/e/b0;

    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {p1}, Le/m/e/g0/a;->l()V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Le/m/e/z;

    invoke-static {v3, v0}, Le/d/c/a/a;->x2(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    invoke-virtual {p1}, Le/m/e/g0/a;->l()V

    goto/16 :goto_3

    .line 15
    :cond_3
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    .line 16
    :goto_1
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 17
    sget-object v0, Le/m/e/e0/q;->a:Le/m/e/e0/q;

    check-cast v0, Le/m/e/g0/a$a;

    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    instance-of v0, p1, Le/m/e/e0/a0/e;

    if-eqz v0, :cond_4

    .line 20
    move-object v0, p1

    check-cast v0, Le/m/e/e0/a0/e;

    .line 21
    sget-object v2, Le/m/e/g0/b;->e:Le/m/e/g0/b;

    invoke-virtual {v0, v2}, Le/m/e/e0/a0/e;->U0(Le/m/e/g0/b;)V

    .line 22
    invoke-virtual {v0}, Le/m/e/e0/a0/e;->W0()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Le/m/e/e0/a0/e;->l1(Ljava/lang/Object;)V

    .line 25
    new-instance v4, Le/m/e/w;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Le/m/e/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Le/m/e/e0/a0/e;->l1(Ljava/lang/Object;)V

    goto :goto_2

    .line 26
    :cond_4
    iget v0, p1, Le/m/e/g0/a;->h:I

    if-nez v0, :cond_5

    .line 27
    invoke-virtual {p1}, Le/m/e/g0/a;->k()I

    move-result v0

    :cond_5
    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    const/16 v0, 0x9

    .line 28
    iput v0, p1, Le/m/e/g0/a;->h:I

    goto :goto_2

    :cond_6
    const/16 v2, 0xc

    if-ne v0, v2, :cond_7

    const/16 v0, 0x8

    .line 29
    iput v0, p1, Le/m/e/g0/a;->h:I

    goto :goto_2

    :cond_7
    const/16 v2, 0xe

    if-ne v0, v2, :cond_9

    const/16 v0, 0xa

    .line 30
    iput v0, p1, Le/m/e/g0/a;->h:I

    .line 31
    :goto_2
    iget-object v0, p0, Le/m/e/e0/a0/g$a;->a:Le/m/e/b0;

    invoke-virtual {v0, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    iget-object v2, p0, Le/m/e/e0/a0/g$a;->b:Le/m/e/b0;

    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    .line 33
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_1

    .line 34
    :cond_8
    new-instance p1, Le/m/e/z;

    invoke-static {v3, v0}, Le/d/c/a/a;->x2(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Le/m/e/g0/a;->K()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_a
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    :goto_3
    move-object p1, v1

    :goto_4
    return-object p1
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/e/e0/a0/g$a;->d:Le/m/e/e0/a0/g;

    iget-boolean v0, v0, Le/m/e/e0/a0/g;->b:Z

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    .line 5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 7
    iget-object v1, p0, Le/m/e/e0/a0/g$a;->b:Le/m/e/b0;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    goto/16 :goto_7

    .line 9
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 12
    iget-object v5, p0, Le/m/e/e0/a0/g$a;->a:Le/m/e/b0;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Le/m/e/b0;->toJsonTree(Ljava/lang/Object;)Le/m/e/q;

    move-result-object v5

    .line 13
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    instance-of v4, v5, Le/m/e/n;

    if-nez v4, :cond_4

    .line 17
    instance-of v4, v5, Le/m/e/t;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 18
    invoke-virtual {p1}, Le/m/e/g0/c;->d()Le/m/e/g0/c;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    .line 20
    invoke-virtual {p1}, Le/m/e/g0/c;->d()Le/m/e/g0/c;

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/e/q;

    .line 22
    sget-object v4, Le/m/e/e0/a0/o;->X:Le/m/e/b0;

    invoke-virtual {v4, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 23
    iget-object v3, p0, Le/m/e/e0/a0/g$a;->b:Le/m/e/b0;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p1}, Le/m/e/g0/c;->l()Le/m/e/g0/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 25
    :cond_6
    invoke-virtual {p1}, Le/m/e/g0/c;->l()Le/m/e/g0/c;

    goto :goto_7

    .line 26
    :cond_7
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_d

    .line 28
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/e/q;

    .line 29
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    instance-of v4, v3, Le/m/e/w;

    if-eqz v4, :cond_b

    .line 31
    invoke-virtual {v3}, Le/m/e/q;->e()Le/m/e/w;

    move-result-object v3

    .line 32
    iget-object v4, v3, Le/m/e/w;->a:Ljava/lang/Object;

    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_8

    .line 33
    invoke-virtual {v3}, Le/m/e/w;->h()Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 34
    :cond_8
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_9

    .line 35
    invoke-virtual {v3}, Le/m/e/w;->a()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 36
    :cond_9
    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 37
    invoke-virtual {v3}, Le/m/e/w;->g()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 38
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 39
    :cond_b
    instance-of v3, v3, Le/m/e/s;

    if-eqz v3, :cond_c

    const-string v3, "null"

    .line 40
    :goto_6
    invoke-virtual {p1, v3}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 41
    iget-object v3, p0, Le/m/e/e0/a0/g$a;->b:Le/m/e/b0;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 42
    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 43
    :cond_d
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_7
    return-void
.end method
