.class public Le/k/a/c/d0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/c/f;

.field public final b:Le/k/a/c/g;

.field public final c:Le/k/a/c/c;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/d0/u;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/k/a/c/d0/y/h0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/k/a/c/d0/u;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Le/k/a/c/d0/w;

.field public j:Le/k/a/c/d0/y/v;

.field public k:Le/k/a/c/d0/t;

.field public l:Z

.field public m:Le/k/a/c/g0/j;


# direct methods
.method public constructor <init>(Le/k/a/c/c;Le/k/a/c/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Le/k/a/c/d0/e;->d:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Le/k/a/c/d0/e;->c:Le/k/a/c/c;

    .line 4
    iput-object p2, p0, Le/k/a/c/d0/e;->b:Le/k/a/c/g;

    .line 5
    iget-object p1, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 6
    iput-object p1, p0, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Le/k/a/c/d0/u;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/k/a/c/v;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    invoke-virtual {v0}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/d0/u;

    .line 3
    invoke-virtual {v2}, Le/k/a/c/d0/u;->c()Le/k/a/c/g0/i;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/k/a/c/b;->D(Le/k/a/c/g0/b;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_2
    iget-object v2, v2, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 7
    iget-object v2, v2, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/e;->c:Le/k/a/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/k/a/c/c;->b(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/a/k$a;->b:Le/k/a/a/k$a;

    invoke-virtual {v0, v1}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    sget-object v1, Le/k/a/c/p;->x:Le/k/a/c/p;

    invoke-virtual {v0, v1}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public c(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Le/k/a/c/d0/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    invoke-virtual {v0}, Le/k/a/c/c0/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/d0/u;

    .line 3
    iget-object v1, p0, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    invoke-virtual {v0, v1}, Le/k/a/c/d0/u;->l(Le/k/a/c/f;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/k/a/c/d0/e;->k:Le/k/a/c/d0/t;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    .line 6
    iget-object p1, p1, Le/k/a/c/d0/t;->b:Le/k/a/c/g0/i;

    sget-object v1, Le/k/a/c/p;->q:Le/k/a/c/p;

    .line 7
    invoke-virtual {v0, v1}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v0

    .line 8
    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->f(Z)V

    .line 9
    :cond_1
    iget-object p1, p0, Le/k/a/c/d0/e;->m:Le/k/a/c/g0/j;

    if-eqz p1, :cond_2

    .line 10
    iget-object v0, p0, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    sget-object v1, Le/k/a/c/p;->q:Le/k/a/c/p;

    invoke-virtual {v0, v1}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v0

    invoke-virtual {p1, v0}, Le/k/a/c/g0/i;->f(Z)V

    :cond_2
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/e;->g:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/k/a/c/d0/e;->g:Ljava/util/HashSet;

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/e;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Le/k/a/c/d0/u;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/e;->d:Ljava/util/Map;

    .line 2
    iget-object v1, p1, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 3
    iget-object v1, v1, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/d0/u;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicate property \'"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    iget-object p1, p1, Le/k/a/c/d0/u;->c:Le/k/a/c/v;

    .line 7
    iget-object p1, p1, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Le/k/a/c/d0/e;->c:Le/k/a/c/c;

    .line 9
    iget-object p1, p1, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public f()Le/k/a/c/j;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Le/k/a/c/d0/e;->c(Ljava/util/Collection;)V

    .line 3
    iget-object v1, p0, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    .line 4
    invoke-virtual {p0, v0}, Le/k/a/c/d0/e;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Le/k/a/c/d0/e;->b()Z

    move-result v3

    .line 6
    new-instance v4, Le/k/a/c/d0/y/c;

    .line 7
    iget-object v1, v1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 8
    iget-object v1, v1, Le/k/a/c/c0/a;->i:Ljava/util/Locale;

    .line 9
    invoke-direct {v4, v3, v0, v2, v1}, Le/k/a/c/d0/y/c;-><init>(ZLjava/util/Collection;Ljava/util/Map;Ljava/util/Locale;)V

    .line 10
    invoke-virtual {v4}, Le/k/a/c/d0/y/c;->d()Le/k/a/c/d0/y/c;

    .line 11
    iget-object v1, p0, Le/k/a/c/d0/e;->a:Le/k/a/c/f;

    sget-object v2, Le/k/a/c/p;->u:Le/k/a/c/p;

    invoke-virtual {v1, v2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/k/a/c/d0/u;

    .line 13
    invoke-virtual {v3}, Le/k/a/c/d0/u;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    move v13, v2

    goto :goto_0

    :cond_1
    move v13, v1

    .line 14
    :goto_0
    iget-object v0, p0, Le/k/a/c/d0/e;->j:Le/k/a/c/d0/y/v;

    if-eqz v0, :cond_2

    .line 15
    new-instance v0, Le/k/a/c/d0/y/x;

    iget-object v1, p0, Le/k/a/c/d0/e;->j:Le/k/a/c/d0/y/v;

    sget-object v2, Le/k/a/c/u;->h:Le/k/a/c/u;

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/y/x;-><init>(Le/k/a/c/d0/y/v;Le/k/a/c/u;)V

    .line 16
    invoke-virtual {v4, v0}, Le/k/a/c/d0/y/c;->i(Le/k/a/c/d0/u;)Le/k/a/c/d0/y/c;

    move-result-object v4

    :cond_2
    move-object v8, v4

    .line 17
    new-instance v0, Le/k/a/c/d0/c;

    iget-object v7, p0, Le/k/a/c/d0/e;->c:Le/k/a/c/c;

    iget-object v9, p0, Le/k/a/c/d0/e;->f:Ljava/util/HashMap;

    iget-object v10, p0, Le/k/a/c/d0/e;->g:Ljava/util/HashSet;

    iget-boolean v11, p0, Le/k/a/c/d0/e;->l:Z

    iget-object v12, p0, Le/k/a/c/d0/e;->h:Ljava/util/HashSet;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v13}, Le/k/a/c/d0/c;-><init>(Le/k/a/c/d0/e;Le/k/a/c/c;Le/k/a/c/d0/y/c;Ljava/util/Map;Ljava/util/HashSet;ZLjava/util/Set;Z)V

    return-object v0
.end method
