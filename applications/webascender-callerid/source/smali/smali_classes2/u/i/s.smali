.class public final Lu/i/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/i/t$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/i/t$a<",
        "Lu/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c(JLjava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lu/i/t;->a(J)I

    move-result p0

    add-int/lit8 p0, p0, 0x19

    .line 2
    invoke-static {p2}, Lu/i/c;->b(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/2addr p0, p1

    if-eqz p3, :cond_0

    add-int/lit8 p0, p0, 0xc

    add-int/2addr p0, p3

    :cond_0
    return p0
.end method

.method static d(Lu/f;Z)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lu/f;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    :cond_0
    const/4 p1, 0x1

    if-eqz v0, :cond_1

    const/16 v1, 0x11

    .line 2
    invoke-static {v0}, Lu/i/c;->b(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lu/f;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v1, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x9

    .line 4
    invoke-virtual {p0}, Lu/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lu/f;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eq v1, p1, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x9

    .line 6
    invoke-virtual {p0}, Lu/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 7
    :cond_5
    invoke-virtual {p0}, Lu/f;->m()I

    move-result p0

    if-eqz p0, :cond_7

    if-eq v1, p1, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x7

    int-to-long v2, p0

    .line 8
    invoke-static {v2, v3}, Lu/i/t;->a(J)I

    move-result p0

    add-int/2addr v1, p0

    :cond_7
    add-int/2addr v1, p1

    return v1
.end method

.method static g(JLjava/lang/String;[BLu/i/t;)V
    .locals 1

    const-string v0, "{\"timestamp\":"

    .line 1
    invoke-virtual {p4, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p4, p0, p1}, Lu/i/t;->i(J)V

    const-string p0, ",\"value\":\""

    .line 3
    invoke-virtual {p4, p0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Lu/i/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p4, p0}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    const/16 p0, 0x22

    .line 5
    invoke-virtual {p4, p0}, Lu/i/t;->l(I)V

    if-eqz p3, :cond_0

    const-string p0, ",\"endpoint\":"

    .line 6
    invoke-virtual {p4, p0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p4, p3}, Lu/i/t;->h([B)V

    :cond_0
    const/16 p0, 0x7d

    .line 8
    invoke-virtual {p4, p0}, Lu/i/t;->l(I)V

    return-void
.end method

.method static h(Lu/f;Lu/i/t;Z)V
    .locals 4

    const/16 v0, 0x7b

    .line 1
    invoke-virtual {p1, v0}, Lu/i/t;->l(I)V

    .line 2
    invoke-virtual {p0}, Lu/f;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    :cond_0
    const/4 p2, 0x1

    const/16 v1, 0x22

    if-eqz v0, :cond_1

    const-string v2, "\"serviceName\":\""

    .line 3
    invoke-virtual {p1, v2}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lu/i/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1, v1}, Lu/i/t;->l(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lu/f;->c()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2c

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1, v3}, Lu/i/t;->l(I)V

    :cond_2
    const-string v0, "\"ipv4\":\""

    .line 8
    invoke-virtual {p1, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lu/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v1}, Lu/i/t;->l(I)V

    const/4 v0, 0x1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lu/f;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1, v3}, Lu/i/t;->l(I)V

    :cond_4
    const-string v0, "\"ipv6\":\""

    .line 13
    invoke-virtual {p1, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lu/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v1}, Lu/i/t;->l(I)V

    goto :goto_1

    :cond_5
    move p2, v0

    .line 16
    :goto_1
    invoke-virtual {p0}, Lu/f;->m()I

    move-result p0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_6

    .line 17
    invoke-virtual {p1, v3}, Lu/i/t;->l(I)V

    :cond_6
    const-string p2, "\"port\":"

    .line 18
    invoke-virtual {p1, p2}, Lu/i/t;->j(Ljava/lang/String;)V

    int-to-long v0, p0

    .line 19
    invoke-virtual {p1, v0, v1}, Lu/i/t;->i(J)V

    :cond_7
    const/16 p0, 0x7d

    .line 20
    invoke-virtual {p1, p0}, Lu/i/t;->l(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1}, Lu/i/s;->e(Lu/g;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lu/i/t;)V
    .locals 0

    .line 1
    check-cast p1, Lu/g;

    invoke-virtual {p0, p1, p2}, Lu/i/s;->f(Lu/g;Lu/i/t;)V

    return-void
.end method

.method public e(Lu/g;)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Lu/g;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xd

    .line 2
    invoke-virtual {p1}, Lu/g;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1e

    :cond_0
    add-int/lit8 v0, v0, 0x18

    .line 3
    invoke-virtual {p1}, Lu/g;->e()Lu/g$b;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0xa

    .line 4
    invoke-virtual {p1}, Lu/g;->e()Lu/g$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lu/g;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0xa

    .line 6
    invoke-virtual {p1}, Lu/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/i/c;->b(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lu/g;->p()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0xd

    .line 8
    invoke-virtual {p1}, Lu/g;->p()J

    move-result-wide v1

    invoke-static {v1, v2}, Lu/i/t;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lu/g;->c()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    add-int/lit8 v0, v0, 0xc

    .line 10
    invoke-virtual {p1}, Lu/g;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Lu/i/t;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p1}, Lu/g;->f()Lu/f;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x11

    .line 12
    invoke-virtual {p1}, Lu/g;->f()Lu/f;

    move-result-object v1

    invoke-static {v1, v2}, Lu/i/s;->d(Lu/f;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    invoke-virtual {p1}, Lu/g;->l()Lu/f;

    move-result-object v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v0, 0x12

    .line 14
    invoke-virtual {p1}, Lu/g;->l()Lu/f;

    move-result-object v1

    invoke-static {v1, v2}, Lu/i/s;->d(Lu/f;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    invoke-virtual {p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_8

    add-int/lit8 v0, v0, 0x11

    .line 16
    invoke-virtual {p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_7

    add-int/lit8 v4, v1, -0x1

    add-int/2addr v0, v4

    :cond_7
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_8

    .line 17
    invoke-virtual {p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu/a;

    .line 18
    invoke-virtual {v5}, Lu/a;->h()J

    move-result-wide v6

    invoke-virtual {v5}, Lu/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5, v2}, Lu/i/s;->c(JLjava/lang/String;I)I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_8
    invoke-virtual {p1}, Lu/g;->o()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    add-int/lit8 v0, v0, 0xa

    .line 20
    invoke-virtual {p1}, Lu/g;->o()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v3, :cond_9

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 21
    :cond_9
    invoke-virtual {p1}, Lu/g;->o()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v0, v0, 0x5

    .line 22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lu/i/c;->b(Ljava/lang/CharSequence;)I

    move-result v4

    add-int/2addr v0, v4

    .line 23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lu/i/c;->b(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 24
    :cond_a
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lu/g;->b()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    add-int/lit8 v0, v0, 0xd

    .line 25
    :cond_b
    invoke-virtual {p1}, Lu/g;->m()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    add-int/lit8 v0, v0, 0xe

    :cond_c
    add-int/2addr v0, v3

    return v0
.end method

.method public f(Lu/g;Lu/i/t;)V
    .locals 8

    const-string v0, "{\"traceId\":\""

    .line 1
    invoke-virtual {p2, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lu/g;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    const/16 v0, 0x22

    .line 3
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    .line 4
    invoke-virtual {p1}, Lu/g;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ",\"parentId\":\""

    .line 5
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lu/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    :cond_0
    const-string v1, ",\"id\":\""

    .line 8
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lu/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    .line 11
    invoke-virtual {p1}, Lu/g;->e()Lu/g$b;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ",\"kind\":\""

    .line 12
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lu/g;->e()Lu/g$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    .line 15
    :cond_1
    invoke-virtual {p1}, Lu/g;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, ",\"name\":\""

    .line 16
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lu/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/i/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    .line 19
    :cond_2
    invoke-virtual {p1}, Lu/g;->p()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-string v1, ",\"timestamp\":"

    .line 20
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lu/g;->p()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lu/i/t;->i(J)V

    .line 22
    :cond_3
    invoke-virtual {p1}, Lu/g;->c()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    const-string v1, ",\"duration\":"

    .line 23
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lu/g;->c()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lu/i/t;->i(J)V

    .line 25
    :cond_4
    invoke-virtual {p1}, Lu/g;->f()Lu/f;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v1, ",\"localEndpoint\":"

    .line 26
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lu/g;->f()Lu/f;

    move-result-object v1

    invoke-static {v1, p2, v2}, Lu/i/s;->h(Lu/f;Lu/i/t;Z)V

    .line 28
    :cond_5
    invoke-virtual {p1}, Lu/g;->l()Lu/f;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, ",\"remoteEndpoint\":"

    .line 29
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lu/g;->l()Lu/f;

    move-result-object v1

    invoke-static {v1, p2, v2}, Lu/i/s;->h(Lu/f;Lu/i/t;Z)V

    .line 31
    :cond_6
    invoke-virtual {p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v3, 0x2c

    if-nez v1, :cond_9

    const-string v1, ",\"annotations\":"

    .line 32
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    const/16 v1, 0x5b

    .line 33
    invoke-virtual {p2, v1}, Lu/i/t;->l(I)V

    .line 34
    invoke-virtual {p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_8

    .line 35
    invoke-virtual {p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/a;

    .line 36
    invoke-virtual {v2}, Lu/a;->h()J

    move-result-wide v6

    invoke-virtual {v2}, Lu/a;->j()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v6, v7, v2, v4, p2}, Lu/i/s;->g(JLjava/lang/String;[BLu/i/t;)V

    if-ge v5, v1, :cond_7

    .line 37
    invoke-virtual {p2, v3}, Lu/i/t;->l(I)V

    :cond_7
    move v2, v5

    goto :goto_0

    :cond_8
    const/16 v1, 0x5d

    .line 38
    invoke-virtual {p2, v1}, Lu/i/t;->l(I)V

    .line 39
    :cond_9
    invoke-virtual {p1}, Lu/g;->o()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/16 v2, 0x7d

    if-nez v1, :cond_c

    const-string v1, ",\"tags\":{"

    .line 40
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lu/g;->o()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    :cond_a
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 44
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    .line 45
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lu/i/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p2, v5}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    const-string v5, "\":\""

    .line 46
    invoke-virtual {p2, v5}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 47
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lu/i/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p2, v3}, Lu/i/t;->l(I)V

    goto :goto_1

    .line 50
    :cond_b
    invoke-virtual {p2, v2}, Lu/i/t;->l(I)V

    .line 51
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lu/g;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, ",\"debug\":true"

    .line 52
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 53
    :cond_d
    invoke-virtual {p1}, Lu/g;->m()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, ",\"shared\":true"

    .line 54
    invoke-virtual {p2, p1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 55
    :cond_e
    invoke-virtual {p2, v2}, Lu/i/t;->l(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Span"

    return-object v0
.end method
