.class public final Le/a/l/p2/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/m0;


# instance fields
.field public final a:J

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Le/m/e/k;

.field public final d:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/q/l0;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/l/p2/n0;->d:Le/a/b0/q/l0;

    .line 2
    sget-object p2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x6

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Le/a/l/p2/n0;->a:J

    const-string p2, "premium_products_cache"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Le/a/l/p2/n0;->b:Landroid/content/SharedPreferences;

    .line 4
    new-instance p1, Le/m/e/l;

    invoke-direct {p1}, Le/m/e/l;-><init>()V

    .line 5
    const-class p2, Lw3/b/a/b;

    new-instance v0, Le/a/l/p2/e;

    invoke-direct {v0}, Le/a/l/p2/e;-><init>()V

    invoke-virtual {p1, p2, v0}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    .line 6
    invoke-virtual {p1}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object p1

    iput-object p1, p0, Le/a/l/p2/n0;->c:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l/p2/k1;",
            ">;)V"
        }
    .end annotation

    const-string v0, "products"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/p2/n0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_timestamp"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/l/p2/n0;->c:Le/m/e/k;

    invoke-virtual {v1, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "list"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/l/p2/k1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/n0;->b:Landroid/content/SharedPreferences;

    const-string v1, "last_timestamp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "list"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/l/p2/n0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/l/p2/n0;->d:Le/a/b0/q/l0;

    iget-object v5, p0, Le/a/l/p2/n0;->b:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v5, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iget-wide v7, p0, Le/a/l/p2/n0;->a:J

    invoke-virtual {v0, v5, v6, v7, v8}, Le/a/b0/q/l0;->b(JJ)Z

    move-result v0

    xor-int/2addr v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 3
    :cond_2
    iget-object v0, p0, Le/a/l/p2/n0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v2, "prefs.getString(PREFS_LIST, null) ?: return null"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Le/a/l/p2/n0;->c:Le/m/e/k;

    const-string v5, "gson"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v5, Le/a/l/p2/n0$a;

    invoke-direct {v5}, Le/a/l/p2/n0$a;-><init>()V

    invoke-virtual {v5}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    const-string v6, "object : TypeToken<T>() {}.type"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0, v5}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "this.fromJson(json, typeToken<T>())"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Le/a/l/p2/k1;

    .line 9
    invoke-virtual {v6}, Le/a/l/p2/k1;->f()Le/a/l/p2/n1;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Le/a/l/p2/n1;->b()Lw3/b/a/b;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lw3/b/a/e0/c;->j()Z

    move-result v6

    if-ne v6, v4, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_3

    :cond_5
    move-object v5, v1

    :goto_3
    if-eqz v5, :cond_6

    .line 10
    invoke-virtual {p0}, Le/a/l/p2/n0;->clear()V

    return-object v1

    :cond_6
    return-object v0

    :cond_7
    return-object v1
.end method

.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/p2/n0;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_timestamp"

    .line 2
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "list"

    .line 3
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
