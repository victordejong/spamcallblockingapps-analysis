.class public abstract Lio/realm/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;",
            "Lio/realm/internal/Table;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;",
            "Lio/realm/h0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/realm/h0;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lio/realm/a;

.field private final f:Lio/realm/internal/b;


# direct methods
.method constructor <init>(Lio/realm/a;Lio/realm/internal/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/j0;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/j0;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/j0;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/j0;->d:Ljava/util/Map;

    .line 6
    iput-object p1, p0, Lio/realm/j0;->e:Lio/realm/a;

    .line 7
    iput-object p2, p0, Lio/realm/j0;->f:Lio/realm/internal/b;

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/j0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to use column key before set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c(Ljava/lang/String;)Lio/realm/h0;
.end method

.method public abstract d(Ljava/lang/String;)Lio/realm/h0;
.end method

.method final e(Ljava/lang/Class;)Lio/realm/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)",
            "Lio/realm/internal/c;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/realm/j0;->a()V

    .line 2
    iget-object v0, p0, Lio/realm/j0;->f:Lio/realm/internal/b;

    invoke-virtual {v0, p1}, Lio/realm/internal/b;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object p1

    return-object p1
.end method

.method protected final f(Ljava/lang/String;)Lio/realm/internal/c;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/realm/j0;->a()V

    .line 2
    iget-object v0, p0, Lio/realm/j0;->f:Lio/realm/internal/b;

    invoke-virtual {v0, p1}, Lio/realm/internal/b;->b(Ljava/lang/String;)Lio/realm/internal/c;

    move-result-object p1

    return-object p1
.end method

.method g(Ljava/lang/Class;)Lio/realm/h0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)",
            "Lio/realm/h0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/j0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/h0;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/realm/internal/Util;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1, p1}, Lio/realm/j0;->l(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, p0, Lio/realm/j0;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/h0;

    :cond_1
    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lio/realm/j0;->i(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v0

    .line 6
    new-instance v2, Lio/realm/l;

    iget-object v3, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {p0, v1}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    invoke-direct {v2, v3, p0, v0, v4}, Lio/realm/l;-><init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;Lio/realm/internal/c;)V

    .line 7
    iget-object v0, p0, Lio/realm/j0;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 8
    :cond_2
    invoke-direct {p0, v1, p1}, Lio/realm/j0;->l(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lio/realm/j0;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method h(Ljava/lang/String;)Lio/realm/h0;
    .locals 3

    .line 1
    invoke-static {p1}, Lio/realm/internal/Table;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/j0;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/h0;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/realm/h0;->k()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->C()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lio/realm/h0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    :cond_0
    iget-object v1, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {v1}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance v1, Lio/realm/l;

    iget-object p1, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {p1}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lio/realm/l;-><init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;)V

    .line 6
    iget-object p1, p0, Lio/realm/j0;->d:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist in this Realm."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method i(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)",
            "Lio/realm/internal/Table;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/j0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/realm/internal/Util;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-direct {p0, v1, p1}, Lio/realm/j0;->l(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, p0, Lio/realm/j0;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    :cond_1
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/realm/j0;->e:Lio/realm/a;

    .line 6
    invoke-virtual {v0}, Lio/realm/a;->A()Lio/realm/b0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/b0;->n()Lio/realm/internal/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/internal/n;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lio/realm/internal/Table;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {v2}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lio/realm/j0;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    invoke-direct {p0, v1, p1}, Lio/realm/j0;->l(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, p0, Lio/realm/j0;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method j(Ljava/lang/String;)Lio/realm/internal/Table;
    .locals 2

    .line 1
    invoke-static {p1}, Lio/realm/internal/Table;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/realm/j0;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/Table;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/realm/j0;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/j0;->f:Lio/realm/internal/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/j0;->f:Lio/realm/internal/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/realm/internal/b;->c()V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/j0;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v0, p0, Lio/realm/j0;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 5
    iget-object v0, p0, Lio/realm/j0;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 6
    iget-object v0, p0, Lio/realm/j0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
