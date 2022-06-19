.class public final Lu/j/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/j/e$b;
    }
.end annotation


# instance fields
.field final a:Lu/j/c$a;

.field final b:Lu/j/e$b;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lu/j/c;->g()Lu/j/c$a;

    move-result-object v0

    iput-object v0, p0, Lu/j/e;->a:Lu/j/c$a;

    .line 3
    new-instance v0, Lu/j/e$b;

    invoke-direct {v0}, Lu/j/e$b;-><init>()V

    iput-object v0, p0, Lu/j/e;->b:Lu/j/e$b;

    return-void
.end method

.method public static b()Lu/j/e;
    .locals 1

    .line 1
    new-instance v0, Lu/j/e;

    invoke-direct {v0}, Lu/j/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lu/g;)Lu/j/c;
    .locals 12

    .line 1
    iget-object v0, p0, Lu/j/e;->b:Lu/j/e$b;

    invoke-virtual {v0, p1}, Lu/j/e$b;->a(Lu/g;)V

    .line 2
    iget-object v0, p0, Lu/j/e;->a:Lu/j/c$a;

    .line 3
    invoke-virtual {v0}, Lu/j/c$a;->e()Lu/j/c$a;

    .line 4
    invoke-virtual {p1}, Lu/g;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->o(Ljava/lang/String;)Lu/j/c$a;

    .line 5
    invoke-virtual {p1}, Lu/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->l(Ljava/lang/String;)Lu/j/c$a;

    .line 6
    invoke-virtual {p1}, Lu/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->i(Ljava/lang/String;)Lu/j/c$a;

    .line 7
    invoke-virtual {p1}, Lu/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->j(Ljava/lang/String;)Lu/j/c$a;

    .line 8
    invoke-virtual {p1}, Lu/g;->b()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->f(Ljava/lang/Boolean;)Lu/j/c$a;

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lu/g;->m()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lu/j/e;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/g;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/j/c$a;->m(J)Lu/j/c$a;

    .line 11
    iget-object v0, p0, Lu/j/e;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/g;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/j/c$a;->g(J)Lu/j/c$a;

    .line 12
    :cond_0
    iget-object v0, p0, Lu/j/e;->b:Lu/j/e$b;

    iget-wide v1, v0, Lu/j/e$b;->a:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    cmp-long v7, v1, v3

    if-eqz v7, :cond_1

    iget-object v1, v0, Lu/j/e$b;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-wide v7, v0, Lu/j/e$b;->b:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_2

    iget-object v0, v0, Lu/j/e$b;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 14
    :goto_1
    invoke-virtual {p1}, Lu/g;->f()Lu/f;

    move-result-object v2

    .line 15
    invoke-virtual {p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 16
    iget-object v4, p0, Lu/j/e;->a:Lu/j/c$a;

    iget-object v7, p0, Lu/j/e;->b:Lu/j/e$b;

    iget-wide v8, v7, Lu/j/e$b;->a:J

    iget-object v7, v7, Lu/j/e$b;->g:Ljava/lang/String;

    invoke-virtual {v4, v8, v9, v7, v2}, Lu/j/c$a;->a(JLjava/lang/String;Lu/f;)Lu/j/c$a;

    .line 17
    :cond_3
    invoke-virtual {p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_6

    .line 18
    invoke-virtual {p1}, Lu/g;->a()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lu/a;

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {v8}, Lu/a;->j()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lu/j/e;->b:Lu/j/e$b;

    iget-object v10, v10, Lu/j/e$b;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v8}, Lu/a;->j()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lu/j/e;->b:Lu/j/e$b;

    iget-object v10, v10, Lu/j/e$b;->h:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    iget-object v9, p0, Lu/j/e;->a:Lu/j/c$a;

    invoke-virtual {v8}, Lu/a;->h()J

    move-result-wide v10

    invoke-virtual {v8}, Lu/a;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v11, v8, v2}, Lu/j/c$a;->a(JLjava/lang/String;Lu/f;)Lu/j/c$a;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 22
    iget-object v0, p0, Lu/j/e;->a:Lu/j/c$a;

    iget-object v1, p0, Lu/j/e;->b:Lu/j/e$b;

    iget-wide v7, v1, Lu/j/e$b;->b:J

    iget-object v1, v1, Lu/j/e$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v1, v2}, Lu/j/c$a;->a(JLjava/lang/String;Lu/f;)Lu/j/c$a;

    .line 23
    :cond_7
    invoke-virtual {p1}, Lu/g;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    iget-object v4, p0, Lu/j/e;->a:Lu/j/c$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v7, v1, v2}, Lu/j/c$a;->b(Ljava/lang/String;Ljava/lang/String;Lu/f;)Lu/j/c$a;

    goto :goto_4

    :cond_8
    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    .line 25
    invoke-virtual {p1}, Lu/g;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    .line 26
    :goto_5
    iget-object v1, p0, Lu/j/e;->b:Lu/j/e$b;

    iget-object v1, v1, Lu/j/e$b;->i:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lu/g;->l()Lu/f;

    move-result-object v1

    if-eqz v1, :cond_a

    const/4 v5, 0x1

    :cond_a
    if-eqz v0, :cond_b

    .line 27
    iget-object v0, p0, Lu/j/e;->a:Lu/j/c$a;

    const-string v1, "lc"

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lu/j/c$a;->b(Ljava/lang/String;Ljava/lang/String;Lu/f;)Lu/j/c$a;

    :cond_b
    if-eqz v5, :cond_c

    .line 28
    iget-object v0, p0, Lu/j/e;->a:Lu/j/c$a;

    iget-object v1, p0, Lu/j/e;->b:Lu/j/e$b;

    iget-object v1, v1, Lu/j/e$b;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lu/g;->l()Lu/f;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lu/j/c$a;->c(Ljava/lang/String;Lu/f;)Lu/j/c$a;

    .line 29
    :cond_c
    iget-object p1, p0, Lu/j/e;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/j/c$a;->d()Lu/j/c;

    move-result-object p1

    return-object p1
.end method
