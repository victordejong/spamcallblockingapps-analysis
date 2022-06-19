.class public final Le/a/b4/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b4/a/d;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b4/a/e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/a/b4/a/c;
    .locals 5

    const-string v0, "lang"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/b4/a/c;->h:Le/a/b4/a/c$a;

    iget-object v1, p0, Le/a/b4/a/e;->a:Landroid/content/Context;

    .line 2
    monitor-enter v0

    :try_start_0
    const-string v2, "lang"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "auto"

    .line 3
    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 4
    sget-object p1, Le/a/b4/a/c;->e:Ls1/z/b/a;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "applicationLocale().language"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "applicationLocale"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    sget-object v2, Le/a/b4/a/c;->d:Ljava/util/Map;

    .line 8
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b4/a/c;

    if-nez v4, :cond_4

    const/4 v4, 0x2

    .line 9
    invoke-static {p1, v3, v4}, Le/a/c/p/a;->K(Ljava/lang/String;Ls1/z/b/a;I)Le/a/b4/a/c;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v4

    :cond_2
    if-eqz v3, :cond_3

    move-object v4, v3

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v0, v1}, Le/a/b4/a/c$a;->a(Landroid/content/Context;)Le/a/b4/a/c;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_4
    :goto_1
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public b()Le/a/b4/a/c;
    .locals 2

    .line 1
    sget-object v0, Le/a/b4/a/c;->h:Le/a/b4/a/c$a;

    iget-object v1, p0, Le/a/b4/a/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Le/a/b4/a/c$a;->a(Landroid/content/Context;)Le/a/b4/a/c;

    move-result-object v0

    return-object v0
.end method
