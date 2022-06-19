.class public Le/m/e/e0/a0/o$u;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/e/e0/a0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/m/e/q;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/e/g0/a;)Le/m/e/q;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    .line 3
    sget-object p1, Le/m/e/s;->a:Le/m/e/s;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance v0, Le/m/e/w;

    invoke-virtual {p1}, Le/m/e/g0/a;->P()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Le/m/e/w;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p1}, Le/m/e/g0/a;->z0()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Le/m/e/w;

    new-instance v1, Le/m/e/e0/r;

    invoke-direct {v1, p1}, Le/m/e/e0/r;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/m/e/w;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Le/m/e/w;

    invoke-virtual {p1}, Le/m/e/g0/a;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/m/e/w;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_4
    new-instance v0, Le/m/e/t;

    invoke-direct {v0}, Le/m/e/t;-><init>()V

    .line 10
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    .line 11
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Le/m/e/e0/a0/o$u;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/m/e/t;->h(Ljava/lang/String;Le/m/e/q;)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    return-object v0

    .line 14
    :cond_6
    new-instance v0, Le/m/e/n;

    invoke-direct {v0}, Le/m/e/n;-><init>()V

    .line 15
    invoke-virtual {p1}, Le/m/e/g0/a;->b()V

    .line 16
    :goto_1
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {p0, p1}, Le/m/e/e0/a0/o$u;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/e/n;->h(Le/m/e/q;)V

    goto :goto_1

    .line 18
    :cond_7
    invoke-virtual {p1}, Le/m/e/g0/a;->l()V

    return-object v0
.end method

.method public b(Le/m/e/g0/c;Le/m/e/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_b

    .line 1
    instance-of v0, p2, Le/m/e/s;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    instance-of v0, p2, Le/m/e/w;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Le/m/e/q;->e()Le/m/e/w;

    move-result-object p2

    .line 4
    iget-object v0, p2, Le/m/e/w;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Le/m/e/w;->h()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/m/e/g0/c;->p0(Ljava/lang/Number;)Le/m/e/g0/c;

    goto/16 :goto_4

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Le/m/e/w;->a()Z

    move-result p2

    invoke-virtual {p1, p2}, Le/m/e/g0/c;->z0(Z)Le/m/e/g0/c;

    goto/16 :goto_4

    .line 8
    :cond_2
    invoke-virtual {p2}, Le/m/e/w;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Le/m/e/g0/c;->t0(Ljava/lang/String;)Le/m/e/g0/c;

    goto/16 :goto_4

    .line 9
    :cond_3
    instance-of v0, p2, Le/m/e/n;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p1}, Le/m/e/g0/c;->d()Le/m/e/g0/c;

    .line 11
    invoke-virtual {p2}, Le/m/e/q;->c()Le/m/e/n;

    move-result-object p2

    invoke-virtual {p2}, Le/m/e/n;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/e/q;

    .line 12
    invoke-virtual {p0, p1, v0}, Le/m/e/e0/a0/o$u;->b(Le/m/e/g0/c;Le/m/e/q;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1}, Le/m/e/g0/c;->l()Le/m/e/g0/c;

    goto :goto_4

    .line 14
    :cond_5
    instance-of v0, p2, Le/m/e/t;

    if-eqz v0, :cond_a

    .line 15
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    .line 16
    invoke-virtual {p2}, Le/m/e/q;->d()Le/m/e/t;

    move-result-object p2

    invoke-virtual {p2}, Le/m/e/t;->k()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Le/m/e/e0/s$b;

    .line 17
    iget-object p2, p2, Le/m/e/e0/s$b;->a:Le/m/e/e0/s;

    .line 18
    iget-object v0, p2, Le/m/e/e0/s;->e:Le/m/e/e0/s$e;

    iget-object v0, v0, Le/m/e/e0/s$e;->d:Le/m/e/e0/s$e;

    .line 19
    iget v1, p2, Le/m/e/e0/s;->d:I

    .line 20
    :goto_1
    iget-object v2, p2, Le/m/e/e0/s;->e:Le/m/e/e0/s$e;

    if-eq v0, v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_9

    .line 21
    iget-object v2, p2, Le/m/e/e0/s;->e:Le/m/e/e0/s$e;

    if-eq v0, v2, :cond_8

    .line 22
    iget v2, p2, Le/m/e/e0/s;->d:I

    if-ne v2, v1, :cond_7

    .line 23
    iget-object v2, v0, Le/m/e/e0/s$e;->d:Le/m/e/e0/s$e;

    .line 24
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/e/q;

    invoke-virtual {p0, p1, v0}, Le/m/e/e0/a0/o$u;->b(Le/m/e/g0/c;Le/m/e/q;)V

    move-object v0, v2

    goto :goto_1

    .line 26
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 27
    :cond_8
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 28
    :cond_9
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    goto :goto_4

    .line 29
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_b
    :goto_3
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    :goto_4
    return-void
.end method

.method public bridge synthetic read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/m/e/e0/a0/o$u;->a(Le/m/e/g0/a;)Le/m/e/q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Le/m/e/q;

    invoke-virtual {p0, p1, p2}, Le/m/e/e0/a0/o$u;->b(Le/m/e/g0/c;Le/m/e/q;)V

    return-void
.end method
