.class public Lcom/hiya/stingray/q/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/d/c;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/d/c;)V
    .locals 1

    const-string v0, "encryptedSharedPreferences"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "DEBUG_PREMIUM_OVERRIDE"

    invoke-interface {v0, v1}, Lcom/hiya/stingray/q/d/c;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "DEBUG_SELECT_OVERRIDE"

    invoke-interface {v0, v1}, Lcom/hiya/stingray/q/d/c;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "PREMIUM_PROMO_DURATION"

    invoke-interface {v0, v1}, Lcom/hiya/stingray/q/d/c;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "PREMIUM_PROMO_TIME_STARTED"

    invoke-interface {v0, v1}, Lcom/hiya/stingray/q/d/c;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/hiya/stingray/manager/u3$m;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "PURCHASES_CACHE"

    invoke-interface {v0, v1}, Lcom/hiya/stingray/q/d/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return-object v3

    .line 3
    :cond_2
    new-instance v2, Lcom/hiya/stingray/q/d/e$a;

    invoke-direct {v2}, Lcom/hiya/stingray/q/d/e$a;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4
    :try_start_0
    invoke-static {v0, v2}, Lcom/hiya/stingray/util/p;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/u3$m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to convert Json to PurchasesCache."

    .line 5
    invoke-static {v0, v2, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v3}, Lcom/hiya/stingray/q/d/e;->l(Lcom/hiya/stingray/manager/u3$m;)V

    :goto_2
    return-object v3
.end method

.method public final f()Lcom/hiya/stingray/manager/a4$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "SELECT_INFO"

    invoke-interface {v0, v1}, Lcom/hiya/stingray/q/d/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return-object v3

    .line 3
    :cond_2
    new-instance v2, Lcom/hiya/stingray/q/d/e$b;

    invoke-direct {v2}, Lcom/hiya/stingray/q/d/e$b;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4
    :try_start_0
    invoke-static {v0, v2}, Lcom/hiya/stingray/util/p;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/a4$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to convert Json to SelectInfoCache."

    .line 5
    invoke-static {v0, v2, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v3}, Lcom/hiya/stingray/q/d/e;->m(Lcom/hiya/stingray/manager/a4$a;)V

    :goto_2
    return-object v3
.end method

.method public final g()Lcom/hiya/stingray/t/d1;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "subscription_info"

    invoke-interface {v0, v1}, Lcom/hiya/stingray/q/d/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return-object v3

    .line 3
    :cond_2
    new-instance v2, Lcom/hiya/stingray/q/d/e$c;

    invoke-direct {v2}, Lcom/hiya/stingray/q/d/e$c;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 4
    :try_start_0
    invoke-static {v0, v2}, Lcom/hiya/stingray/util/p;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/t/d1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to convert Json to SubscriptionInfo."

    .line 5
    invoke-static {v0, v2, v1}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, v3}, Lcom/hiya/stingray/q/d/e;->n(Lcom/hiya/stingray/t/d1;)V

    :goto_2
    return-object v3
.end method

.method public final h(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "DEBUG_PREMIUM_OVERRIDE"

    invoke-interface {v0, v1, p1}, Lcom/hiya/stingray/q/d/c;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final i(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "DEBUG_SELECT_OVERRIDE"

    invoke-interface {v0, v1, p1}, Lcom/hiya/stingray/q/d/c;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final j(Ljava/lang/Long;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "PREMIUM_PROMO_DURATION"

    invoke-interface {v0, v1, p1}, Lcom/hiya/stingray/q/d/c;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public final k(Ljava/lang/Long;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "PREMIUM_PROMO_TIME_STARTED"

    invoke-interface {v0, v1, p1}, Lcom/hiya/stingray/q/d/c;->a(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public final l(Lcom/hiya/stingray/manager/u3$m;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "PURCHASES_CACHE"

    invoke-static {p1}, Lcom/hiya/stingray/util/p;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hiya/stingray/q/d/c;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to PurchasesCache to shared preferences."

    .line 2
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final m(Lcom/hiya/stingray/manager/a4$a;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "SELECT_INFO"

    invoke-static {p1}, Lcom/hiya/stingray/util/p;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hiya/stingray/q/d/c;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to SelectInfoCache to shared preferences."

    .line 2
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final n(Lcom/hiya/stingray/t/d1;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hiya/stingray/q/d/e;->a:Lcom/hiya/stingray/q/d/c;

    const-string v1, "subscription_info"

    invoke-static {p1}, Lcom/hiya/stingray/util/p;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hiya/stingray/q/d/c;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to SubscriptionInfo to shared preferences."

    .line 2
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
