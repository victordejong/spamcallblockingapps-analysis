.class public final Le/a/x/x;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/x/w;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/c0;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pretend_call_settings"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p2, p0, Le/a/x/x;->d:Le/a/p5/c0;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/x/x;->b:I

    .line 3
    iput-object v0, p0, Le/a/x/x;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public D1()Z
    .locals 2

    const-string v0, "firstCallScheduled"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public I(Z)V
    .locals 1

    const-string v0, "firstCallScheduled"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public S0()Ljava/lang/String;
    .locals 1

    const-string v0, "profileUri"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S2(J)V
    .locals 1

    const-string v0, "nextScheduledMillis"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public V0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/x/x;->d:Le/a/p5/c0;

    sget v1, Lcom/truecaller/ghost_call/R$string;->PretendCallDefaultCallerName:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026endCallDefaultCallerName)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "profileName"

    invoke-virtual {p0, v1, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "profileUri"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Z1()I
    .locals 2

    const-string v0, "delayDuration"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

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

.method public clear()V
    .locals 1

    const-string v0, "phoneNumber"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    const-string v0, "profileName"

    .line 2
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    const-string v0, "profileUri"

    .line 3
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    const-string v0, "delayDuration"

    .line 4
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    const-string v0, "nextScheduledMillis"

    .line 5
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    const-string v0, "firstCallScheduled"

    .line 6
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    const-string v0, "newFeaturePromoLastDismissed"

    .line 7
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    const-string v0, "isNewFeatureSplatDismissed"

    .line 8
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    const-string v0, "isFeatureHighlightedViaScroll"

    .line 9
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    const-string v0, "isActionOnHomeTabPromoTaken"

    .line 10
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    const-string v0, "isFeatureHighlightedViaScroll"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
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

.method public h()Z
    .locals 2

    const-string v0, "isActionOnHomeTabPromoTaken"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h0(I)V
    .locals 1

    const-string v0, "delayDuration"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    return-void
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
    iget v0, p0, Le/a/x/x;->b:I

    return v0
.end method

.method public k1()J
    .locals 3

    const-string v0, "nextScheduledMillis"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/x/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProfileName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileName"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 2

    const-string v0, "phoneNumber"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
