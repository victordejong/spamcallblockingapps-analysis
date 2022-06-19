.class public final Lg/g/a/a/j/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/google/gson/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "client_info_provider"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lg/g/a/a/j/c/d;->a:Landroid/content/SharedPreferences;

    .line 3
    new-instance p1, Lcom/google/gson/f;

    invoke-direct {p1}, Lcom/google/gson/f;-><init>()V

    iput-object p1, p0, Lg/g/a/a/j/c/d;->b:Lcom/google/gson/f;

    return-void
.end method

.method public static final synthetic a(Lg/g/a/a/j/c/d;)Lcom/google/gson/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/j/c/d;->b:Lcom/google/gson/f;

    return-object p0
.end method

.method public static final synthetic b(Lg/g/a/a/j/c/d;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/a/j/c/d;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private final g(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/j/c/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lg/g/a/a/j/c/d;->b:Lcom/google/gson/f;

    invoke-virtual {v1, p2}, Lcom/google/gson/f;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final c()Lg/g/a/a/j/c/c;
    .locals 4

    .line 1
    invoke-static {p0}, Lg/g/a/a/j/c/d;->a(Lg/g/a/a/j/c/d;)Lcom/google/gson/f;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lg/g/a/a/j/c/d;->b(Lg/g/a/a/j/c/d;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "api_info_provider_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-class v2, Lg/g/a/a/j/c/c;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/j/c/c;

    return-object v0
.end method

.method public final d()Lg/g/a/a/j/c/a;
    .locals 4

    .line 1
    invoke-static {p0}, Lg/g/a/a/j/c/d;->a(Lg/g/a/a/j/c/d;)Lcom/google/gson/f;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lg/g/a/a/j/c/d;->b(Lg/g/a/a/j/c/d;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "id_provider_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-class v2, Lg/g/a/a/j/c/a;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/j/c/a;

    return-object v0
.end method

.method public final e()Lg/g/a/a/j/c/b;
    .locals 4

    .line 1
    invoke-static {p0}, Lg/g/a/a/j/c/d;->a(Lg/g/a/a/j/c/d;)Lcom/google/gson/f;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lg/g/a/a/j/c/d;->b(Lg/g/a/a/j/c/d;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "product_info_provider_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-class v2, Lg/g/a/a/j/c/b;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/j/c/b;

    return-object v0
.end method

.method public final f()Lg/g/a/a/j/c/f;
    .locals 4

    .line 1
    invoke-static {p0}, Lg/g/a/a/j/c/d;->a(Lg/g/a/a/j/c/d;)Lcom/google/gson/f;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lg/g/a/a/j/c/d;->b(Lg/g/a/a/j/c/d;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "user_info_provider_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-class v2, Lg/g/a/a/j/c/f;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/j/c/f;

    return-object v0
.end method

.method public final h(Lg/g/a/a/j/c/c;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api_info_provider_key"

    .line 1
    invoke-direct {p0, v0, p1}, Lg/g/a/a/j/c/d;->g(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Lg/g/a/a/j/c/a;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id_provider_key"

    .line 1
    invoke-direct {p0, v0, p1}, Lg/g/a/a/j/c/d;->g(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Lg/g/a/a/j/c/b;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "product_info_provider_key"

    .line 1
    invoke-direct {p0, v0, p1}, Lg/g/a/a/j/c/d;->g(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Lg/g/a/a/j/c/f;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user_info_provider_key"

    .line 1
    invoke-direct {p0, v0, p1}, Lg/g/a/a/j/c/d;->g(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
