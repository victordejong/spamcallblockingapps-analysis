.class public final Le/a/x3/f;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/x3/e;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    const-string v1, "forced_update_settings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/x3/f;->b:I

    .line 3
    iput-object v1, p0, Le/a/x3/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/x3/f;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/x3/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "tc.settings"

    .line 1
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string p1, "oldSharedPreferences"

    .line 2
    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "forcedUpdate_period"

    const-string p2, "forcedUpdate_lastDismissed"

    const-string v0, "forcedUpdate_updateType"

    const-string v1, "forcedUpdate_link"

    const-string v3, "forcedUpdate_appVersion"

    .line 3
    filled-new-array {p1, p2, v0, v1, v3}, [Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 5
    invoke-static/range {v1 .. v6}, Le/a/p5/t0/a;->m3(Le/a/p5/t0/a;Landroid/content/SharedPreferences;Ljava/util/Set;ZILjava/lang/Object;)I

    :cond_0
    return-void
.end method
