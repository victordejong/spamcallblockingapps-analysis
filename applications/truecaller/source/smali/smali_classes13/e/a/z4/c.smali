.class public final Le/a/z4/c;
.super Le/a/z4/h;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/settings/CallingSettings;


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


# virtual methods
.method public Q1(I)Lcom/truecaller/settings/CallingSettings$BlockMethod;
    .locals 0

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Reject:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Mute:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    :goto_0
    return-object p1
.end method

.method public z()Lcom/truecaller/settings/CallingSettings$BlockMethod;
    .locals 2

    const-string v0, "blockCallMethod"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/z4/h;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Reject:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/truecaller/settings/CallingSettings$BlockMethod;->Mute:Lcom/truecaller/settings/CallingSettings$BlockMethod;

    :goto_0
    return-object v0
.end method
