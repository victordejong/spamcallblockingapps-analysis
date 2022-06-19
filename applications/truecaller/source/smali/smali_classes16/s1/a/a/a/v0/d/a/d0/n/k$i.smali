.class public final Ls1/a/a/a/v0/d/a/d0/n/k$i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/k;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/d0/n/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/e;",
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/b/q0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/k;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$i;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/e;

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$i;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 4
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/k;->d:Ls1/a/a/a/v0/l/g;

    .line 5
    check-cast v1, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$i;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    move-object v4, v3

    check-cast v4, Ls1/a/a/a/v0/b/q0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 11
    invoke-static {v4, v6, v6, v5}, Ls1/a/a/a/v0/d/b/p;->c(Ls1/a/a/a/v0/b/v;ZZI)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 13
    invoke-static {v1, v4}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    :cond_0
    check-cast v5, Ljava/util/List;

    .line 14
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 18
    :cond_2
    sget-object v3, Ls1/a/a/a/v0/d/a/d0/n/m;->b:Ls1/a/a/a/v0/d/a/d0/n/m;

    invoke-static {v2, v3}, Ls1/a/a/a/v0/f/d;->i3(Ljava/util/Collection;Ls1/z/b/l;)Ljava/util/Collection;

    move-result-object v3

    .line 19
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 20
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 21
    :cond_3
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$i;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    invoke-virtual {v1, v0, p1}, Ls1/a/a/a/v0/d/a/d0/n/k;->l(Ljava/util/Collection;Ls1/a/a/a/v0/f/e;)V

    .line 22
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$i;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 23
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 24
    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 25
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->r:Ls1/a/a/a/v0/d/a/g0/l;

    .line 26
    invoke-virtual {v1, p1, v0}, Ls1/a/a/a/v0/d/a/g0/l;->a(Ls1/a/a/a/v0/d/a/d0/h;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
