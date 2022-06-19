.class public final Le/a/q5/j;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/q5/i;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    const-string v1, "tc_whatsapp_caller_id_settings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/q5/j;->b:I

    .line 3
    iput-object v1, p0, Le/a/q5/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public J1()Z
    .locals 1

    const-string v0, "KEY_FIRST_USE_REGISTERED"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public T(Z)V
    .locals 1

    const-string v0, "KEY_FIRST_USE_REGISTERED"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    const-string v0, "KEY_IS_NEW_FEATURE_SPLAT_DISMISSED"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public clear()V
    .locals 6

    const-string v0, "KEY_NOTIFICATIONS_SHOWN_COUNT"

    const-string v1, "KEY_NEW_FEATURE_PROMO_LAST_DISMISSED"

    const-string v2, "KEY_IS_NEW_FEATURE_SPLAT_DISMISSED"

    const-string v3, "KEY_IS_FEATURE_HIGHLIGHTED_VIA_SCROLL"

    const-string v4, "KEY_FIRST_USE_REGISTERED"

    const-string v5, "KEY_IS_ACTION_ON_HOME_TAB_PROMO_TAKEN"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v1}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    const-string v0, "KEY_IS_FEATURE_HIGHLIGHTED_VIA_SCROLL"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public e()Z
    .locals 1

    const-string v0, "KEY_IS_NEW_FEATURE_SPLAT_DISMISSED"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f(J)V
    .locals 1

    const-string v0, "KEY_NEW_FEATURE_PROMO_LAST_DISMISSED"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public g()J
    .locals 3

    const-string v0, "KEY_NEW_FEATURE_PROMO_LAST_DISMISSED"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    const-string v0, "KEY_IS_ACTION_ON_HOME_TAB_PROMO_TAKEN"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const-string v0, "KEY_IS_FEATURE_HIGHLIGHTED_VIA_SCROLL"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 1

    const-string v0, "KEY_IS_ACTION_ON_HOME_TAB_PROMO_TAKEN"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/q5/j;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q5/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 2

    const-string v0, "KEY_NOTIFICATIONS_SHOWN_COUNT"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    const-string v0, "KEY_NOTIFICATIONS_SHOWN_COUNT"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    return-void
.end method
