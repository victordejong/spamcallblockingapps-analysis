.class public final Lu/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lu/g$a;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/g$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Lu/j/a;

.field d:Lu/j/a;

.field e:Lu/j/a;

.field f:Lu/j/a;

.field g:Lu/j/a;

.field h:Lu/j/a;

.field i:Lu/j/a;

.field j:Lu/j/a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lu/g;->h()Lu/g$a;

    move-result-object v0

    iput-object v0, p0, Lu/j/d;->a:Lu/g$a;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/j/d;->b:Ljava/util/List;

    return-void
.end method

.method static a(Lu/g$a;Lu/f;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu/g$a;->m()Lu/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lu/g$a;->n(Lu/f;)Lu/g$a;

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Lu/j/d;->j(Lu/f;Lu/f;)Z

    move-result p0

    return p0
.end method

.method public static c()Lu/j/d;
    .locals 1

    .line 1
    new-instance v0, Lu/j/d;

    invoke-direct {v0}, Lu/j/d;-><init>()V

    return-object v0
.end method

.method static d(Lu/j/a;Lu/j/c;)Z
    .locals 6

    if-eqz p0, :cond_0

    .line 1
    iget-wide v0, p1, Lu/j/c;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p1, Lu/j/c;->g:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_0

    add-long/2addr v0, v4

    iget-wide p0, p0, Lu/j/a;->f:J

    cmp-long v2, v0, p0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static j(Lu/f;Lu/f;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/f;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lu/f;->n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lu/j/d;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static l(Lu/g$a;Lu/j/c;)Lu/g$a;
    .locals 4

    .line 1
    iget-wide v0, p1, Lu/j/c;->a:J

    iget-wide v2, p1, Lu/j/c;->b:J

    .line 2
    invoke-virtual {p0, v0, v1, v2, v3}, Lu/g$a;->w(JJ)Lu/g$a;

    iget-wide v0, p1, Lu/j/c;->e:J

    .line 3
    invoke-virtual {p0, v0, v1}, Lu/g$a;->p(J)Lu/g$a;

    iget-wide v0, p1, Lu/j/c;->c:J

    .line 4
    invoke-virtual {p0, v0, v1}, Lu/g$a;->i(J)Lu/g$a;

    iget-object v0, p1, Lu/j/c;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v0}, Lu/g$a;->o(Ljava/lang/String;)Lu/g$a;

    iget-object p1, p1, Lu/j/c;->j:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {p0, p1}, Lu/g$a;->e(Ljava/lang/Boolean;)Lu/g$a;

    return-object p0
.end method


# virtual methods
.method public b(Lu/j/c;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/j/c;",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lu/j/d;->p(Lu/j/c;)V

    .line 2
    invoke-virtual {p0, p1}, Lu/j/d;->n(Lu/j/c;)V

    .line 3
    invoke-virtual {p0, p1}, Lu/j/d;->o(Lu/j/c;)V

    .line 4
    invoke-virtual {p0, p2}, Lu/j/d;->f(Ljava/util/Collection;)V

    return-void
.end method

.method f(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lu/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/j/d;->a:Lu/g$a;

    invoke-virtual {v0}, Lu/g$a;->b()Lu/g;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lu/j/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lu/j/d;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/g$a;

    invoke-virtual {v2}, Lu/g$a;->b()Lu/g;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method g(Lu/j/c;Lu/f;)Lu/g$a;
    .locals 4

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lu/j/d;->a:Lu/g$a;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lu/j/d;->a:Lu/g$a;

    invoke-static {v0, p2}, Lu/j/d;->a(Lu/g$a;Lu/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lu/j/d;->a:Lu/g$a;

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lu/j/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 4
    iget-object v2, p0, Lu/j/d;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/g$a;

    .line 5
    invoke-static {v2, p2}, Lu/j/d;->a(Lu/g$a;Lu/f;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0, p1, p2}, Lu/j/d;->m(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object p1

    return-object p1
.end method

.method h(Lu/g$a;)V
    .locals 3

    .line 1
    sget-object v0, Lu/g$b;->CLIENT:Lu/g$b;

    invoke-virtual {p1}, Lu/g$a;->l()Lu/g$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lu/j/d;->c:Lu/j/a;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lu/j/a;->f:J

    invoke-virtual {p1, v0, v1}, Lu/g$a;->v(J)Lu/g$a;

    .line 3
    :cond_0
    iget-object v0, p0, Lu/j/d;->f:Lu/j/a;

    if-eqz v0, :cond_3

    iget-wide v1, v0, Lu/j/a;->f:J

    iget-object v0, v0, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lu/g$a;->a(JLjava/lang/String;)Lu/g$a;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lu/g$b;->SERVER:Lu/g$b;

    invoke-virtual {p1}, Lu/g$a;->l()Lu/g$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lu/j/d;->d:Lu/j/a;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lu/j/a;->f:J

    invoke-virtual {p1, v0, v1}, Lu/g$a;->v(J)Lu/g$a;

    .line 6
    :cond_2
    iget-object v0, p0, Lu/j/d;->e:Lu/j/a;

    if-eqz v0, :cond_3

    iget-wide v1, v0, Lu/j/a;->f:J

    iget-object v0, v0, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lu/g$a;->a(JLjava/lang/String;)Lu/g$a;

    :cond_3
    :goto_0
    return-void
.end method

.method i(Lu/j/c;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu/j/d;->a:Lu/g$a;

    invoke-virtual {p0, v0}, Lu/j/d;->h(Lu/g$a;)V

    .line 2
    iget-object v0, p0, Lu/j/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lu/j/d;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/g$a;

    invoke-virtual {p0, v2}, Lu/j/d;->h(Lu/g$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p1, Lu/j/c;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5
    iget-object v2, p0, Lu/j/d;->a:Lu/g$a;

    invoke-virtual {v2, v0, v1}, Lu/g$a;->v(J)Lu/g$a;

    iget-wide v0, p1, Lu/j/c;->g:J

    invoke-virtual {v2, v0, v1}, Lu/g$a;->g(J)Lu/g$a;

    :cond_1
    return-void
.end method

.method k(Lu/j/c;Lu/j/a;Lu/j/a;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v0

    .line 2
    iget-wide v1, p1, Lu/j/c;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, p1, Lu/j/c;->g:J

    cmp-long v7, v5, v3

    if-eqz v7, :cond_0

    .line 3
    invoke-virtual {v0, v1, v2}, Lu/g$a;->v(J)Lu/g$a;

    iget-wide p1, p1, Lu/j/c;->g:J

    invoke-virtual {v0, p1, p2}, Lu/g$a;->g(J)Lu/g$a;

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v1, p2, Lu/j/a;->f:J

    invoke-virtual {v0, v1, v2}, Lu/g$a;->v(J)Lu/g$a;

    if-eqz p3, :cond_1

    .line 5
    iget-wide v1, p3, Lu/j/a;->f:J

    iget-wide p1, p2, Lu/j/a;->f:J

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lu/g$a;->g(J)Lu/g$a;

    :cond_1
    :goto_0
    return-void
.end method

.method m(Lu/j/c;Lu/f;)Lu/g$a;
    .locals 1

    .line 1
    invoke-static {}, Lu/g;->h()Lu/g$a;

    move-result-object v0

    invoke-static {v0, p1}, Lu/j/d;->l(Lu/g$a;Lu/j/c;)Lu/g$a;

    invoke-virtual {v0, p2}, Lu/g$a;->n(Lu/f;)Lu/g$a;

    .line 2
    iget-object p1, p0, Lu/j/d;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method n(Lu/j/c;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lu/j/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "sr"

    const-string v3, "cs"

    if-ge v1, v0, :cond_9

    .line 2
    iget-object v4, p1, Lu/j/c;->h:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu/j/a;

    .line 3
    iget-object v5, v4, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v5}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v5

    .line 4
    iget-object v6, v4, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    iget-object v6, v4, Lu/j/a;->h:Lu/f;

    if-eqz v6, :cond_8

    .line 5
    iget-object v6, v4, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    sget-object v2, Lu/g$b;->CLIENT:Lu/g$b;

    invoke-virtual {v5, v2}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    .line 7
    iput-object v4, p0, Lu/j/d;->c:Lu/j/a;

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object v3, v4, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    sget-object v2, Lu/g$b;->SERVER:Lu/g$b;

    invoke-virtual {v5, v2}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    .line 10
    iput-object v4, p0, Lu/j/d;->d:Lu/j/a;

    goto/16 :goto_1

    .line 11
    :cond_1
    iget-object v2, v4, Lu/j/a;->g:Ljava/lang/String;

    const-string v3, "ss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    sget-object v2, Lu/g$b;->SERVER:Lu/g$b;

    invoke-virtual {v5, v2}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    .line 13
    iput-object v4, p0, Lu/j/d;->e:Lu/j/a;

    goto :goto_1

    .line 14
    :cond_2
    iget-object v2, v4, Lu/j/a;->g:Ljava/lang/String;

    const-string v3, "cr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    sget-object v2, Lu/g$b;->CLIENT:Lu/g$b;

    invoke-virtual {v5, v2}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    .line 16
    iput-object v4, p0, Lu/j/d;->f:Lu/j/a;

    goto :goto_1

    .line 17
    :cond_3
    iget-object v2, v4, Lu/j/a;->g:Ljava/lang/String;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    sget-object v2, Lu/g$b;->PRODUCER:Lu/g$b;

    invoke-virtual {v5, v2}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    .line 19
    iput-object v4, p0, Lu/j/d;->g:Lu/j/a;

    goto :goto_1

    .line 20
    :cond_4
    iget-object v2, v4, Lu/j/a;->g:Ljava/lang/String;

    const-string v3, "mr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    sget-object v2, Lu/g$b;->CONSUMER:Lu/g$b;

    invoke-virtual {v5, v2}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    .line 22
    iput-object v4, p0, Lu/j/d;->h:Lu/j/a;

    goto :goto_1

    .line 23
    :cond_5
    iget-object v2, v4, Lu/j/a;->g:Ljava/lang/String;

    const-string v3, "ws"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    iput-object v4, p0, Lu/j/d;->i:Lu/j/a;

    goto :goto_1

    .line 25
    :cond_6
    iget-object v2, v4, Lu/j/a;->g:Ljava/lang/String;

    const-string v3, "wr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    iput-object v4, p0, Lu/j/d;->j:Lu/j/a;

    goto :goto_1

    .line 27
    :cond_7
    iget-wide v2, v4, Lu/j/a;->f:J

    iget-object v4, v4, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v2, v3, v4}, Lu/g$a;->a(JLjava/lang/String;)Lu/g$a;

    goto :goto_1

    .line 28
    :cond_8
    iget-wide v2, v4, Lu/j/a;->f:J

    iget-object v4, v4, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v2, v3, v4}, Lu/g$a;->a(JLjava/lang/String;)Lu/g$a;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 29
    :cond_9
    iget-object v0, p0, Lu/j/d;->c:Lu/j/a;

    if-nez v0, :cond_a

    iget-object v0, p0, Lu/j/d;->f:Lu/j/a;

    invoke-static {v0, p1}, Lu/j/d;->d(Lu/j/a;Lu/j/c;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-wide v0, p1, Lu/j/c;->f:J

    iget-object v4, p0, Lu/j/d;->f:Lu/j/a;

    iget-object v4, v4, Lu/j/a;->h:Lu/f;

    invoke-static {v0, v1, v3, v4}, Lu/j/a;->d(JLjava/lang/String;Lu/f;)Lu/j/a;

    move-result-object v0

    iput-object v0, p0, Lu/j/d;->c:Lu/j/a;

    .line 31
    :cond_a
    iget-object v0, p0, Lu/j/d;->d:Lu/j/a;

    if-nez v0, :cond_b

    iget-object v0, p0, Lu/j/d;->e:Lu/j/a;

    invoke-static {v0, p1}, Lu/j/d;->d(Lu/j/a;Lu/j/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    iget-wide v0, p1, Lu/j/c;->f:J

    iget-object v3, p0, Lu/j/d;->e:Lu/j/a;

    iget-object v3, v3, Lu/j/a;->h:Lu/f;

    invoke-static {v0, v1, v2, v3}, Lu/j/a;->d(JLjava/lang/String;Lu/f;)Lu/j/a;

    move-result-object v0

    iput-object v0, p0, Lu/j/d;->d:Lu/j/a;

    .line 33
    :cond_b
    iget-object v0, p0, Lu/j/d;->c:Lu/j/a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_e

    iget-object v5, p0, Lu/j/d;->d:Lu/j/a;

    if-eqz v5, :cond_e

    .line 34
    iget-object v5, p0, Lu/j/d;->f:Lu/j/a;

    invoke-virtual {p0, p1, v0, v5}, Lu/j/d;->k(Lu/j/c;Lu/j/a;Lu/j/a;)V

    .line 35
    iget-object v0, p0, Lu/j/d;->c:Lu/j/a;

    iget-object v0, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v0

    .line 36
    iget-object v5, p0, Lu/j/d;->c:Lu/j/a;

    iget-object v5, v5, Lu/j/a;->h:Lu/f;

    iget-object v6, p0, Lu/j/d;->d:Lu/j/a;

    iget-object v6, v6, Lu/j/a;->h:Lu/f;

    invoke-static {v5, v6}, Lu/j/d;->j(Lu/f;Lu/f;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 37
    sget-object v5, Lu/g$b;->CLIENT:Lu/g$b;

    invoke-virtual {v0, v5}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    .line 38
    iget-object v5, p0, Lu/j/d;->d:Lu/j/a;

    iget-object v5, v5, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v5}, Lu/j/d;->m(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v5

    sget-object v6, Lu/g$b;->SERVER:Lu/g$b;

    invoke-virtual {v5, v6}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    goto :goto_2

    .line 39
    :cond_c
    iget-object v5, p0, Lu/j/d;->d:Lu/j/a;

    iget-object v5, v5, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v5}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v5

    .line 40
    :goto_2
    invoke-virtual {v5, v4}, Lu/g$a;->u(Z)Lu/g$a;

    iget-object v6, p0, Lu/j/d;->d:Lu/j/a;

    iget-wide v6, v6, Lu/j/a;->f:J

    invoke-virtual {v5, v6, v7}, Lu/g$a;->v(J)Lu/g$a;

    .line 41
    iget-object v6, p0, Lu/j/d;->e:Lu/j/a;

    if-eqz v6, :cond_d

    iget-wide v6, v6, Lu/j/a;->f:J

    iget-object v8, p0, Lu/j/d;->d:Lu/j/a;

    iget-wide v8, v8, Lu/j/a;->f:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lu/g$a;->g(J)Lu/g$a;

    .line 42
    :cond_d
    iget-object v5, p0, Lu/j/d;->f:Lu/j/a;

    if-nez v5, :cond_11

    iget-wide v5, p1, Lu/j/c;->g:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_11

    invoke-virtual {v0, v1}, Lu/g$a;->h(Ljava/lang/Long;)Lu/g$a;

    goto :goto_3

    :cond_e
    if-eqz v0, :cond_f

    .line 43
    iget-object v5, p0, Lu/j/d;->f:Lu/j/a;

    if-eqz v5, :cond_f

    .line 44
    invoke-virtual {p0, p1, v0, v5}, Lu/j/d;->k(Lu/j/c;Lu/j/a;Lu/j/a;)V

    goto :goto_3

    .line 45
    :cond_f
    iget-object v0, p0, Lu/j/d;->d:Lu/j/a;

    if-eqz v0, :cond_10

    iget-object v5, p0, Lu/j/d;->e:Lu/j/a;

    if-eqz v5, :cond_10

    .line 46
    invoke-virtual {p0, p1, v0, v5}, Lu/j/d;->k(Lu/j/c;Lu/j/a;Lu/j/a;)V

    goto :goto_3

    .line 47
    :cond_10
    invoke-virtual {p0, p1}, Lu/j/d;->i(Lu/j/c;)V

    .line 48
    :cond_11
    :goto_3
    iget-object v0, p0, Lu/j/d;->c:Lu/j/a;

    if-nez v0, :cond_13

    iget-object v0, p0, Lu/j/d;->d:Lu/j/a;

    if-eqz v0, :cond_13

    iget-wide v5, p1, Lu/j/c;->f:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_12

    iget-object v5, p0, Lu/j/d;->e:Lu/j/a;

    if-eqz v5, :cond_13

    iget-wide v5, p1, Lu/j/c;->g:J

    cmp-long v7, v5, v2

    if-nez v7, :cond_13

    .line 49
    :cond_12
    iget-object v0, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu/g$a;->u(Z)Lu/g$a;

    .line 50
    :cond_13
    iget-object v0, p0, Lu/j/d;->g:Lu/j/a;

    if-eqz v0, :cond_17

    iget-object v2, p0, Lu/j/d;->h:Lu/j/a;

    if-eqz v2, :cond_17

    .line 51
    iget-object v0, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v0

    .line 52
    iget-object v2, p0, Lu/j/d;->g:Lu/j/a;

    iget-object v2, v2, Lu/j/a;->h:Lu/f;

    iget-object v3, p0, Lu/j/d;->h:Lu/j/a;

    iget-object v3, v3, Lu/j/a;->h:Lu/f;

    invoke-static {v2, v3}, Lu/j/d;->j(Lu/f;Lu/f;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 53
    sget-object v2, Lu/g$b;->PRODUCER:Lu/g$b;

    invoke-virtual {v0, v2}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    .line 54
    iget-object v2, p0, Lu/j/d;->h:Lu/j/a;

    iget-object v2, v2, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v2}, Lu/j/d;->m(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object p1

    sget-object v2, Lu/g$b;->CONSUMER:Lu/g$b;

    invoke-virtual {p1, v2}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    goto :goto_4

    .line 55
    :cond_14
    iget-object v2, p0, Lu/j/d;->h:Lu/j/a;

    iget-object v2, v2, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v2}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object p1

    .line 56
    :goto_4
    invoke-virtual {p1, v4}, Lu/g$a;->u(Z)Lu/g$a;

    .line 57
    iget-object v2, p0, Lu/j/d;->j:Lu/j/a;

    if-eqz v2, :cond_15

    .line 58
    iget-wide v2, v2, Lu/j/a;->f:J

    invoke-virtual {p1, v2, v3}, Lu/g$a;->v(J)Lu/g$a;

    iget-object v2, p0, Lu/j/d;->h:Lu/j/a;

    iget-wide v2, v2, Lu/j/a;->f:J

    iget-object v4, p0, Lu/j/d;->j:Lu/j/a;

    iget-wide v4, v4, Lu/j/a;->f:J

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Lu/g$a;->g(J)Lu/g$a;

    goto :goto_5

    .line 59
    :cond_15
    iget-object v2, p0, Lu/j/d;->h:Lu/j/a;

    iget-wide v2, v2, Lu/j/a;->f:J

    invoke-virtual {p1, v2, v3}, Lu/g$a;->v(J)Lu/g$a;

    .line 60
    :goto_5
    iget-object p1, p0, Lu/j/d;->g:Lu/j/a;

    iget-wide v2, p1, Lu/j/a;->f:J

    invoke-virtual {v0, v2, v3}, Lu/g$a;->v(J)Lu/g$a;

    iget-object p1, p0, Lu/j/d;->i:Lu/j/a;

    if-eqz p1, :cond_16

    iget-wide v1, p1, Lu/j/a;->f:J

    iget-object p1, p0, Lu/j/d;->g:Lu/j/a;

    iget-wide v3, p1, Lu/j/a;->f:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_16
    invoke-virtual {v0, v1}, Lu/g$a;->h(Ljava/lang/Long;)Lu/g$a;

    goto :goto_6

    :cond_17
    if-eqz v0, :cond_18

    .line 61
    iget-object v1, p0, Lu/j/d;->i:Lu/j/a;

    invoke-virtual {p0, p1, v0, v1}, Lu/j/d;->k(Lu/j/c;Lu/j/a;Lu/j/a;)V

    goto :goto_6

    .line 62
    :cond_18
    iget-object v0, p0, Lu/j/d;->h:Lu/j/a;

    if-eqz v0, :cond_1a

    .line 63
    iget-object v2, p0, Lu/j/d;->j:Lu/j/a;

    if-eqz v2, :cond_19

    .line 64
    invoke-virtual {p0, p1, v2, v0}, Lu/j/d;->k(Lu/j/c;Lu/j/a;Lu/j/a;)V

    goto :goto_6

    .line 65
    :cond_19
    invoke-virtual {p0, p1, v0, v1}, Lu/j/d;->k(Lu/j/c;Lu/j/a;Lu/j/a;)V

    goto :goto_6

    .line 66
    :cond_1a
    iget-object v0, p0, Lu/j/d;->i:Lu/j/a;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v0

    iget-object v1, p0, Lu/j/d;->i:Lu/j/a;

    iget-wide v2, v1, Lu/j/a;->f:J

    iget-object v1, v1, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lu/g$a;->a(JLjava/lang/String;)Lu/g$a;

    .line 67
    :cond_1b
    iget-object v0, p0, Lu/j/d;->j:Lu/j/a;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object p1

    iget-object v0, p0, Lu/j/d;->j:Lu/j/a;

    iget-wide v1, v0, Lu/j/a;->f:J

    iget-object v0, v0, Lu/j/a;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0}, Lu/g$a;->a(JLjava/lang/String;)Lu/g$a;

    :cond_1c
    :goto_6
    return-void
.end method

.method o(Lu/j/c;)V
    .locals 11

    .line 1
    iget-object v0, p1, Lu/j/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2
    iget-object v7, p1, Lu/j/c;->i:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lu/j/b;

    .line 3
    iget-object v8, v7, Lu/j/b;->f:Ljava/lang/String;

    const-string v9, "ca"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4
    iget-object v4, v7, Lu/j/b;->h:Lu/f;

    goto :goto_1

    .line 5
    :cond_0
    iget-object v8, v7, Lu/j/b;->f:Ljava/lang/String;

    const-string v9, "sa"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 6
    iget-object v5, v7, Lu/j/b;->h:Lu/f;

    goto :goto_1

    .line 7
    :cond_1
    iget-object v8, v7, Lu/j/b;->f:Ljava/lang/String;

    const-string v9, "ma"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 8
    iget-object v6, v7, Lu/j/b;->h:Lu/f;

    goto :goto_1

    .line 9
    :cond_2
    iget-object v8, v7, Lu/j/b;->h:Lu/f;

    invoke-virtual {p0, p1, v8}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v8

    .line 10
    iget-object v9, v7, Lu/j/b;->f:Ljava/lang/String;

    const-string v10, "lc"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v7, Lu/j/b;->g:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object v9, v7, Lu/j/b;->f:Ljava/lang/String;

    iget-object v7, v7, Lu/j/b;->g:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Lu/g$a;->r(Ljava/lang/String;Ljava/lang/String;)Lu/g$a;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget-object v0, p0, Lu/j/d;->c:Lu/j/a;

    if-nez v0, :cond_5

    iget-object v0, p0, Lu/j/d;->f:Lu/j/a;

    if-nez v0, :cond_5

    iget-object v0, p0, Lu/j/d;->e:Lu/j/a;

    if-nez v0, :cond_5

    iget-object v0, p0, Lu/j/d;->d:Lu/j/a;

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_9

    if-nez v4, :cond_6

    if-eqz v5, :cond_9

    :cond_6
    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 13
    invoke-virtual {p0, p1, v4}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object p1

    invoke-virtual {p1, v5}, Lu/g$a;->s(Lu/f;)Lu/g$a;

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_8

    .line 14
    invoke-virtual {p0, p1, v2}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object p1

    invoke-virtual {p1, v5}, Lu/g$a;->s(Lu/f;)Lu/g$a;

    goto :goto_2

    .line 15
    :cond_8
    invoke-virtual {p0, p1, v2}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object p1

    sget-object v0, Lu/g$b;->SERVER:Lu/g$b;

    invoke-virtual {p1, v0}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    invoke-virtual {p1, v4}, Lu/g$a;->s(Lu/f;)Lu/g$a;

    :goto_2
    return-void

    .line 16
    :cond_9
    iget-object v0, p0, Lu/j/d;->d:Lu/j/a;

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lu/j/d;->e:Lu/j/a;

    :goto_3
    if-eqz v4, :cond_c

    if-eqz v0, :cond_c

    .line 17
    iget-object v1, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {v4, v1}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 18
    iget-object v1, v0, Lu/j/a;->h:Lu/f;

    invoke-static {v4, v1}, Lu/j/d;->j(Lu/f;Lu/f;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 19
    invoke-virtual {v4}, Lu/f;->p()Lu/f$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lu/f$a;->h(Ljava/lang/String;)Lu/f$a;

    invoke-virtual {v1}, Lu/f$a;->a()Lu/f;

    move-result-object v4

    .line 20
    :cond_b
    iget-object v0, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu/g$a;->s(Lu/f;)Lu/g$a;

    :cond_c
    if-eqz v5, :cond_e

    .line 21
    iget-object v0, p0, Lu/j/d;->c:Lu/j/a;

    if-eqz v0, :cond_d

    .line 22
    iget-object v0, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lu/g$a;->s(Lu/f;)Lu/g$a;

    goto :goto_4

    .line 23
    :cond_d
    iget-object v0, p0, Lu/j/d;->f:Lu/j/a;

    if-eqz v0, :cond_e

    .line 24
    iget-object v0, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lu/g$a;->s(Lu/f;)Lu/g$a;

    :cond_e
    :goto_4
    if-eqz v6, :cond_10

    .line 25
    iget-object v0, p0, Lu/j/d;->g:Lu/j/a;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lu/g$a;->s(Lu/f;)Lu/g$a;

    .line 26
    :cond_f
    iget-object v0, p0, Lu/j/d;->h:Lu/j/a;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lu/j/a;->h:Lu/f;

    invoke-virtual {p0, p1, v0}, Lu/j/d;->g(Lu/j/c;Lu/f;)Lu/g$a;

    move-result-object p1

    invoke-virtual {p1, v6}, Lu/g$a;->s(Lu/f;)Lu/g$a;

    :cond_10
    return-void
.end method

.method p(Lu/j/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/j/d;->a:Lu/g$a;

    invoke-virtual {v0}, Lu/g$a;->c()Lu/g$a;

    .line 2
    iget-object v0, p0, Lu/j/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lu/j/d;->j:Lu/j/a;

    iput-object v0, p0, Lu/j/d;->i:Lu/j/a;

    iput-object v0, p0, Lu/j/d;->h:Lu/j/a;

    iput-object v0, p0, Lu/j/d;->g:Lu/j/a;

    iput-object v0, p0, Lu/j/d;->f:Lu/j/a;

    iput-object v0, p0, Lu/j/d;->e:Lu/j/a;

    iput-object v0, p0, Lu/j/d;->d:Lu/j/a;

    iput-object v0, p0, Lu/j/d;->c:Lu/j/a;

    .line 4
    iget-object v0, p0, Lu/j/d;->a:Lu/g$a;

    invoke-static {v0, p1}, Lu/j/d;->l(Lu/g$a;Lu/j/c;)Lu/g$a;

    return-void
.end method
