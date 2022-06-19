.class public final Ls1/a/a/a/v0/d/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ls1/a/a/a/v0/b/b;)Z
    .locals 4

    const-string v0, "callableMemberDescriptor"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/a/g;->e:Ls1/a/a/a/v0/d/a/g;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/d/a/g;->d:Ljava/util/Set;

    .line 3
    invoke-interface {p0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    sget-object v0, Ls1/a/a/a/v0/d/a/g;->c:Ljava/util/Set;

    .line 5
    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->d(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/b;

    move-result-object v2

    invoke-static {v0, v2}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Ls1/a/a/a/v0/a/g;->z(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "overriddenDescriptors"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/b;

    const-string v3, "it"

    .line 10
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/d/a/i;->a(Ls1/a/a/a/v0/b/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method
