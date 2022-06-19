.class public Le/a/z4/b;
.super Le/a/z4/h;
.source "SourceFile"

# interfaces
.implements Le/a/z4/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tc-ads.settings"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, p1}, Le/a/z4/h;-><init>(Landroid/content/SharedPreferences;)V

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

    const-string v0, "ads-settings"

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 0

    return-void
.end method
