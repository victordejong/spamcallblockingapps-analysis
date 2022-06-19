.class public Le/a/j4/b/a/j;
.super Le/a/j4/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/j4/b/a/a<",
        "Le/a/j4/b/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/j4/b/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "TC.ugc.2.00"

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/j4/b/a/a;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    check-cast v0, Le/a/m0/c1/b0;

    invoke-virtual {v0}, Le/a/m0/c1/b0;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
