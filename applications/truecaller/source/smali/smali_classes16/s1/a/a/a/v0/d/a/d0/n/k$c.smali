.class public final Ls1/a/a/a/v0/d/a/d0/n/k$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


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
        "Ls1/z/b/a<",
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/b/k;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/k;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$c;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$c;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    sget-object v1, Ls1/a/a/a/v0/j/y/d;->n:Ls1/a/a/a/v0/j/y/d;

    sget-object v2, Ls1/a/a/a/v0/j/y/i;->a:Ls1/a/a/a/v0/j/y/i$a;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v2, Ls1/a/a/a/v0/j/y/i$a;->a:Ls1/z/b/l;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kindFilter"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nameFilter"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Ls1/a/a/a/v0/c/a/d;->e:Ls1/a/a/a/v0/c/a/d;

    .line 6
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    sget-object v5, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 8
    sget v5, Ls1/a/a/a/v0/j/y/d;->k:I

    .line 9
    invoke-virtual {v1, v5}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    invoke-virtual {v0, v1, v2}, Ls1/a/a/a/v0/d/a/d0/n/k;->h(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/f/e;

    .line 11
    invoke-interface {v2, v6}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 12
    invoke-virtual {v0, v6, v3}, Ls1/a/a/a/v0/j/y/j;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object v6

    invoke-static {v4, v6}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v5, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 14
    sget v5, Ls1/a/a/a/v0/j/y/d;->h:I

    .line 15
    invoke-virtual {v1, v5}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 16
    iget-object v5, v1, Ls1/a/a/a/v0/j/y/d;->b:Ljava/util/List;

    .line 17
    sget-object v6, Ls1/a/a/a/v0/j/y/c$a;->b:Ls1/a/a/a/v0/j/y/c$a;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 18
    invoke-virtual {v0, v1, v2}, Ls1/a/a/a/v0/d/a/d0/n/k;->i(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls1/a/a/a/v0/f/e;

    .line 19
    invoke-interface {v2, v6}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 20
    invoke-virtual {v0, v6, v3}, Ls1/a/a/a/v0/d/a/d0/n/k;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 21
    :cond_3
    sget-object v5, Ls1/a/a/a/v0/j/y/d;->u:Ls1/a/a/a/v0/j/y/d$a;

    .line 22
    sget v5, Ls1/a/a/a/v0/j/y/d;->i:I

    .line 23
    invoke-virtual {v1, v5}, Ls1/a/a/a/v0/j/y/d;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 24
    iget-object v5, v1, Ls1/a/a/a/v0/j/y/d;->b:Ljava/util/List;

    .line 25
    sget-object v6, Ls1/a/a/a/v0/j/y/c$a;->b:Ls1/a/a/a/v0/j/y/c$a;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 26
    invoke-virtual {v0, v1, v2}, Ls1/a/a/a/v0/d/a/d0/n/k;->n(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/f/e;

    .line 27
    invoke-interface {v2, v5}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 28
    invoke-virtual {v0, v5, v3}, Ls1/a/a/a/v0/d/a/d0/n/k;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 29
    :cond_5
    invoke-static {v4}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
