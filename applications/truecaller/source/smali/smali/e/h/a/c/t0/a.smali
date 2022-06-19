.class public Le/h/a/c/t0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/t0/b;


# instance fields
.field public a:Le/h/a/c/t0/c;

.field public final b:Le/h/a/c/t0/f;

.field public final c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final d:Le/h/a/c/a1/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/a1/b;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/h/a/c/t0/a;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    new-instance v0, Le/h/a/c/t0/f;

    invoke-direct {v0, p1, p2, p3}, Le/h/a/c/t0/f;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;)V

    iput-object v0, p0, Le/h/a/c/t0/a;->b:Le/h/a/c/t0/f;

    .line 4
    iput-object p4, p0, Le/h/a/c/t0/a;->d:Le/h/a/c/a1/b;

    .line 5
    invoke-virtual {v0}, Le/h/a/c/t0/f;->d()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p3, Le/h/a/c/t0/c;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Le/h/a/c/t0/c;-><init>([Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigurableIdentityRepoPrefIdentitySet ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    const-string v3, "ON_USER_LOGIN"

    invoke-virtual {p2, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    .line 10
    new-instance v2, Le/h/a/c/t0/c;

    invoke-direct {v2, p1}, Le/h/a/c/t0/c;-><init>([Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConfigurableIdentityRepoConfigIdentitySet ["

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v4, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {p2, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p3}, Le/h/a/c/t0/c;->a()Z

    move-result p1

    const-string v4, "], [Config:"

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Le/h/a/c/t0/c;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3, v2}, Le/h/a/c/t0/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x213

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, -0x1

    .line 14
    invoke-static {p1, v6, v5}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object p1

    .line 15
    invoke-virtual {p4, p1}, Le/h/a/c/a1/b;->b(Le/h/a/c/a1/a;)V

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ConfigurableIdentityRepopushing error due to mismatch [Pref:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p4, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {p2, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ConfigurableIdentityRepoNo error found while comparing [Pref:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object p4, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {p2, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_0
    invoke-virtual {p3}, Le/h/a/c/t0/c;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iput-object p3, p0, Le/h/a/c/t0/a;->a:Le/h/a/c/t0/c;

    const-string p1, "ConfigurableIdentityRepoIdentity Set activated from Pref["

    .line 22
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p4, p0, Le/h/a/c/t0/a;->a:Le/h/a/c/t0/c;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object p4, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {p2, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v2}, Le/h/a/c/t0/c;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 25
    iput-object v2, p0, Le/h/a/c/t0/a;->a:Le/h/a/c/t0/c;

    const-string p1, "ConfigurableIdentityRepoIdentity Set activated from Config["

    .line 26
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p4, p0, Le/h/a/c/t0/a;->a:Le/h/a/c/t0/c;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    iget-object p4, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {p2, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_2
    new-instance p1, Le/h/a/c/t0/c;

    sget-object p4, Le/h/a/c/u;->b:Ljava/util/HashSet;

    invoke-direct {p1, p4}, Le/h/a/c/t0/c;-><init>(Ljava/util/HashSet;)V

    .line 29
    iput-object p1, p0, Le/h/a/c/t0/a;->a:Le/h/a/c/t0/c;

    const-string p1, "ConfigurableIdentityRepoIdentity Set activated from Default["

    .line 30
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p4, p0, Le/h/a/c/t0/a;->a:Le/h/a/c/t0/c;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object p4, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {p2, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_1
    invoke-virtual {p3}, Le/h/a/c/t0/c;->a()Z

    move-result p1

    if-nez p1, :cond_3

    .line 33
    iget-object p1, p0, Le/h/a/c/t0/a;->a:Le/h/a/c/t0/c;

    invoke-virtual {p1}, Le/h/a/c/t0/c;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object p2, v0, Le/h/a/c/t0/f;->b:Landroid/content/Context;

    iget-object p3, v0, Le/h/a/c/t0/f;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 35
    invoke-static {p2}, Ln3/g0/y;->u0(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 36
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p4, "SP_KEY_PROFILE_IDENTITIES"

    invoke-static {p3, p4}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 37
    :try_start_0
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :catchall_0
    iget-object p2, v0, Le/h/a/c/t0/f;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string p3, "saveIdentityKeysForAccount:"

    invoke-static {p3, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 39
    iget-object p4, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {p2, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2, p3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Le/h/a/c/t0/a;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string p3, "ConfigurableIdentityRepoSaving Identity Keys in Pref["

    invoke-static {p3, p1, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object p3, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    invoke-virtual {p2, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Le/h/a/c/t0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/t0/a;->a:Le/h/a/c/t0/c;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/t0/a;->a:Le/h/a/c/t0/c;

    .line 2
    iget-object v0, v0, Le/h/a/c/t0/c;->a:Ljava/util/HashSet;

    invoke-static {v0, p1}, Le/h/a/c/j0;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Le/h/a/c/t0/a;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigurableIdentityRepoisIdentity [Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , Value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v2, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    const-string v3, "ON_USER_LOGIN"

    invoke-virtual {v1, v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
