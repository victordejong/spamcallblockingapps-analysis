.class public final Le/a/b/p/d;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/p/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    const-string v1, "pref_bizmon"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ON, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public j3()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    const-string v0, "bizMon-prefs"

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
