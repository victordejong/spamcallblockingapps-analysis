.class public final Le/a/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/b/b;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Le/a/c/s/a/e;

.field public final d:Le/a/c/b/e;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Le/a/c/s/a/e;Le/a/c/b/e;Ljava/util/List;)V
    .locals 2
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/inject/Named;
            value = "insights_remote_keys"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Le/a/c/s/a/e;",
            "Le/a/c/b/e;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "mPrefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureControlRestAdapter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsEnvironmentHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsRemoteKeys"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/b/c;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, Le/a/c/b/c;->c:Le/a/c/s/a/e;

    iput-object p3, p0, Le/a/c/b/c;->d:Le/a/c/b/e;

    iput-object p4, p0, Le/a/c/b/c;->e:Ljava/util/List;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    const/16 p2, 0xa

    invoke-static {p4, p2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-static {p2}, Le/q/f/a/d/a;->Y1(I)I

    move-result p2

    const/16 p3, 0x10

    if-ge p2, p3, :cond_0

    move p2, p3

    :cond_0
    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 4
    move-object p4, p3

    check-cast p4, Ljava/lang/String;

    .line 5
    iget-object v0, p0, Le/a/c/b/c;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {p1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 7
    iput-object p1, p0, Le/a/c/b/c;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "remoteKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/b/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "remoteKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/b/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/network/adapter/CountryFeature;",
            ">;)V"
        }
    .end annotation

    const-string v0, "features"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/truecaller/insights/network/adapter/CountryFeature;

    .line 3
    iget-object v3, p0, Le/a/c/b/c;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/truecaller/insights/network/adapter/CountryFeature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/network/adapter/CountryFeature;

    .line 5
    iget-object v1, p0, Le/a/c/b/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/truecaller/insights/network/adapter/CountryFeature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/truecaller/insights/network/adapter/CountryFeature;->isActive()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    iget-object v1, p0, Le/a/c/b/c;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/truecaller/insights/network/adapter/CountryFeature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/truecaller/insights/network/adapter/CountryFeature;->isActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/b/c$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/b/c$a;

    iget v1, v0, Le/a/c/b/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/b/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/b/c$a;

    invoke-direct {v0, p0, p1}, Le/a/c/b/c$a;-><init>(Le/a/c/b/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/b/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/b/c$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/c/b/c$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/b/c;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/b/c;->d:Le/a/c/b/e;

    invoke-interface {p1}, Le/a/c/b/e;->d()Z

    move-result p1

    if-nez p1, :cond_4

    .line 5
    :try_start_1
    iget-object p1, p0, Le/a/c/b/c;->c:Le/a/c/s/a/e;

    iput-object p0, v0, Le/a/c/b/c$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/b/c$a;->e:I

    check-cast p1, Le/a/c/s/a/f;

    .line 6
    iget-object v2, p1, Le/a/c/s/a/f;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/s/a/f$a;

    .line 7
    iget-object v3, p1, Le/a/c/s/a/f;->b:Le/a/c/b/e;

    invoke-interface {v3}, Le/a/c/b/e;->f()Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object p1, p1, Le/a/c/s/a/f;->b:Le/a/c/b/e;

    invoke-interface {p1}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-interface {v2, v3, p1, v0}, Le/a/c/s/a/f$a;->a(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 10
    :goto_1
    check-cast p1, Lcom/truecaller/insights/network/adapter/InsightsCountryFeatures;

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/insights/network/adapter/InsightsCountryFeatures;->getFeatures()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/c/b/c;->c(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 13
    :cond_4
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
