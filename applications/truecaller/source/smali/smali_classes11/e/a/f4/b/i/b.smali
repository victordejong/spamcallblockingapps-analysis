.class public final Le/a/f4/b/i/b;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/f4/b/i/a;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "sharedPrefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/f4/b/i/b;->b:I

    const-string p1, "network-advanced"

    .line 3
    iput-object p1, p0, Le/a/f4/b/i/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/f4/b/i/b;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f4/b/i/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/SharedPreferences;

    const-string v1, "core_settings"

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "tc.settings"

    .line 2
    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 3
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-ge p1, v1, :cond_0

    const-string p1, "edgeLocationsExpiration"

    const-string v0, "edgeLocationsLastRequestTime"

    .line 4
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p2, p1}, Le/a/p5/t0/a;->p3(Ljava/util/List;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
