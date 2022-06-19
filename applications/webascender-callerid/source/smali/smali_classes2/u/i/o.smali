.class public final Lu/i/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/i/t$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/i/t$a<",
        "Lu/j/c;",
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

.method static c(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lu/i/c;->b(Ljava/lang/CharSequence;)I

    move-result p0

    add-int/lit8 p0, p0, 0x15

    .line 2
    invoke-static {p1}, Lu/i/c;->b(Ljava/lang/CharSequence;)I

    move-result p1

    add-int/2addr p0, p1

    if-eqz p2, :cond_0

    add-int/lit8 p0, p0, 0xc

    add-int/2addr p0, p2

    :cond_0
    return p0
.end method

.method static d(Lu/f;)[B
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lu/i/s;->d(Lu/f;Z)I

    move-result v1

    new-array v1, v1, [B

    .line 2
    invoke-static {v1}, Lu/i/t;->f([B)Lu/i/t;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lu/i/s;->h(Lu/f;Lu/i/t;Z)V

    return-object v1
.end method

.method static g(Ljava/lang/String;Ljava/lang/String;[BLu/i/t;)V
    .locals 1

    const-string v0, "{\"key\":\""

    .line 1
    invoke-virtual {p3, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lu/i/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p3, p0}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    const-string p0, "\",\"value\":\""

    .line 3
    invoke-virtual {p3, p0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lu/i/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p3, p0}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    const/16 p0, 0x22

    .line 5
    invoke-virtual {p3, p0}, Lu/i/t;->l(I)V

    if-eqz p2, :cond_0

    const-string p0, ",\"endpoint\":"

    .line 6
    invoke-virtual {p3, p0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3, p2}, Lu/i/t;->h([B)V

    :cond_0
    const-string p0, "}"

    .line 8
    invoke-virtual {p3, p0}, Lu/i/t;->j(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/j/c;

    invoke-virtual {p0, p1}, Lu/i/o;->e(Lu/j/c;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lu/i/t;)V
    .locals 0

    .line 1
    check-cast p1, Lu/j/c;

    invoke-virtual {p0, p1, p2}, Lu/i/o;->f(Lu/j/c;Lu/i/t;)V

    return-void
.end method

.method public e(Lu/j/c;)I
    .locals 11

    .line 1
    invoke-virtual {p1}, Lu/j/c;->l()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1d

    .line 2
    :goto_0
    invoke-virtual {p1}, Lu/j/c;->h()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1e

    :cond_1
    add-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0xa

    .line 3
    invoke-virtual {p1}, Lu/j/c;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lu/j/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/i/c;->b(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_2
    invoke-virtual {p1}, Lu/j/c;->j()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0xd

    .line 6
    invoke-virtual {p1}, Lu/j/c;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Lu/i/t;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_3
    invoke-virtual {p1}, Lu/j/c;->d()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, 0xc

    .line 8
    invoke-virtual {p1}, Lu/j/c;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Lu/i/t;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_4
    invoke-virtual {p1}, Lu/j/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_8

    add-int/lit8 v0, v0, 0x11

    if-le v1, v4, :cond_5

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v0, v5

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v1, :cond_9

    .line 10
    invoke-virtual {p1}, Lu/j/c;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu/j/a;

    .line 11
    invoke-virtual {v7}, Lu/j/a;->h()Lu/f;

    move-result-object v8

    if-nez v8, :cond_6

    move v8, v6

    const/4 v6, 0x0

    goto :goto_3

    .line 12
    :cond_6
    invoke-virtual {v8, v2}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    invoke-static {v8, v4}, Lu/i/s;->d(Lu/f;Z)I

    move-result v6

    move-object v2, v8

    :goto_2
    move v8, v6

    .line 14
    :goto_3
    invoke-virtual {v7}, Lu/j/a;->j()J

    move-result-wide v9

    invoke-virtual {v7}, Lu/j/a;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v10, v7, v6}, Lu/i/s;->c(JLjava/lang/String;I)I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    .line 15
    :cond_9
    invoke-virtual {p1}, Lu/j/c;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    add-int/lit8 v0, v0, 0x17

    if-le v1, v4, :cond_a

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v0, v5

    :cond_a
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_e

    .line 16
    invoke-virtual {p1}, Lu/j/c;->b()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu/j/b;

    .line 17
    invoke-virtual {v5}, Lu/j/b;->d()Lu/f;

    move-result-object v7

    if-nez v7, :cond_b

    move v7, v6

    const/4 v6, 0x0

    goto :goto_6

    .line 18
    :cond_b
    invoke-virtual {v7, v2}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_5

    .line 19
    :cond_c
    invoke-static {v7, v4}, Lu/i/s;->d(Lu/f;Z)I

    move-result v6

    move-object v2, v7

    :goto_5
    move v7, v6

    .line 20
    :goto_6
    invoke-virtual {v5}, Lu/j/b;->j()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 21
    invoke-virtual {v5}, Lu/j/b;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lu/j/b;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5, v6}, Lu/i/o;->c(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_7

    :cond_d
    add-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v6

    :goto_7
    move v6, v7

    move v5, v8

    goto :goto_4

    .line 22
    :cond_e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lu/j/c;->c()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    add-int/lit8 v0, v0, 0xd

    :cond_f
    add-int/2addr v0, v4

    return v0
.end method

.method public f(Lu/j/c;Lu/i/t;)V
    .locals 12

    const-string v0, "{\"traceId\":\""

    .line 1
    invoke-virtual {p2, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lu/j/c;->l()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lu/j/c;->l()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lu/i/t;->n(J)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Lu/j/c;->k()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lu/i/t;->n(J)V

    const/16 v0, 0x22

    .line 4
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    .line 5
    invoke-virtual {p1}, Lu/j/c;->h()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    const-string v1, ",\"parentId\":\""

    .line 6
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lu/j/c;->h()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lu/i/t;->n(J)V

    .line 8
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    :cond_1
    const-string v1, ",\"id\":\""

    .line 9
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lu/j/c;->e()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lu/i/t;->n(J)V

    .line 11
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    const-string v1, ",\"name\":\""

    .line 12
    invoke-virtual {p2, v1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lu/j/c;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lu/j/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/i/c;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Lu/i/t;->p(Ljava/lang/CharSequence;)V

    .line 14
    :cond_2
    invoke-virtual {p2, v0}, Lu/i/t;->l(I)V

    .line 15
    invoke-virtual {p1}, Lu/j/c;->j()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const-string v0, ",\"timestamp\":"

    .line 16
    invoke-virtual {p2, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lu/j/c;->j()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lu/i/t;->i(J)V

    .line 18
    :cond_3
    invoke-virtual {p1}, Lu/j/c;->d()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    const-string v0, ",\"duration\":"

    .line 19
    invoke-virtual {p2, v0}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lu/j/c;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lu/i/t;->i(J)V

    .line 21
    :cond_4
    invoke-virtual {p1}, Lu/j/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x2c

    const/16 v2, 0x5d

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lez v0, :cond_9

    const-string v5, ",\"annotations\":["

    .line 22
    invoke-virtual {p2, v5}, Lu/i/t;->j(Ljava/lang/String;)V

    move-object v6, v4

    move-object v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_8

    .line 23
    invoke-virtual {p1}, Lu/j/c;->a()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu/j/a;

    .line 24
    invoke-virtual {v5}, Lu/j/a;->h()Lu/f;

    move-result-object v8

    if-nez v8, :cond_5

    move-object v8, v7

    move-object v7, v4

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {v8, v6}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_1

    .line 26
    :cond_6
    invoke-static {v8}, Lu/i/o;->d(Lu/f;)[B

    move-result-object v7

    move-object v6, v8

    :goto_1
    move-object v8, v7

    .line 27
    :goto_2
    invoke-virtual {v5}, Lu/j/a;->j()J

    move-result-wide v10

    invoke-virtual {v5}, Lu/j/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v11, v5, v7, p2}, Lu/i/s;->g(JLjava/lang/String;[BLu/i/t;)V

    if-ge v9, v0, :cond_7

    .line 28
    invoke-virtual {p2, v1}, Lu/i/t;->l(I)V

    :cond_7
    move-object v7, v8

    move v5, v9

    goto :goto_0

    .line 29
    :cond_8
    invoke-virtual {p2, v2}, Lu/i/t;->l(I)V

    goto :goto_3

    :cond_9
    move-object v6, v4

    move-object v7, v6

    .line 30
    :goto_3
    invoke-virtual {p1}, Lu/j/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v5, 0x7d

    if-lez v0, :cond_f

    const-string v8, ",\"binaryAnnotations\":["

    .line 31
    invoke-virtual {p2, v8}, Lu/i/t;->j(Ljava/lang/String;)V

    :goto_4
    if-ge v3, v0, :cond_e

    .line 32
    invoke-virtual {p1}, Lu/j/c;->b()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/j/b;

    .line 33
    invoke-virtual {v3}, Lu/j/b;->d()Lu/f;

    move-result-object v8

    if-nez v8, :cond_a

    move-object v8, v7

    move-object v7, v4

    goto :goto_6

    .line 34
    :cond_a
    invoke-virtual {v8, v6}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_5

    .line 35
    :cond_b
    invoke-static {v8}, Lu/i/o;->d(Lu/f;)[B

    move-result-object v7

    move-object v6, v8

    :goto_5
    move-object v8, v7

    .line 36
    :goto_6
    invoke-virtual {v3}, Lu/j/b;->j()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 37
    invoke-virtual {v3}, Lu/j/b;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lu/j/b;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3, v7, p2}, Lu/i/o;->g(Ljava/lang/String;Ljava/lang/String;[BLu/i/t;)V

    goto :goto_7

    :cond_c
    const-string v10, "{\"key\":\""

    .line 38
    invoke-virtual {p2, v10}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3}, Lu/j/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lu/i/t;->j(Ljava/lang/String;)V

    const-string v3, "\",\"value\":true,\"endpoint\":"

    .line 40
    invoke-virtual {p2, v3}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2, v7}, Lu/i/t;->h([B)V

    .line 42
    invoke-virtual {p2, v5}, Lu/i/t;->l(I)V

    :goto_7
    if-ge v9, v0, :cond_d

    .line 43
    invoke-virtual {p2, v1}, Lu/i/t;->l(I)V

    :cond_d
    move-object v7, v8

    move v3, v9

    goto :goto_4

    .line 44
    :cond_e
    invoke-virtual {p2, v2}, Lu/i/t;->l(I)V

    .line 45
    :cond_f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lu/j/c;->c()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, ",\"debug\":true"

    .line 46
    invoke-virtual {p2, p1}, Lu/i/t;->j(Ljava/lang/String;)V

    .line 47
    :cond_10
    invoke-virtual {p2, v5}, Lu/i/t;->l(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Span"

    return-object v0
.end method
