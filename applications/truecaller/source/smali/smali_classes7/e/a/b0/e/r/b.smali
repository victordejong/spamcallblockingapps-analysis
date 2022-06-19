.class public final Le/a/b0/e/r/b;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/b0/e/r/a;


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

    const/4 p1, 0x7

    .line 2
    iput p1, p0, Le/a/b0/e/r/b;->b:I

    const-string p1, "account"

    .line 3
    iput-object p1, p0, Le/a/b0/e/r/b;->c:Ljava/lang/String;

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
    iget v0, p0, Le/a/b0/e/r/b;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/e/r/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/content/SharedPreferences;

    const-string v2, "core_settings"

    const/4 v3, 0x0

    .line 1
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "tc.settings"

    .line 2
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 3
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-ge p1, v0, :cond_0

    const-string v0, "accountAutobackupLogInfo"

    const-string v1, "accountFileWasBackedUpByAutobackup"

    const-string v2, "accountFileWasRestoredByAutobackup"

    const-string v3, "accountRestorationSource"

    .line 4
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p2, v0}, Le/a/p5/t0/a;->p3(Ljava/util/List;Ljava/util/Set;)V

    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    const-string v0, "installationId"

    const-string v1, "installationIdFetchTime"

    const-string v2, "installationIdTtl"

    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 9
    invoke-virtual {p0, p2, v0}, Le/a/p5/t0/a;->p3(Ljava/util/List;Ljava/util/Set;)V

    :cond_1
    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    const-string v0, "profileCountryIso"

    .line 10
    invoke-static {v0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Le/a/p5/t0/a;->p3(Ljava/util/List;Ljava/util/Set;)V

    :cond_2
    const/4 v0, 0x5

    if-ge p1, v0, :cond_3

    const-string v0, "profileNumber"

    .line 11
    invoke-static {v0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Le/a/p5/t0/a;->p3(Ljava/util/List;Ljava/util/Set;)V

    :cond_3
    const/4 v0, 0x6

    if-ge p1, v0, :cond_4

    const-string v1, "key_region_1_timestamp"

    const-string v2, "featureRegion1"

    const-string v3, "featureRegion1_qa"

    const-string v4, "featureRegionC_qa"

    const-string v5, "region_c_accepted"

    const-string v6, "useUkLogo"

    .line 12
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 14
    invoke-virtual {p0, p2, v0}, Le/a/p5/t0/a;->p3(Ljava/util/List;Ljava/util/Set;)V

    :cond_4
    const/4 v0, 0x7

    if-ge p1, v0, :cond_5

    const-string p1, "networkDomain"

    .line 15
    invoke-static {p1}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p2, p1}, Le/a/p5/t0/a;->p3(Ljava/util/List;Ljava/util/Set;)V

    :cond_5
    return-void
.end method
