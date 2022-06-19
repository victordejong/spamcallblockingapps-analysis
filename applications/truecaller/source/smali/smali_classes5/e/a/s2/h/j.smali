.class public final Le/a/s2/h/j;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/s2/h/e;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    const-string v1, "announce_caller_id_settings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/s2/h/j;->b:I

    .line 3
    iput-object v1, p0, Le/a/s2/h/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public N0(Z)V
    .locals 1

    const-string v0, "activate_for_phone_book_only"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public W2()Z
    .locals 1

    const-string v0, "announce_call_enabled"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 1

    const-string v0, "isNewFeatureSplatDismissed"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    const-string v0, "isFeatureHighlightedViaScroll"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public d1()Z
    .locals 1

    const-string v0, "activate_for_phone_book_only"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    const-string v0, "isNewFeatureSplatDismissed"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e0(Z)V
    .locals 1

    const-string v0, "activate_for_headset"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public f(J)V
    .locals 1

    const-string v0, "newFeaturePromoLastDismissed"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public g()J
    .locals 3

    const-string v0, "newFeaturePromoLastDismissed"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g3()Z
    .locals 2

    const-string v0, "activate_for_headset"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    const-string v0, "isActionOnHomeTabPromoTaken"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    const-string v0, "isFeatureHighlightedViaScroll"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 1

    const-string v0, "isActionOnHomeTabPromoTaken"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/s2/h/j;->b:I

    return v0
.end method

.method public k(Z)V
    .locals 1

    const-string v0, "announce_call_enabled"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s2/h/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o2()Z
    .locals 2

    const-string v0, "activate_for_voip_calls"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public r()Z
    .locals 1

    const-string v0, "announce_call_enabled_once"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public r2(Z)V
    .locals 1

    const-string v0, "announce_call_enabled_once"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public z0(Z)V
    .locals 1

    const-string v0, "activate_for_voip_calls"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
