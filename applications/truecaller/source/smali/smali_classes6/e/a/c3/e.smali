.class public final Le/a/c3/e;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/c3/d;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Le/a/c3/e;->b:I

    const-string p1, "build_settings"

    .line 3
    iput-object p1, p0, Le/a/c3/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/c3/e;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c3/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    const/4 p1, 0x2

    new-array v1, p1, [Landroid/content/SharedPreferences;

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

    aput-object p2, v1, v0

    .line 3
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const-string v0, "BUILD_KEY"

    .line 4
    invoke-static {v0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Le/a/p5/t0/a;->p3(Ljava/util/List;Ljava/util/Set;)V

    .line 5
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v1, "_NATIVE"

    .line 6
    invoke-static {p2, v1, v3, p1}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 p1, 0x4

    const-string v2, ""

    .line 7
    invoke-static {p2, v1, v2, v3, p1}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
