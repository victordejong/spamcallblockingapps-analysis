.class public final Le/a/f0/g/b;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/f0/g/a;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const-string p1, "social_media_prefs"

    .line 2
    iput-object p1, p0, Le/a/f0/g/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public K2(Z)V
    .locals 1

    const-string v0, "tc_news_promo_clicked"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public j3()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f0/g/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
