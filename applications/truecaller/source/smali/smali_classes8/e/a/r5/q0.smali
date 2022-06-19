.class public final Le/a/r5/q0;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/r5/p0;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    const-string v1, "tc_wvm_settings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/r5/q0;->b:I

    .line 3
    iput-object v1, p0, Le/a/r5/q0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F0()J
    .locals 3

    const-string v0, "whoViewedMeLastRevealProfileId"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d2(J)V
    .locals 1

    const-string v0, "whoViewedMeLastRevealTimestamp"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/r5/q0;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r5/q0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m2()J
    .locals 3

    const-string v0, "whoViewedMeLastRevealTimestamp"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    const-string v1, "tc_premium_settings"

    .line 1
    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "context.getSharedPrefere\u2026s\", Context.MODE_PRIVATE)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "WHO_VIEWED_ME_LAUNCH_CONTEXT"

    .line 2
    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Le/a/p5/t0/a;->l3(Landroid/content/SharedPreferences;Ljava/util/Set;Z)I

    :cond_0
    return-void
.end method

.method public s0(Lcom/truecaller/whoviewedme/WhoViewedMeLaunchContext;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WHO_VIEWED_ME_LAUNCH_CONTEXT"

    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public z2(J)V
    .locals 1

    const-string v0, "whoViewedMeLastRevealProfileId"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method
