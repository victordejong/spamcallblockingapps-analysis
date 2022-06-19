.class public final Le/a/i5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le/a/i5/b;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/i5/d;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Le/a/i5/d;

.field public static d:Le/a/i5/d;

.field public static e:Le/a/i5/d;

.field public static f:Landroid/content/res/Configuration;

.field public static final g:Le/a/i5/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Le/a/i5/a;->b:Ljava/util/Map;

    return-void
.end method

.method public static final a()Le/a/i5/d;
    .locals 7

    .line 1
    sget-object v0, Le/a/i5/a;->a:Le/a/i5/b;

    const/4 v1, 0x0

    const-string v2, "themeSettings"

    if-eqz v0, :cond_a

    sget-object v3, Le/a/i5/a;->c:Le/a/i5/d;

    const-string v4, "inheritBright"

    if-eqz v3, :cond_9

    .line 2
    iget-object v3, v3, Le/a/i5/d;->a:Ljava/lang/String;

    const-string v5, "currentTheme"

    .line 3
    invoke-interface {v0, v5, v3}, Le/a/i5/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v6, 0x136766de

    if-eq v3, v6, :cond_1

    const v6, 0x2ae9545a

    if-eq v3, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "INHERIT_DARK"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    const-string v3, "INHERIT_BRIGHT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 5
    sget-object v0, Le/a/i5/a;->f:Landroid/content/res/Configuration;

    if-eqz v0, :cond_5

    invoke-static {v0}, Le/a/i5/a;->g(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Le/a/i5/a;->d:Le/a/i5/d;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "inheritDark"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_4
    invoke-static {}, Le/a/i5/a;->c()Le/a/i5/d;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, "currentConfig"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_6
    sget-object v0, Le/a/i5/a;->a:Le/a/i5/b;

    if-eqz v0, :cond_8

    sget-object v2, Le/a/i5/a;->c:Le/a/i5/d;

    if-eqz v2, :cond_7

    .line 10
    iget-object v1, v2, Le/a/i5/d;->a:Ljava/lang/String;

    .line 11
    invoke-interface {v0, v5, v1}, Le/a/i5/b;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/i5/a;->d(Ljava/lang/String;)Le/a/i5/d;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_7
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_9
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public static final b()Le/a/i5/d;
    .locals 1

    .line 1
    sget-object v0, Le/a/i5/a;->e:Le/a/i5/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "darkTheme"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final c()Le/a/i5/d;
    .locals 1

    .line 1
    sget-object v0, Le/a/i5/a;->c:Le/a/i5/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "inheritBright"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final d(Ljava/lang/String;)Le/a/i5/d;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/i5/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/i5/d;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Le/a/i5/a;->c:Le/a/i5/d;

    if-eqz p0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "inheritBright"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/i5/d;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/i5/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final f()Z
    .locals 3

    .line 1
    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    sget-object v1, Le/a/i5/a;->e:Le/a/i5/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    sget-object v1, Le/a/i5/a;->d:Le/a/i5/d;

    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "inheritDark"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    const-string v0, "darkTheme"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public static final g(Landroid/content/res/Configuration;)Z
    .locals 1

    const-string v0, "configuration"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final h()Z
    .locals 3

    .line 1
    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    sget-object v1, Le/a/i5/a;->c:Le/a/i5/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    sget-object v1, Le/a/i5/a;->d:Le/a/i5/d;

    if-eqz v1, :cond_1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "inheritDark"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    const-string v0, "inheritBright"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public static final i(Le/a/i5/d;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/i5/a;->a:Le/a/i5/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Le/a/i5/d;->a:Ljava/lang/String;

    const-string v1, "currentTheme"

    .line 3
    invoke-interface {v0, v1, p0}, Le/a/i5/b;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "themeSettings"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final j(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/i5/a;->g(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2
    sget-object p0, Le/a/i5/a;->d:Le/a/i5/d;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "inheritDark"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 3
    :cond_1
    invoke-static {}, Le/a/i5/a;->c()Le/a/i5/d;

    move-result-object p0

    .line 4
    :goto_0
    invoke-static {p0}, Le/a/i5/a;->i(Le/a/i5/d;)V

    return-void
.end method
