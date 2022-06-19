.class public final Le/a/z/m/b;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/z/m/a;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const-string p1, "personal_safety"

    .line 2
    iput-object p1, p0, Le/a/z/m/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A1(Z)V
    .locals 1

    const-string v0, "personal_safety_app_promo_clicked"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public T1()Z
    .locals 1

    const-string v0, "personal_safety_app_promo_clicked"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j3()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/z/m/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public u1()J
    .locals 3

    const-string v0, "personal_safety_home_promo_clicked"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Le/a/p5/t0/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public y(J)V
    .locals 1

    const-string v0, "personal_safety_home_promo_clicked"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/p5/t0/a;->putLong(Ljava/lang/String;J)V

    return-void
.end method
