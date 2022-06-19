.class public final Le/a/l/c/n/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/n/d;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;",
            "Le/a/l/c/n/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;",
            "Lw3/b/a/p;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/l/c2;


# direct methods
.method public constructor <init>(Ljava/util/Set;Le/a/l/p2/v0;Le/a/l/c2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Le/a/l/c/n/f;",
            ">;",
            "Le/a/l/p2/v0;",
            "Le/a/l/c2;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "managerSet"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/l/c/n/e;->c:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/c/n/e;->d:Le/a/l/c2;

    const/16 p2, 0xa

    .line 2
    invoke-static {p1, p2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-static {p3}, Le/q/f/a/d/a;->Y1(I)I

    move-result p3

    const/16 v0, 0x10

    if-ge p3, v0, :cond_0

    move p3, v0

    .line 3
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    move-object v3, v2

    check-cast v3, Le/a/l/c/n/f;

    .line 6
    invoke-interface {v3}, Le/a/l/c/n/f;->getType()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    iput-object v1, p0, Le/a/l/c/n/e;->a:Ljava/util/Map;

    .line 8
    invoke-static {p1, p2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Le/q/f/a/d/a;->Y1(I)I

    move-result p2

    if-ge p2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, p2

    .line 9
    :goto_1
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 11
    check-cast p3, Le/a/l/c/n/f;

    .line 12
    invoke-interface {p3}, Le/a/l/c/n/f;->getType()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    move-result-object v0

    invoke-interface {p3}, Le/a/l/c/n/f;->d()Lw3/b/a/p;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_3
    iput-object p2, p0, Le/a/l/c/n/e;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/c/n/e;->a:Ljava/util/Map;

    invoke-virtual {p0}, Le/a/l/c/n/e;->j()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/n/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/c/n/f;->a()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/c/n/e;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/l/c/n/e;->a:Ljava/util/Map;

    invoke-virtual {p0}, Le/a/l/c/n/e;->j()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/n/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/l/c/n/f;->b()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l/c/a/p;",
            ">;)",
            "Ljava/util/List<",
            "Le/a/l/c/a/p;",
            ">;"
        }
    .end annotation

    const-string v0, "cards"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Le/a/l/c/a/p;

    .line 2
    iget-object v3, v3, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 3
    invoke-static {v3}, Le/a/c/p/a;->g3(Le/a/l/c/a/t;)Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Le/a/l/c/n/e;->h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_1
    check-cast v1, Le/a/l/c/a/p;

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {p1, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    return-object p1
.end method

.method public d()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/l/c/n/e;->j()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Le/a/l/c/n/e;->h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Le/a/l/c/n/e;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/n/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/l/c/n/f;->i()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :cond_1
    return v1
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/l/c/n/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/l/c/n/e;->d:Le/a/l/c2;

    invoke-virtual {p0}, Le/a/l/c/n/e;->j()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Le/a/l/c2;->c0(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/l/c/n/e;->a:Ljava/util/Map;

    invoke-virtual {p0}, Le/a/l/c/n/e;->j()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/n/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/l/c/n/f;->j()V

    :cond_1
    return-void
.end method

.method public f()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/l/c/n/e;->j()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Le/a/l/c/n/e;->h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public g(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)V
    .locals 1

    const-string v0, "newFeatureLabelType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/c/n/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/n/f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/l/c/n/f;->h()V

    :cond_0
    return-void
.end method

.method public h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z
    .locals 2

    const-string v0, "cardType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/l/c/n/e;->j()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/l/c/n/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/n/f;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/l/c/n/f;->f()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public i(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Le/a/l/v2/i/b/a;
    .locals 1

    const-string v0, "cardType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/c/n/e;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/n/f;

    invoke-virtual {p0, p1}, Le/a/l/c/n/e;->h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z

    move-result p1

    invoke-interface {v0, p1}, Le/a/l/c/n/f;->g(Z)Le/a/l/v2/i/b/a;

    move-result-object p1

    return-object p1
.end method

.method public final j()Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/l/c/n/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    iget-object v4, p0, Le/a/l/c/n/e;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/l/c/n/f;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Le/a/l/c/n/f;->e()Z

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    .line 7
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw3/b/a/p;

    .line 11
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 12
    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw3/b/a/p;

    .line 14
    invoke-interface {v3, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_6

    move-object v1, v4

    move-object v3, v5

    .line 15
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 16
    :goto_2
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    :cond_7
    return-object v2
.end method
