.class public Le/f/a/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/o/h;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/f/a/o/i;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Le/f/a/o/a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Le/f/a/o/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/o/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Le/f/a/o/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/o/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-boolean v0, p0, Le/f/a/o/a;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Le/f/a/o/i;->onDestroy()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Le/f/a/o/a;->b:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1}, Le/f/a/o/i;->onStart()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Le/f/a/o/i;->onStop()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/f/a/o/a;->c:Z

    .line 2
    iget-object v0, p0, Le/f/a/o/a;->a:Ljava/util/Set;

    invoke-static {v0}, Le/f/a/t/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/o/i;

    .line 3
    invoke-interface {v1}, Le/f/a/o/i;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/f/a/o/a;->b:Z

    .line 2
    iget-object v0, p0, Le/f/a/o/a;->a:Ljava/util/Set;

    invoke-static {v0}, Le/f/a/t/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/o/i;

    .line 3
    invoke-interface {v1}, Le/f/a/o/i;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/f/a/o/a;->b:Z

    .line 2
    iget-object v0, p0, Le/f/a/o/a;->a:Ljava/util/Set;

    invoke-static {v0}, Le/f/a/t/j;->e(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/f/a/o/i;

    .line 3
    invoke-interface {v1}, Le/f/a/o/i;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method
