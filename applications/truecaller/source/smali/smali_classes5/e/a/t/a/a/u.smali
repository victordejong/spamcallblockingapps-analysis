.class public final Le/a/t/a/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/a/t;


# instance fields
.field public a:Lx3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/b<",
            "Lcom/tenor/android/core/response/impl/GifsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public final c:Ls1/g;

.field public final d:Landroid/content/Context;

.field public final e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t/a/a/u;->d:Landroid/content/Context;

    iput-boolean p2, p0, Le/a/t/a/a/u;->e:Z

    const-string p1, ""

    .line 2
    iput-object p1, p0, Le/a/t/a/a/u;->b:Ljava/lang/String;

    .line 3
    new-instance p1, Le/a/t/a/a/u$a;

    invoke-direct {p1, p0}, Le/a/t/a/a/u$a;-><init>(Le/a/t/a/a/u;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/t/a/a/u;->c:Ls1/g;

    return-void
.end method

.method public static f(Le/a/t/a/a/u;Ljava/lang/String;I)Ljava/util/Map;
    .locals 1

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "high"

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object p0, p0, Le/a/t/a/a/u;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/tenor/android/core/network/ApiClient;->getServiceIds(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    const-string p2, "ApiClient.getServiceIds(context)"

    invoke-static {p0, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Ls1/k;

    const-string v0, "contentfilter"

    invoke-direct {p2, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {p0, p2}, Ls1/u/i;->p0(Ljava/util/Map;Ls1/k;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/a/t/a/a/u;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/t/a/a/u;->d:Landroid/content/Context;

    const-string v2, "emoji"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "tenor_user_consent"

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public b(Ljava/lang/String;IZLe/a/t/a/a/s;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Le/a/t/a/a/s<",
            "Ljava/util/List<",
            "Le/a/t/a/a/f;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t/a/a/u;->a:Lx3/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lx3/b;->cancel()V

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ""

    .line 2
    iput-object p3, p0, Le/a/t/a/a/u;->b:Ljava/lang/String;

    .line 3
    :cond_1
    iget-object p3, p0, Le/a/t/a/a/u;->c:Ls1/g;

    invoke-interface {p3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/tenor/android/core/network/IApiClient;

    const/4 p3, 0x1

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, p3}, Le/a/t/a/a/u;->f(Le/a/t/a/a/u;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Le/a/t/a/a/u;->b:Ljava/lang/String;

    const-string v5, "basic"

    const-string v6, "all"

    move-object v2, p1

    move v3, p2

    .line 5
    invoke-interface/range {v0 .. v6}, Lcom/tenor/android/core/network/IApiClient;->search(Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object p1

    const-string p2, "apiClient.search(\n      \u2026tRatioRange.ALL\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/t/a/a/u;->a:Lx3/b;

    .line 6
    new-instance p2, Le/a/t/a/a/u$c;

    invoke-direct {p2, p0, p4}, Le/a/t/a/a/u$c;-><init>(Le/a/t/a/a/u;Le/a/t/a/a/s;)V

    invoke-interface {p1, p2}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method

.method public c(ILe/a/t/a/a/s;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Le/a/t/a/a/s<",
            "Ljava/util/List<",
            "Le/a/t/a/a/f;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t/a/a/u;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tenor/android/core/network/IApiClient;

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {p0, v0, v2}, Le/a/t/a/a/u;->f(Le/a/t/a/a/u;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ""

    const-string v5, "basic"

    const-string v6, "all"

    .line 3
    invoke-interface/range {v1 .. v6}, Lcom/tenor/android/core/network/IApiClient;->getTrending(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object p1

    .line 4
    new-instance v0, Le/a/t/a/a/u$b;

    invoke-direct {v0, p2}, Le/a/t/a/a/u$b;-><init>(Le/a/t/a/a/s;)V

    invoke-interface {p1, v0}, Lx3/b;->enqueue(Lx3/d;)V

    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t/a/a/u;->d:Landroid/content/Context;

    const-string v1, "emoji"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tenor_user_consent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "gifId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/t/a/a/u;->d:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/tenor/android/core/network/ApiClient;->registerShare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    return-void
.end method
