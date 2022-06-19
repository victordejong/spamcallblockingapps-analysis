.class public final Le/a/z4/e;
.super Le/a/z4/h;
.source "SourceFile"

# interfaces
.implements Le/a/z4/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    const-string v1, "tc.settings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Le/a/z4/h;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method
