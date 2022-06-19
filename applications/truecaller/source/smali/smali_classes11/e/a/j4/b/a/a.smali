.class public abstract Le/a/j4/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/a/j4/b/b/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/j4/b/a/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/a;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    check-cast v0, Le/a/m0/c1/b0;

    const-string v1, "size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le/a/m0/c1/b0;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3
    invoke-virtual {v0}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/j4/b/b/d;

    add-int/lit8 v2, v2, 0x1

    const v4, 0x7fffffff

    .line 5
    rem-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {v3}, Le/a/j4/b/b/d;->b()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Le/a/j4/b/a/a;->c(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/a;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    check-cast v0, Le/a/m0/c1/b0;

    invoke-virtual {v0}, Le/a/m0/c1/b0;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public d(Ljava/lang/Class;I)Le/a/j4/b/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/j4/b/b/d;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Le/a/j4/b/a/a;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7fffffff

    rem-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    check-cast v0, Le/a/m0/c1/b0;

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Le/a/m0/c1/b0;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Le/a/j4/b/b/d;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method public e()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/a;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    check-cast v0, Le/a/m0/c1/b0;

    const-string v1, "size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le/a/m0/c1/b0;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public g()Landroid/content/SharedPreferences;
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/j4/b/a/a;->a:Landroid/content/Context;

    .line 3
    new-instance v2, Le/a/m0/c1/a0;

    invoke-direct {v2, v1, v0}, Le/a/m0/c1/a0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v3, Le/a/m0/c1/b0;

    invoke-direct {v3, v1, v0, v2}, Le/a/m0/c1/b0;-><init>(Landroid/content/Context;Ljava/lang/String;Le/a/m0/c1/b0$m;)V

    .line 5
    iget-object v1, v3, Le/a/m0/c1/b0;->e:Ljava/util/WeakHashMap;

    sget-object v4, Le/a/m0/c1/b0;->l:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Le/a/j4/b/a/a;->a:Landroid/content/Context;

    const-string v2, "TC.settings.3.0.beta5"

    invoke-static {v1, v2}, Le/a/m0/c1/b0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Le/a/j4/b/a/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8
    invoke-static {v0, v3}, Le/a/m0/c1/b0;->a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-object v3
.end method

.method public h()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/a;->e()I

    move-result v0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
